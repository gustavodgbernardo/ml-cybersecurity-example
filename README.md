# ml-cybersecurity-example
Este projeto tem como objetivo fornecer um exemplo de uma aplicação de machine learning em cibersegurança.

## Requerimentos 

Este projeto foi construido com conteinerização baseada em Docker versão 20.10.17. 

Caso queira rodar diretamente em python, foi utilizada a versão 3.8.10 e os requerimentos estao no arquivo requirements.txt. E para instalar basta

```
pip install -r requirements.txt
```

Foi utilizado também o Jupyter notebook para visualização dos modelos. 

## Instalação 

```
make build
```

## Rodar o nfstream 

```
make flow
```

## Criar o ambiente para o Jupyter notebook 

```
make jupyter
```
