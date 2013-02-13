require 'nfe/entidades/entidade_nfe'

module NFe

#Elemento NFref do elemento ide da NFe
  class GrupoInformacoesNFe < NFe::EntidadeNFe

    #TChNFe
    #Chave de acesso das NF-e referenciadas.
    nfe_attr :refNFE

    #DadosNFe1A
    nfe_attr :refNF

    #GrupoInformacoesNfProdutor
    nfe_attr :refNFP

    #TChNFe
    #Utilizar esta TAG para referenciar um CT-e emitido anteriormente vinculada a NF-e atual
    nfe_attr :refCTE

    #GrupoCupomFiscal
    nfe_attr :refECF

  end

end