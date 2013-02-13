require 'nfe/entidades/entidade_nfe'

#Representa o tipo TLocal
#Tipo Dados do Local de Retirada ou Entrega // 24/10/08 - tamanho mínimo // v2.0
module NFe
  class Local < NFe::EntidadeNFe

    #cnpj ou cpf
    nfe_attr :cnpj
    #cpf ou cnpj
    nfe_attr :cpf
    #logradouro
    nfe_attr :xlgr
    #numero
    nfe_attr :nro
    #complemento
    nfe_attr :xcpl
    #bairro
    nfe_attr :xbairro
    #codigo municipio tabela IBGE
    nfe_attr :cmun
    #nome municipio
    nfe_attr :xmun
    #UF
    nfe_attr :uf

  end
end