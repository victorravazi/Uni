const formulario = document.getElementById('phoneForm');
formulario.addEventListener('submit', function(event) {
    event.preventDefault();

    const nome = document.getElementById('name').value.trim();
    const telefone = document.getElementById('phone').value.trim();
    if(nome === null || telefone === null){
        alert('Preencha o campo!!!!!');
        return;
    }

    document.getElementById('nome').value = '';
    document.getElementById('telefone').value = '';
    alert('Formulario enviado com sucesso');

    let telefones = [
        {nome: 'Joao', telefone: '12345',
         nome: 'Joao', telefone: '12345',
         nome: 'Joao', telefone: '12345'
        }
    ];

    function exibirTelefones() {
        const listaTelefones = document.getElementById('phoneList');
        listaTelefones.innerHTML = '';
        telefones.forEach(function(contato) {
            const item = document.createElement('li');
            
        
        }
    }
})

