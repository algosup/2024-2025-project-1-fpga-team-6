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
│   ├── game_logic.v
│   ├── player_module.v
│   ├── enemy_module.v
│   ├── ...
│
├── Testbench
│   ├── game_logic_tb.sv
│   ├── player_module_tb.sv
│   ├── enemy_module_tb.sv
│   ├── ...
│
├── Documents
│   ├── TechnicalSpecifications
│   │   ├── technical_specifications.md
│   │   ├── ...
│   ├── FunctionalSpecifications
│   │   ├── functional_specifications.md
│   │   ├── ...
│   ├── ...
```

### 2. Display

#### A) Graphics
The game graphics will be designed to provide a visually appealing and engaging experience for the player. The graphics will include elements such as player character, enemies, obstacles, and background scenery to create an immersive game environment.

The graphics will be implemented using Verilog code to display the game elements on the screen. The graphics will be optimized for the NandLand GO Board's display capabilities to ensure smooth performance and high-quality visuals.

*Every graphic detail is provided in the [Functional Specifications](/Documents/FunctionalSpecifications/functionalspecifications.md).*

#### B) Display Resolution
The game will be designed to run on the NandLand GO Board's display with a resolution of 640x480 pixels. The game elements will be scaled and positioned to fit the screen size and provide an optimal viewing experience for the player.

The display resolution will be configured in the Verilog code to ensure that the game graphics are displayed correctly on the screen. The game logic will be implemented to handle the display resolution and adjust the game elements accordingly.

#### C) Grid System
The game will use a grid system to position and move the game elements on the screen. The grid system will divide the screen into cells, allowing the game elements to be placed at specific coordinates and move in discrete steps.

The screen will be divided into a grid of 20 columns and 15 rows, with each cell representing a specific position on the screen. The grid system will be implemented in the Verilog code to handle the positioning and movement of the game elements.

#### D) Sprites
The game will use sprites to represent the game elements such as the player character, enemies, obstacles, and background scenery. Sprites are 2D images that can be displayed on the screen to create visual representations of the game elements.

Sprites resolution will be 32x32 pixels, allowing for detailed and recognizable graphics. The sprites will be designed to be visually distinct and easily recognizable by the player.

The sprites will be implemented in the Verilog code as arrays of pixel values, with each pixel representing a color value. The sprites will be displayed on the screen using the VGA connector of the NandLand GO Board.

### 3. Movement

#### A) Player Movement 
##### ➭ <ins> With GO Board Buttons </ins>
The player character will be able to move in four directions: up, down, left, and right. The player movement will be controlled using the buttons on the NandLand GO Board, allowing the player to navigate the game environment and avoid obstacles.

##### ➭ <ins> With Pmod Buttons </ins>
The player character will be able to move in four directions: up, down, left, and right. The player movement will be controlled using the PMOD buttons connected to the controller, allowing the player to navigate the game environment and avoid obstacles.

#### B) Enemy Movement
The enemies will move horizontally across the screen at a constant speed. The enemies will move in a straight line from one side of the screen to the other, posing a challenge to the player as they navigate the game environment.

The enemy movement will be implemented in the Verilog code using a timer and counter to control the speed and direction of the enemies. The enemies will move at a consistent pace, requiring the player to time their movements carefully to avoid collisions.

### 4. Collisions
The player character will collide with enemies and obstacles if they come into contact with them. Collisions will result in the player losing a life and being respawned at the starting position.

The collision detection will be implemented in the Verilog code using bounding boxes to check for overlap between the player character and the enemies or obstacles. When a collision is detected, the game logic will handle the player's response and update the game state accordingly.

### 5. Scoring

