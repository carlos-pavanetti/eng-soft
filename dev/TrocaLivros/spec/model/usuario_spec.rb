require "spec_helper"

describe Usuario do
  it "cria usuario" do
    expect(FactoryGirl.create(:usuario)).to be_valid
  end

  it "inválido sem nome" do
    expect(FactoryGirl.build(:usuario, nome: nil)).not_to be_valid
  end

  it "inválido sem email" do
    expect(FactoryGirl.build(:usuario, email: nil)).not_to be_valid
  end

  it "inválido sem senha" do
    expect(FactoryGirl.build(:usuario, senha: nil)).not_to be_valid
  end
end
