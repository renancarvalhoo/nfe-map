require "entidade_nfe"

module NFe

#Campo de uso exclusivo do Fisco
#informar o nome do campo no atributo xCampo
#e o conteúdo do campo no xTexto
  class ObservacoesFisco < NFe::EntidadeNFe
    nfe_attr :xTexto
    nfe_attr :xCampo
  end

end