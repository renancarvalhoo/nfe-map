require 'nfe/entidades/entidade_nfe'

module NFe

  class PISOutr < NFe::EntidadeNFe

    nfe_attr :CST
# choice
#  seq
    nfe_attr :vBC
    nfe_attr :pPIS
#  seq
    nfe_attr :qBCProd
    nfe_attr :vAliqProd
# end choice
    nfe_attr :vPIS


  end

end