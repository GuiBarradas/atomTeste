# AtomTeste Smart Contract

## Descrição

Projeto de teste para a posição na Atom Meta Space, onde me foi pedido para desenvolver um smart contract onde fosse possível depositar, sacar, ver o saldo e contasse com foco em segurança.

## Motivo para usar OpenZeppelin

Decidi utilizar as bibliotecas OpenZeppelin para implementar funcionalidades de controle de propriedade e proteção contra ataques de reentrância. Essas bibliotecas são amplamente testadas e auditadas, garantindo um nível elevado de segurança e confiabilidade para o contrato. Assim, asseguro as boas práticas.

## Motivo para usar Amoy Testnet

Decidi utilizar a Amoy pois, como a sugerida no e-mail foi a Mumbai, que a alguns meses foi descontinuida, então opter pela a Amoy que é a testnet desenvolvida para substituir a própria Mumbai.

## Funcionalidades

- **Depósito**: Os usuários podem depositar MATIC no contrato.
- **Retirada**: Os usuários podem retirar MATIC que possuem no contrato.
- **Verificação de Saldo**: Os usuários podem consultar seu saldo disponível no contrato.
- **Controle de Propriedade**: O proprietário do contrato pode transferir ou renunciar à propriedade.

## Como rodar o código no Remix

### Passo 1: Acesse o Remix IDE

1. Acesse o [Remix IDE](https://remix.ethereum.org/).

### Passo 2: Crie um novo arquivo

1. No Remix, faça o login e crie um novo workspace e cole o código do contrato Atom.sol. (Nesse repositório se encontra em contracts >>> Atom.sol)


### Passo 3: Configure a Amoy Testnet

1. Certifique-se de ter a MetaMask instalada e configurada para a Amoy Testnet.
2. Adicione MATIC à sua conta na Amoy Testnet através do [Faucet](https://www.alchemy.com/faucets/polygon-amoy)
3. Volte para o Remix

### Passo 4: Compile o contrato

1. Selecione a versão do compilador (deve ser compatível com a versão do Solidity utilizada no contrato).
2. Clique em "Compile AtomTeste.sol".

### Passo 5: Implante o contrato

1. Na aba "Deploy & Run Transactions", selecione "Injected Web3" na rede.
2. Certifique-se de que a MetaMask está conectada à Amoy Testnet.
3. Clique em "Deploy" para implantar o contrato.

### Passo 6: Interaja com o contrato

1. Após a implantação, você verá as funções disponíveis no contrato.
2. Utilize as funções de depósito, retirada e verificação de saldo conforme necessário.

PS: Sempre bom lembrar sobre valores WEI e taxas, é normal que ocorra algumas falhas devido a mudanças de taxa, mas é só aumentar e tentar algumas vezes (E, caso dê erro no valor, pesquisar sobre valores wei)
## Endereço do contrato na Amoy Testnet

Você pode visualizar o contrato implantado no seguinte link: [Amoy Testnet Contract](https://amoy.polygonscan.com/address/0x858f30Ae202d23173d7B2bAad56Ca43F6e6E8958)

## Conclusão

Como é possível ver no histórico de transação, o contrato está funcional e seguindo boas práticas, visando segurança e fácil entendimento do código.
