require "../entidade_nfe"

#Dados do ICMS Normal e ST
class ICMS < NFe::EntidadeNFe



  #são todos choice, ou seja, somente um deles será preenchido
  #os numeros representam apenas o código do CST, e cada um é uma entidade pois contem atributos necessários
  #diferentes dependendo do CST
  nfe_attr :ICMS00, :ICMS10, :ICMS20, :ICMS30, :ICMS40, :ICMS51, :ICMS60, :ICMS70, :ICMS90,
           :ICMSPart, :ICMSST, :ICMSSN101, :ICMSSN102, :ICMSSN201, :ICMSSN202, :ICMSSN500, :ICMSSN900 #nfe v2.0

  def attributes
    {:ICMS => super}
  end

end