require 'nfe/entidades/entidade_nfe'

module NFe

#Dados dos totais da NF-e, elemento total da NFe
  class Total < NFe::EntidadeNFe

    nfe_attr :ICMSTot
    nfe_attr :ISSQNtot
    nfe_attr :retTrib

    def attributes
      {:total => super}
    end

  end

end