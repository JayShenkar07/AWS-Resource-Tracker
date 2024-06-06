
# AWS-Resource-Tracker

The shell script generates a report file of active AWS resouces

## Medium Article

For a detailed explanation of how this script works and how to set it up, check out my Medium article:

[Simplify AWS Resource Reporting: Step-by-Step Guide with Shell Script](https://medium.com/@jayshenkar27apr/16289dbc7157)



## Requirements

- AWS CLI installed and configured
- Necessary IAM permissions to list resources

## Setup

Install AWS CLI

Step 1
```bash
  sudo apt install curl unzip -Y
```

Step 2
```bash
   curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
```

Step 3
```bash
   sudo apt install curl unzip -Y
``` 
Step 4
```bash
   sudo ./aws/install
```

Step 5

Configure your AWS user using ``aws configure``

## Usage
Step 1: 
Clone this repository on the system using: 
```bash
  git clone https://github.com/JayShenkar07/AWS-Resource-Tracker.git
```
Step 2: Provide appropriate permissions to the file using ``chmod`` command

Step 3: Run with ``./script.sh``

## Contributing
Contributions are welcome! If you have suggestions for script or you'd like to add, feel free to submit a pull request or open an issue.
