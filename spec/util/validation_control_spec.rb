# describe "validation control" do

#   describe 'instances who implemented the control' do

#     before(:all) do

#       class Teste
#           include Util::ValidationControl

#           attr_accessor :teste_required
#           validates :teste_required, :required => true
#       end

#       @obj_test = Teste.new
#     end

#     it 'should have errors method' do
#       @obj_test.respond_to?(:errors).should be_true
#     end

#     it 'should have add_error method' do
#       @obj_test.respond_to?(:add_error).should be_true
#     end

#     it "should add a error message to an attribute" do
#       @obj_test.add_error(:teste_error_attr, 'invalid attribute')
#       @obj_test.errors.include?(:teste_error_attr).should be_true
#     end

#     it 'should have 2 errors and 1 attrs on errors hash' do
#       @obj_test.add_error(:teste_error_attr2, 'invalid attribute2')
#       @obj_test.errors.size.should == 2
#     end
    
#     it 'should include a validation to an atribute in the class' do
#       @obj_test.class.validations.include?(:teste_required).should be_true
#     end

#     it 'should validate requirede attribute' do
#       @obj_test.perform_validations
#       @obj_test.errors.include?(:teste_required).should be_true
#     end

#   end


# end