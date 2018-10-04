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
//URL//
var url = "https://www.doktortakvimi.com/";
//CHANGE CITY FROM URL//
var city="istanbul";
//CHANGE FIELD FROM URL//
var field = "kadin-hastaliklari-ve-dogum";
//LOOK FOR THE LAST INDEX OF DATABASE
var id = 0;
//PAGE COUNT//
var page = 2;
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
        if($(this).text().toString().indexOf("Dr.") !== -1)
        {
          var sql = "INSERT INTO doctors (id,name, city, field) VALUES ('" + id + "','" + $(this).text().toString() + "','" +  city + "','" + field + "')";
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



