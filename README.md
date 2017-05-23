# INF1405 - Construção de Sistemas
## Professor: Edmundo Torreão

A proposta da matéria é montar um projeto a sua escolha e implementá-lo.

### Índice

 * [ O Projeto ](https://github.com/stephaniefay/inf1405#o-projeto)
 * [ Modelo ](https://github.com/stephaniefay/inf1405#modelo)
 * [ Programas Utilizados ](https://github.com/stephaniefay/inf1405#programas-eou-ferramentas-utilizadas-at%C3%A9-o-momento)
 * [ Arquivos ](https://github.com/stephaniefay/inf1405#arquivos-na-pasta-media)

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

A pasta "saves" serve apenas para o propósito de salvar e recarregar informações do jogo. Ainda não está implementado, contudo. 

### Arquivos na pasta "src"

beginHandler.agc - Responsável por carregar a janela inicial (pós menu), com o efeito da máquina de escrever. Ele carrega o starterModule.

starterModule.agc - Futuramente será o responsável por ler as informações necessárias do arquivo e inicializar as estruturas.

typesDefinitions.agc - Arquivo contendo todas as estruturas de dados do jogo.

character.agc - Funções referentes ao personagem.

ability.agc - Funções referentes às habilidades.

### Programas e/ou Ferramentas utilizadas até o momento

| Nome | URL |
| ---- | --- |
| Draw.io | http://www.draw.io |
| Gif Splitter | https://ezgif.com/split |
| Git | https://git-scm.com/ |
| App Game Kit 2 | https://www.appgamekit.com/documentation/home.html |
