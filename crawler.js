var request = require('request');
var cheerio = require('cheerio');
var URL = require('url-parse');

var mysql = require('mysql');

var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "doctors"
});

con.connect(function(err) {
  if (err) throw err;
  console.log("Connected!");
});
/********************************************
 * 
 *        V  A   R  I  A  B  L  E  S
 * 
 ********************************************/
//  node crawler.js
//URL//
var url = "https://www.doktortakvimi.com/";  //DEĞİŞTİRME
//CHANGE CITY FROM URL//
var city="istanbul";        //şehri gir
//CHANGE FIELD FROM URL//
var field = "pedagoji"; //Alanı gir
//LOOK FOR THE LAST INDEX OF DATABASE
var id = 0;
//PAGE COUNT//
var page = 7;
/*
*********************************************
*/
var pagesToVisit = url  + field + "/" + city + "/";

for(var i=0; i<page; i++)
{
  let visitedpage = pagesToVisit + i;
  console.log("Visiting page " + visitedpage);
  request(visitedpage, function(error, response, body) {
    if(error) {
      console.log("Error: " + error);
    }
    if(response.statusCode === 200) {
      var $ = cheerio.load(body);
      /*
      * HTML PATTERN
      */
      let doctorsArray = $("span[itemprop='name']").map(function(){
        id++;
        if($(this).text().toString().indexOf("Dr.") !== -1 || $(this).text().toString().indexOf("Psk.") !== -1)  //  || $(this).text().toString().indexOf("Psk.") !== -1
        {
          var name = $(this).text().toString();
          name = name.trimLeft();
          name = name.trimRight();
          var email = id + "@uzmantavsiye.com";
          var password = "12345678"
          var sql = "INSERT INTO doctors (user_login, user_pass, first_name, last_name, user_nicename, user_email, user_registered, adress, latitude, longitude,directory) VALUES ('" + email +"','" + password +"','"+name+"','','" + name + "','"+email+"','','','','','"+field+"')";

          con.query(sql, function (err, result) {
          if (err)
          {
            console.log(err);
          } else 
          {
          }
          });
          return $(this).text();
        }
     }).get();
     console.log(id + " Doctor imported!");
     /*
      var j=1;
      doctorsArray.forEach(element => {
        console.log(element);
      });
      */
    }
});
}



