require 'nfe/entidades/entidade_nfe'


module NFe

  class ProdutoICMS < NFe::EntidadeNFe

    # - Tipo de Tributacao (seleciona de lista) - ICMS_TIPOS_TRIBUTACAO
    nfe_attr :tipo_tributacao

    # - Origem (seleciona de lista) - ICMS_ORIGENS
    nfe_attr :origem

    # - Modalidade de determinacao da Base de Calculo (seleciona de lista) - ICMS_MODALIDADES
    nfe_attr :modalidade

    # - Aliquota ICMS
    nfe_attr :aliquota

    # - Percentual de reducao da Base de Calculo
    nfe_attr :percentual_reducao

    # - Modalidade de determinacao da Base de Calculo do ICMS ST (seleciona de lista) - ICMS_MODALIDADES
    nfe_attr :st_modalidade

    # - Aliquota ICMS ST
    nfe_attr :st_aliquota

    # - Percentual de reducao do ICMS ST
    nfe_attr :st_percentual_reducao

    # - Percentual da margem de Valor Adicionado ICMS ST
    nfe_attr :st_percentual_margem_valor_adicionado

  end

end