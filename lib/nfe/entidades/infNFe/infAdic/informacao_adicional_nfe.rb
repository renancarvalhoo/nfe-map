require 'nfe/entidades/entidade_nfe'

module NFe

#elemento infAdic da nfe
  class InformacaoAdicionalNFe < NFe::EntidadeNFe

    #Informações adicionais de interesse do Fisco (v2.0)
    nfe_attr :infAdFisco #ate 2000 caracteres

    #Informações complementares de interesse do Contribuinte
    nfe_attr :infCpl #ate 5000 caracteres

    #Campo de uso livre do contribuinte informar o nome
    #do campo no atributo xCampo e o conteúdo no campo xTexto
    nfe_attr :obsCont

    #Campo de uso exclusivo do Fisco
    #informar o nome do campo no atributo xCampo
    #e o conteúdo do campo no xTexto
    nfe_attr :obsFisco

    #Grupo de informações do processo referenciado
    nfe_attr :procRef

    def attributes
      {
          :infAdic => {
              :infAdFisco => infAdFisco,
              :infCpl => infCpl,
              :obsCont => obsCont.to_nfe_format,
              :obsFisco => obsFisco.to_nfe_format,
              :procRef => procRef.to_nfe_format
          }
      }
    end

  end

end