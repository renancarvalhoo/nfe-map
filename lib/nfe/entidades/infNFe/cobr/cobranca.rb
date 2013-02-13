require 'nfe/entidades/entidade_nfe'

module NFe

#Representa o elemento cobr da nota fiscal
  class Cobranca < NFe::EntidadeNFe

    nfe_attr :fatura #objeto Fatura

    nfe_attr :duplicatas #n objetos Duplicata

    def attributes
      @attributes = {
          :cobr => {
              :fat => fatura.to_nfe_format,
              :dup => duplicatas.to_nfe_format
          }
      }
    end

  end

end