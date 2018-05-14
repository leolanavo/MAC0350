Leonardo Lana Violin Oliveira - 9793735
Beatriz Figueiredo Marouelli - 9793652

Fizemos o EP1 dentro de um container de Docker. Para rodá-lo basta fazer:
```
$ docker-compose up --build
```

Este comando construirá a imagem e subirá o container.

Para rodar os scripts, você deve executar:
```
$ docker-compose exec db psql -U mac0350 -f <nome do script>
```

Caso não esteja adicionado no grupo do docker, coloque o sudo na frente dos
comandos acima, ou faça:
```
# gpasswd -a $USER docker
```

Faça logout e logue novamente no sistema, e tudo deve estar normal, no pior
dos casos, reinicie o computador, para reiniciar corretamente o serviço
do docker.
