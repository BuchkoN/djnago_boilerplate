from fastapi import FastAPI


def start_app() -> FastAPI:
    app = FastAPI(
        title="Simple FastAPI Chat",
        docs_url="/api/docs/",
        debug=True
    )
    return app
