# 2024 - 2025 Project 1 FPGA Team 6 - Management Artifacts

This document aims to centralize all the management artifact links and resources listed below:

- [2024 - 2025 Project 1 FPGA Team 6 - Management Artifacts](#2024---2025-project-1-fpga-team-6---management-artifacts)
  - [RACI Matrix](#raci-matrix)
  - [Risks \& Assumptions](#risks--assumptions)
  - [Key Performance Indicators](#key-performance-indicators)
    - [Definition of our KPIs](#definition-of-our-kpis)
      - [Documents](#documents)
      - [Development](#development)
    - [Link to the project's KPIs](#link-to-the-projects-kpis)
  - [Post-Mortem](#post-mortem)
  - [Weekly reports](#weekly-reports)

## RACI Matrix

The RACI matrix of this project is as follows considering the [Project Charter](./project_charter.md):

| Name                     | Project Manager | Program Manager | Technical Leader | Software engineer | Quality assurance | Technical Writer | Client |
| ------------------------ | --------------- | --------------- | ---------------- | ----------------- | ----------------- | ---------------- | ------ |
| Project kick-off         | I               | I               | I                | I                 | I                 | I                | R      |
| Project charter          | R               | A               | C                | C                 | C                 | C                | I      |
| Schedule creation        | R               | C               | C                | C                 | C                 | C                | /      |
| Functional specification | A               | R               | C                |                   | C                 | /                | C      |
| Technical specification  | A               | C               | R/A              | I                 | C                 | /                | C      |
| Coding process           | A               | I               | R                | R/A               | C                 | /                | /      |
| Testing planification    | A               | /               | C                | C                 | R/A               | I                | /      |
| Usage instructions       | A               | C               | C                | C                 | I                 | R/A              | I      |

Legend:

| Letter | Full name   | Description                                     |
| ------ | ----------- | ----------------------------------------------- |
| R      | Responsible | Executes the task or activity                   |
| A      | Accountant  | Ultimately answerable for the task's completion |
| C      | Consulted   | Provides input and/or advice on the task        |
| I      | Informed    | Kept updated on progress and decisions          |
| /      | /           | No interaction with this role for this task     |

## Risks & Assumptions

| ID  | Description                                                                   | Consequence                                                       | Impact   | Likelihood | Mitigation/Avoidance                                                                |
| --- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------- | -------- | ---------- | ----------------------------------------------------------------------------------- |
| 1   | FPGA is a technology to which we are not yet used to.                           | Development flow might be impacted.                                | High     | Medium     | Ask for help to the other team members.                                              |
| 2   | The VGA connection is quite old and not used anymore in recent monitors.                             | We might encounter some issues with the monitors.             | Medium   | Low        | Stick to a single monitor. |
| 3   | The sprite/color implementation could be quite hard to perform. | We might focus on the sprites integration rather than the main features. | High     | Low        | Focus on the main features.                        |

## Key Performance Indicators

### Definition of our KPIs

To enable the client to track our project's milestones, we have defined several quantitatively measurable KPIs. Below is a list of these KPIs along with their respective calculations.

#### Documents

The following KPIs are included in this section:

- **Functional Specifications**
- **Technical Specifications**
- **Test Plan**
- **User Manual**

#### Development

This section tracks the following KPIs:

- **Frog Display**
- **Frog Control**
- **Car Display**
- **Car Behavior**
- **Levels**
- **Sprites Integration**

### Link to the project's KPIs

You can see our project's KPIs which were explained above following [this link](https://docs.google.com/spreadsheets/d/1pW0lcJmaklLvV69xaQg9A9HL7gVH3gwBpeU3l1J2H7I/edit?usp=sharing).

## Post-Mortem

This post-mortem has been filled in on Friday 25/10/24, just after performing the final presentation.

| Person | What you learned | Problem encountered | How do you handle it | What to improve | What you liked | What you don't liked | What are you proud |
| ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- |
| Enzo (SCRUM Master) | Learnt how to manage a team (I'm not used to give directives), and manage a project entirely. Learnt Verilog programming language. | Code: Limitations of the FPGA, leading to less feature implementations.<br>Mana: Complex to give directives to big heads of the team. | Code: Optimized the code as far as we could.<br>Mana: Wait until the people were ready to listen to me, because I knew they meet deadlines they're set to. | Reworked the way we developed, then seeing new ways of optimization. | How the team worked together, reaching a common goal, without overloading a task. | The strict limitations of the FPGA, leading us to deliver an uncomplete software. | Proud that everyone did their best, creating a real product. I improved in presenting. |
| Evan | Learnt how to do functional specifications. Learnt Verilog programming language. | I know that I failed on the functional specifications. | Couldn't really catch up at the moment, but I'll learn from my mistakes. | My document needs improvements for sure. I believe I could detail a bit more what were really useful and do not allocate too many explanations about less useful stuff. | The enjoyable ambiance was amazing. The collaboration between the team members was incredible. | Everything was cool. | I'm proud about the fact that I improved in presenting, also the final result is incredible. |
| Maxime | Learnt how to put myself entirely into a project, and deliver a complete project. How to really set up in presenting. | I stressed for the final presentation. | I'm gonna do some breath exercises for the next presentation. | I could have speeded up the production. I could have also helped on the code base. | For the first time, I was not stuck at just writing code, we produced the project entirely with many enjoyable times. | Nothing. | I'm really proud of the final product. |
| Elone | Learnt that we can have fun in a project and deliver a finished one. | The FPGA's limitations were hard to deal with, then the optimization and documentation understanding needed. | We just found solutions such as trade-offs basically. | I was not enough active at some moments, I maybe should try complements to boost my concentration and energy. | Coding in an enjoyable ambiance was nice. | Nothing, really. | The entirety of the project. |
| Pierre | Learnt how to create electronics, and then produce a whole complete product. We can have fun in a project while working hard. How to create a brand identity. | We lacked of hardware resources for LilyPad, and we also had delivery delays to take into account. I stressed for the presentation as well. | We had to find alternative solutions, like work with other resources. | The technical conceptions could have been done better. | I enjoyed everything, the ambiance, the creation of a whole product. The final result was awesome. | I enjoyed everything. | The final product. The jury's reaction was awesome, and the collaboration of the team was enjoyable. I enjoyed my personal participation to the project. |
| Axel | It was my 1st project, so I learnt how my role consists in, and how a project can be completed beyond its limit. | Learning my role was challenging, and so diving into documentations, writing documents. | I just did my work basically. I just tried, and tried again, looking for the best I could do. | I could have been faster on writing my documents, and so helping on other tasks. | The project was cool, the result is nice. The team in itself was really enjoyable, I had a good time working with these team members. | I didn't understand the milestones of the project and what I should do at the beginning, but then it was all good. | Gone beyond just the required project. The final presentation was nice. I'm proud of the team. |

## Weekly reports

The weekly reports folder can be found following [this link](/Documents/Management/WeeklyReports/).

You can directly access the reports individually following the below bullet points:

- [Access Report for Week 1](/Documents/Management/WeeklyReports/week1.md)
- [Access Report for Week 2](/Documents/Management/WeeklyReports/week2.md)
- [Access Report for Week 3](/Documents/Management/WeeklyReports/week3.md)
- [Access Report for Week 4](/Documents/Management/WeeklyReports/week4.md)
- [Access Report for Week 5](/Documents/Management/WeeklyReports/week5.md)

For a centralized collection of copies of all the reports in a single document, please refer to the Cumulative File for Weekly Reports:

- [Access Cumulative file for all 5 weeks](/Documents/Management/WeeklyReports/cumulative.md)
