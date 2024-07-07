#!/usr/bin/env python3

from openai import OpenAI
import dotenv
import sys
import re
#!/bin/bash
# Usage: ./wrapper.sh your_command_here



api_key = dotenv.get_key('.env', 'OPEN_AI_KEY')

client =  OpenAI(api_key=api_key)


completion = client.chat.completions.create(
  model="gpt-4o",
  messages=[
    {"role": "user", "content": "Say this is a test"},
  ],  
)

def main():
    exit_code = sys.argv[1]
    command = sys.argv[2]
    stderr_output = sys.argv[3]
    print(f"Error with exit code {exit_code} occurred in command: {command}")
    print("Error output:", stderr_output)

if __name__ == "__main__":
    main()

