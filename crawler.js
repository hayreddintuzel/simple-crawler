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

var city="istanbul";
var field = "kadin-hastaliklari-ve-dogum";
var id = 0;

var pagesToVisit = "https://www.doktortakvimi.com/" + field + "/" + city + "/";

for(var i=0; i<2; i++)
{
  let visitedpage = pagesToVisit + i;
  console.log("Visiting page " + visitedpage);
  request(visitedpage, function(error, response, body) {
    if(error) {
      console.log("Error: " + error);
    }
    if(response.statusCode === 200) {
      // Parse the document body
      var $ = cheerio.load(body);
      var bodyText = $('html > body').text();
      var doctors = [];
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
            console.log("1 record inserted");
          }
          });
          return $(this).text();
        }
     }).get();

     /*
      var j=1;
      doctorsArray.forEach(element => {
        console.log(element);
      });
      */
    }
});
}



