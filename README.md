# Amplify

## O que é NGINX Amplify?

NGINX Amplify é uma ferramenta de monitoramento SaaS para o NGINX e o NGINX Plus.  
Com o NGINX Amplify, você pode monitorar o desempenho, acompanhar os recursos da infraestrutura e melhorar a configuração com análise estática.  
O NGINX Amplify é simples de configurar e poderoso o suficiente para fornecer uma visão crítica do NGINX e do desempenho do sistema.

## Como testar?

#### Faça o download do repositório do projeto.

```
git clone https://github.com/seniocaires/nginx-amplify.git
```

#### Faça o build da Imagem Docker.  

```
docker build --build-arg API_KEY=Preencha --build-arg -t seniocaires/amplify .
```

#### Environments:

API_KEY=Chave de acesso da sua conta no Amplify  

#### Inicie os containers

```
docker run -it --rm -p 80:80 --hostname Loadbalancer -e API_KEY=Opcional -e IMAGE_NAME=Opcional seniocaires/amplify
```

> Os valores API_KEY, IMAGENAME e --hostname são opcionais. API_KEY foi definida durante o build da imagem. Caso informe algum valor para IMAGE_NAME, as métricas de todos os containers com o referido valor serão agregados à mesma instância (system) no Amplify. 
 
 ### Links
 
 [Amplify](https://amplify.nginx.com)
