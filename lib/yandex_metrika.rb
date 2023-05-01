# frozen_string_literal: true

class YandexMetrika
  def self.inquiry_parameters(date1, date2)
    params = {
      'ids' => ENV['IDS_METRIKA'],
      'metrics' => 'ym:s:visits,ym:s:yanShows,ym:s:yanPartnerPrice',
      'dimensions' => 'ym:s:yanUrlHash',
      'lang' => 'en',
      'date1' => date1,
      'date2' => date2,
      'attribution' => 'Last',
      'accuracy' => 'full'
    }
    inquiry(params)
  end

  def self.inquiry(params)
    response = Typhoeus::Request.get(
      'https://api-metrika.yandex.ru/stat/v1/data',
      params: params,
      headers: {
        Accept: 'application/x-yametrika+json',
        Authorization: "OAuth#{ENV['AUTH_TOKEN_METRIKA']}"
      }
    )
    JSON.parse(response.body)
  end
end
