require 'nfe/entidades/entidade_nfe'

module NFe

  class Destinatario < NFe::EntidadeNFe

    #Cnj ou cpf
    nfe_attr :cnpj

    #Cpf ou cnpj
    nfe_attr :cpf

    nfe_attr :xnome

    nfe_attr :endereco

    nfe_attr :ie

    #Inscrição na SUFRAMA (Obrigatório nas operações com as áreas com benefícios de
    #incentivos fiscais sob controle da SUFRAMA) PL_005d - 11/08/09 - alterado para aceitar 8 ou 9
    #dígitos
    nfe_attr :isuf

    nfe_attr :email

    def attributes
      @attributes = {
          'emit' => {
              'CNPJ' => cnpj,
              'CPF' => cpf,
              'xNome' => xnome,
              'enderDest' => endereco,
              'IE' => ie,
              'ISUF' => isuf,
              'email' => email
          }
      }
    end

  end
  
end