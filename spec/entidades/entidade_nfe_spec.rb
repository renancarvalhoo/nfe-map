describe 'NFe::EntidadeNFe' do
  describe 'Metodos de classe' do
    subject {NFe::EntidadeNFe}

    it {should respond_to :nfe_attr}
    it {should respond_to :nfe_attrs}
  end

  describe 'Metodos de instancia' do
    before(:all) do
      class Teste < NFe::EntidadeNFe
        nfe_attr :teste_attr
      end

      class Teste2 < NFe::EntidadeNFe
        nfe_attr :teste_attr2
      end
      
      @obj_test = Teste.new
    end

    it 'nfe_attrs retorna um array contendo os atributos da nfe' do
      @obj_test.nfe_attrs.should eql(["teste_attr"])
    end

    it 'nao pode compartilhar atributos quando herdada' do
      @obj_test.nfe_attrs.should eql(["teste_attr"])
    end

    it 'gera um xml valido' do
      @obj_test.teste_attr = "valor"
      @obj_test.to_nfe.should eql("<?xml version=\"1.0\"?>\n<teste>\n  <teste_attr>valor</teste_attr>\n</teste>\n")
    end
  end
end
