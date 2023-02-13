<h1 align="center">Kustomize e Argocd</h1>

<p align="center">
  <img alt="k8s" src="../images/argo-kusto-logo.png">
</p>

## 🌱 Project

- Laboratório para deploy de aplicações utilizando kustomize e argocd

## Estrutura dos arquivos
<p align="center">
  <img alt="k8s" src="../images/argo-kustomize.png">
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