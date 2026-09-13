# godot-learning-journey

Minha jornada de aprendizado na Godot Engine. Contém todos os projetos e mecânicas construídas ao longo das aulas do curso.

---

## Projetos do Curso:

### Projeto 01: Clone 2D Frogger
Primeiro módulo prático, focado em entender os fundamentos da engine, movimentação 2D, inputs e física básica.

**Diário de Desenvolvimento >_**

* **Aula 01: Setup Inicial e Movimentação Básica**
  - Início do projeto 2D Frogger.
  - Criação do cenário base, do nó do jogador (Player) e dos primeiros objetos.
  - Implementação de um script de teste para movimentação automática para a direita, compreendendo a manipulação de posição via código antes da entrada de controles.

* **Aula 02: Sistema de Inputs e Controles**
  - Configuração e alocação de teclas no Input Map da Godot.
  - Mapeamento das teclas direcionais padrão (W A S D e Up, Down, Left, Right).
  - Implementação de movimentação controlada pelo jogador utilizando a função Input.get_vector(), garantindo uma física de controle fluida.

* **Aula 03: Câmera Dinâmica**
  - Adição de uma câmera (Camera2D) atrelada ao jogador.
  - Configuração do parâmetro de Smoothing (suavização) para que a câmera siga o personagem de forma mais orgânica e com leve atraso.
  - Aplicação de limites de câmera para que a visão não ultrapasse as bordas do cenário.

* **Aula 04: Física, Limites e Colisões**
  - Introdução e aplicação do sistema de física aos objetos do cenário e ao personagem.
  - Criação de barreiras físicas invisíveis com colisores no cenário, impossibilitando que o jogador ultrapasse os limites da visão da câmera.
