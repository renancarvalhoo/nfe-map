require 'nfe/entidades/entidade_nfe'

class ICMS20 < NFe::EntidadeNFe

  #Tributção pelo ICMS  20 - Com redução de base de cálculo
  nfe_attr :orig

  #Tributção pelo ICMS  20 - Com redução de base de cálculo
  nfe_attr :CST

  nfe_attr :modBC

  #Porcentual de redução da BC
  nfe_attr :pRedBC

  #Valor BC do ICMS
  nfe_attr :vBC

  #Aliquota do ICMS
  nfe_attr :pICMS

  #Valor do icms
  nfe_attr :vICMS

  def attributes
    {:ICMS20 => super}
  end

end