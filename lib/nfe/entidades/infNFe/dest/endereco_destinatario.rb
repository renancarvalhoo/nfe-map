#coding: utf-8
require 'nfe/entidades/entidade_nfe'
require 'json'

module NFe

  class EnderecoDestinatario < NFe::EntidadeNFe

    #  validates_length_of :xLgr, :nro, :xCpl, :xBairro, :xMun, :in => 2...60
    #  validates :CEP, :format => {:with => /[0-9]{8}/} #sem traços, somente numeros
    #  validates :fone, :format => {:with => /[0-9]{6,14}/} #DDD + número do telefone

    nfe_attr :xLgr
    nfe_attr :nro
    nfe_attr :xCpl
    nfe_attr :xBairro
    nfe_attr :cMun
    nfe_attr :xMun
    nfe_attr :UF
    nfe_attr :CEP
    nfe_attr :cPais
    nfe_attr :xPais
    nfe_attr :fone

    def initialize
      @cPais = NFe::Config::Params::CODIGO_BRASIL
      @xPais = 'BRASIL'
    end

  end

end
