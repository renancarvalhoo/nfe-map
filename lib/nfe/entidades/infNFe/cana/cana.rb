require 'nfe/entidades/entidade_nfe'

module NFe

#Informações de registro aquisições de cana // v2.0
  class Cana < NFe::EntidadeNFe
    #Identificacao da safra // v2.0 (minimo 4 max 9 caracteres)
    nfe_attr :safra

    #Mês e Ano de Referência, formato: MM/AAAA // 2.0
    nfe_attr :ref

    #Fornecimentos diários // v2.0
    nfe_attr :forDia #fornecimento_diario

    #Total do mes
    nfe_attr :qTotMes

    #Total Anterior
    nfe_attr :qTotAnt

    #Total geral
    nfe_attr :qTotGer

    #Deducoes de taxas e Contribuições (deducoes.rb)
    nfe_attr :deduc # de 1 a 10 dessas

    #Valor dos fornecimentos
    nfe_attr :vFor

    #Valor total das deducoes
    nfe_attr :vTotDed

    #Valor liquido dos fornecimentos
    nfe_attr :vLiqFor

  end
  
end