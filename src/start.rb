# frozen_string_literal: true

require 'dotenv/load'
require 'typhoeus'
require 'json'
require 'terminal-table'
require 'tty-prompt'
require 'date'
require_relative './analytics'

puts 'Enter time period'

date1 = Analytics.get_date('Start', '01')
date2 = Analytics.get_date

Analytics.table(date1, date2)
