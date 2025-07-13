# TexLive

Use texlive to generate PDFs from LaTeX files.

## Build the image

```shell
podman image build --file ./Dockerfile --tag latex .
```

## Generate the PDF

1. Add this alias to `~/.bashrc`

   ```shell
   alias latex='podman container run --privileged --rm --volume "${PWD}:/data" localhost/latex'

   # OR

   alias latex='podman container run --rm --volume "${PWD}:/data:Z" localhost/latex'
   ```

2. Navigate to the directory containing the `.tex` file and run

   ```shell
   latex filename.tex
   ```

> [!TIP]
> Using `podman` requires the `--privileged` flag to [disable SELinux host isolation](https://stackoverflow.com/a/64556930).
