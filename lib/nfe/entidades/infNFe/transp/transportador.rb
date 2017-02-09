require 'nfe/entidades/entidade_nfe'

module NFe

  class Transportador < NFe::EntidadeNFe

    # - Nome/Razão Social (obrigatorio)
    nfe_attr :CPF

    nfe_attr :CNPJ

    # - Numero do Documento (obrigatorio)
    nfe_attr :xNome

    # - Inscricao Estadual
    nfe_attr :IE

    # Endereco
    # - Logradouro (obrigatorio)
    nfe_attr :xEnder

    # - UF (obrigatorio)
    nfe_attr :xMun

    # - Municipio (obrigatorio)
    nfe_attr :UF

    def to_s
      @xNome
    end

  end

end
