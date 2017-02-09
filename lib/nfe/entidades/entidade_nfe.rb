#coding: utf-8

require 'nokogiri'
require 'roxml'
#require 'nfe/util/validation_control'


module NFe

  class EntidadeNFe

    include ActiveModel::Model
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

    def attributes
      hash ||= {}
      # instance_variables.map{|ivar| remove_instance_variable(ivar) if instance_variable_get(ivar).nil?}
      instance_variables.map{|ivar|    hash[ivar.to_s.delete("@")] =  instance_variable_get(ivar) }

      hash
    end

    def assign_attributes(attributes)
      attributes ||= {}
      attributes.each do |name, value|
        send("#{name}=", value)
      end
    end

    # retorna o xml ou delega a classe herdada
    def to_s
      self.respond_to? :to_nfe ? to_nfe : super
    end

  end

end
