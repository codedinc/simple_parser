var parser = require('./parser').parser

function parseAndLog(code) {
  console.log(code, " => ", parser.parse(code))
}

parseAndLog('1')

parseAndLog('1; 2')

parseAndLog('1; true; 3')