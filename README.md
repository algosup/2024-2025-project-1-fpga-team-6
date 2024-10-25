# ✨ Frogger FPGA Team 6 ✨

## What is the purpose of this project? 📚

This project aims to create a Frogger game using the FPGA (Field Programmable Gate Array) technology. We handle input, output, screen display and even memory management using Verilog.

![2024-10-18 11-49-23](https://github.com/user-attachments/assets/550aa575-0d70-416f-be6d-736c16db6aaf)

## What is Frogger? 🐸

- The goal of the game is to move a frog from the bottom of the screen to the top. There’s only one problem: The frog is trying to cross a busy highway filled with cars! You must carefully control the frog to cross the road without getting hit by a car.

Our Frogger game will contain colorful sprites, though no sounds can be handled as the only way we can display the game on a monitor is with a VGA port.

<img src="https://github.com/user-attachments/assets/67d07256-1954-43ec-98dc-e69adae53c59" alt="image" width="300"/>

## How can we play the game? 🕹️

To play the game, you'll need to have some <u>required elements</u>:

- A [Go-Board](https://nandland.com/cart/)
- A [VGA compatible monitor](https://www.amazon.com./s?k=vga+monitor&crid=1SGS6CI178TBH&sprefix=vga+mo%2Caps%2C207&ref=nb_sb_ss_ts-doa-p_1_6)
- A [VGA cable](https://www.amazon.com./s?k=vga+cable&crid=1N29E5VSJS1W4&sprefix=vga%2Caps%2C199&ref=nb_sb_ss_ts-doa-p_2_3)
- A [micro-USB cable](https://www.amazon.com./s?k=micro-usb+cable&crid=L7H96RRAM5DF&sprefix=micro-us%2Caps%2C158&ref=nb_sb_ss_ts-doa-p_2_8)

### macOS Setup

Then, you'll need to setup apio on your machine. 
To do this, follow the steps on this [link](https://nandland.com/set-up-apio-fpga-build-and-program/).

Once you've setup the software, all you need is 
- [download our latest release](https://github.com/algosup/2024-2025-project-1-fpga-team-6/releases)
- connect the board to your computer with the micro-USB cable
- upload it into the board using the `apio upload` command on your terminal (make sure you're in the Frogger folder!)

Then, if the board is correctly plugged and connected to a VGA monitor, the game will launch!

## LilyPad 🪷

<img src="https://github.com/user-attachments/assets/befc4c72-095f-45d0-859c-b51b0a666d6f" alt="image" width="300"/>

LilyPad is a console we've made beside the Frogger game. The Go-Board contains the game you want to play, you put it correctly inside the console, and it's plug & play!

<img src="https://github.com/user-attachments/assets/d96765b0-d3ef-49bd-872d-a85155195fe2" alt="image" width="300"/>

The console has been constructed to contain the Go-Board, letting the 7-Segment displays visible.
Also, the Pmods have been placed specifically to create controller plugs.

<img src="https://github.com/user-attachments/assets/cdb745f9-5711-4c34-9a72-8ae6723a5732" alt="image" width="300"/>
<img src="https://github.com/user-attachments/assets/a86556f6-1ead-4842-a1f7-d20ec39802a5" alt="image" width="300"/>

As we created a console, we needed to create controllers as well, and we did.

<img src="https://github.com/user-attachments/assets/8c371937-ef0e-4456-9b78-06193a4312c3" alt="image" width="300"/>

Note: The game is totally playable with only a Go-Board, but the console and controllers will allow a huge experience!

<img src="https://github.com/user-attachments/assets/faa3a1e6-152a-44a6-96df-80b91fb8b9e9" alt="image" width="300"/>

## Can we buy/recreate the console? 🎮🕹️👾

Yes, you could be able to create your own LilyPad!
You can even order one to our team.

To know everything about the cost of a LilyPad, you can check this [link](https://docs.google.com/spreadsheets/d/1F-HxhJdpekoRyOHcomrwG5_U2OMouyGQa8QbSrjasqM/edit?usp=sharing).

Also, you can check the [LilyPad Documentation](https://github.com/algosup/2024-2025-project-1-fpga-team-6/releases) to dive deeper into the subject!

## "FPGA"? How does this work? 💾

The FPGA is a type of configurable integrated circuit that can be repeatedly programmed after manufacturing.
We actually used the Go-Board provided by Russell Merrick, who taught us how to deal with this technology at [ALGOSUP](https://algosup.com/en.html).

<img src="https://nandland.com/wp-content/uploads/2022/12/goboard_solo.jpg">

To be able to upload some code in this hardware, we used Verilog as a programming language.

## Who are the people in the team? 🤝

Team 6 involves few coworkers, handling different roles:

| Role               | Name  | Picture |
| ------------------ | ----- | ------- |
| Project Manager | Enzo GUILLOUCHE | [<img src="https://ca.slack-edge.com/T019N8PRR7W-U05SJQXHTSB-3d5d3475a625-50">](https://github.com/EnzoGuillouche) |
| Program Manager | Evan UHRING | [<img src="https://ca.slack-edge.com/T019N8PRR7W-U05SZB90074-1c8c0fca09b4-50">](https://github.com/Evan-UHRING) |
| Technical Leader | Maxime CARON | [<img src="https://ca.slack-edge.com/T019N8PRR7W-U05SZ8EATJP-2f1b14ca0bd5-50">](https://github.com/MaximeAlgosup) |
| Software Engineer | Elone DELILLE | [<img src="https://github.com/user-attachments/assets/0e78643a-e224-4e01-be2c-a9263d993d53">](https://github.com/HiNett) |
| Quality Assurance | Axel DAVID | [<img src="https://ca.slack-edge.com/T019N8PRR7W-U07D74Y2FN3-c49f70489f3b-50">](https://github.com/Fus1onAxel) |
| Technical Writer | Pierre GORIN | [<img src="https://ca.slack-edge.com/T019N8PRR7W-U02FHCYEJJD-b72455662dbf-50">](https://github.com/Pierre2103) |

[Here](https://github.com/algosup/2024-2025-project-1-fpga-team-6/graphs/contributors) are their contributions to the project!

#### The project's documentation

- [Weekly Reports](./Documents/Management/WeeklyReports/)
- [Management Documentation](./Documents/Management/)
- [Functional specifications](./Documents/FunctionalSpecifications/functionalSpecifications.md)
- [Technical specifications](./Documents/TechnicalSpecifications/technicalSpecifications.md)
- [3D Models](./3DModels/)
- [Quality Assurance Documentation](./Documents/QA/)
- [User Manuals](./Documents/Manuals/)
