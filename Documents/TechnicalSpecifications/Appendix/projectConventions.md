# Appendix 1 Project Conventions - FPGA [Team 6]

## Document Control

### Document Information
|                  | Information                                 |
| ---------------- | ------------------------------------------- |
| **Document Owner**   | Maxime CARON                                |
| **Creation Date**    | 2024/10/04                                  |
| **Last Update Date** | 2024/10/04                                  |
| **Document Name**    | Appendix 1 Project Conventions - Frogger [Team 6] |

### Document Version
| Version n° | Author       | Date       | Description of Edits            |
| ---------- | ------------ | ---------- | ------------------------------- |
| 1.0        | Maxime CARON | 2024/10/04 | Initial version, document draft |

## Table of Contents

<details>
<summary><b>Click to expand</b></summary>

- [Appendix 1 Project Conventions - FPGA \[Team 6\]](#appendix-1-project-conventions---fpga-team-6)
  - [Document Control](#document-control)
    - [Document Information](#document-information)
    - [Document Version](#document-version)
  - [Table of Contents](#table-of-contents)
  - [I. Introduction](#i-introduction)
    - [1. Glossary](#1-glossary)
    - [2. Document Purpose](#2-document-purpose)
  - [II. Files and Directories Conventions](#ii-files-and-directories-conventions)
    - [1. Files](#1-files)
    - [2. Directories](#2-directories)
    - [3. Files and Directories Structure](#3-files-and-directories-structure)
    - [File Naming Clarification:](#file-naming-clarification)
  - [III. Coding Standards](#iii-coding-standards)
    - [1. General Coding Standards](#1-general-coding-standards)
    - [2. Variables Naming Conventions](#2-variables-naming-conventions)
    - [3. Comments](#3-comments)
</details>

## I. Introduction

### 1. Glossary

| Term       | description | Source |
| ---------- | ----------- | ------ |
| **FPGA**   | Field-Programmable Gate Array, a type of programmable hardware used to implement digital logic. | [Wikipedia](https://en.wikipedia.org/wiki/Field-programmable_gate_array) |
| **Verilog**| A hardware description language (HDL) used to model electronic systems. | [Wikipedia](https://en.wikipedia.org/wiki/Verilog) |
| **Testbench**| A simulation environment used to verify the correctness of the Verilog code. | [Wikipedia](https://en.wikipedia.org/wiki/Testbench) |
| **VGA**    | Video Graphics Array, a display standard used to interface with monitors or other displays. | [Wikipedia](https://en.wikipedia.org/wiki/Video_Graphics_Array) |
| **BRAM**   | Block RAM, memory blocks available within FPGAs for efficient data storage. | [NANDLAND](https://nandland.com/lesson-15-what-is-a-block-ram-bram/) |

### 2. Document Purpose
This document defines the coding standards, naming conventions, and file structure for the Frogger FPGA project. These conventions aim to ensure that the project’s codebase remains consistent, easy to maintain, and readable for all team members. Following these conventions will streamline collaboration and ensure a smooth workflow across the team.

This project aims to recreate the classic **Frogger** game using FPGA technology on the **NandLand GO Board**.

## II. Files and Directories Conventions

### 1. Files

- **Verilog files:** Verilog files must be named using lowercase letters and underscores to separate words. Example: `game_logic.v`, `player_module.v`.
- **SystemVerilog files:** Testbenches or advanced Verilog code using SystemVerilog features should have the `.sv` extension. Example: `game_logic_tb.sv`, `player_module_tb.sv`.
- **Documentation files:** Documentation files will use lowercase letters and underscores. Example: `technical_specifications.md`, `functional_specifications.md`.

### 2. Directories

Directories will be named using lowercase letters with the first letter of each word capitalized (CamelCase). Example: `Source`, `Testbench`, `Documentation`.

### 3. Files and Directories Structure
The project will follow the structure outlined below:

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

### File Naming Clarification:
- **.v vs .sv:** `.v` files are used for standard Verilog modules, while `.sv` is reserved for modules or testbenches that use SystemVerilog features, ensuring compatibility and clarity during simulations.

## III. Coding Standards

### 1. General Coding Standards
- **Indentation:** All code should use 4 spaces per indentation level.
- **Comments:** Comments must be clear, concise, and explain the code’s functionality. They will be in English and follow a consistent format. Comments must be used to describe modules, inputs, outputs, and important code blocks.
- **Naming conventions:** Consistent and descriptive names must be used for modules, variables, and constants. Naming should adhere to the guidelines detailed below.
- **Code structure:** The code must be organized into logical blocks, with different functionalities placed in separate modules. This will improve readability, reusability, and maintainability.
- **Error handling:** Error handling mechanisms should be included where necessary, with proper testbenches and verification steps to detect issues like signal misalignment or timing conflicts.

### 2. Variables Naming Conventions

The following naming conventions must be followed to ensure clarity and avoid ambiguity:

- **Module names:** Module names will use lowercase letters and underscores. Example: `game_logic`, `player_module`.
- **Constants:** Constants will be named using uppercase letters with underscores separating words. Example: `SCREEN_WIDTH`, `PLAYER_LIVES`.
- **Variables:** Variables will use lowercase letters and underscores. Example: `player_position`, `enemy_speed`.
- **Wires:** Wires will start with `w_` and follow the variable naming convention. Example: `w_player_position`, `w_enemy_speed`.
- **Input ports:** Input ports will start with `i_` and use lowercase letters and underscores. Example: `i_player_position`, `i_enemy_speed`.
- **Output ports:** Output ports will start with `o_` and follow the same convention. Example: `o_player_position`, `o_enemy_speed`.

### 3. Comments

Comments should follow this structure:
- **Single-line comments**: For small clarifications within the code.
- **Multi-line comments**: For more complex explanations or code blocks.
- **Module headers**: Use a consistent commenting style to describe the module, its inputs, outputs, and functionality.

Example:
```verilog
/**
* @module game_logic
* @description This module handles the main game logic for Frogger.
* 
* @input clk - Clock signal
* @input reset - Reset signal to initialize the game state
* @input [7:0] player_position - Player's current position
* @output [7:0] enemy_position - Enemy's position on the game field
*/
module game_logic(
    input clk,  // Clock signal
    input reset,  // Reset signal
    input [7:0] player_position,  // Player position
    output [7:0] enemy_position  // Enemy position
);
```