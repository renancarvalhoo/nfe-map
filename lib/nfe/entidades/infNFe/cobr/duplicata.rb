require "entidades/nfe_entity"

module NFe

#Refere ao elemento dup do elemento cobr da nfe
#Contem dados das duplicatas
  class Duplicata

    #Numero da duplicata
    nfe_attr :nDup

    #Data de vencimento da duplicata
    nfe_attr :dVenc

    #Valor da duplicata
    nfe_attr :vDup

    def attributes
      @attributes = {
          'nDup' => nDup,
          'dVenc' => dVenc,
          'vDup' => vDup
      }
    end

  end
  
end
