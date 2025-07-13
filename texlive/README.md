# TexLive

Use texlive to generate PDFs from LaTeX files.

## Build the image

```shell
podman image build --file ./Dockerfile --tag latex .
```

## Generate the PDF

1. Add this alias to `~/.bashrc`. Note the use of `--privileged` or `:Z` to [disable SELinux host isolation](https://stackoverflow.com/a/64556930).

   ```shell
   alias latex='podman container run --privileged --rm --volume "${PWD}:/data" localhost/latex'
   ```

   OR

   ```shell
   alias latex='podman container run --rm --volume "${PWD}:/data:Z" localhost/latex'
   ```

2. Navigate to the directory containing the `.tex` file and run

   ```shell
   latex filename.tex
   ```
