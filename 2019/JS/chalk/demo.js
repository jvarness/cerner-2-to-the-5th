// cerner_2^5_2019
// make command-lines pretty again

const chalk = require('chalk');
chalk.level = 3;

const getRandomInt = () => Math.floor(Math.random() * 257);

setInterval(() => {
  var r = getRandomInt();
  var g = getRandomInt();
  var b = getRandomInt();

  console.log(chalk.rgb(r, g, b)("Make commandlines colorful!!"));
}, 1000);
