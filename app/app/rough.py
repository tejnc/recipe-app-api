from dotenv import load_dotenv
import os


load_dotenv()

a = os.getenv("secret")
print(a)
