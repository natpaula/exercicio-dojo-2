#language: pt
#utf-8

Funcionalidade: Gestão de usuario
Eu como analista
Quero cadastrar alterar e exluir usuarios do sistema	
Para manter minha base sempre atualizada

Contexto: Usuario acessa o site do CRM Suite
          Dado que esteja no site suitecrm

@cadastrar
Esquema do Cenario: Cadastrar novo usuario
Quando cadastrar novos dados de "<usuario>"
Então sistema cadastrara os dados com sucesso

Exemplos:
        |usuario       |
        |usuario_criado|

@editar
Esquema do Cenario: Editar usuario
Quando editar os dados do usuario "<usuario>" 
Então os dados serão alterados com sucesso

Exemplos:
        |usuario         |
        |usuario_alterado|

@deletar
Cenario: Excluir usuario
Quando excluir o usuario
Então o usuario será excluido com sucesso