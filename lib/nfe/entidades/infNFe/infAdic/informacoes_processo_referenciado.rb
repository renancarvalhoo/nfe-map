require 'nfe/entidades/entidade_nfe'
require 'config/params'

module NFe

#Grupo de informações do processo referenciado
  class InformacoesProcessoReferenciado < NFe::EntidadeNFe
    #Indentificador do processo ou ato concessório
    nfe_attr :nProc

    #Origem do processo, ORIGEM_DO_PROCESSO
    nfe_attr :indProc

    def infProc=(value)
      if NFe::Config::Params::ORIGEM_DO_PROCESSO.include? value
        @infProc = value
      else
        raise 'Origem do processo inválida'
      end
    end

  end

end