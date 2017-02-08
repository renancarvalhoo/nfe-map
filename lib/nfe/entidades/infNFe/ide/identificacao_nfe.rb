require 'nfe/entidades/entidade_nfe'

module NFe

  #elemento ide da NFe
  class IdentificacaoNFe < NFe::EntidadeNFe

    #TCodIBGE
    nfe_attr :cUF

    #Codigo numerico que compoe a chave de acesso. Numero aleatorio gerado pelo
    #emitente para cada NF-e. (8 digitos)
    nfe_attr :cNF

    #Natureza da operacao min 1 max 60 caracteres
    nfe_attr :natOp

    #Indicador da forma de pagamento 0-a vista 1-a prazo 2-outros
    nfe_attr :indPag

    #TMod
    nfe_attr :mod

    #TSerie
    nfe_attr :serie

    #TNF
    nfe_attr :nNF

    #Data de emissão do documento fiscal (AAAA-MM-DD)
    nfe_attr :dhEmi

    #Data de saida ou Hora da saida ou entrada da mercadoria / produto
    nfe_attr :dhSaiEnt

    #Tipo do documento fiscal (0-entrada 1-saida)
    nfe_attr :tpNF

    nfe_attr :idDest

    #Codigo do municipio do IBGE TCodMunIBGE
    nfe_attr :cMunFG

    #Grupo de informacao da NFE referenciada
    nfe_attr :NFref

    #Formato de impressao do DANFE (1-retrato 2-paisagem)
    nfe_attr :tpImp

    #Forma de emissao da NF-e (1...5)
    #1-normal
    #2-contingencia FS
    #3-Contingencia SCAN
    #4-contingencia DPEC
    #5-contingencia FSDA
    nfe_attr :tpEmis

    #Digito verificador da chave de acesso da nfe
    nfe_attr :cDV

    #TAmb
    #Identificacao do ambiente
    nfe_attr :tpAmb

    #TFinNFe
    #Finalidade da emissao da NF-e
    #1-normal
    #2-complementar
    #3-ajuste
    nfe_attr :finNFe

    nfe_attr :indFinal

    nfe_attr :indPres
    #TProcEmi
    #Processo de emissao utilizado com a seguinte codificacao
    #0-com aplicativo do contribuinte
    #1-avulsa pelo fisco
    #2-avulsa, pelo contribuinte com seu certificado digital, atraves do site do FISCO
    #3 - pelo contribuinte com aplicativo do FISCO
    nfe_attr :procEmi

    #Versao do aplicativo utilizado no processo de emissao
    #de 1 a 20 caracteres
    nfe_attr :verProc

    #informar apenas para tpEmis diferente de 1
    #Data e Hora de entrada em contingencia
    #formato AAAA-MM-DDTHH:MM:SS
    nfe_attr :dhCont

    #informar apenas para tpEmis diferente de 1
    #Informar a justificativa de entrada
    #(de 15 a 256 caracteres)
    nfe_attr :xJust

    def attributes
      {:ide => super}
    end

  end

end
