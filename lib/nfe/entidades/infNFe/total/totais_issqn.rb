module NFe

  #Totais referentes ao ISSQN
  #elemento ISSQNtot do elemento total da NFe
  class TotaisIssqn < NFe::EntidadeNFe

    #Valor Total dos Serviços sob não-incidência ou não tributados pelo ICMS
    nfe_attr :vServ

    #Base de Cálculo do ISS
    nfe_attr :vBC

    #Base de Cálculo do ISS
    nfe_attr :vISS

    #Valor do PIS sobre serviços
    nfe_attr :vPIS

    #Valor do COFINS sobre serviço
    nfe_attr :vCOFINS

    def attributes
      {:ISSQNtot => super}
    end

  end

end
