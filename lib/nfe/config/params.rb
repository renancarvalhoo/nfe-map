#coding: utf-8
module NFe

  module Config

    module Params

      NAMESPACE_NFE = 'http://www.portalfiscal.inf.br/nfe'
      NAMESPACE_SIG = 'http://www.w3.org/2000/09/xmldsig#'
      NAMESPACE_SOAP = 'http://www.w3.org/2003/05/soap-envelope'

      VERSAO_PADRAO = '2.00'

      WEBSERVICE_URL = NAMESPACE_NFE # FIXME

      REGIMES_TRIBUTARIOS = {
        1 => 'Simples Nacional',
        2 => 'Simples Nacional - excesso de sublimite de receita bruta',
        3 => 'Regime Normal'
      }.freeze

      TIPOS_DOCUMENTO = ['CNPJ', 'CPF'].freeze

      CODIGO_BRASIL = '1058'


      CODIGO_DA_TRIBUTACAO = {
        'N' => 'NORMAL',
        'R' => 'RETIDA',
        'S' => 'SUBSTITUTA',
        'I' => 'ISENTA. (v.2.0)'
      }.freeze


      IPI_TIPOS_TRIBUTACAO = {
        '00' => 'IPI 00 - Entrada com recuperacao de credito',
        '01' => 'IPI 01 - Entrada tributada com aliquota zero',
        '02' => 'IPI 02 - Entrada isenta',
        '03' => 'IPI 03 - Entrada nao-tributada',
        '04' => 'IPI 04 - Entrada imune',
        '05' => 'IPI 05 - Entrada com suspensao',
        '49' => 'IPI 49 - Outras entradas',
        '50' => 'IPI 50 - Saida tributada',
        '51' => 'IPI 51 - Saida tributada com aliquota zero',
        '52' => 'IPI 52 - Saida isenta',
        '53' => 'IPI 53 - Saida nao-tributada',
        '54' => 'IPI 54 - Saida imune',
        '55' => 'IPI 55 - Saida com suspensao',
        '99' => 'IPI 99 - Outas saidas'
      }.freeze

      IPI_TIPOS_CALCULO = [
        'Percentual',
        'Em Valor'
      ].freeze

      PIS_TIPOS_TRIBUTACAO = [
        '01' => 'PIS 01 - Operacao Tributavel - Base de Calculo = Valor da Operacao Aliquota...', # FIXME
        '02' => 'PIS 02 - Operacao Tributavel - Base de Calculo = Valor da Operacao Aliquota...', # FIXME
        '03' => 'PIS 03 - Operacao Tributavel - Base de Calculo = Quantidade Vendida x Aliquota...', # FIXME
        '04' => 'PIS 04 - Operacao Tributavel - Tributacao Monofasica - [Aliquota Zero]',
        '06' => 'PIS 06 - Operacao Tributavel - Aliquota Zero',
        '07' => 'PIS 07 - Operacao Isenta da Contribuicao',
        '08' => 'PIS 08 - Operacao sem Indidencia da Contribuicao',
        '09' => 'PIS 09 - Operacao com Suspensao da Contribuicao',
        '99' => 'PIS 99 - Outras operacoes'
      ].freeze

      PIS_TIPOS_CALCULO = IPI_TIPOS_CALCULO

      COFINS_TIPOS_TRIBUTACAO = [
        '00' => 'COFINS 01 - Operacao Tributavel - Base de Calculo = Valor da Operacao Aliquota...', # FIXME
        '02' => 'COFINS 02 - Operacao Tributavel - Base de Calculo = Valor da Operacao [Aliquota...', # FIXME
        '03' => 'COFINS 03 - Operacao Tributavel - Base de Calculo = Quantidade Vendida x Aliquota...', # FIXME
        '04' => 'COFINS 04 - Operacao Tributavel - Tributacao Monofasica - [Aliquota Zero]',
        '06' => 'COFINS 06 - Operacao Tributavel - Aliquota Zero',
        '07' => 'COFINS 07 - Operacao Isenta da Contribuicao',
        '08' => 'COFINS 08 - Operacao sem Indidencia da Contribuicao',
        '09' => 'COFINS 09 - Operacao com Suspensao da Contribuicao',
        '99' => 'COFINS 99 - Outras operacoes'
      ].freeze

      COFINS_TIPOS_CALCULO = IPI_TIPOS_CALCULO

      MODALIDADES_FRETE = {
        0 => 'Por conta do emitente',
        1 => 'Por conta do destinatario',
        2 => 'Por conta de terceiros',
        9 => 'Sem frete'
      }.freeze

      CODIGOS_ESTADOS = {
        :RO => '11',
        :AC => '12',
        :AM => '13',
        :RR => '14',
        :PA => '15',
        :AP => '16',
        :TO => '17',
        :MA => '21',
        :PI => '22',
        :CE => '23',
        :RN => '24',
        :PB => '25',
        :PE => '26',
        :AL => '27',
        :SE => '28',
        :BA => '29',
        :MG => '31',
        :ES => '32',
        :RJ => '33',
        :SP => '35',
        :PR => '41',
        :SC => '42',
        :RS => '43',
        :MS => '50',
        :MT => '51',
        :GO => '52',
        :DF => '53',
      }.freeze

      TIPOS_AMBIENTE = {
        1 => 'Producao',
        2 => 'Homologacao'
      }.freeze

      ORIGEM_DO_PROCESSO = {
        1 => 'SEFAZ',
        2 => 'Justiça Federal',
        3 => 'Justiça Estadual',
        4 => 'Secex/RFB',
        9 => 'Outros'
      }.freeze

      IDENTIFICADOR_LOCAL_DESTINO_OPERACAO = {
        1 => 'Operação Interna',
        2 => 'Operação interestadual',
        3 => 'Operação com o exterior'
      }.freeze

      module Impostos

        MOD_BC_ST = {
          0 => 'Preço tabelado ou máximo sugerido',
          1 => 'Lista Negativa (valor)',
          2 => 'Lista Positiva (valor)',
          3 => 'Lista Neutra (valor)',
          4 => 'Margem Valor Agregado (%)',
          5 => 'Pauta (valor)'
        }.freeze

        module PIS

          CST_ALIQ = {
            '01' => 'Operação Tributável - Base de Cálculo = Valor da Operação Alíquota Normal (Cumulativo/Não Cumulativo)',
            '02' => 'Operação Tributável - Base de Calculo = Valor da Operação (Alíquota Diferenciada)'
          }.freeze

          CST_NT = {
            '04' => 'Operação Tributável - Tributação Monofásica - (Alíquota Zero)',
            '06' => 'Operação Tributável - Alíquota Zero',
            '07' => 'Operação Isenta da contribuição',
            '08' => 'Operação Sem Incidência da contribuição',
            '09' => 'Operação com suspensão da contribuição'
          }.freeze

          CST_OUTROS = {
            49 => 'Outras Operações de Saída',
            50 => 'Operação com Direito a Crédito - Vinculada Exclusivamente a Receita Tributada no Mercado Interno',
            51 => 'Operação com Direito a Crédito – Vinculada Exclusivamente a Receita Não Tributada no Mercado Interno',
            52 => 'Operação com Direito a Crédito - Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno',
            53 => 'Operação com Direito a Crédito - Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno',
            54 => 'Operação com Direito a Crédito - Vinculada a Receitas Tributadas no Mercado Interno e de Exportação',
            55 => 'Operação com Direito a Crédito - Vinculada a Receitas Não-Tributadas no Mercado Interno e de Exportação',
            56 => 'Operação com Direito a Crédito - Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno, e de Exportação',
            60 => 'Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita Tributada no Mercado Interno',
            61 => 'Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita Não-Tributada no Mercado Interno',
            62 => 'Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita de Exportação',
            63 => 'Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno',
            64 => 'Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas no Mercado Interno e de Exportação',
            65 => 'Crédito Presumido - Operação de Aquisição Vinculada a Receitas Não-Tributadas no Mercado Interno e de Exportação',
            66 => 'Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno, e de Exportação',
            67 => 'Crédito Presumido - Outras Operações',
            70 => 'Operação de Aquisição sem Direito a Crédito',
            71 => 'Operação de Aquisição com Isenção',
            72 => 'Operação de Aquisição com Suspensão',
            73 => 'Operação de Aquisição a Alíquota Zero',
            74 => 'Operação de Aquisição sem Incidência da Contribuição',
            75 => 'Operação de Aquisição por Substituição Tributária',
            98 => 'Outras Operações de Entrada',
            99 => 'Outras Operações.'
          }.freeze

          CST_QTDE = {
            '03' => 'Operação Tributável - Base de Calculo = Quantidade Vendida x Alíquota por Unidade de Produto'
          }.freeze

        end

        module COFINS

          CST_ALIQ = NFe::Config::Params::Impostos::PIS::CST_ALIQ

          CST_NT = NFe::Config::Params::Impostos::PIS::CST_NT

          CST_OUTROS = NFe::Config::Params::Impostos::PIS::CST_OUTROS

          CST_QTDE = NFe::Config::Params::Impostos::PIS::CST_QTDE

        end

        module ICMS

          ORIGENS = {
            0 => 'Nacional',
            1 => 'Estrangeira - Importacao Direta',
            2 => 'Estrangeira - Adquirida no Mercado Interno'
          }.freeze

          CST = {
            '00' => 'ICMS 00 - Tributada integralmente',
            '10' => 'ICMS 10 - Tributada com cobranca do ICMS por substituicao tributaria',
            '20' => 'ICMS 20 - Com reducao da base de calculo',
            '30' => 'ICMS 30 - Isenta ou nao tributada e com cobranca do ICMS por substituicao tributaria',
            '40' => 'ICMS 40 - Isenta',
            '41' => 'ICMS 41 - Nao tributada',
            '50' => 'ICMS 50 - Suspensao',
            '51' => 'ICMS 51 - Diferimento',
            '60' => 'ICMS 60 - Cobrado anteriormente por substituicao tributaria',
            '70' => 'ICMS 70 - Com reducao da base de calculo e cobranca do ICMS por substituicao tributaria',
            '90' => 'ICMS 90 - Outras'
          }.freeze

          MODALIDADES = {
            0 => 'Margem Valor Agregado',
            1 => 'Pauta [valor]',
            2 => 'Preco Tabelado Max. [valor]',
            3 => 'Valor da Operacao'
          }.freeze

        end


      end

      module URLS

        SOAP_URLS = {
          :sp => {
            :base_url => 'https://homologacao.nfe.fazenda.sp.gov.br/nfeweb/services/',
            :recepcao => 'nferecepcao.asmx',
            :cancelamento => 'nfecancelamento.asmx',
            :inutilizacao => 'nfeinutilizacao.asmx',
            :consulta => 'nfeconsulta.asmx',
            :status_servico => 'nfestatusservico.asmx',
            :consulta_cadastro => 'cadconsultacadastro.asmx',
          },
        }.freeze

      end

    end

  end

end
