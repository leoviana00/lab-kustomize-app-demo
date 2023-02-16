# Exemplo de uso de kustomize com sobreposições
## base
- reloader - observa a alteração de configmaps e recarrega com reinicialização contínua
- nginx-index-html - aplicativo nginx com configmap para index.html
- nginx-basic-auth - aplicativo nginx com configmap para index.html e autenticação BASIC .htpasswd
- hello-app - aplicativo simples de olá
- tiny-tools-dep - ferramentas minúsculas baseadas em alpine com utilitários de rede como implantação
- tiny-tools-ds - ferramentas minúsculas baseadas em alpine com utilitários de rede como Daemonset

## sobreposições nginx
- Mostra como a base nginx pode ser enriquecida

    - nginx-index-with-reloader - sobrepõe 'nginx-index-html' e adiciona capacidade de recarga dinâmica de index.html
    - nginx-cm-reloader - sobrepõe 'nginx-index-html' e adiciona capacidade de recarga dinâmica de index.html e configmap do ambiente

## sobreposições de ferramentas minúsculas
- Mostra a capacidade dos patches de transformar uma definição de base.

    - tiny-tools-dep-to-ds - pega a base 'tiny-tools-ds' (que é DaemonSet) e a converte em Deployment usando patches kustomize
    - tiny-tools-ds-to-dep - pega a base 'tiny-tools-dep' (que é Deployment) e a converte em DaemonSet usando patches kustomize

## Referências

- Repo utilizado para estudos: https://github.com/fabianlee/kustomize-overlays-with-reload