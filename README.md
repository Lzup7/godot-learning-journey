# godot-learning-journey

Minha jornada de aprendizado na Godot Engine. Contém todos os projetos e mecânicas construídas ao longo das aulas do curso.

---

## Projetos do Curso [+/-]

### Projeto 01: Clone 2D Frogger
Primeiro módulo prático, focado em entender os fundamentos da engine, movimentação 2D, inputs e física básica.

**Diário de Desenvolvimento >_**

* **Aula 01: Setup Inicial e Movimentação Básica**
  - Iniciei o projeto 2D Frogger.
  - Criei o cenário base, o nó do jogador (Player) e os primeiros objetos.
  - Implementei um script de teste para fazer o jogador se movimentar automaticamente para a direita, entendendo a manipulação de posição via código antes da entrada de controles.

* **Aula 02: Sistema de Inputs e Controles**
  - Configurei e aloquei teclas no Input Map da Godot.
  - Mapeei as teclas direcionais padrão (W A S D e Up, Down, Left, Right).
  - Fiz o jogador se movimentar para a direção desejada utilizando a função Input.get_vector(), o que garantiu uma física de controle mais fluida.

* **Aula 03: Câmera Dinâmica**
  - Adicionei uma câmera (Camera2D) simples que segue o player.
  - Configurei o parâmetro de Smoothing (suavização) para que a câmera siga o personagem com uma pequena lentidão e de forma mais orgânica.
  - Apliquei limites na câmera para que ela siga o jogador apenas até as bordas do cenário.

* **Aula 04: Física, Limites e Colisões**
  - Adicionei o sistema de física aos objetos do cenário e ao personagem.
  - Criei barreiras físicas invisíveis com colisores no cenário, impossibilitando que o jogador saia da visão da câmera.

* **Aula 05: Sprites e Animações Responsivas**
  - Adicionei os sprites do personagem ao projeto.
  - Implementei animações direcionais responsivas, fazendo com que o personagem mude a animação de acordo com a direção do movimento (direita, esquerda, cima e baixo).

* **Aula 06: Sinais (Signals) e Comunicação entre Nós**
  - Aprendi sobre Sinais (Signals), um sistema de comunicação que permite que um nó avise outros quando algo importante acontece.
  - Configurei um nó Timer emitindo sinais para criar um alerta, que será usado no futuro para o spawn de carros.
  - Utilizei a linha de chegada com um Area2D, emitindo um sinal para detectar quando o nível é completado.

* **Aula 07: Spawn de Veículos e Refatoração**
  - Adicionei os carros ao projeto.
  - Criei uma lógica de Spawn baseada em Marks (marcadores de posição) e utilizando o Timer para gerar os veículos na tela.
  - Revisei os scripts anteriores e adicionei comentários explicativos em códigos antigos para melhorar a documentação e organização do projeto.

* **Aula 08: Delta Time e Independência de FPS**
  - Aprendi sobre o conceito de delta time na engine.
  - Apliquei as configurações matemáticas (multiplicando a movimentação pelo delta) para prevenir que variações na taxa de quadros (FPS) alterem a velocidade dos carros, garantindo uma jogabilidade consistente.
