require 'nfe/entidades/entidade_nfe'

module NFe

  class Destinatario < NFe::EntidadeNFe

    #Cnj ou cpf
    nfe_attr :cnpj

    #Cpf ou cnpj
    nfe_attr :cpf

    nfe_attr :xnome

    nfe_attr :endereco

    nfe_attr :ind_ie_dest

    nfe_attr :IE

    #Inscrição na SUFRAMA (Obrigatório nas operações com as áreas com benefícios de
    #incentivos fiscais sob controle da SUFRAMA) PL_005d - 11/08/09 - alterado para aceitar 8 ou 9
    #dígitos

    nfe_attr :isuf

    #inscrição municipal
    nfe_attr :im

    nfe_attr :email

    def attributes
      @attributes = {
        'emit' => {
          'CNPJ' => cnpj,
          'CPF' => cpf,
          'xNome' => xnome,
          'enderDest' => endereco,
          'indIEDest' => ind_ie_dest,
          'IE' => ie,
          'ISUF' => isuf,
          'IM' => im,
          'email' => email
        }
      }
    end

  end

end
