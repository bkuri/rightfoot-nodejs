'use strict'

{mkdir} = require('shelljs')


do ->
  mkdir '-p', ['app/assets', 'public', 'saved']
  return