#!/usr/bin/env python3

from openai import OpenAI
import dotenv
import sys
import re



api_key = dotenv.get_key('.env', 'OPEN_AI_KEY')

client =  OpenAI(api_key=api_key)




def process_error_message(error_message):
    # Process the error message here
    # For example, make it more comprehensible

    completion = client.chat.completions.create(
      model="gpt-4o",
      messages=[
        {"role": "user", "content": "Your code threw an error: {error_message}. First, rewrite the error message. Then, explain the error message line by line."},
      ],  
    )

    error = completion.choices[0].message.content
    return error  # Return the processed message

if __name__ == "__main__":
    # Read from standard input
    error_message = sys.stdin.read()
    processed_message = process_error_message(error_message)
    print("hi")
    print(processed_message)
