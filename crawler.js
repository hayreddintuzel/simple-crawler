var request = require('request');
var cheerio = require('cheerio');
var URL = require('url-parse');

var excel = require('excel4node');

// Create a new instance of a Workbook class
var workbook = new excel.Workbook();

// Add Worksheets to the workbook
var worksheet = workbook.addWorksheet('Sheet 1');
var worksheet2 = workbook.addWorksheet('Sheet 2');

// Create a reusable style
var style = workbook.createStyle({
  font: {
    color: '#FF0800',
    size: 12
  },
  numberFormat: '$#,##0.00; ($#,##0.00); -'
});

var pagesToVisit = "https://www.doktortakvimi.com/kadin-hastaliklari-ve-dogum/istanbul/";

for(var i=0; i<100; i++)
{
  let visitedpage = pagesToVisit + i;
  console.log("Visiting page " + visitedpage);
  request(visitedpage, function(error, response, body) {
    if(error) {
      console.log("Error: " + error);
    }
    // Check status code (200 is HTTP OK)
    console.log("Status code: " + response.statusCode);
    if(response.statusCode === 200) {
      // Parse the document body
      var $ = cheerio.load(body);
      var bodyText = $('html > body').text();
      var doctors = [];
      let doctorsArray = $("span[itemprop='name']").map(function(){
        if($(this).text() == "Ana Sayfa" || $(this).text() == "Kadın Hastalıkları Ve Doğum" || $(this).text() == "İstanbul" || $(this).text() == "İstanbul")
        {

        }else
        {
          return $(this).text();
        }

     }).get();


      var j=1;
      doctorsArray.forEach(element => {
        worksheet.cell(j,1).string(element).style(style);
        console.log(element);
      });
    }
});
}

workbook.write('Doktorlar.xlsx');

