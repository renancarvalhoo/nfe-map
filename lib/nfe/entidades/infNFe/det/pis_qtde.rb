require 'nfe/entidades/entidade_nfe'

module NFe

  class PISQtde < NFe::EntidadeNFe

    nfe_attr :CST

    nfe_attr :qBCProd

    nfe_attr :vAliqProd

    nfe_attr :vPIS
  end

end