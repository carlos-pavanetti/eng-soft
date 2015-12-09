require "spec_helper"

describe Usuario do
  context "Criar Usuario" do
    it "cria usuario" do
      expect(FactoryGirl.create(:usuario)).to be_valid
    end

    it "inválido sem nome" do
      expect(FactoryGirl.build :usuario, nome: nil).not_to be_valid
    end

    it "inválido sem email" do
      expect(FactoryGirl.build :usuario, email: nil).not_to be_valid
    end

    it "inválido sem senha" do
      expect(FactoryGirl.build :usuario, senha: nil).not_to be_valid
    end

    it "não permite email duplicado" do
      usuario = FactoryGirl.create(:usuario)
      expect(FactoryGirl.build :usuario, email: usuario.email).not_to be_valid
    end

    it "não permite email inválido" do
      expect(FactoryGirl.build :usuario, email: Faker::Lorem.word).not_to be_valid
    end
  end

  context "Relacionamento" do
    it "encontra amigos na lista de amigos"
    it "não encontra outros usuários na lista de amigos"
    it "envia solicitação de amizade"
    it "adiciona amigo"
    it "exclui amigo"
  end
end
