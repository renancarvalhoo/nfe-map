require "../entidade_nfe"

class ICMS40 < NFe::EntidadeNFe

  nfe_attr :orig

#  Tributação pelo ICMS
#  40 - Isenta
#  41 - Não tributada
#  50 - Suspensão
  nfe_attr :CST

  #seq nao obrigatorio

    #    O valor do ICMS será informado apenas nas operações com veículos beneficiados com a desoneração condicional do ICMS. (v2.0)
    nfe_attr :vICMS

    #    Este campo será preenchido quando o campo anterior
    #    estiver preenchido.
    #    Informar o motivo da desoneração:
    #    1 – Táxi;
    #    2 – Deficiente Físico;
    #    3 – Produtor Agropecuário;
    #    4 – Frotista/Locadora;
    #    5 – Diplomático/Consular;
    #    6 – Utilitários e Motocicletas da Amazônia Ocidental e Áreas de Livre
    #    Comércio (Resolução 714/88 e 790/94 – CONTRAN e suas alterações);
    #    Comércio (Resolução 714/88 e 790/94 – CONTRAN e suas alterações);
    #    7 – SUFRAMA;
    #    9 – outros. (v2.0)
    nfe_attr :motDesICMS
  
  #end

  def attributes
    {:ICMS40 => super}
  end
end
