require 'nfe/entidades/entidade_nfe'

module NFe

  #TVeiculo
  class Veiculo < NFe::EntidadeNFe
    nfe_attr :placa

    nfe_attr :UF

    nfe_attr :RNTC
  end

end
