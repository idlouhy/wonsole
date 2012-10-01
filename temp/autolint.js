module.exports = {
  paths: [
    "./test/*.js",
    "./src/*.js"
  ],
  linter: "jslint",
  linterOptions: {
    indent: 2,
    maxlen: 125,
    predef: [
      "describe",
      "it",
      "before",
      'buster',
      'define',
      'assert'
    ],
    node: true,
    sloppy: true,
    vars: true
  },
  excludes: [
    "node_modules",
    "buster"
  ]
};
