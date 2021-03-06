#!/bin/env coffee


{prompt} = require('inquirer')
{writeFile} = require('fs-cson')


nonEmpty = (str) ->
  str.trim().length > 0

qName =
  message: 'Give this project a name:'
  name: 'name'
  validate: nonEmpty

qLang =
  default: 'en'
  message: 'Which language would you like to use?'
  name: 'lang'
  validate: nonEmpty


prompt([qName, qLang]).then (answers) ->
  path = 'app/variables.cson'

  writeFile path, answers, (err) ->
    throw err if err?

    console.log "Variables saved to '#{path}'. You can always edit the find manually or run this script again to start over.\n"
