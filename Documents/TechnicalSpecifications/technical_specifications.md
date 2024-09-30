# Technical Specifications - FPGA [Team 6]

## Document Control
### Document Information
|                   | Information                                 |
| ----------------- | ------------------------------------------- |
| Document Owner    | Maxime CARON                                |
| Creation Date     | 2024/09/23                                  |
| Last Update Date  | 2024/09/23                                  |
| Document Name     | Technical Specifications - Frogger [Team 6] |

### Document Version
| Version n° | Author       | Date       | Description of edits |
| ---------- | ------------ | ---------- | -------------------- |
| 0.01       | Maxime CARON | 2024/09/23 | Document skeleton    |

## Table of Content

## I. Introduction

### 1. Glossary

| Term | Description | Source |
| ---- | ----------- | ------ |
|  FPGA    |             |        |
| Frogger  |             |        |
| NandLand |             |        |
| Verilog  |             |        |
| SystemVerilog |        |        |
| testbenches |           |        |
| IDE       |             |        |
| syntax highlighting |   |        |


### 2. Document Purpose

The purpose of this document is to expand upon the functional specifications by defining the features, scope, and objectives of the project. It provides detailed explanations of how each feature works and serves as a comprehensive guide for the development team and other team members who need an in-depth understanding of the application.

It is highly recommended to read the [Functional Specifications](/Documents/FunctionalSpecifications/functionalspecifications.md) before proceeding with this document.

This document serves as a reference for the development team to understand the technical requirements of the project, ensuring that the project is developed in alignment with the specified guidelines.

Additionally, it provides resources on coding conventions, database structure, graphic standards, and other aspects crucial to the maintainability and scalability of the application.

### 3. Project Definition

The project aims to develop a Frogger game using the NandLand GO Board and Verilog. The game will be implemented on the FPGA board, allowing users to play the classic Frogger game on the hardware platform. The game will include features such as movement, collisions, and scoring, providing an interactive and engaging experience for users.

#### A) Vision

The vision of the project is to keep the original gameplay experience of Frogger while personalizing graphics and adding new features to enhance user engagement. The project aims to provide a fun and challenging game that can be played on the NandLand GO Board, offering users an interactive and entertaining experience.

#### B) Goals

#### C) Future Improvements

#### D) Assumptions
For this project the team assume that:
- The NandLand GO Board is fully functional and compatible with the Verilog code.
- The Verilog code is correctly implemented and tested on the FPGA board.
- The game features are implemented according to the functional specifications.
- The game runs smoothly and provides an engaging user experience.
- The game is free of bugs and errors that may affect the gameplay.

## II. Technology Presentation

### 1. NandLand GO Board
NandLand GO Board is a hardware platform that allows users to develop and test digital circuits using Verilog. The board features an FPGA chip, LEDs, buttons, VGA connector and other components that can be used to create interactive projects. The board is designed to be user-friendly and versatile, making it ideal for educational purposes and hobbyist projects.

#### C) Materials specifications

The NandLand GO Board features the following components:

##### ➭ <ins> FPGA </ins>
**Reference:** ICE40HX1K-VQ100
**Number:** 1
**Total memory bits:** 65536

The FPGA chip is the core component of the board, responsible for executing the Verilog code and controlling the hardware components. The FPGA chip is programmable, allowing users to develop custom digital circuits and applications.

// TODO: add photo of the FPGA chip

##### ➭ <ins> LEDs </ins>
**Number:** 5

The board features 5 LEDs, 4 of which are fully programmable and can be used to display information or status indicators and 1 is used as a power indicator.

// TODO: add photo of the LEDs

##### ➭ <ins> 7-Segment Display </ins>
**Number:** 2

The board features 2 7-segment displays that can be used to display numbers and characters. The 7-segment displays can be programmed to show score, time, or other information relevant to the application.

// TODO: add photo of the 7-segment display

##### ➭ <ins> Buttons </ins>
**Number:** 4

