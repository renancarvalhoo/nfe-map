# -*- coding: utf-8 -*-
require 'nfe/entidades/entidade_nfe'

module NFe

  class Emitente < NFe::EntidadeNFe
    # - Nome/Razao Social (obrigatório)
    nfe_attr :razao_social

    # - Nome Fantasia
    nfe_attr :nome_fantasia

    # - Nome
    nfe_attr :nome

    # - CNPJ (obrigatorio ou CPF)
    nfe_attr :cnpj

    # - CPF (obrigatorio ou CNPJ)
    nfe_attr :cpf

    # - Inscricao Estadual (obrigatorio)
    nfe_attr :inscricao_estadual

    # - CNAE Fiscal
    nfe_attr :cnae_fiscal

    # - Inscricao Municipal
    nfe_attr :inscricao_municipal

    # - Inscricao Estadual (Subst. Tributario)
    nfe_attr :inscricao_estadual_subst_tributaria

    # Logotipo
    nfe_attr :logotipo

    #Grupo de informações de interesse da Prefeitura
    nfe_attr :grupo_informacoes_interesse_prefeitura

    #CNAE fiscal
    nfe_attr :cnae

    #Código de Regime Tributário.(Obrigatorio)
    nfe_attr :crt

    nfe_attr :endereco_emitente

    def endereco_emitente=(tEnderEmi)
      @endereco_emitente = tEnderEmi if tEnderEmi.is_a? EnderecoEmitente
    end

    def crt=(valor)
      @crt = valor if REGIMES_TRIBUTARIOS.include? valor
    end

    def initialize
      @endereco_pais = NFe::Config::Params::CODIGO_BRASIL
    end

    def to_s
      @cnpj
    end

    def attributes
      @attributes = {
          'emit' => {
              'CNPJ' => cnpj,
              'CPF' => cpf,
              'xNome' => nome,
              'xFant' => nome_fantasia,
              'enderEmit' => endereco_emitente.to_nfe_format,
              'ie' => inscricao_estadual,
              'iest' => inscricao_estadual,
              'IM' => grupo_informacoes_interesse_prefeitura,
              'CNAE' => cnae,
              'CRT' => crt
          }
      }
    end

  end

end
