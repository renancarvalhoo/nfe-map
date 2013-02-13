require 'net/http'
require 'nokogiri'
require 'time'
require 'uri'

module NFe
  
  module Service

    class NFeClient

      def initializer payload, url
        @uri = URI.parse(url)        #url = "http://webservice.onixsat.com.br"
        @headers = {'Content-Type' => 'text/xml'}
        @data = '<?xml version="1.0" encoding="UTF-8"?>'
        @data << payload
      end

      def dispatch
        http = Net::HTTP.new(@uri.host, @uri.port)
        http.use_ssl = true if (@uri.scheme == 'https')
        begin
          resp, body = http.post(@uri.path, @data, @headers)
          Log.info "Response => #{resp}"
          Log.info body
          parsed = Nokogiri.XML(body)
          Log.info "Parsed => #{parsed.inspect}"
        rescue Exception => e
          Log.warn "[REMOTE] Err....#{e} \n #{e.backtrace}"
          return nil
        end
      end

    end

  end

end