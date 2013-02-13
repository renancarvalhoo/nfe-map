require 'nfe/entidades/entidade_nfe'

module NFe

  class Issqn < NFe::EntidadeNFe

    #  Valor da BC do ISSQN
    nfe_attr :vBC

    #  Alíquota do ISSQN
    nfe_attr :vAliq

    #  Valor da do ISSQN
    nfe_attr :vISSQN

    #  Informar o município de ocorrência do fato gerador do ISSQN.
    #    Utilizar a Tabela do IBGE (Anexo VII - Tabela de UF, Município e País). “Atenção,
    #    não vincular com os campos B12, C10 ou E10” v2.0
    #  TCodMunIBGE
    nfe_attr :cMunFG

    #  Informar o Item da lista de serviços da LC 116/03 em que se classifica o serviço.
    #  TCListServ
    nfe_attr :cListServ


=begin
Informar o código da tributação do ISSQN:
N – NORMAL;
R – RETIDA;
S –SUBSTITUTA;
I – ISENTA. (v.2.0)
=end
    nfe_attr :cSitTrib


    def cSitTrib=(value)
      if NFe::Config::Params::CODIGO_DA_TRIBUTACAO.include? value
        @cSitTrib = value
      else
        raise 'Código de tributação ISSQN inválido'
      end
    end
  end

end