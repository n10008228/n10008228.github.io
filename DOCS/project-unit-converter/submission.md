# Team Project Submission — Unit Conversion Calculator

**Course:** CPAN133 Operating Systems  
**Team members:** Matheus Maggiorini & Andre  
**Submission type:** One submission per team

---

## Who writes each section (even split)

| # | Section | Written |
|---|---------|------------|
| 1 | Project Topic | Matheus Maggiorini |
| 2 | Project Description | Matheus Maggiorini |
| 3 | Project Objectives | Andre |
| 4 | Task Distribution | Andre |
| 5 | Team Lead Name | Matheus Maggiorini |
| 6 | GitHub Repository URL | Andre |

---

## 1. Project Topic

**Unit Conversion Calculator (GNU/Linux Shell Application)**

*— Matheus Maggiorini*

---

## 2. Project Description

Our team is developing a command-line unit conversion program for GNU/Linux. The application runs in the terminal and helps users convert values between different measurement systems without using a web browser or calculator app.

The user selects a category (length, weight, or temperature), picks the conversion they need, and enters a number. The program applies the correct formula and prints the result right away. For example, a user can convert 100 centimeters to meters, 150 pounds to kilograms, or 68 degrees Fahrenheit to Celsius.

We are building the project as a Bash shell script because CPAN133 focuses on the Linux command line, file permissions, and working in a shared Git repository. The script uses `bc` for decimal calculations and is meant to run on the Humber lab system (apollo) and other Linux machines. Each team member works on a separate Git branch, and the team lead merges the finished modules into one working program.

*— Matheus Maggiorini (Team Lead)*

---

## 3. Project Objectives


1. **Length conversions** - Convert between common length units (e.g., centimeters to meters, inches to centimeters, feet to meters, kilometers to miles).
2. **Weight conversions** — Convert between imperial and metric weight units (e.g., pounds to kilograms, kilograms to pounds, ounces to grams).
3. **Temperature conversions** — Convert between Fahrenheit, Celsius, and Kelvin using standard formulas.
4. **Interactive menu** — Provide a clear text menu so users can choose a category and conversion type without memorizing command-line flags.
5. **Input validation** — Reject invalid input and prompt the user again instead of crashing.
6. **Team Git workflow** — Store the project in the team lead’s GitHub repository, use separate branches for each member (`matheus-branch`, `andre-branch`), and merge completed work into the main project branch.
7. **Documentation** — Include a README with setup steps (`chmod +x`, how to run the script) and example terminal output for submission and demo.

---

## 4. Task Distribution



### Code (even split)

| Team member | Responsibilities |
|-------------|------------------|
| **Matheus Maggiorini** (Team Lead) | GitHub repository and branches; main menu and program structure; **length** conversion module; **weight** conversion module; project submission (sections 1, 2, 5); final merge and testing on apollo. |
| **Andre** | **Temperature** conversion module; input validation and error messages; testing all conversions with sample values; README examples; submission sections 3, 4, and 6; pull request review. |

---

## 5. Team Lead Name

**Matheus Maggiorini**

*— Matheus Maggiorini*

---

## 6. GitHub Repository URL of Team Lead


https://github.com/n10008228/n10008228.github.io

---

## Full submission (copy everything below into the LMS)

**Project Topic**  
Unit Conversion Calculator (GNU/Linux Shell Application)

**Project Description**  
Our team is developing a command-line unit conversion program for GNU/Linux. The application runs in the terminal and helps users convert values between different measurement systems without using a web browser or calculator app.

The user selects a category (length, weight, or temperature), picks the conversion they need, and enters a number. The program applies the correct formula and prints the result right away. For example, a user can convert 100 centimeters to meters, 150 pounds to kilograms, or 68 degrees Fahrenheit to Celsius.

We are building the project as a Bash shell script because CPAN133 focuses on the Linux command line, file permissions, and working in a shared Git repository. The script uses `bc` for decimal calculations and is meant to run on the Humber lab system (apollo) and other Linux machines. Each team member works on a separate Git branch, and the team lead merges the finished modules into one working program.

**Project Objectives**  
*(Andre completes — see section 3 above)*

**Task Distribution**  
*(Andre completes — see section 4 above)*

**Team Lead Name**  
Matheus Maggiorini

**GitHub Repository URL of TeamLead**  
*(Andre completes — see section 6 above)*
