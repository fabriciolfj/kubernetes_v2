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

# Montando o cluster
### Definindo a configuração terraform
- Como boa prática o arquivo state do terraform deve ser armazenado remotamente, compartilhado e bloqueado quando está em uso (usaremos o dynamodb pra tal tarefa).
- Teremos o s3 cluster_tf_state_s3_bucket para armazenamento do tfstate 
- O s3 cluster_vpc_tf_state_s3_bucket guardará dados dos recursos de rede
- a tabela cluster_dynamodb_tf_state_lock efetuar o bloqueio do tf state
- e a tabela cluster_dynamodb_vpc_tf_state_lock efetuará o bloqueio dos recursos de rede

### Criando as redes para nosso cluster
- Dentro do diretório terraform/clusters-vpc, encontra-se os arquivos .tf que criarão a nossa vpc, subnets privadas e publicas, nat, tabela de roteamento e gateway.

### Criando o cluster
- Dentro do diretório terraform/clusters, encontra-se os arquivos .tf para implementação do cluster, utilizando os módulos deste projeto.
- no arquivo terraform.tfvars, alguns valores são resultado do output vpc, para isso execute o comando na pasta clusters-vpc:
```
terraform output
```

### Ansible
- utilizado para uso de configuração de clsuter kubernetes via código
- utiliza um template dos manifestos e substitui as variaveis por valores configurados
- possui alguns recursos chaves, como:
  - inventory: utilizado para agrupar hosts semelhantes em grupos
  - modulos: reuso de tarefas, contra os inventários
  - task: descreve os passos que o ansible deve fazer, por ex: instalar tal software 
  - playbooks: são construções do ansible, que envolve outros blocos, como variáveis, task e módulos
  - variaveis: para manter os valores para a configuração
  - templates: modelos com variáveis, que essas depois serão substituidas por valores.
