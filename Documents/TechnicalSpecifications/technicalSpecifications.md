# Technical Specifications - FPGA [Team 6]

## Document Control
### Document Information
|                  | Information                                 |
| ---------------- | ------------------------------------------- |
| Document Owner   | Maxime CARON                                |
| Creation Date    | 2024/09/23                                  |
| Last Update Date | 2024/10/04                                  |
| Document Name    | Technical Specifications - Frogger [Team 6] |

### Document Version
| Version n° | Author       | Date       | Description of edits |
| ---------- | ------------ | ---------- | -------------------- |
| 0.01       | Maxime CARON | 2024/09/23 | Document skeleton    |
| 0.02       | Maxime CARON | 2024/10/01 | Rework structure     |
| 0.03       | Maxime CARON | 2024/10/02 | Add technical specifications |

## Table of Content

---
## I. Introduction
---
### 1. Glossary

| Term                | Description | Source |
| ------------------- | ----------- | ------ |
| FPGA                |             |        |
| Frogger             |             |        |
| NandLand            |             |        |
| Verilog             |             |        |
| SystemVerilog       |             |        |
| testbenches         |             |        |
| IDE                 |             |        |
| syntax highlighting |             |        |
| code completion     |             |        |


### 2. Document Purpose

The purpose of this document is to expand upon the functional specifications by defining the features, scope, and objectives of the project. It provides detailed explanations of how each feature works and serves as a comprehensive guide for the development team and other team members who need an in-depth understanding of the application.

It is highly recommended to read the [Functional Specifications](/Documents/FunctionalSpecifications/functionalspecifications.md) before proceeding with this document.

This document serves as a reference for the development team to understand the technical requirements of the project, ensuring that the project is developed in alignment with the specified guidelines.

Additionally, it provides resources on coding conventions, database structure, graphic standards, and other aspects crucial to the maintainability and scalability of the application.

### 3. Project Definition

The project aims to develop a Frogger game using the NandLand GO Board and Verilog. The game will be implemented on the FPGA board, allowing users to play the classic Frogger game on the hardware platform. The game will include features such as movement, collisions, and scoring, providing an interactive and engaging experience for users.

#### A) Vision

The vision of the project is to keep the original gameplay experience of Frogger while personalizing graphics and adding new features to enhance user engagement. The project aims to provide a fun and challenging game that can be played on the NandLand GO Board, offering users an interactive and entertaining experience.

#### B) Assumptions
For this project the team assume that:
- The NandLand GO Board is fully functional and compatible with the Verilog code.
- The Verilog code is correctly implemented and tested on the FPGA board.
- The game features are implemented according to the functional specifications.
- The game runs smoothly and provides an engaging user experience.
- The game is free of bugs and errors that may affect the gameplay.

---
## II. Technology Presentation
---

### 1. NandLand GO Board
NandLand GO Board is a hardware platform that allows users to develop and test digital circuits using Verilog. The board features an FPGA chip, LEDs, buttons, VGA connector and other components that can be used to create interactive projects. The board is designed to be user-friendly and versatile, making it ideal for educational purposes and hobbyist projects.

#### C) Materials specifications

The NandLand GO Board features the following components:

##### ➭ <ins> FPGA </ins>
**Reference:** ICE40HX1K-VQ100
**Number:** 1
**Total memory bits:** 65536

The FPGA chip is the core component of the board, responsible for executing the Verilog code and controlling the hardware components. The FPGA chip is programmable, allowing users to develop custom digital circuits and applications.

<div style="text-align:center">
    <img src="https://www.fpgakey.com/uploads/images/product/default/ice40hx1k-vq100.jpg" alt="FPGA chip" width="200"/>
</div>

> *All details about the chip can be found [here](./Appendix/ICE40HX1K-VQ100%20Family%20Datasheet.pdf)*

##### ➭ <ins> LEDs </ins>
**Number:** 5

The board features 5 LEDs, 4 of which are fully programmable and can be used to display information or status indicators and 1 is used as a power indicator.

