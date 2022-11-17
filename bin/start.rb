# frozen_string_literal: true

require_relative '../lib/analytics'
require 'dotenv/load'
require 'typhoeus'
require 'json'
require 'terminal-table'
require 'tty-prompt'
require 'date'

prompt = TTY::Prompt.new

puts 'Enter time period'
# puts 'Start date: (2020-01-29 for example)'
# date1 = gets.strip
# puts 'Final date: (2020-01-29 for example)'
# date2 = gets.strip
date1 = prompt.ask('Start date:', default: DateTime.now.strftime('%Y-%m-01'))
date2 = prompt.ask('Final date:', default: DateTime.now.strftime('%Y-%m-%d'))

Analytics.table(date1, date2)
