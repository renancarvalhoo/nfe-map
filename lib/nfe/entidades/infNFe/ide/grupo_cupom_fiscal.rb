require 'nfe/entidades/entidade_nfe'

module NFe

#refECF do ide da TNFe
#Grupo do cupom fiscal da nfe
  class GrupoCupomFiscal < NFe::EntidadeNFe

    #Codigo modelo do documento fiscal
    #2B - Cupom fiscal emitido por maquina registradora (nao ECF)
    #2C - Cupom Fiscal PDV
    #2D - Cupo fiscal emitido por ECF
    nfe_attr :mod

    #Informar o numero de ordem sequencial do ECF que emitiu o cupom vinculado
    #[0-9]{1,3}
    nfe_attr :nECF

    #Informar o nro do contador de ordem da operacao - COO vinculado a NF-e
    nfe_attr :nCOO

  end

end