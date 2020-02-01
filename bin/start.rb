# frozen_string_literal: true

require_relative '../lib/analytics.rb'
require 'dotenv/load'
require 'typhoeus'
require 'json'
require 'terminal-table'

puts 'Enter time period'
puts 'Start date: (2020-01-29 for example)'
date1 = gets.strip
puts 'Final date: (2020-01-29 for example)'
date2 = gets.strip

Analytics.table(date1, date2)
