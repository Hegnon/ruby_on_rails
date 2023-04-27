require "application_system_test_case"

class ClientesTest < ApplicationSystemTestCase
  setup do
    @cliente = clientes(:one)
  end

  test "visiting the index" do
    visit clientes_url
    assert_selector "h1", text: "Clientes"
  end

  test "should create cliente" do
    visit clientes_url
    click_on "New cliente"

    fill_in "Bairro", with: @cliente.bairro
    fill_in "Cep", with: @cliente.cep
    fill_in "Cidade", with: @cliente.cidade
    fill_in "Complemento", with: @cliente.complemento
    fill_in "Data nascimento", with: @cliente.data_nascimento
    fill_in "Email", with: @cliente.email
    fill_in "Idade", with: @cliente.idade
    fill_in "Indicacao", with: @cliente.indicacao
    fill_in "Instagram", with: @cliente.instagram
    fill_in "Logradouro", with: @cliente.logradouro
    fill_in "Nome", with: @cliente.nome
    fill_in "Profissao", with: @cliente.profissao
    fill_in "Uf", with: @cliente.uf
    click_on "Create Cliente"

    assert_text "Cliente was successfully created"
    click_on "Back"
  end

  test "should update Cliente" do
    visit cliente_url(@cliente)
    click_on "Edit this cliente", match: :first

    fill_in "Bairro", with: @cliente.bairro
    fill_in "Cep", with: @cliente.cep
    fill_in "Cidade", with: @cliente.cidade
    fill_in "Complemento", with: @cliente.complemento
    fill_in "Data nascimento", with: @cliente.data_nascimento
    fill_in "Email", with: @cliente.email
    fill_in "Idade", with: @cliente.idade
    fill_in "Indicacao", with: @cliente.indicacao
    fill_in "Instagram", with: @cliente.instagram
    fill_in "Logradouro", with: @cliente.logradouro
    fill_in "Nome", with: @cliente.nome
    fill_in "Profissao", with: @cliente.profissao
    fill_in "Uf", with: @cliente.uf
    click_on "Update Cliente"

    assert_text "Cliente was successfully updated"
    click_on "Back"
  end

  test "should destroy Cliente" do
    visit cliente_url(@cliente)
    click_on "Destroy this cliente", match: :first

    assert_text "Cliente was successfully destroyed"
  end
end
