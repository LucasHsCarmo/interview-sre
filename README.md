# interview-sre

Neste lab, você deverá: 

1. Acessar o console do Google Cloud Platform e subir um cluster de Kubernetes: \
Obs: Você tem liberdade para usar ferramentas, como por ex. Terraform, ou criar via Console GCP.
- Detalhes e especificações:
  - Projeto GCP id: (Você receberá o id do projeto e o horário de liberação do acesso)
  - Criar um Cluster Kubernetes (GKE Standard mode)
  - Número de nodes: 3
  - Location: Qualquer região US
  - Control plane: Configs default
2. Instalar o Helm chart [hello-kubernetes](https://github.com/mercadobitcoin/interview-sre/tree/master/k8s/helm/hello-kubernetes) usando a tag v.1.10 da imagem
3. Garantir que o(s) pod(s) esteja com status Running, configurado para o mínimo de 4 instâncias no autoscaling.
4. Alterar os serviços:
- De:
```
hello-kubernetes-clusterip      LoadBalancer
hello-kubernetes-loadbalancer   NodePort
hello-kubernetes-nodeport       ClusterIP
```
- Para:
```
hello-kubernetes-clusterip      ClusterIP
hello-kubernetes-loadbalancer   LoadBalancer
hello-kubernetes-nodeport       NodePort
```

5. Fazer algumas requisições para o IP público do LoadBalancer
6. Acessar o IP Público do LoadBalancer pelo seu Browser e salvar um printscreen da tela
7. Pegar algumas linhas de log do pod, referente a requisição acima.
8. Reunir todos os arquivos gerados (logs, imagens, scripts) e fazer upload no bucket GCS `seunome-sre` dentro do seu projeto.