<div style="text-align:center">
    <img src="https://vcclite.com/wp-content/uploads/2019/07/surface-mount-led-category.jpg" alt="LEDs" width="200"/>
</div>

##### ➭ <ins> 7-Segment Display </ins>
**Number:** 2

The board features 2 7-segment displays that can be used to display numbers and characters. The 7-segment displays can be programmed to show score, time, or other information relevant to the application.

<div style="text-align:center">
    <img src="https://s.alicdn.com/@sc04/kf/Hec153fd61fee4ed9b73ed33af60f30ed5.jpg_720x720q50.jpg" alt="7-segment display" width="200"/>
</div>

##### ➭ <ins> Push Buttons </ins>
**Number:** 4

The board features 4 buttons that can be used as input devices for interacting with the application. The buttons can be programmed to perform specific actions or trigger events in the application.

<div style="text-align:center">
    <img src="https://cdn.sparkfun.com/assets/parts/2/6/2/9/09190-03-L.jpg" alt="Push button" width="200"/>
</div>

##### ➭ <ins> VGA Connector </ins>
**Number:** 1

The board features a VGA connector that can be used to connect an external display to the board. The VGA connector allows users to display graphics and visuals on a monitor or screen.

<div style="text-align:center">
    <img src="https://hubtronics.in/image/cache/data/0-2144-1-550x550w.jpg" alt="VGA connector female" width="200"/>
</div>

##### ➭ <ins> Micro USB Connector </ins>
**Number:** 1

The board features a micro USB connector that can be used to power the board and program the FPGA chip. The micro USB connector allows users to connect the board to a computer and upload Verilog code to the FPGA chip.

<div style="text-align:center">
    <img src="https://www.elecbee.com/image/cache/catalog/Connectors/USB-HDMI-Connector/USB-Connector/MICRO-USB-Connector/micro-usb-female-pinout-dip-565-type-b-smt-5-pin-for-phone-1225-0-500x500.jpg" alt="Micro USB connector female" width="200"/>
</div>

##### ➭ <ins> PMOD Connector </ins>
**Number:** 1

The board features a PMOD connector that can be used to connect external modules and peripherals to the board. The PMOD connector allows users to expand the functionality of the board by adding additional components.

<div style="text-align:center">
    <img src="https://m.media-amazon.com/images/I/41xaDxSKkcL._AC_UF1000,1000_QL80_.jpg" alt="PMOD connector female" width="200"/>
</div>


Board schematics can be found in appendix [here].

