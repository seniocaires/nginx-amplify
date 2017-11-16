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
docker build --build-arg API_KEY=Preencha --build-arg AMPLIFY_IMAGENAME=seniocaires_amplify -t seniocaires/amplify .
```

#### Environments:

API_KEY=Chave de acesso da sua conta no Amplify  
AMPLIFY_IMAGENAME=Nome que identifique a imagem dos containers

#### Inicie os containers

```
docker run -it --rm -p 80:80 --hostname Loadbalancer seniocaires/amplify
```

> É importante definir os valores API_KEY, AMPLIFY_IMAGENAME e --hostname.  Estes valores além de conectar corretamente na sua conta do Amplify, também relacionará corretamente os containers com as instâncias.  Mesmo que um container seja destruído e reconstruído, as métricas serão enviadas para a mesma instância sem criar uma nova.
 
