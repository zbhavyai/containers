## TexLive

Use texlive to generate PDFs from LaTeX files.

### Build the image

```shell
docker build --tag latex .
```

Or using `podman`

```shell
podman build --tag latex .
```

### Generate the PDF

1. Add this alias to `~/.bashrc`

   ```shell
   alias latex='docker container run --rm --volume "${PWD}:/data" --name latex latex'
   ```

   Or using `podman`

   ```shell
   alias latex='podman container run --privileged --rm --volume "${PWD}:/data" --name latex latex'
   alias latex='podman container run --rm --volume "${PWD}:/data:Z" --name latex latex'
   ```

2. Navigate to the directory containing the `.tex` file and run

   ```shell
   latex filename.tex
   ```

> [!TIP]
> Using `podman` helps in avoiding the owner as root for the generated PDF files. However, it requires the `--privileged` flag to [disable SELinux host isolation](https://stackoverflow.com/a/64556930).
