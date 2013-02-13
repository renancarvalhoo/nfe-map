require "../entidade_nfe"

module NFe

  class ICMS60 < NFe::EntidadeNFe

    nfe_attr :orig

    #Tributação pelo ICMS 60 - ICMS cobrado anteriormente por substituição tributária
    nfe_attr :CST

    nfe_attr :vBCSTRet

    nfe_attr :vICMSSTRet

    def attributes
      {:ICMS60 => super}
    end

  end

end