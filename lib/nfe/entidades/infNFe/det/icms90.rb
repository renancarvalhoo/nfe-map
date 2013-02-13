require "../entidade_nfe"

module NFe

  class ICMS90 < NFe::EntidadeNFe

    nfe_attr :orig

    nfe_attr :CST

    #seq n obrigatoria
    nfe_attr :modBC
    nfe_attr :vBC
    nfe_attr :pRedBC #n obrigatorio
    nfe_attr :pICMS
    nfe_attr :vICMS

    #seq n obrigatoria
    nfe_attr :modBCST
    nfe_attr :pMVAST #n obrigatorio
    nfe_attr :pRedBCST #n obrigatorio
    nfe_attr :vBCST
    nfe_attr :pICMSST
    nfe_attr :vICMSST

    def attributes
      {:ICMS90 => super}
    end

  end

end