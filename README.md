# Melhores práticas para uso do kubernetes em produção

![Alt text](https://github.com/fabriciolfj/kubernetes_v2/blob/main/kubernetes.png)

### 12 principios de design para infraestrutura

#### Comece gerenciado
- utilize um serviço ja gerenciado na nuvem, como eks, aks e etc.

#### Simplifique
- Não está relacionado a soluções triviais, e sim, simplificar o complexo, por exemplo: faz sentido utilizar uma solução multi-cloud?

#### Xac Sempre via código
- Utilize infraestrutura via código (terraform) e configuração via código (ansible)

#### Infraestrutura imutável
- Principio onde trocamos os componentes em vez de atualiza-los

#### Automação
- automatizar processos como:
  - entrega de aplicação dentro do cluster
  - criação de imagem das aplicações
  - escalar pods


#### Padronização
- Ter um conjunto de padrões 

#### Unica fonte de verdade
- Ter o codigo da infraestrutura versionado em um repositório git por exemplo.

#### Agnóstico a nuvem
- Nossa IAC (infraestrutura via código) poder implantar em qualquer provedor da nuvem

#### Continuidade do negócio
- Infraestrutura deve suportar sazonalidades

#### Planejamento de falhas
- Ter um plano B caso o serviço principal falhe

#### Eficiência na operação
- Utilizar os recursos com conciência
- Ter alta disponibilidade

### Escalabilidade e elasticidade
#### HPA(horizontal pod autoscaler)
- dimensiona o número de pods com base em um limite de métricas específicas, pode ser cpu ou memória.

#### VPA(vertical pod autoscaler)
- dimensiona o pod verficalmente, aumentando seus limites de cpu e memória, de acordo com as métricas de uso do pod.

### Desafios operacionais com kubernetes
- algumas práticas e padrões de infraestrutura que atenuam alguns desafios, como:
  - IAC -> utilize infraestrutura como código
  - Automação
  - Padronização
  - unica fonte de verdade 
