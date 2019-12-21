# gin-docker
a simple, gin in docker
 
# image
```bash
docker run --rm -p 6006:6006 cvno/gin-docker
```

# Ref
- see https://juejin.im/post/5c887c105188257edb45e5b1#heading-4
- see https://www.cnblogs.com/gaorong/p/Docker.html
- see https://studygolang.com/articles/20397
- see https://www.cnblogs.com/davygeek/p/10969434.html

# ~~Ask~~
>~~if you using gitlab, do not miss it.~~

see `.gitlab-ci.yml`, gitlab CI/CD
```error
COPY --from=builder /go/src/app /web/app
COPY failed: stat /var/lib/docker/overlay2/.../merged/go/src/app: no such file or directory
```
- ~~see https://forum.gitlab.com/t/multistage-docker-image-build-fails/18329/6~~
- ~~see https://gitlab.com/gitlab-org/gitlab-runner/issues/3703~~