The board features 4 buttons that can be used as input devices for interacting with the application. The buttons can be programmed to perform specific actions or trigger events in the application.

// TODO: add photo of the buttons

##### ➭ <ins> VGA Connector </ins>
**Number:** 1

The board features a VGA connector that can be used to connect an external display to the board. The VGA connector allows users to display graphics and visuals on a monitor or screen.

// TODO: add photo of the VGA connector

##### ➭ <ins> USB Connector </ins>
**Number:** 1

The board features a USB connector that can be used to connect the board to a computer for programming and data transfer. The USB connector provides power to the board and allows users to upload Verilog code to the FPGA chip.

// TODO: add photo of the USB connector

##### ➭ <ins> PMOD Connector </ins>
**Number:** 1

The board features a PMOD connector that can be used to connect external modules and peripherals to the board. The PMOD connector allows users to expand the functionality of the board by adding additional components.

// TODO: add photo of the PMOD connector

Board specifications can be found in appendix [here].
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
module and_gate(input a, input b, output y);
    assign y = a & b;
endmodule
```

More details about Verilog can be found [here](https://www.nandland.com/verilog/tutorials/tutorial-introduction-to-verilog-for-beginners.html).

##### ➭ <ins> SystemVerilog </ins>
SystemVerilog is an extension of Verilog that adds new features and capabilities to the language. It includes enhancements such as object-oriented programming, constrained random testing, and assertions, making it a powerful tool for developing complex digital systems.

Here is an example of a simple SystemVerilog code that implements a basic counter:

``` verilog
module counter;
    int count = 0;

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

## III. Technical Specifications

### 1. Naming Conventions and file structure

#### A) Files and Directories naming conventions
The project will follow the following naming conventions for files and directories:

##### ➭ <ins> Files </ins>

- **Verilog files:** Verilog files will be named using lowercase letters and underscores to separate words. For example, `game_logic.v`, `player_module.v`.
- **Testbench files:** Testbench files will be named using the same convention as Verilog files, with the addition of `_tb` at the end. For example, `game_logic_tb.v`, `player_module_tb.v`.
- **Documentation files:** Documentation files will be named using lowercase letters and underscores to separate words. For example, `technical_specifications.md`, `functional_specifications.md`.

##### ➭ <ins> Directories </ins>

Every directory of the project will be named using lowercase letters and uppercase for the first letter of each word. For example, `Source`, `Testbench`, `Documentation`.

#### B) Variables naming conventions
The project will follow the following naming conventions for variables:

- **Module names:** Module names will be named using lowercase letters and underscores to separate words. For example, `game_logic`, `player_module`.
- **Constants:** Constants will be named using uppercase letters and underscores to separate words. For example, `SCREEN_WIDTH`, `PLAYER_LIVES`.
- **Variables:** Variables will be named using lowercase letters and underscores to separate words. For example, `player_position`, `enemy_speed`.
- **Wires names:** Wires names will start by a `w_` and named using lowercase letters and underscores to separate words. For example, `w_player_position`, `w_enemy_speed`.
- **Input ports:** Input ports will start by `i_` and named using lowercase letters and underscores to separate words. For example, `i_player_position`, `i_enemy_speed`.
- **Output ports:** Output ports will start by `o_` and named using lowercase letters and underscores to separate words. For example, `o_player_position`, `o_enemy_speed`.

#### C) File structure
The project will follow the following file structure:

```
Frogger
│
├── Source
│   ├── gamelogic.v
│   ├── playermodule.v
│   ├── enemymodule.v
│   ├── ...
│
├── Testbench
│   ├── gamelogictb.sv
│   ├── playermoduletb.sv
│   ├── enemymoduletb.sv
│   ├── ...
│
├── Documents
│   ├── TechnicalSpecifications
│   │   ├── technicalspecifications.md
│   │   ├── ...
│   ├── FunctionalSpecifications
│   │   ├── functionalspecifications.md
│   │   ├── ...
│   ├── ...
```

### 2. Display

