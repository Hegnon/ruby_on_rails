require "test_helper"

class ClientesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cliente = clientes(:one)
  end

  test "should get index" do
    get clientes_url
    assert_response :success
  end

  test "should get new" do
    get new_cliente_url
    assert_response :success
  end

  test "should create cliente" do
    assert_difference("Cliente.count") do
      post clientes_url, params: { cliente: { bairro: @cliente.bairro, cep: @cliente.cep, cidade: @cliente.cidade, complemento: @cliente.complemento, data_nascimento: @cliente.data_nascimento, email: @cliente.email, idade: @cliente.idade, indicacao: @cliente.indicacao, instagram: @cliente.instagram, logradouro: @cliente.logradouro, nome: @cliente.nome, profissao: @cliente.profissao, uf: @cliente.uf } }
    end

    assert_redirected_to cliente_url(Cliente.last)
  end

  test "should show cliente" do
    get cliente_url(@cliente)
    assert_response :success
  end

  test "should get edit" do
    get edit_cliente_url(@cliente)
    assert_response :success
  end

  test "should update cliente" do
    patch cliente_url(@cliente), params: { cliente: { bairro: @cliente.bairro, cep: @cliente.cep, cidade: @cliente.cidade, complemento: @cliente.complemento, data_nascimento: @cliente.data_nascimento, email: @cliente.email, idade: @cliente.idade, indicacao: @cliente.indicacao, instagram: @cliente.instagram, logradouro: @cliente.logradouro, nome: @cliente.nome, profissao: @cliente.profissao, uf: @cliente.uf } }
    assert_redirected_to cliente_url(@cliente)
  end

  test "should destroy cliente" do
    assert_difference("Cliente.count", -1) do
      delete cliente_url(@cliente)
    end

    assert_redirected_to clientes_url
  end
end
