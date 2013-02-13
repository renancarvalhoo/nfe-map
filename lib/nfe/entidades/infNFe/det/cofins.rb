require "../entidade_nfe"


#Dados do COFINS
class Cofins < NFe::EntidadeNFe

  nfe_attr :COFINSAliq

  nfe_attr :COFINSQtde

  nfe_attr :COFINSNT

  nfe_attr :COFINSOutr

end