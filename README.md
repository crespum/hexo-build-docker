# Dockerfile to build Hexo sites

First of all pull the image from Docker Hub:
```
docker pull crespum/hexo-build
```

Now, the container can be used to run [hexo commands](https://hexo.io/docs/commands) without having to install any dependency other than Docker:
```
# Generate content
docker run --rm -v $PWD:/app -p 4000:4000 --user `id -u` hexo-build hexo generate

# Serve the website in http://localhost:4000
docker run --rm -v $PWD:/app -p 4000:4000 --user `id -u` hexo-build hexo server

# Add a new blog entry
docker run --rm -v $PWD:/app -p 4000:4000 --user `id -u` hexo-build hexo new post "Post title"
```
