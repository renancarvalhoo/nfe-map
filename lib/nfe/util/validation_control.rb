#coding: utf-8
module NFe

  module Util

    # Modulo que sera utilizado para validar as entidades da nota fiscal
    module ValidationControl

      attr_writer :errors

      def self.included(base)
        base.extend(ClassMethods)
      end

      module ClassMethods

        @validations_to_perform

        def add_new_validation(attr, validation_options)
          if validations.nil? or validations.empty?
            validations.merge!({attr => validation_options})
          else
            validations[attr].merge(validation_options)
          end
        end

        def extract_options(attrs)
          raise 'attrs must be an array' unless attrs.is_a? Array
          return attrs.last if attrs.last.is_a? Hash
          {}
        end

        def validates(*attrs)
          options = extract_options(attrs)
          add_new_validation(attrs.first, options)
        end

        def validations
          @validations_to_perform ||= {}
        end

      end

      def add_error(attr, message)
        if  errors[attr].nil?
          errors.merge!({attr => message})
        else
          errors[attr] = message
        end
      end

      def errors
        @errors ||= {}
      end

      def perform_validations
        self.class.validations.collect do |attr, validations|
          validations.each do |key, value|
            validate attr, key, value
          end
        end
      end

      def validate(attr, key, value)
        case key
          when :length then
            validate_length(attr, value)
          when :required then
            validate_required(attr, value)
          when :format then
            validate_format(attr, value)
          when :type then
            validate_type(attr, value)
        end
      end

      def in_format(value, regex)
        return false unless regex.is_a? Regexp
        regex.match(value.to_s)
      end

      def in_length(value, range)
        return false unless range.is_a? Range
        range.to_a.include? value.to_s.length
      end

      def not_null?(value)
        !value.to_s.eql? ''
      end


      def validate_length(attr, range)
        add_error(attr, :length) unless in_length(get_attribute_value(attr), range)
      end

      def validate_required(attr, value)
        if value == true
          add_error(attr, :required) unless not_null? get_attribute_value(attr)
        end
      end

      def validate_format(attr, regex)
        add_error(attr, :format) unless in_format(get_attribute_value(attr), regex)
      end

      def validate_type(attr, klass)
        add_error(attr, :type) unless get_attribute_value(attr).is_a? klass
      end

      def get_attribute_value value
        begin
          self.send(value.to_s)
        rescue
          throw "Atributo #{value.to_s} não existe na classe #{self.to_s}"
        end
      end

    end

  end

end