require "../entidade_nfe"

class ICMS51 < NFe::EntidadeNFe

  nfe_attr :orig

  #  Tributção pelo ICMS
  #  51 - Diferimento
  #  A exigência do preenchimento das informações do ICMS diferido fica à critério de
  #  cada UF.
  nfe_attr :CST

  #nenhum obrigatorio abaixo
  
  #  Modalidade de determinação da BC do ICMS:
  #  0 - Margem Valor Agregado (%);
  #  1 - Pauta (valor);
  #  2 - Preço Tabelado Máximo (valor);
  #  3 - Valor da Operação.
  nfe_attr :modBC

  nfe_attr :pRedBC

  nfe_attr :pICMS

  nfe_attr :vICMS

  
end