require 'nfe/entidades/entidade_nfe'

class LocalRetirada < NFe::EntidadeNFe
  nfe_attr :local

  def attributes
    {
        :retirada => local.to_nfe_format
    }
  end
end