// cerner_2^5_2018
const {json} = require('micro')

module.exports = (req, rep) => {
  return json(req).then(body => {
    // json body that contains a name
    return `Hello, ${body.name}!`
  }).catch(() => {
    // invalid body
    return 'Hello, world!'
  });
}