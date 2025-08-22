# Parking Management System 🚗
**Assembly Language Project**

## Overview
A parking management system developed in assembly language, demonstrating low-level programming skills and system design concepts. This project showcases understanding of memory management, data structures, and user interface design at the assembly level.

## 🎯 Project Objectives
- Implement system-level programming concepts
- Practice assembly language programming
- Design efficient data structures for parking slot management
- Create user-friendly command-line interface

## 🛠️ Technology Stack
- **Language:** Assembly Language
- **Architecture:** x86/x64 Assembly
- **Tools:** MASM/NASM, Debug tools
- **Platform:** DOS/Windows environment

## ✨ Key Features
- **Parking Slot Management:** Track available and occupied spaces
- **Vehicle Registration:** Add and remove vehicles from system
- **Fee Calculation:** Automated parking fee computation
- **Search Functionality:** Find vehicles by license plate or slot number
- **Reporting:** Generate parking statistics and occupancy reports
- **Data Persistence:** Save and load parking data

## 🏗️ System Architecture
```
┌─────────────────┐    ┌──────────────────┐    ┌─────────────────┐
│   User Input    │    │   Data Process   │    │   File Storage  │
│   Interface     │◄──►│   & Management   │◄──►│   System        │
│  (Assembly UI)  │    │   (Assembly)     │    │  (File I/O)     │
└─────────────────┘    └──────────────────┘    └─────────────────┘
```

## 💻 Core Functions
- **Vehicle Entry:** Register new vehicles and assign parking slots
- **Vehicle Exit:** Process departure and calculate fees
- **Slot Status:** Check available and occupied parking spaces
- **Fee Management:** Calculate hourly/daily parking charges
- **Search Operations:** Find vehicles and check slot availability

## 🔧 Technical Highlights
- **Memory Management:** Efficient use of registers and memory allocation
- **String Operations:** Vehicle ID processing and comparison
- **Mathematical Operations:** Time calculation and fee computation
- **File I/O Operations:** Data persistence and retrieval
- **User Interface:** Menu-driven command-line interface

## 📊 Skills Demonstrated
- **Low-Level Programming:** Direct hardware and memory manipulation
- **Assembly Language:** x86/x64 instruction set usage
- **System Design:** Modular programming approach
- **Data Management:** Efficient data structure implementation
- **Problem Solving:** Real-world application development

## 🚀 Getting Started

### Prerequisites
- MASM (Microsoft Macro Assembler) or NASM
- DOS/Windows environment or emulator
- Basic understanding of assembly language concepts

### Installation & Usage
```bash
# Assemble the program
masm parking.asm
link parking.obj

# Run the executable
parking.exe
```

## 📱 User Interface
- **Main Menu:** Choose operation (Entry, Exit, Search, Reports)
- **Vehicle Entry:** Input vehicle details and get assigned slot
- **Vehicle Exit:** Enter vehicle ID and process payment
- **Search Function:** Find vehicle by ID or check slot status
- **Reports:** View occupancy statistics and revenue summary

## 🎓 Academic Context
- **Institution:** BRAC University
- **Focus:** Assembly language programming and system design
- **Learning:** Low-level programming concepts and memory management
- **Application:** Real-world system implementation

## 📈 Learning Outcomes
- Mastery of assembly language programming
- Understanding of computer architecture at machine level
- Experience with system-level data management
- Proficiency in debugging assembly code
- Knowledge of efficient algorithm implementation

## 🔗 Related Projects
- [Microprocessor Projects](https://github.com/AFK-Swap/Microprocessor-Projects) - STM32 and embedded systems
- [SSI_Metaverse](https://github.com/AFK-Swap/SSI_Metaverse) - High-level blockchain development

## 📧 Contact
- **Developer:** Fahmidur Islam Swapnil
- **Email:** fahmidur.i.swapnil@gmail.com
- **University:** BRAC University

---
*Demonstrating the power of low-level programming in practical applications* ⚙️