#### A) Graphics
The game graphics are designed to provide a visually appealing and engaging experience for the player. These graphics include elements such as the player character, enemies, obstacles, and background scenery to create an immersive game environment.

The graphics will be implemented using Verilog code to drive the display of the game elements. Special attention will be given to optimizing the graphics for the NandLand GO Board's display capabilities, ensuring smooth performance and high-quality visuals.

> *Details of the graphics are provided in the [Functional Specifications](/Documents/FunctionalSpecifications/functionalspecifications.md).*

#### B) Display Resolution
The game will run on the NandLand GO Board's display, with a resolution of 640x480 pixels. Game elements will be appropriately scaled and positioned to fit the screen size, ensuring an optimal viewing experience for the player.

The Verilog code will configure the display resolution to ensure proper rendering of game elements on the screen. The game logic will handle adjustments to the display resolution to ensure that the graphics and gameplay remain aligned with the intended visual presentation.

#### C) Grid System
A grid system will be employed to manage the positioning and movement of game elements on the screen. The grid will divide the display into cells, allowing for precise placement and movement of objects in discrete steps.

The screen will be divided into a grid consisting of 20 columns and 15 rows. Each cell will represent a specific coordinate on the screen, simplifying the handling of movement and interactions. This grid system will be implemented in Verilog to control the placement and movement of game elements.

#### D) Sprites
The game elements such as the player character, enemies, obstacles, and background scenery will be represented using sprites. Sprites are 2D images that provide visual representations of these elements.

Each sprite will have a resolution of 32x32 pixels, ensuring detailed and recognizable graphics. These sprites will be designed to be visually distinct and easily recognizable by the player.

In Verilog, the sprites will be implemented as arrays of pixel values, with each pixel representing a specific color value. The sprites will be displayed on the screen using the VGA connector of the NandLand GO Board.

### 3. Movement

#### A) Player Movement 
##### ➭ <ins> Using GO Board Buttons</ins>
The player character will be able to move in four directions: up, down, left, and right. This movement will be controlled using the buttons available on the NandLand GO Board, allowing the player to explore the game environment and avoid obstacles.

##### ➭ <ins> Using Pmod Buttons</ins>
Alternatively, the player character can be controlled via PMOD buttons connected to the controller. The player will be able to move up, down, left, and right to navigate the game environment and avoid obstacles.

#### B) Enemy Movement
The enemies will move horizontally across the screen at a constant speed. Their movement will be restricted to a straight line, challenging the player to time their movements to avoid collisions.

Enemy movement will be implemented using a timer and counter in the Verilog code, which will control their speed and direction. The enemies' speed will remain consistent, requiring the player to carefully time their movements.

### 4. Collisions
Collisions between the player character and enemies or obstacles will result in the player losing a life and respawning at the starting position.

Collision detection will be handled in Verilog using bounding boxes to check for overlaps between the player and other game elements. When a collision is detected, the game logic will respond accordingly, updating the game state (such as decreasing lives) and repositioning the player.

### 5. Scoring
The game will track the player's score based on their progress and interactions within the game environment. Points will be awarded for actions such as avoiding obstacles, defeating enemies, or completing levels. 

The scoring system will be implemented in Verilog, with the score displayed on the screen. The game logic will update the score in real-time as the player progresses through the game.

### 6. Block RAM
Block RAM (BRAM) will be used to store game data, such as the current state of the game elements, sprites, and level information. BRAM provides a fast and efficient way to access data needed for gameplay.

The Verilog code will be responsible for managing reads and writes to BRAM, ensuring that game data is retrieved and updated as necessary to maintain smooth gameplay.

Block RAM will made using flip-flops and multiplexers. The flip-flops will store the data and the multiplexers will select the data to be read or written.

### 7. Sound
Sound effects will be added to enhance the gaming experience, providing audio feedback for events such as player movements, collisions, and scoring.

The Verilog code will generate sound signals, which will be output through the NandLand GO Board's Pmod. A buzzer or speaker can be connected to the Pmod to produce sound effects based on the game events.
