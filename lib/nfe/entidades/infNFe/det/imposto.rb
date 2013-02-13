require "../entidade_nfe"

module NFe

#Tributos incidentes nos produtos e servicos da NFe
  class Imposto < NFe::EntidadeNFe

#choice
#  sequence

    #  Dados do ICMS normal e ST
    nfe_attr :ICMS

    #  Dados do IPI
    #nao obrigatorio
    nfe_attr :IPI

    #  Dados do imposto de importação
    #nao obrigatorio
    nfe_attr :II

#  end_sequence
    nfe_attr :ISSQN
#end_choice

    nfe_attr :PIS
    nfe_attr :PISST #TODO: nao obrigatorio fazer depois
    nfe_attr :COFINS
    nfe_attr :COFINSST #TODO: nao obrigatorio fazer depois
    
  end

end