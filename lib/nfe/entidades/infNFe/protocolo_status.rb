require 'nfe/entidades/nfe_entity'
require 'nfe_ruby/config/params'

module NFe

#elemento infProt dentro do tipo TProtNFe
  class ProtocoloStatus < NFe::EntidadeNFe

    #Identificação do ambiente : 1-Producao 2-Homologação
    nfe_attr :tpAmb

    #Versao do aplicativo que processou a NF-e
    nfe_attr :verAplic

    #Chaves de acesso da NF-e, compostas por: UF do emitente, AAMM da emissão da NFe, CNPJ
    #do emitente, modelo, série e número da NF-e e código numérico+DV.
    nfe_attr :chNFe

    #Data e hora de processamento, no formato AAAA-MM-DDTHH:MM:SS. Deve ser preenchida com
    #data e hora da gravação no Banco em caso de Confirmação. Em caso de Rejeição, com data e hora do
    #recebimento do Lote de NF-e enviado.
    nfe_attr :dhRecbto

    #Número do Protocolo de Status da NF-e. 1 posição (1 – Secretaria de Fazenda Estadual 2
    #– Receita Federal); 2 - códiga da UF - 2 posições ano; 10 seqüencial no ano.
    nfe_attr :nProt

    #Digest Value da NF-e processada. Utilizado para conferir a integridade da NF-e original.
    nfe_attr :digVal

    #codigo status da mensagem enviada
    nfe_attr :cStat

    #Descrição literal do status do serviço solicitado
    nfe_attr :xMotivo

    nfe_attr :Id #opcional

    #TODO o que significa isso? esta embaixo do Id
    #<xs:element ref="ds:Signature" minOccurs="0"/>

    def tpAmb=(value)
      if NFe::Config::Params::TIPOS_DE_AMBIENTE.include? value
        @tpAmb = value
      else
        raise 'Tipo de ambiente inválido'
      end
    end

  end

end