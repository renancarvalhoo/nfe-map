# -*- coding: utf-8 -*-

module NFe

  class Avulsa < NFe::EntidadeNFe

    #CNPJ do Órgão emissor
    nfe_attr :CNPJ

    #Órgão emitente
    nfe_attr :xOrgao

    #Matrícula do agente
    nfe_attr :matr

    #Nome do agente
    nfe_attr :xAgente

    #Telefone
    nfe_attr :fone

    #UF
    nfe_attr :UD

    #Número do Documento de Arrecadação de Receita
    nfe_attr :nDar

    #Data de emissão do DAR (AAAA-MM-DD)
    nfe_attr :dEmi

    #Valor Total constante no DAR
    nfe_attr :vDar

    #Repartição Fiscal emitente
    nfe_attr :repEmi

    #Data de pagamento do DAR (AAAA-MM-DD)
    nfe_attr :dPag

    def attributes
      {:avulsa => super}
    end
    
  end

end
