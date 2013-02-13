require 'nfe/entidades/entidade_nfe'
#Dados dos produtos e serviços da NF-e
#elemento prod do elemento det da NFe
class DadosProdutosServicos < NFe::EntidadeNFe

#Código do produto ou serviço. Preencher com CFOP caso se trate de itens
#não relacionados com mercadorias/produto e que o contribuinte não possua codificação
#própria  Formato ”CFOP9999”.
#  de 1 a 60 caracteres
  nfe_attr :cProd

#  GTIN (Global Trade Item Number) do produto, antigo código EAN ou código de barras
#  [0-9]{0}|[0-9]{8}|[0-9]{12,14}
  nfe_attr :cEAN

#  Descricao do produto ou  servico
  nfe_attr :xProd

=begin
  Código NCM (8 posições), será permitida a informação do gênero (posição do
  capítulo do NCM) quando a operação não for de comércio exterior (importação/exportação) ou
  o produto não seja tributado pelo IPI. Em caso de item de serviço ou item que não tenham
  produto (Ex. transferência de crédito, crédito do ativo imobilizado, etc.), informar o
  código 00 (zeros) (v2.0)
=end
#  [0-9]{2}|[0][1-9][0-9]{6}|[1-9][0-9]{7}
  nfe_attr :NCM

#  Codigo EX TIPO (3 posicoes)
#  [0-9]{2,3}
  nfe_attr :EXTIPI

#  TCFOP
  nfe_attr :CFOP

#  Unidade Comercial
#  1 a 6 caracteres
  nfe_attr :uCom

#  Quantidade Comercial do produto, alterado para aceitar de 0 a 4 casas decimais e 11 inteiros. (v2.0)
# Decimal 4 casas decimais
  nfe_attr :qCom


#Valor unitário de comercialização - alterado para aceitar 0 a 10 casas decimais e 11 inteiros (v2.0)
# decimal
  nfe_attr :VUnCom

#  valor bruto do produto ou servico
  nfe_attr :vProd

#  GTIN (Global Trade Item Number) da unidade tributável, antigo código EAN ou código de barras
#  [0-9]{0}|[0-9]{8}|[0-9]{12,14}
  nfe_attr :cEANTrib

#  unidade tributavel 1 a 6 caracteres
  nfe_attr :uTrib

#  Quantidade Tributável - alterado para aceitar de 0 a 4 casas decimais e 11 inteiros (v2.0)
  nfe_attr :qTrib

#  Valor unitário de tributação - - alterado para aceitar 0 a 10 casas decimais e 11 inteiros (v2.0)
  nfe_attr :vUnTrib

#  Valor do Frete
  nfe_attr :vFrete

#  Valor do seguro
  nfe_attr :vSeg

#  Valor do desconto
  nfe_attr :vDesc

#  Valor outras despesas acessórias
  nfe_attr :vOutro

=begin
  Este campo deverá ser preenchido com:
  0 – o valor do item (vProd) não compõe o valor total da NF-e (vProd)
  1 – o valor do item (vProd) compõe o valor total da NF-e (vProd)
  (v2.0)
=end
  nfe_attr :indTot

#  TODO: Documento de Importacao,nao obrigatorio, por enquanto sem implementacao para agilizar o termino da primeira versao
  nfe_attr :DI

#  pedido de compra - Informação de interesse do emissor para controle do B2B. (v2.0)
#  1 a 15 caracteres
  nfe_attr :xPed

#  Número do Item do Pedido de Compra - Identificação do número do item do pedido de Compra (v2.0)
#  [0-9]{1,6}
  nfe_attr :nItemPed

#  choice nao obrigatorio
#  TODO: nao obrigatorio, por enquanto sem implementacao para agilizar o termino da primeira versao
  nfe_attr :veicProd

  nfe_attr :med

  nfe_attr :arma

  nfe_attr :comb
#  end_choice

end