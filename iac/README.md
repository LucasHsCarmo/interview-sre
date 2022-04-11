# IAC

Ferramentas utilizadas:

Nome                              | Versão          | Link
----------------------------------|-----------------|----------------------------------------------------
`gcloud SDK`                      | `380.0.0`       | [Documentacao Oficial](https://cloud.google.com/sdk/docs/install)
`terraform`                       | `1.1.8`         | [Documentacao Oficial](https://www.terraform.io/downloads)
`helm`                            | `3.8.1`         | [Documentacao Oficial](https://helm.sh/docs/intro/install/)


Provisionando ambiente **GKE** passo a passo:

## GCloud CLI

* Execute para começar:

```bash
gcloud init
``` 

* Lista configurações nomeadas existentes:

```bash
gcloud config configurations list
```

## Terraform

Seguintes parâmetros configuráveis:

Parâmetro                         | Descrição                 | Default
----------------------------------|---------------------------|----------------------------------------------------
`project_id`                      | `GCloud Projeto ID`       | `lucas-carmo`
`region`                          | `GCloud Região`           | `us-central1`
`zone`                            | `GCloud Zona`             | `us-central1-a`
`type_machine`                    | `GCloud Tipo máquina`     | `g1-small`

**OBS: Os comandos abaixo devem ser executados dentro do diretório /iac**

* Execute para começar:

```bash
terraform init
```

* Formatar e validar os arquivos **.tf** :

```bash
terraform fmt
terraform validate
``` 

* Plano de execução:

```bash
terraform plan
```

* Aplica o plano de execução:

```bash
# Exibe o plano interativo do plano antes de executar
terraform apply
``` 
OU
```bash
# Ignora a aprovação interativa do plano antes de executar
terraform apply -auto-approve
```

## Helm

* Para acessar o cluster via terminal é necessário realizar o seguinte passo:

```bash
Console gcp > Clusters > selecionar o cluster_name criado > connect
``` 

**OBS: Os comandos abaixo devem ser executados dentro do diretório /k8s/helm**

Seguintes parâmetros configuráveis:

Parâmetro                         | Descrição                 
----------------------------------|-----------------------------------------------
`chart_name`                      | `Substituir pelo nome do chart que deseja para realizar instalação`


* Habilita saída detalhada antes de ser executado a instalação do chart

```bash
helm install <chart_name> ./hello-kubernetes --dry-run --debug
```

* Executa instalação do chart

```bash
helm install <chart_name> ./hello-kubernetes
``` 

## Evidências solicitadas

- [LoadBalancer Browser](lucas-carmo-sre/lb_browser.png)
- [Pos Execucao Helm](lucas-carmo-sre/exec_helm.png)
- [Log do pod](lucas-carmo-sre/logs_pod.txt)
