require 'nfe/entidades/entidade_nfe'

class COFINSQtde < NFe::EntidadeNFe

=begin
  Código de Situação Tributária do COFINS.
  03 - Operação Tributável - Base de Calculo = Quantidade Vendida x Alíquota por
  Unidade de Produto;
=end
  nfe_attr :CST

  #Quantidade Vendida
  nfe_attr :qBCProd

  #Aliquota do COFINS em R$
  nfe_attr :vAliqProd

  #Valor COFINS
  nfe_attr :vCOFINS
end