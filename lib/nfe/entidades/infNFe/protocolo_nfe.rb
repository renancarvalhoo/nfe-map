module NFe
#Tipo Protocolo de status resultado do processamento da NF-e
  class ProtocoloNFe < ProtocoloStatus
  	xml_name :TProtNFe

    #dados do protocolo de status
    nfe_attr :infProt #aparece cabecalho

    #versao
    nfe_attr :versao

  end

end