require 'nfe/entidades/entidade_nfe'

module NFe

  #totais referentes ao ICMS
  class TotaisICMS < NFe::EntidadeNFe



    #BC do ICMS
    nfe_attr :vBC

    #Valor total do ICMS
    nfe_attr :vICMS

    nfe_attr :vICMSDeson

    nfe_attr :vFCPUFDest

    nfe_attr :vICMSUFDest

    nfe_attr :vICMSUFRemet

    #BC do ICMS ST
    nfe_attr :vBCST

    #Valor Total do ICMS ST
    nfe_attr :vST

    #Valor total dos produtos e serviços
    nfe_attr :vProd

    #Valor total do frete
    nfe_attr :vFrete

    #Valor total do Seguro
    nfe_attr :vSeg

    #Valor total do desconto
    nfe_attr :vDesc

    #Valor total do II
    nfe_attr :vII

    #Valor total do IPI
    nfe_attr :vIPI

    #Valor do PIS
    nfe_attr :vPIS

    #valor total do COFINS
    nfe_attr :vCOFINS

    #Outras despesas acessorias
    nfe_attr :vOutro

    #valor total da NFe
    nfe_attr :vNF

    nfe_attr :vTotTrib

    def attributes
      hash ||= {}
      # instance_variables.map{|ivar| remove_instance_variable(ivar) if instance_variable_get(ivar).nil?}
      instance_variables.map{|ivar|    hash[ivar.to_s.delete("@")] =  instance_variable_get(ivar) }

      hash
    end

  end

end
