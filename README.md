# Homework 3: Criando User Stories para descrever as features da aplicação RottenPotatoes

**Aluna:** Caroline Bohadana Rodrigues Viana
**Matrícula:** 232050975

A aplicação foi construída com o uso do framework **Ruby (3.4.6) on Rails (8.0.2.1)**, seguindo as orientações apresentadas na especificação do Homework 3 (BDD).

---
### Instalação e Execução da Aplicação

**Pré-requisitos:**
- Git
- Ruby
- Bundler (`gem install bundler`)
- Ruby on Rails (`gem install rails`)

1. **Clonar o Repositório:** execute o comando abaixo no terminal para baixar o código do GitHub:
```bash
git clone https://github.com/CarolB57/HW3.git
```

2. **Entrar no Diretório do Projeto:**
```bash
cd HW3
```

3. **Instalar as Dependências:** o Bundler irá ler o arquivo `Gemfile` e instalar todas as bibliotecas (gems) que o projeto necessita.
```bash
bundle install
```

4. **Executar os Testes:**  Para verificar se todas as funcionalidades estão operando como esperado, você pode rodar a suíte de testes automatizados com o Cucumber.
```bash
bundle exec cucumber
```

5. **Iniciar o Servidor:** o comando abaixo inicia o servidor web local do Rails.
```bash
bundle exec rails server
```

6. **Acessar a Aplicação:** no navegador, entre no link abaixo:
```bash
http://localhost:3000
```