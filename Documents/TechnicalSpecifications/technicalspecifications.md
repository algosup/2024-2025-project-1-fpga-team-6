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

#### B) Usage
To use the board a configuration of the computer is required. The tutorial can be found [here](https://nandland.com/set-up-apio-fpga-build-and-program/).

### 2. Verilog

#### A) Language

#### B) Working Environment

## III. Technical Specifications

### 1.Naming Conventions

#### A) Folders

#### B) Files

#### C) Constants and Variables

### 2. Display

### 3. Movement

### 4. Collisions