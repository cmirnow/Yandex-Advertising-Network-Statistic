# frozen_string_literal: true

require_relative './yandex_metrika'

class Analytics
  def self.prompt
    TTY::Prompt.new
  end

  def self.get_date(status = 'Final', day = '%d')
    prompt.ask("#{status} date:", default: DateTime.now.strftime("%Y-%m-#{day}")) do |q|
      q.validate(/^\d{4}-\d{2}-\d{2}$/)
    end
  end

  def self.table(date1, date2)
    rows = []
    title = "Yandex Advertising Network Statistic (#{date1}:#{date2})"
    headings = ['URL (last 100 characters)', 'VISITS', 'PRICE']
    obj = query(date1, date2)
    obj['data'].each do |i|
      rows << [i['dimensions'][0]['name']
              .split(//)
              .last(100)
              .join,
               i['metrics'][0].to_i,
               i['metrics'][2].round(2)]
    end
    puts Terminal::Table.new title: title,
                             headings: headings,
                             rows: rows
    puts "Total: #{obj['totals'][2].round(2)}"
  end

  def self.query(date1, date2)
    YandexMetrika.inquiry_parameters(date1, date2)
  end
end
