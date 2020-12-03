/**
 * Using fs, Write into a file ./test.txt the sentence "Hello World!" in this project's root folder.
 * When the write is complete, console.log that the file was saved successfully.
 */

// your code goes here

fs = require('fs');
path = require('path');
fs.writeFile(path.join(__dirname,'text.txt'), "Hello World!!", (data,err)=>{
    console.log("File saved successfully!!!")
})