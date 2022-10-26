

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


# O que precisaremos para realizar os Testes?

**Python**<br/>
1-Download: https://www.python.org/downloads/<br/>
2-Para Validarmos a instalação do Python, devemos abrir o CDM
e digitarmos python --version, o resultado esperado é que o CMD informe a versão do python, confirmando assim sua instalação.<br/>
![enter image description here](https://lh3.googleusercontent.com/g7Y2Jx2OFEXyAZemMmPF11FtpTG5XVoPYCOGR7w2THVfPssXwFftiM54Q3gyRisH9JZikgDUdQJjwcNIU6wJIbqHguSXJGBApIAuXUXvRtCRwA5sP4w52FLDbOj4vc1Vn1C-OhC_IvT9uONkXA2vgFYeRSPNglm2QA0VV_tMel5txYsJqDI--h8CMCLKqnzsXZOfYFBaZ__yQ_GIJv2MemP1xKId11AAsEfdNZAsGjReywaNAAqy5Mh69FEtWMN1ix2kz_-VQ77DyVcEI3qk7DXz2I1bhzyFgYXS6SBtVeCCscp2Cj1MlWcWca_9gBk5xcI0pShTY9vkc57QB8qRvhB3q0LelzuiRjstqCsFZrRzCX0Ajxi9oMNklWagzxPffDjIw4ITiRTg1AqbIroz8Bk-miQtS7pLFrKn4k_Hitl465WiFgeJ8zgUJAOQN0ogDCFOyX9ZMUiYV9n5JuWY5krc389-pRFs7xnB7LANhnpBeRQmFs-dAZVsc3aENe8_NHyvgYpWqwHw-f_LN1isRG9kSROWJ4MEFJaOpf9yTjFrcUWKT4ddOZXgC0aooaMkxrjs4Qxe3_lsCZf-d9oc6WsK2tuLnUMEWD_w8G0o7_sXjJx__B146-i4wSPzEBHs-r4usap9e5B5R-GSHhYJ8cmRqfkEomvDvUiSBoUewyGiYiGSvt_7EabJQyo0PstiY-gLzHzSlbcZmBaG35pJgLToiAZlKTBwbLGi4T8uFvzsk1by6wCyUG98SSS-UIv5qHdWVyGqrAQyPtV2aF_BOjqA0gC2d7qfhVwvpVfGZw77QiQZEogdZaCLuLpKdcIHsUrSIZgOlybFyn06h0EgvmgnqI84rqbKyXWLExcvJmCmmGvUF0Ip8OSLj_Mvyz5yA-ZhtLgVgeGQMr5Sk-sHrnM0N7m93wT4mODtWK1dVm3X=w246-h37-no?authuser=0)

**Visual Studio Code**<br/>
Download: https://code.visualstudio.com/download

**Git for Windows** (Opcional)<br/>
Download: https://gitforwindows.org/

**Robot Framework**<br/>
1-No CMD, digite o comando: pip install robot framework.<br/>
2-Para Validarmos a instalação do Robot, devemos abrir o CDM
e digitarmos o comando: robot --version, o resultado esperado é que o CMD informe a versão do Robot, confirmando assim sua instalação.<br/> 
![enter image description here](https://lh3.googleusercontent.com/ZrpWmTcqUJRWrLrkdZ1xgbeDkgeAClRFiaX3LHUuxz8gXYv_sGJzQ2G_EFCJen4L4D4mNUiWM0YcyXz4BDTQ1R82lkgn3ixbu3YPHsr-4KIfZVQZoan2XYyRyKjVQ0ph_JNQbfuCPZQJ41Gkn7v---JJ9wyrvyY1ngi7Pb6lvc1Hg2cewCDf_1SdbyPD_aZ0hi9qbGQghugLJS65nItd1Tqcuco2SfyRyxXLOUqdTPkBcdD9lugMdiSZdOjnOjKueRP3FxfbGTj_kZUxkHdDQy1IYqvwsrGOAZ7wEd5tATO1w7k8xCq1iaNbQz-DODdLkxIP2pGsBNQFxuW1qNtxn2IrW4FmcMJxmarSYVDeVtB4sFj1uGHuGGnJ3MRbd7KdiH9YwcT9pXhc8f-mCDF4KMzRbQ19yFnbWAbwtS4ODMQwd_71c-FGswRf45QhmnStmsG1_gBkJCbq7L7l3U-PZxaxCY0SXkYo9jYbl8QEXhmNVNKj18N4nncpXbAajed4sXKwRSgSBRPddG31CzpUPp60HtksDH0UGUPn4hS4pE0rRhlHivQeV5OzmiKIAncjfklrO_lZf9DWhou9Emp6J3YbceqFIm_tyRk0Bm52VxUZOnYE30CpUmhQ5_YEWuR8p5guaAM8RXqzpJavW4IyWkTxrHHM-BGvHvofQ1-SX0FSIfosW1bUBPzcjcGRmwJSUMBfvI6t1DNRPMI4jtwzmQxkG2P9pMzAzrDwu1NY51Q3Fs6wkA20xrT8UrK5vvl6Dil1aCPRYR5Fb7vrKF_XLoHRHQSRxhNFdIbgKDo9dlwqlm5baJGDZUQU7YYI_lXnciD0OaTvQt5kxhRdxju2UcNzKq7zRcLtdu6lTValc4ZrErY4RFqAbl_8doFuPEAoMq1znxmgSFYUkaCfu6z65gnWD4k8-o7gKaO1eAFc-T2A=w388-h44-no?authuser=0)


**Instalar a Library Browser no Robot Framework**<br/>
1-No CDM digite o comando: pip install robotframework-browser<br/>
2-No CDM digite o comando: rfbrowser init

**Instalar a Library Request no Robot Framework**<br/>
1-No CDM digite o comando: pip install robotframework-requests<br/>
2-No CDM digite o comando: pip install robotframework-requests --pre

***Feito todas as instalações, e com o micro servico no ar (download do micro serviço no repositório) estamos prontos para executar os testes.***
<br/>
<br/>

# Comandos para realizar os Testes

 - ****Executar toda a suíte de testes no mesmo comando:****

Com o projeto Aberto no Microsoft Visual Studio,  Vá a Terminal > Novo terminal
***Digite o comando: robot -d .\logs\ .\tests\
Desta forma toda a suíte de testes ( POST, GET, PUT E DELETE ) do projeto será executada.






