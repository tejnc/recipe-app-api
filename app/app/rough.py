import os

from dotenv import load_dotenv

load_dotenv()

a = os.getenv("secret")
print(a)
