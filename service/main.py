from os import environ as env
from fastapi import FastAPI

app = FastAPI()


@app.get("/")
def index():
    return {"details": f"Hello, world! Secrete = {env['MY_VARIABLE']}"}
