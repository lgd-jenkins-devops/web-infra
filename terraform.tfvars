bucket = {
    name = "web-app-dev"
    location = "us-central1"
}
ssl = {
    path_cert = "./cert/test.crt"
    path_key = "./cert/test.key"
}

bucket-type = "static"

web_config = {
    "main" = "index.html"
    "error" = "404.html"
}