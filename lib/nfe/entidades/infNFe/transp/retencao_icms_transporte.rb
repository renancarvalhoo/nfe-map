require 'nfe/entidades/entidade_nfe'

module NFe

#elemento <retTransp> do elemento <transp> da nfe
  class RetencaoIcmsTransporte < NFe::EntidadeNFe

    #valor do Serviço
    nfe_attr :vServ

    #BC da Retenção do ICMS
    nfe_attr :vBCRet

    #Alíquota da Retenção
    nfe_attr :pICMSRet

    #Valor do ICMS Retido
    nfe_attr :vICMSRet

    #Código Fiscal de Operações e Prestações // PL_006f - alterado para
    #permitir somente CFOP de transportes
    nfe_attr :CFOP

    #Código do Município de Ocorrência do Fato Gerador (utilizar a tabela do IBGE)
    nfe_attr :cMunFG

  end

end