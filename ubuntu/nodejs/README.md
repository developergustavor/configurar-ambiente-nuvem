# Pacotes + ferramentas

![https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/Curl-logo.svg/1200px-Curl-logo.svg.png](https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/Curl-logo.svg/1200px-Curl-logo.svg.png)

- Versão: **latest**

![https://www.bram.us/wordpress/wp-content/uploads/2016/10/yarn-kitten-full.png](https://www.bram.us/wordpress/wp-content/uploads/2016/10/yarn-kitten-full.png)

- Versão: **latest**

![https://upload.wikimedia.org/wikipedia/commons/thumb/e/e0/Git-logo.svg/1280px-Git-logo.svg.png](https://upload.wikimedia.org/wikipedia/commons/thumb/e/e0/Git-logo.svg/1280px-Git-logo.svg.png)

- Versão: **latest**

![https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Node.js_logo.svg/1280px-Node.js_logo.svg.png](https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Node.js_logo.svg/1280px-Node.js_logo.svg.png)

- Versão: **escolhida** ou **14.x**

![https://www.docker.com/sites/default/files/d8/2019-07/horizontal-logo-monochromatic-white.png](https://www.docker.com/sites/default/files/d8/2019-07/horizontal-logo-monochromatic-white.png)

- Versão: **latest**

![http://openwhisk.apache.org/images/deployments/logo-docker-compose-text.svg](http://openwhisk.apache.org/images/deployments/logo-docker-compose-text.svg)

- Versão: **escolhida** ou **1.26.2**

# Configuração do ambiente

- Faça o download do repositório
- Abra o terminal na pasta desejada
- Execute os comandos (**substitua as variáveis destacadas pelo valor desejado**):

### Configurando ambiente

1. `chmod -R 755 .`
2. `chmod +x ./configurar-ambiente.sh` 
3. `./configurar-ambiente.sh` **`project_name` `node_version` `docker_compose_version`**
4. Siga todas as instruções e confirmações que aparecerão na instalação dos pacotes e configuração do ambiente

---

### Configurando SSL

1. `chmod -R 755 .`
2. `chmod +x ./configurar-ssl.sh`
3. Edite o arquivo **`[./ssl/init-letsencrypt.sh](http://configurar-ssl.sh)` ,** substituindo as ocorrências de `example` pelos valores desejados (linhas 3 e 4)
4. Edite o arquivo **`./ssl/data/nginx/app.conf` ,** substituindo as ocorrências de `example` pelos valores desejados (linhas 3 , 17, 20 e 21)
5. `./configurar-ssl.sh`