module NFe

  #Retenção de Tributos Federais
  #elemento retTrib do elemento total da NFe
  class RetencaoTributosFederais < NFe::EntidadeNFe

    nfe_attr :vRetPIS
    nfe_attr :vRetCOFINS
    nfe_attr :vRetCSLL
    nfe_attr :vBCIRRF
    nfe_attr :vIRRF
    nfe_attr :vBCRetPrev
    nfe_attr :vRetPrev

    def attributes
      {:retTrib => super}
    end

  end

end
