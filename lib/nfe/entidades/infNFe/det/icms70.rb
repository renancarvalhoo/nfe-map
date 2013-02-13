require 'nfe/entidades/entidade_nfe'

module NFe

  class ICMS70 < NFe::EntidadeNFe

    nfe_attr :orig

    nfe_attr :CST

    nfe_attr :modBC

    nfe_attr :pRedBC

    nfe_attr :vBC

    nfe_attr :pICMS

    nfe_attr :vICMS

    nfe_attr :modBCST

    nfe_attr :pRedBCST

    nfe_attr :vBCST

    nfe_attr :pICMSST

    nfe_attr :vICMSSST

    def attributes
      {:ICMS70 => super}
    end

  end

end