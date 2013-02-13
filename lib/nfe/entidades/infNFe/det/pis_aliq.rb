require 'nfe/entidades/entidade_nfe'

module NFe

  class PISAliq < NFe::EntidadeNFe

=begin
  Código de Situação Tributária do PIS.
  01 – Operação Tributável - Base de Cálculo = Valor da Operação Alíquota Normal
  (Cumulativo/Não Cumulativo);
  02 - Operação Tributável - Base de Calculo = Valor da Operação (Alíquota
  Diferenciada);
=end
    nfe_attr :CST

    nfe_attr :vBC #decimal

    nfe_attr :pPIS #decimal 3,2

    nfe_attr :vPIS #decimal 13,2

  end

end