require 'nfe/entidades/entidade_nfe'

module NFe

  class Transportadora < NFe::EntidadeNFe

    # - Nome/Razão Social (obrigatorio)
    nfe_attr :razao_social

    # - Tipo de Documento (obrigatorio) - default CNPJ
    nfe_attr :tipo_documento

    # - Numero do Documento (obrigatorio)
    nfe_attr :numero_documento

    # - Inscricao Estadual
    nfe_attr :inscricao_estadual

    # Endereco
    # - Logradouro (obrigatorio)
    nfe_attr :endereco_logradouro

    # - UF (obrigatorio)
    nfe_attr :endereco_uf

    # - Municipio (obrigatorio)
    nfe_attr :endereco_municipio

    def to_s
      "#{@tipo_documento} #{@numero_documento}"
    end

  end

end