#### B) Setup
To use the board a configuration of the computer is required. The tutorial can be found [here](https://nandland.com/set-up-apio-fpga-build-and-program/).

### 2. Verilog and SystemVerilog

#### A) Language

For this project, the team will use Verilog to develop the game logic and implement the features of the Frogger game. We will also use SystemVerilog to create testbenches and verify the functionality of the Verilog code.

##### ➭ <ins> Verilog </ins>
Verilog is a hardware description language used to model electronic systems. It is commonly used in digital circuit design and FPGA programming to describe the behavior of hardware components and circuits. Verilog is a powerful and versatile language that allows users to create complex digital circuits and applications.

Here is an example of a simple Verilog code that implements a basic logic gate:

```verilog
// This module implements an AND gate
module and_gate(input a, input b, output y);
    assign y = a & b;
endmodule
```

More details about Verilog can be found [here](https://www.nandland.com/verilog/tutorials/tutorial-introduction-to-verilog-for-beginners.html).

##### ➭ <ins> SystemVerilog </ins>
SystemVerilog is an extension of Verilog that adds new features and capabilities to the language. It includes enhancements such as object-oriented programming, constrained random testing, and assertions, making it a powerful tool for developing complex digital systems.

Here is an example of a simple SystemVerilog code that implements a basic counter:

``` verilog
// This module implements a simple counter
module counter;
    int count = 0; // Counter variable

    // Counter logic
    initial begin
        while (1) begin
            $display("Count: %d", count);
            count = count + 1;
            #1;
        end
    end
endmodule
```

#### B) Working Environment
To write and test Verilog code, users can use a text editor or an integrated development environment (IDE) such as Visual Studio Code, Xilinx Vivado, or Quartus Prime. These tools provide features such as syntax highlighting, code completion, and debugging capabilities to help users write and test Verilog code efficiently.

---
## III. Technical Specifications
---

### 1. Project Conventions
Every conventions used in the project are detailed in the [appendix 1 - project conventions](/Documents/TechnicalSpecifications/Appendix/projectConventions.md).

### 2. Display

#### A) Graphics
The game graphics are designed to provide a visually appealing and engaging experience for the player. These graphics include elements such as the player character, enemies, obstacles, and background scenery to create an immersive game environment.

> *Details of the graphics are provided in the [Functional Specifications](/Documents/FunctionalSpecifications/functionalspecifications.md).*

#### B) Display Resolution
The game will run on the NandLand GO Board's display, with a resolution of 640x480 pixels. Game elements will be appropriately scaled and positioned to fit the screen size, ensuring an optimal viewing experience for the player.

The Verilog code will configure the display resolution to ensure proper rendering of game elements on the screen. The game logic will handle adjustments to the display resolution to ensure that the graphics and gameplay remain aligned with the intended visual presentation.

#### C) Grid System
A grid system will be employed to manage the positioning and movement of game elements on the screen. The grid will divide the display into cells, allowing for precise placement and movement of objects in discrete steps.

The screen will be divided into a grid consisting of 20 columns and 15 rows. Each cell will represent a specific coordinate on the screen, simplifying the handling of movement and interactions.

#### D) Sprites
The game elements such as the player character, enemies, obstacles, and background scenery will be represented using sprites. Sprites are 2D images that provide visual representations of these elements.

Each sprite will have a resolution of 32x32 pixels, ensuring detailed and recognizable graphics. These sprites will be designed to be visually distinct and easily recognizable by the player.

#### E) Block Ram (BRAM)

The game will use Block RAM (BRAM) to store the game state, player position, enemy positions, and other relevant data. BRAM provides fast and efficient memory access, making it ideal for storing and retrieving game data during runtime.

The game logic will manage the BRAM to store and update the game state, ensuring that the data is accessible and accurate at all times. The BRAM will be used to store game elements, player lives, score, and other game-related information.

```mermaid
graph TD
    A[Initialize Game State] --> B[Store Game State in BRAM]
    B --> C[Update Game State]
    C --> D[Retrieve Game State from BRAM]
    D --> E[Display Game State]
```

### 3. Movement

#### A) Player Movement 
Each player movement is managed by the movement module. Every movement is controlled by the player input. The player can move up, down, left, and right. The player can also jump to the next cell in the direction he is moving.

##### ➭ <ins>Player Inputs for Movements</ins>
The player can move using the following inputs:
- **SW1 (Go Board switch 1):** The player moves up by one cell.
- **SW4 (Go Board switch 4:** The player moves down by one cell.
- **SW2 (Go Board switch 2:** The player moves left by one cell.
- **SW3 (Go Board switch 3:** The player moves right by one cell.

##### ➭ <ins>Player Movement Logic</ins>
The player movement logic will be implemented in Verilog following the activity diagram below:

```mermaid
graph TD
    A[SW1 Pressed] --> B[Check If Player Can Move Up]
    B --> D[Is Player Can Move UP?]
    D --> |Yes| E[Move Up]
    D --> |No| F[Do Nothing]
    E --> G[Update Player Position]

    H[SW4 Pressed] --> I[Check If Player Can Move Down]
    I --> K[Is Player Can Move Down?]
    K --> |Yes| L[Move Down]
    K --> |No| M[Do Nothing]
    L --> N[Update Player Position]

    O[SW2 Pressed] --> P[Check If Player Can Move Left]
    P --> R[Is Player Can Move Left?]
    R --> |Yes| S[Move Left]
    R --> |No| T[Do Nothing]
    S --> U[Update Player Position]

    V[SW3 Pressed] --> W[Check If Player Can Move Right]
    W --> Y[Is Player Can Move Right?]
    Y --> |Yes| Z[Move Right]
    Y --> |No| AA[Do Nothing]
    Z --> AB[Update Player Position]
```

#### B) Enemy Movement

##### ➭ <ins>Enemy Pseudo Random Generation</ins>

##### ➭ <ins>Enemy Movement</ins>

### 4. Collisions

#### A) Collisions Detection
To detect collisions between game elements, the program will check the position of each element in the grid and determine if any elements are overlapping. The collision module will handle the detection of collisions and trigger the appropriate actions based on the collision type.

The collision module will check for collisions between the player and enemies, obstacles, water, and other game elements. When a collision is detected, the collision module will trigger the corresponding behavior based on the collision type.

```mermaid
graph TD
    A[Check for Collision] --> B[Check for Player-Enemy Collision]
    B --> C[Is Player Collides with Enemy?]
    C --> |No| D[Do Nothing]
    C --> |Yes| E[Player Loses Life]
    E --> F[Is Player Out of Lives?]
    F --> |Yes| G[Game Over]
    F --> |No| H[Player Respawn at Level Start]
```

#### B) Player Collisions Behaviors

##### ➭ <ins>Water Collisions</ins>
When the player reaches the water, the player will lose a life. The water collisions will be managed by the collision module, which will detect when the player reaches the water and trigger the appropriate action.

```mermaid
graph TD
    A[Check for Collision] --> B[Check for Player-Water Collision]
    B --> C[Is Player Collides with Water?]
    C --> |No| D[Do Nothing]
    C --> |Yes| E[Player Loses Life]
    E --> F[Is Player Out of Lives?]
    F --> |Yes| G[Game Over]
    F --> |No| H[Player Respawn at Level Start]
```

##### ➭ <ins>Wall Collisions</ins>
When the player reaches the edge of the screen, the player will not be able to move further in that direction. The wall collisions will be managed by the collision module, which will detect when the player reaches the edge of the screen and prevent further movement in that direction.

```mermaid
graph TD
    A[Check for Collision] --> B[Check for Player-Wall Collision]
    B --> C[Is Player Collides with Wall?]
    C --> |No| D[Do Nothing]
    C --> |Yes| E[Prevent Player Movement]
```

##### ➭ <ins>Enemy Collisions</ins>

#### B) Enemy Collisions Behaviors

Enemy collisions will be managed by the collision module. The collision module will check for collisions between the player and enemies, obstacles, and other game elements. When a collision is detected, the appropriate action will be taken based on the collision type.

```mermaid
graph TD
    A[Check for Collision] --> B[Check for Player-Enemy Collision]
    B --> C[Is Player Collides with Enemy?]
    C --> |No| D[Do Nothing]
    C --> |Yes| E[Player Loses Life]
    E --> F[Is Player Out of Lives?]
    F --> |Yes| G[Game Over]
    F --> |No| H[Player Respawn at Level Start]
```

### 5. Win Condition and Leveling System

#### A) Win condition
When the player reaches the top of the screen, the player wins the game. The win condition will be triggered when the player reaches the top row of the grid. Then the level will be incremented and the player will move to the next level.

#### B) Leveling System
The game will feature multiple levels, each with increasing difficulty and challenges. The difficulty is represented by the speed of the enemies, every 5 levels the speed of the enemies will increase by 5%. The speed of the enemies will stop increasing after level 30.

The level system will be implemented in Verilog following the activity diagram below:

```mermaid
graph TD
    A[Player Wins] --> B[Check if Level is less than 30]
    B --> C[Is Level less than 30?]
    C --> |Yes| D[Increment Level]
    D --> E[Increase Enemy Speed]
    E --> F[Update Level Display]
    C --> |No| G[Do Nothing]
```