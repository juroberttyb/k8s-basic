from fastapi import FastAPI

app = FastAPI()

@app.get("/")
async def root():
    return {"message": "Hello World"}

@app.get("/nginx")
async def root():
    import urllib.request
    contents = urllib.request.urlopen("http://nginx").read()
    return contents
