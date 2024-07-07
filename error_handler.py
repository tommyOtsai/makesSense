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

print(completion.choices[0].message.content)  

def main():
    for line in sys.stdin:
        line = line.strip()
        if line:
            print(line) 


if __name__ == "__main__":
    main()

