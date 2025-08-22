# Parking Management System 🚗
**Advanced Assembly Language Parking Management Solution**

A comprehensive parking management system developed in x86 Assembly Language, featuring multi-vehicle support, dynamic pricing, and an intuitive console interface.

## 🚀 **Demo**
*Console-based application with animated interface*

## 📋 **Table of Contents**
- [Features](#features)
- [Technology Stack](#technology-stack)
- [Installation](#installation)
- [Usage](#usage)
- [System Architecture](#system-architecture)
- [Academic Context](#academic-context)

## ✨ **Features**

### **Multi-Vehicle Support**
- 🚲 **Cycle**: Basic parking with lowest rates
- 🏍️ **Bike**: Motorcycle parking management
- 🚗 **Car**: Standard car parking slots
- 🚐 **Micro**: Microbus and small van parking
- 🚌 **Minibus**: Large vehicle accommodation

### **Dynamic Pricing System**
- 💰 **Flexible Rates**: 20-220 Taka per hour based on vehicle type
- ⏰ **Time-based Calculation**: Accurate hourly billing (max 24 hours)
- 🎫 **Smart Discount System**: 
  - 10% discount coupons
  - 20% discount coupons
  - Automatic discount application

### **Advanced Management**
- 📊 **Vehicle Counters**: Real-time tracking for each vehicle type
- 🗂️ **Record Management**: View and delete records by vehicle type
- 🔍 **Search Functionality**: Find vehicles by ID or slot number
- ✅ **Input Validation**: Comprehensive error handling and validation

### **User Experience**
- 🎬 **Animated Interface**: Beautiful console animations and farewell sequences
- 🖥️ **Interactive Menu**: User-friendly command-line interface
- 📱 **Responsive Controls**: Intuitive navigation and input handling
- 🎨 **Visual Feedback**: Clear status indicators and confirmations

## 🛠️ **Technology Stack**

### **Programming Language**
- **x86 Assembly Language** - Low-level system programming
- **MASM/NASM** - Microsoft Macro Assembler / Netwide Assembler
- **DOS/Windows Environment** - Compatible with both platforms

### **Development Tools**
- **Visual Studio** - IDE with assembly support
- **MASM Assembler** - Assembly compilation
- **DOS Debug** - Runtime debugging
- **Command Prompt** - Application execution environment

### **Architecture**
- **Procedural Programming** - Modular subroutine design
- **Memory Management** - Efficient register and memory usage
- **Interrupt Handling** - System-level operations
- **File I/O Operations** - Data persistence and retrieval

## 🚀 **Installation**

### **Prerequisites**
- **Windows OS** or DOS environment
- **MASM** (Microsoft Macro Assembler) or **NASM**
- **Visual Studio** with assembly language support
- **Command Prompt** access

### **Setup Instructions**

1. **Clone Repository**
```bash
git clone https://github.com/AFK-Swap/Parking_Management_System.git
cd Parking_Management_System
```

2. **Assemble the Program**
```bash
# Using MASM
masm parking.asm
link parking.obj

# Using NASM (alternative)
nasm -f win32 parking.asm -o parking.obj
link parking.obj
```

3. **Run the Application**
```bash
parking.exe
```

## 🎮 **Usage**

### **Main Menu Options**
1. **Add Vehicle** - Register new vehicle with automatic slot assignment
2. **Remove Vehicle** - Process vehicle departure and calculate fees
3. **View Records** - Display all parked vehicles by category
4. **Search Vehicle** - Find specific vehicle by ID or slot
5. **Delete Records** - Remove vehicle records by type
6. **View Statistics** - Check vehicle counters and occupancy
7. **Apply Discount** - Use discount coupons for fee calculation
8. **Exit** - Animated farewell sequence

### **Pricing Structure**
| Vehicle Type | Rate (Tk/hour) | Capacity |
|--------------|----------------|----------|
| Cycle        | 20             | High     |
| Bike         | 40             | High     |
| Car          | 80             | Medium   |
| Micro        | 120            | Medium   |
| Minibus      | 220            | Low      |

### **Discount System**
- **10% Discount**: Available for extended parking (4+ hours)
- **20% Discount**: Premium discount for frequent customers
- **Automatic Application**: System applies best available discount

## 🏗️ **System Architecture**

### **Core Modules**
```
Parking_Management_System
├── Main_Menu_Handler
├── Vehicle_Registration_Module
├── Fee_Calculation_Engine
├── Record_Management_System
├── Search_And_Retrieval
├── Discount_Processing_Unit
├── Animation_And_Display
└── Data_Persistence_Layer
```

### **Memory Layout**
- **Data Segment**: Vehicle records, pricing tables, counters
- **Code Segment**: Main procedures and subroutines
- **Stack Segment**: Function calls and local variables
- **Extra Segment**: Additional data storage and buffers

### **Key Algorithms**
- **Time Calculation**: Precise hourly billing algorithm
- **Slot Assignment**: Efficient parking space allocation
- **Fee Processing**: Dynamic pricing with discount application
- **Record Sorting**: Organized data retrieval and display

## 💻 **Technical Implementation**

### **Assembly Language Features**
- **Register Optimization**: Efficient use of CPU registers
- **Memory Management**: Direct memory access and manipulation
- **String Operations**: Text processing and display formatting
- **Mathematical Operations**: Pricing calculations and time management
- **File I/O**: Data persistence using DOS/Windows file operations

### **System Calls**
- **DOS Interrupts**: File operations and system services
- **BIOS Interrupts**: Direct hardware communication
- **Custom Procedures**: Modular code organization

### **Performance Optimizations**
- **Minimal Memory Usage**: Efficient data structures
- **Fast Execution**: Optimized assembly instructions
- **Real-time Processing**: Immediate response to user input

## 📊 **Features Breakdown**

### **Vehicle Management**
```assembly
; Example: Vehicle registration procedure
REGISTER_VEHICLE PROC
    ; Input validation
    ; Slot assignment
    ; Fee calculation setup
    ; Record storage
    ; Counter update
RET
REGISTER_VEHICLE ENDP
```

### **Pricing Engine**
```assembly
; Dynamic pricing calculation
CALCULATE_FEE PROC
    ; Vehicle type identification
    ; Time duration calculation
    ; Base rate application
    ; Discount processing
    ; Final fee generation
RET
CALCULATE_FEE ENDP
```

## 🎓 **Academic Context**

**Course**: Microprocessor & Assembly Language Programming  
**Institution**: BRAC University  
**Focus**: Low-level programming and system design

### **Learning Outcomes**
- ✅ Assembly language programming proficiency
- ✅ Computer architecture understanding
- ✅ Memory management and optimization
- ✅ System-level programming concepts
- ✅ Algorithm implementation in assembly
- ✅ Real-world application development

### **Technical Skills Demonstrated**
- Low-level programming and debugging
- Efficient algorithm design and implementation
- Memory optimization and register management
- User interface design in console environment
- Data structure implementation in assembly

## 🧪 **Testing**

### **Test Scenarios**
- ✅ Vehicle registration for all 5 types
- ✅ Fee calculation accuracy across different durations
- ✅ Discount application and validation
- ✅ Record management and data integrity
- ✅ Input validation and error handling
- ✅ Memory usage and performance testing

## 🔧 **Troubleshooting**

### **Common Issues**
1. **Assembly Error**: Ensure MASM/NASM is properly installed
2. **Execution Error**: Check DOS/Windows compatibility
3. **Memory Error**: Verify sufficient system memory
4. **File Access**: Ensure proper file permissions

## 🤝 **Contributing**

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/NewFeature`)
3. Commit your changes (`git commit -m 'Add NewFeature'`)
4. Push to the branch (`git push origin feature/NewFeature`)
5. Open a Pull Request

## 📝 **License**

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👨‍💻 **Author**

**Fahmidur Islam Swapnil**
- GitHub: [@AFK-Swap](https://github.com/AFK-Swap)
- Email: fahmidur.i.swapnil@gmail.com
- University: BRAC University
- Student ID: 22101227

## 🙏 **Acknowledgments**

- BRAC University CSE Department
- Assembly language programming course instructors
- Computer architecture and microprocessor communities

---

*Demonstrating the power of low-level programming in practical system development* ⚙️
