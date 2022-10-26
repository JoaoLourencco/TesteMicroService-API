

# Projeto Testes de Api expert com Robot Framework 👨🏻‍💻


Neste projeto construímos uma estratégia para automação de testes de uma API rest
que foi implementada dentro de uma arquitetura de micro serviços do sistema Burguer Eats, 
desenvolvido pela QAcademy https://app.qacademy.io/

# Conhecendo o Micro Serviço 🔍

O objetivo do micro serviço é captar parceiros para trabalharem dentro da plataforma
Buguer Eats, construindo um Marketplace de produtos. A arquitetura é composta por uma
Api rest do micro serviço, por um sistema de envio de e-mail para confirmar a validação do cadastro,
e a aplicação web para os testes manuais. 

Embora o objetivo seja testar a api rest do micro serviço, é importante que tenhamos todo
o eco sistema rodando para que entendamos o produto como um todo. O download da API está disponivel no repositório do projeto.

# Quais Cenários executamos nos testes da API?

 

## Método POST

**Should create a new partner:** Cenário onde criamos um cadastro para um novo parceiro com sucesso, além de validarmos o Status code 201. <br>
**Should return duplicate company name:** Cenário onde validamos a regra de negócio da API, na qual impede que seja repetido um mesmo nome de parceiro ao tentar fazer um cadastro
 


## Método GET

**Should return a partner list :** Cenário onde é retornado a lista de parceiros cadastrados. <br>
Should search partner by name: Cenário onde é retornado um parceiro pelo nome.



## Método PUT


**Should enable a partner:** Habilitando um parceiro <br>
**Should disable a partner:** Desabilitando um parceiro <br>
**Should return 404 on enable a partner:** Deve retornar status code 404 ao habilitar um parceiro <br>
**Should return 404 on disable a partner:** Deve retornar status code 404 ao desabilitar um parceiro <br>



## Método Delete


**Should remove a partner:** Deve remover um parceiro e validar o status code 204 <br>
**Should return 404 on remove partner:** Deve retornar o status code 404 ao tentar remover um parceiro inexistente <br>


 *Além dos testes, criamos massas dinâmica usando a linguagem python, tornando assim nossos testes de API totalmente independentes.*



