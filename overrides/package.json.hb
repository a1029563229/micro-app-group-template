{
  "name": "micro-front",
  "version": "1.0.0",
  "description": "",
  "main": "index.js",
  "scripts": {
    "examples:install": "npm-run-all --serial install:*",
    "examples:start": "npm-run-all --parallel start:*",
    {{#each apps}}
    "install:{{this}}": "cd micro-app-{{this}} && yarn",
    "start:{{this}}": "cd micro-app-{{this}} && yarn start",
    {{/each}}
    "install:main": "cd micro-app-main && yarn",
    "start:main": "cd micro-app-main && yarn start"
  },
  "repository": {
    "type": "git",
    "url": "git+https://github.com/a1029563229/micro-front-template.git"
  },
  "author": "",
  "license": "ISC",
  "bugs": {
    "url": "https://github.com/a1029563229/micro-front-template/issues"
  },
  "homepage": "https://github.com/a1029563229/micro-front-template#readme",
  "devDependencies": {
    "npm-run-all": "^4.1.5"
  }
}
