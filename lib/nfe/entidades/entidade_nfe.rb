#coding: utf-8

require 'nokogiri'
require 'roxml'
#require 'nfe/util/validation_control'


module NFe

  class EntidadeNFe
    
    include ROXML

    @@validations = []

    class << self
      # apelida o xml_accessor do ROXML para nfe_attr
      alias :nfe_attr :xml_accessor

      # define um accessor ruby comum para os atributos da nota fiscal
      def xml_accessor(*attrs)
        attr_accessor *attrs
        # super(*attrs)
      end

      # todos os atributos da entidade
      def nfe_attrs
        roxml_attrs.map(&:attr_name)
      end
    end

    # todos os atributos da entidade do objeto
    def nfe_attrs
      self.class.nfe_attrs
    end

    # retorna o xml representando a entidade
    def to_nfe
      doc = Nokogiri::XML::Document.new
      doc.root = to_xml
      doc.serialize
    end

    # retorna o xml ou delega a classe herdada
    def to_s
      self.respond_to? :to_nfe ? to_nfe : super
    end

  end

end