# 🛠️ Fawry Task

Welcome to the **Fawry Task** project! This is a simple shell script (`mygrep.sh`) that mimics the functionality of the `grep` command with additional options. 🎉

## 📋 Features
- 🔍 **Search for a pattern** in a file (case-insensitive).
- 🔢 Optionally **show line numbers** for matching lines.
- 🚫 **Invert matches** to show lines that do NOT match the pattern.
- 🛠️ Combine options for more flexibility.

## 🚀 How to Run

1. Open a terminal.
2. Make sure the script is executable:
   ```bash
   chmod +x mygrep.sh
   ```

3. Run the script with the following syntax:
    ```bash
   ./mygrep.sh [OPTIONS] PATTERN FILE
    ```

## ⚙️ Options

 - -n : Show line numbers for each matching line.
 - -v : Invert match (show lines that do NOT match).
 - -vn or -nv : Combine -v and -n options.
 - --help or -h : Display the help message and exit.

## 📖 Examples

- Search for the word ```hello``` in ```testfile.txt```:
    ```bash
   ./mygrep.sh hello testfile.txt
   ```
- Search for ```hello``` and show line numbers:
    ```bash
   ./mygrep.sh -n hello testfile.txt
   ```
- Show lines that do NOT contain ```hello```:
    ```bash
   ./mygrep.sh -v hello testfile.txt
   ```
- Combine ```-v``` and ```-n``` to invert matches and show line numbers:
    ```bash
   ./mygrep.sh -vn hello testfile.txt
   ```

## 📂 Project Structure

- ```-mygrep.sh```- : The main script.
- ```-help.txt```- : Help documentation for the script.
- ```-testfile.txt```- : Sample file for testing.
- ```-README.md```- : This file.

## 🆘 Need Help?

Contact me [Here](mailto:mohamedtarekmahran27@gmail.com)