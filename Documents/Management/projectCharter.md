# Project Charter - FPGA Team 6

## Document Control

**Document Information:**

|                   | Information |
| ----------------- | ----------- |
| Document Owner    | Enzo GUILLOUCHE |
| Creation Date     | 2024/9/23 |
| Last Update Date  | 2024/9/27 |
| Document Name     | Project Charter - FPGA Team 6 |

---

<details>

<summary>Click to expand</summary>

- [Project Charter - FPGA Team 6](#project-charter---fpga-team-6)
  - [Document Control](#document-control)
  - [Project Overview](#project-overview)
  - [Project Goals](#project-goals)
  - [Team](#team)
    - [Members and Roles](#members-and-roles)
  - [Stakeholders](#stakeholders)
  - [Deliverables and Milestones](#deliverables-and-milestones)
    - [Deliverables](#deliverables)
    - [Milestones](#milestones)
  - [Resources and Constraints](#resources-and-constraints)
    - [Resources](#resources)
    - [Constraints](#constraints)
  - [Overall plan](#overall-plan)
  - [Glossary](#glossary)

</details>

## Project Overview

This project aims to create a Frogger game using the FPGA (Field Programmable Gate Array) technology. With the Go-Board provided by Russell MERRICK and ALGOSUP, we'll handle input, output, screen display and even memory management.

## Project Goals

We are wanting to perform few goals with this project:

- Recreate the original game with its features (20x15 grid, a controlable frog, harmful cars with random sizes and speed, collisions...)
- Add colors and animations to the game when we display it.
- Create a controller to enhance the user experience.

## Team

### Members and Roles

The team is composed of the following members:

| Role               | Name  | Picture |
| ------------------ | ----- | ------- |
| Project Manager | Enzo GUILLOUCHE | <img src="https://ca.slack-edge.com/T019N8PRR7W-U05SJQXHTSB-3d5d3475a625-50"> |
| Program Manager | Evan UHRING | <img src="https://ca.slack-edge.com/T019N8PRR7W-U05SZB90074-1c8c0fca09b4-50"> |
| Technical Leader | Maxime CARON | <img src="https://ca.slack-edge.com/T019N8PRR7W-U05SZ8EATJP-2f1b14ca0bd5-50"> |
| Software Engineer | Elone DELILLE | <img src="https://ca.slack-edge.com/T019N8PRR7W-U05SJR05FL7-464fe5ab420c-50"> |
| Quality Assurance | Alex DAVID | <img src="https://ca.slack-edge.com/T019N8PRR7W-U07D74Y2FN3-c49f70489f3b-50"> |
| Technical Writer | Pierre GORIN | <img src="https://ca.slack-edge.com/T019N8PRR7W-U02FHCYEJJD-b72455662dbf-50"> |

## Stakeholders

The main stakeholders of this project are:

| Name | Role | Represented by | Expectations |
| ---- | ---- | -------------- | ------------ |
| ALGOSUP | Client | Franck JEANNIN | The customer expects the team to recreate the game Frogger using the specific FPGA technology and the Verilog programming language. |

## Deliverables and Milestones

### Deliverables

We have to deliver the following deliverables :

- Functional Specifications
- Technical Specifications
- Test Plan
- User Manual
- Code
- Unit Tests
- Weekly Reports and Management Planning

And we will present the projet to the client on 2024/10/25.

### Milestones

Here are the milestones according to the deliverables:

| Deliverable | Description | Due Date | Time |
| ----------- | ----------- | -------- | ---- |
| Functional Specifications | A document that describes the what we're going to build and the expected behavior of the Frogger game. | 2024/10/7 | 5PM |
| Technical Specifications | A document that describes the technical requirements and how the Frogger game should work. | 2024/10/14 | 5PM |
| Test Plan | A document that describes the test strategy and the test cases that will be used to validate the Frogger game. | 2024/10/21 | 5PM |
| User Manual | A document that describes how to play our Frogger. | 2024/10/21 | 5PM |
| Code | The source code of the Frogger game. | 2024/10/21 | 5PM |

## Resources and Constraints

### Resources

- **FPGA (Field-Programmable Gate Array)**: The main hardware component used for implementing the score and interfacing with the 7-segment display.
- **VGA-Compatible Monitor**: Used to display the output of the FPGA system, allowing for visual feedback and testing.
- **VGA Cable**: Connects the FPGA to the VGA monitor, enabling signal transmission for display purposes.

### Constraints

- **Hardware Limitations**: The FPGA board has a limited number of logic cells, memory blocks, and I/O pins, which restricts the complexity and scale of the game design.
- **Timing Constraints**: The design must adhere to the timing requirements to ensure smooth gameplay and accurate input handling, making it necessary to carefully manage clock cycles and signal propagation delays.
- **VGA Display Resolution**: The game must be designed to work within the fixed resolution and refresh rates of the VGA-compatible monitor, limiting the possible screen resolution and frame rate.
- **Power Consumption**: The FPGA has a limited power supply, so the design must be optimized to prevent excessive power consumption, which can affect performance and longevity. Also, the FPGA needs to be supplied with power, directly plugged in or using a battery.
- **Verilog Language**: The game logic and hardware interfacing must be implemented using Verilog, requiring the team to adhere to the constraints and limitations of this hardware description language.
- **Development Time**: The project has a strict deadline (2024/10/21), meaning that the team needs to manage their time efficiently to complete all deliverables on schedule.

## Overall plan

To ensure the success of the project, the team will follow the following plan:

1. The team will start by understanding the client's needs and the current state of the project.
2. The team will define the most important features to develop and will write the functional and technical specifications.
3. The team will develop the software, write the test plan and the user manual.
4. Each time some code is written, the team will write unit tests and will add the bugs to the project's issues.
5. The team will write weekly reports and management planning to keep the client informed of the project's progress throughout the provided project time.

## Glossary

| **Term**   | **Description** | **Source** |
|------------|-----------------|------------|
| **Frogger** | Frogger is a 1981 arcade game developed by Konami, where the player controls a frog attempting to cross a road and a river while avoiding obstacles. The game became iconic in the early 1980s and has inspired numerous sequels and remakes. | [Wikipedia: Frogger](https://en.wikipedia.org/wiki/Frogger) |
| **FPGA (Field-Programmable Gate Array)** | An FPGA is an integrated circuit that can be configured by the user after manufacturing. It is widely used in embedded systems, signal processing, and prototyping because of its flexibility and reprogrammability. | [Wikipedia: FPGA](https://en.wikipedia.org/wiki/Field-programmable_gate_array) |
| **Verilog** | Verilog is a hardware description language (HDL) used to model electronic systems. It is commonly used for the design and verification of digital circuits, particularly in FPGA and ASIC development. | [Wikipedia: Verilog](https://en.wikipedia.org/wiki/Verilog) |
| **VGA (Video Graphics Array)** | VGA is a display standard introduced by IBM in 1987, known for its 640x480 resolution and 16-color support. It became widely used in computer displays and is still supported today for backward compatibility. | [Wikipedia: VGA](https://en.wikipedia.org/wiki/Video_Graphics_Array) |
