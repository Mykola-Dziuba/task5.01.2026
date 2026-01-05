from fastapi import FastAPI, Request
from fastapi.responses import HTMLResponse

app = FastAPI()


@app.get("/health")
def health():
    return {"status": "ok"}


@app.get("/", response_class=HTMLResponse)
def root(request: Request):
    xff = request.headers.get("x-forwarded-for", "")
    ip = (
        request.headers.get("cf-connecting-ip")
        or request.headers.get("x-real-ip")
        or (xff.split(",")[0].strip() if xff else "")
        or (request.client.host if request.client else "")
        or "unknown"
    )
    return HTMLResponse(f"<h1>Hello World</h1><p>Client IP: <b>{ip}</b></p>")
