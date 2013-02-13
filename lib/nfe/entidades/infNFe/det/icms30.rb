require "../entidade_nfe"

class ICMS30 < NFe::EntidadeNFe

  nfe_attr :orig

  #Tributação pelo ICMS 30 - Isenta ou não tributada e com cobrança do ICMS por substituição tributária
  nfe_attr :CST

  nfe_attr :modBCST

  nfe_attr :pMVAST

  nfe_attr :pRedBCST

  nfe_attr :vBCST
  
  nfe_attr :pICMSST

  nfe_attr :vICMSST

  def attributes
    {:ICMS30 => super}
  end

end