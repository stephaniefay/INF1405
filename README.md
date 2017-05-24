# INF1405 - Construção de Sistemas
## Professor: Edmundo Torreão

A proposta da matéria é montar um projeto a sua escolha e implementá-lo.

### Índice

 * [ O Projeto ](https://github.com/stephaniefay/inf1405#o-projeto)
 * [ Modelo ](https://github.com/stephaniefay/inf1405#modelo)
 * [ Programas Utilizados ](https://github.com/stephaniefay/inf1405#programas-eou-ferramentas-utilizadas-at%C3%A9-o-momento)
 * [ Arquivos da Pasta "media" ](https://github.com/stephaniefay/inf1405#arquivos-na-pasta-media)
 * [ Arquivos da Pasta "src" ](https://github.com/stephaniefay/inf1405#arquivos-na-pasta-src)
 * [ Save, Load & Pre-Load ](https://github.com/stephaniefay/inf1405#save-load--pre-load)

### O Projeto

A ideia é implementar um jogo estilo rogue-like onde os eventos são aleatórios e a continuidade depende da escolha do usuário. Possuirá poucos, ou nenhum, gráficos - visando a narrativa em texto e escolhas a partir do que o evento pede e o que o usuário pretende.

Haverão três ou mais personagens - alguns desbloqueáveis -, itens, side-kicks e uma história para ser seguida - não foi combinado um método de save, contudo planejo implementar - e será para apenas um jogador.

### Modelo

* Modelo de Entidade e Relacionamento feito, dentro da pasta modelo, onde descreve o esqueleto do projeto. Um possui os atributos, outro as relações.
* Diagrama de Atividades feito, também dentro da pasta modelo.

### Arquivos na pasta "media"

Os arquivos foram achados na internet com a ajuda do Google, nenhuma das imagens foi produzida por mim e os créditos vão para os devidos autores. Caso sua imagem esteja entre as citadas abaixo por favor me notifique para que eu possa deixar explícito. Infelizmente quando salvei as imagens não pensei em guardar o local original.

* [Estrela, por ???](http://static.tumblr.com/4df6c4cc48c95faa5cbcc14a01828a3a/qv6xy8l/kw3oetlc2/tumblr_static_4qezimh2iiasgogco0w0kcogk.gif)
* [Espada, por ???]( http://pixeljoint.com/files/icons/full/magic_sword.gif )
* [Floresta, por ???](http://www.animated-gifs.eu/category_nature/landscapes-forests/0016.gif)

Todos os arquivos referentes à sons, imagens, fontes e saves do jogo ficarão nessa pasta. Há imagens que não estão sendo utilizadas dentro das pastas porque em versões anteriores eu havia decidido colocá-las e eventualmente mudei de ideia. Contudo permaneceram na pasta do projeto porque não sei se vou voltar a utilizá-las.

### Arquivos na pasta "src"

ability.agc - Funções referentes às habilidades

attacks.agc - Funções referentes aos valores de ataque do personagem/inimigo

beginHandler.agc - Responsável por carregar a janela inicial (pós menu), com o efeito da máquina de escrever. Ele carrega o starterModule

character.agc - Funções referentes aos personagem

enemy.agc - Funções referentes aos inimigos

event.agc - Funções referentes aos eventos do jogo

item.agc - Funções referentes aos itens do jogo

readFromText.agc - Responsável por ler do arquivo inicial e preencher as estruturas com os itens, eventos, habilidades, inimigos e jogadores

starterModule.agc - Futuramente será o responsável por ler as informações necessárias do arquivo e inicializar as estruturas

typesDefinitions.agc - Arquivo contendo todas as estruturas de dados do jogo

### Save, Load & Pre-Load

O jogo irá ler as informações iniciais e salvar o jogo até o momento em arquivos .txt, também será implementado um "LOG", que gerará uma seed para que você possa rejogar o mesmo jogo (com os mesmos itens gerados, etc), somente se alterando caso você faça outra escolha.

Saving: dentro de media/saves terá os saves passados e o mais recente. O jogo irá salvar no arquivo toda vez que você fizer uma escolha.

Loading: dentro de media/saves ele vai ler o arquivo mais recente e carregar as informações no jogo na ultima escolha que você fez ou você poderá começar um jogo passado que vai gerar os mesmos itens e eventos novamente.

Pre-Loading: dentro da pasta media/infoGame tem um único arquivo chamado info.txt, deste ele vai carregar todas as configurações iniciais do jogo como itens, eventos, personagens disponíveis, inimigos e habilidades. Para acrescentar novos é necessário que entenda a estrutura do arquivo e altere o txt da maneira correta.

```

Characters
quantidade de personagens que você tem em sua lista
HP
nome do item nativo
nome da habilidade nativa
diferença de hp que a habilidade causa (0 se nenhuma, <0 caso decremente, >0 caso aumente)
diferença de defesa que a habilidade causa
diferença de ataque que a habilidade causa
diferença de modificador de ataque que a habilidade causa
descrição da habilidade
valor do dano que o item causa em seu personagem
descrição do item
nome do seu personagem
descrição do seu personagem
valor de ataque do seu personagem
nome do ataque do seu personagem
valor do modificador do seu personagem
valor da defesa do seu personagem

```

(esse guia vai ser atualizado conforme for feito o código da leitura dos outros tópicos).

### Programas e/ou Ferramentas utilizadas até o momento

| Nome | URL |
| ---- | --- |
| Draw.io | http://www.draw.io |
| Gif Splitter | https://ezgif.com/split |
| Git | https://git-scm.com/ |
| App Game Kit 2 | https://www.appgamekit.com/documentation/home.html |