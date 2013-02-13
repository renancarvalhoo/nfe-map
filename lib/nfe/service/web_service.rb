#coding: utf-8
require 'net/http'
require "nfe/config/params"
require 'savon'


module NFe

  module Service

    class WebService

      attr_accessor :soap_params, :client

      def initialize(user, pass, certificate_path, state='sp')
        raise 'estado em formato invalido' unless state.respond_to? :to_sym
        @soap_params = NFe::Config::Params::URLS::SOAP_URLS[state.to_sym]
        @url = "#{@soap_params[:base_url]}#{:status_servico}"
        @certificate_path = certificate_path
        @user = user
        @pass = pass
      end

      def status_servico

        require 'net/https'
        require 'uri'

        uri = URI.parse('https://homologacao.nfe.fazenda.sp.gov.br/nfeweb/services/nfestatusservico.asmx')
        p uri.path
        p uri.port
        
        http = Net::HTTP.new(uri.host, uri.port)
        if uri.scheme == "https" # enable SSL/TLS
          puts 'ssh true'
          http.use_ssl = true
          http.verify_mode = OpenSSL::SSL::VERIFY_PEER

          http.key = OpenSSL::PKey::RSA.new(File.read(@certificate_path), '')
          http.cert = OpenSSL::X509::Certificate.new(File.read(@certificate_path))
        end

        http.start {
          http.request_get(uri.path) { |res|
            nome_arquivo = 'c:\resposta_request.html'
            arquivo = File.open(nome_arquivo, 'wb')
            arquivo.puts res.body
            arquivo.close
          }
        }

      end

    end

  end

end
