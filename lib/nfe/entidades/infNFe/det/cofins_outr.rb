require 'nfe/entidades/entidade_nfe'

class CofinsOutr < NFe::EntidadeNFe


  nfe_attr :CST
#  choice
#   seq
  nfe_attr :vBC
  nfe_attr :pCOFINS
#   seq
  nfe_attr :qBCProd
  nfe_attr :vAliqProd
#  end choice
  nfe_attr :vCOFINS


end