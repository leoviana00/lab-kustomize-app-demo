<h1 align="center">Kustomize e Argocd</h1>

<p align="center">
  <img alt="k8s" src="../images/estrutura.png">
</p>

## 🌱 Project

- Laboratório para deploy de aplicações utilizando kustomize e argocd

## Estrutura dos arquivos
<p align="center">
  <img alt="k8s" src="../images/argo-kustomize.png">
</p>

<p align="center">
  <img alt="k8s" src="../images/argocd.drawio.png">
</p>


## Subindo as aplicações

```bash
kubectl apply -k bootstrap/demo/overlays/default/
```

<p align="center">
  <img alt="k8s" src="../images/argo-01.png">
</p>

- Developement Application
<p align="center">
  <img alt="k8s" src="../images/dev-application.png">
</p>

- Staging Application
<p align="center">
  <img alt="k8s" src="../images/hom-application.png">
</p>

- Production Application
<p align="center">
  <img alt="k8s" src="../images/prod-application.png">
</p>

## Acessando as aplicações

- Aplicações Nginx - Squad A
- Produção: http://squad.a.nginx.lab.k8s.io/prod

<p align="center">
  <img alt="k8s" src="../images/prod-nginx.png">
</p>

- Homologação: http://squad.a.nginx.lab.k8s.io/hom

<p align="center">
  <img alt="k8s" src="../images/staging-nginx.png">
</p>

- Desenvolvimento: http://squad.a.nginx.lab.k8s.io/dev

<p align="center">
  <img alt="k8s" src="../images/dev-nginx.png">
</p>


- Aplicações Go - Squad A
- Produção: http://ws.squad.a.go.lab.k8s.io/

<p align="center">
  <img alt="k8s" src="../images/prod-go.png">
</p>

- Homologação: http://ws.hom.squad.a.go.lab.k8s.io/

<p align="center">
  <img alt="k8s" src="../images/staging-go.png">
</p>

