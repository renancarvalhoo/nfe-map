require 'nfe/entidades/entidade_nfe'

class ICMS10 < NFe::EntidadeNFe

  nfe_attr :orig

  #Tributação pelo ICMS 10 - Tributada e com cobrança do ICMS por substituição tributária
  nfe_attr :CST

  nfe_attr :modBC

  #Valor BC do ICMS
  nfe_attr :vBC

  #Aliquota do ICMS
  nfe_attr :pICMS

  #Valor do icms
  nfe_attr :vICMS
  
  nfe_attr :modBCST

  nfe_attr :pMVAST

  nfe_attr :pRedBCST

  nfe_attr :vBCST

  nfe_attr :pICMSST

  nfe_attr :vICMSST

  def attributes
    {:ICMS10 => super}
  end

end