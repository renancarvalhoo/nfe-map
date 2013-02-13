require 'nfe/entidades/entidade_nfe'

module NFe

#Dados dos volumes, representa o elemento vol do elemento transp da nfe
  class VolumesTransportados < NFe::EntidadeNFe

    #qtd de volumes transportados
    nfe_attr :qVol

    #Espécie dos volumes transportados
    nfe_attr :esp

    #Marca dos volumes transportados
    nfe_attr :marca

    #numeracao dos volumes trasnportados
    nfe_attr :nVol

    #Peso liquido em Kg
    nfe_attr :pesoL

    #peso bruto em Kg
    nfe_attr :pesoB

    #numero dos lacres
    nfe_attr :lacres

  end

end