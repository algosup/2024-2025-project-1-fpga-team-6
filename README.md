# ✨ Frogger FPGA Team 6 ✨

## What is the purpose of this project? 📚

This project aims to create a Frogger game using the FPGA (Field Programmable Gate Array) technology. We handle input, output, screen display and even memory management using Verilog.

<!-- Game Picture -->

## Who are the people in the team? 🤝

Team 6 involves few coworkers, handling different roles:

| Role               | Name  | Picture |
| ------------------ | ----- | ------- |
| Project Manager | Enzo GUILLOUCHE | <img src="https://ca.slack-edge.com/T019N8PRR7W-U05SJQXHTSB-3d5d3475a625-50"> |
| Program Manager | Evan UHRING | <img src="https://ca.slack-edge.com/T019N8PRR7W-U05SZB90074-1c8c0fca09b4-50"> |
| Technical Leader | Maxime CARON | <img src="https://ca.slack-edge.com/T019N8PRR7W-U05SZ8EATJP-2f1b14ca0bd5-50"> |
| Software Engineer | Elone DELILLE | <img src="https://ca.slack-edge.com/T019N8PRR7W-U05SJR05FL7-464fe5ab420c-50"> |
| Quality Assurance | Axel DAVID | <img src="https://ca.slack-edge.com/T019N8PRR7W-U07D74Y2FN3-c49f70489f3b-50"> |
| Technical Writer | Pierre GORIN | <img src="https://ca.slack-edge.com/T019N8PRR7W-U02FHCYEJJD-b72455662dbf-50"> |

[Here](https://github.com/algosup/2024-2025-project-1-fpga-team-6/graphs/contributors) are their contributions to the project!

## What is Frogger? 🐸

- The goal of the game is to move a frog from the bottom of the screen to the top. There’s only one problem: The frog is trying to cross a busy highway filled with cars! You must carefully control the frog to cross the road without getting hit by a car.

Our Frogger game will contain colorful sprites, though no sounds can be handled as the only way we can display the game on a monitor is with a VGA port.

## "FPGA"? How does this work? 💾

The FPGA is a type of configurable integrated circuit that can be repeatedly programmed after manufacturing.
We actually used the Go-Board provided by Russell Merrick, who taught us how to deal with this technology.

<img src="https://nandland.com/wp-content/uploads/2022/12/goboard_solo.jpg">

To be able to upload some code in this hardware, we used Verilog as a programming language.

## Can we play the game though? 🕹️

To play the game, you'll need to have some <u>required elements</u>:

- A Go-Board
- A VGA compatible monitor 
- A VGA cable

Then, you'll need to setup apio on your machine. 
To do this, follow the steps on this [link](https://nandland.com/set-up-apio-fpga-build-and-program/).

Once you've setup the software, all you need is [download our project](https://github.com/algosup/2024-2025-project-1-fpga-team-6/releases), and upload it into the board using the `apio upload` command on your terminal. (make sure you're in the project's folder!)

Then, if the board is correctly plugged and connected to a VGA monitor, the game will launch!
