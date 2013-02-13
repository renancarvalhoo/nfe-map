require 'nfe/entidades/entidade_nfe'

module NFe

  class LocalEntrega < NFe::EntidadeNFe

    nfe_attr :local

    def attributes
      {
          :entrega => local.to_nfe_format
      }
    end

  end

end