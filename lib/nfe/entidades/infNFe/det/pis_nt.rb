require 'nfe/entidades/entidade_nfe'

module NFe

  class PisNt < NFe::EntidadeNFe

=begin
  Código de Situação Tributária do PIS.
  04 - Operação Tributável - Tributação Monofásica - (Alíquota Zero);
  06 - Operação Tributável - Alíquota Zero;
  07 - Operação Isenta da contribuição;
  08 - Operação Sem Incidência da contribuição;
  09 - Operação com suspensão da contribuição;
=end
    nfe_attr :CST

  end

end