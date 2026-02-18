# TexLive

Use texlive to generate PDFs from LaTeX files.

## Build the image

```shell
podman image build --file ./Dockerfile --tag docker.io/zbhavyai/latex-xelatex-builder:latest .
```

## Generate the PDF

1. Add this alias to `~/.bashrc`. Note the use of `--privileged` or `:Z` to [disable SELinux host isolation](https://stackoverflow.com/a/64556930).

   ```shell
   alias latex='podman container run --privileged --rm --volume "${PWD}:/data" docker.io/zbhavyai/latex-xelatex-builder:latest'
   ```

   OR

   ```shell
   alias latex='podman container run --rm --volume "${PWD}:/data:Z" docker.io/zbhavyai/latex-xelatex-builder:latest'
   ```

   > NOTE
   >
   > If using `docker`, add the flag `--user $(id --user):$(id --group)` to the command to ensure file permissions are set correctly.

2. Navigate to the directory containing the `.tex` file and run

   ```shell
   latex filename.tex
   ```
