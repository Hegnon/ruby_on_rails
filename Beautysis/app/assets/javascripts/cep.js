$(document).ready(function() {
    $('#cliente_cep').blur(function() {
      var cep = $(this).val().replace(/\D/g, '');
  
      if (cep != "") {
        var validacep = /^[0-9]{8}$/;
  
        if(validacep.test(cep)) {
          $('#cliente_endereco').val('...');
          $('#cliente_bairro').val('...');
          $('#cliente_cidade').val('...');
          $('#cliente_estado').val('...');
  
          $.getJSON("https://viacep.com.br/ws/"+ cep +"/json/?callback=?", function(dados) {
            if (!("erro" in dados)) {
              $('#cliente_endereco').val(dados.logradouro);
              $('#cliente_bairro').val(dados.bairro);
              $('#cliente_cidade').val(dados.localidade);
              $('#cliente_estado').val(dados.uf);
            }
          });
        } else {
          alert("Formato de CEP inválido.");
        }
      } else {
        limpa_formulario_cep();
      }
    });
  });
  
  function limpa_formulario_cep() {
    $('#cliente_endereco').val('');
    $('#cliente_bairro').val('');
    $('#cliente_cidade').val('');
    $('#cliente_estado').val('');
  }
  