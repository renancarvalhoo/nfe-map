require 'nfe/entidades/entidade_nfe'
#det da nfe
#Dados dos detalhes da NF-e
class DetalhesNFe < NFe::EntidadeNFe

  #Dados dos produtos e serviços da NFe
  nfe_attr :prod

  #Tributos incidentes nos produtos ou serviços da NF-e
  nfe_attr :imposto

  #Informações adicionais do produto (norma referenciada, informações complementares, etc)
#  de 1 a 500 caracteres nao obrigatorio
  nfe_attr :infAdProd

  nfe_attr :nItem #validar [1-9]{1}[0-9]{0,1}|[1-8]{1}[0-9]{2}|[9]{1}[0-8]{1}[0-9]{1}|[9]{1}[9]{1}[0]{1}


  def attributes
    {:det => super}
  end
end