require 'nfe/entidades/entidade_nfe'

module NFe

  class GrupoInformacoesNfProdutor < NFe::EntidadeNFe

    #TCodUfIBGE
    nfe_attr :cUF

    nfe_attr :AAMM

    #choice cpf ou cnpj
    nfe_attr :CPF
    nfe_attr :CNPJ

    nfe_attr :IE

    nfe_attr :mod

    nfe_attr :serie

    #TNF
    nfe_attr :nNF

  end

end