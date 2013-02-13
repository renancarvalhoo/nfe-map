require 'nfe/entidades/entidade_nfe'

module NFe

#Fornecimentos diários // v2.0
#elemento forDia do elemento cana da NFe
  class FornecimentoDiario < NFe::EntidadeNFe

    #Quantidade em quilogramas - peso liquido // 2.0
    nfe_attr :qtde

    #Número do dia
    nfe_attr :dia

#TODO: o que é isso?
=begin
<xs:unique name="pk_Dia">
  <xs:selector xpath="./*"/>
  <xs:field xpath="@dia"/>
</xs:unique>
=end

  end
  
end