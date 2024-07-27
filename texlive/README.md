## TexLive

Use texlive to generate PDFs from LaTeX files.

### Build the image

```shell
docker build --tag latex .
```

### Generate the PDF

1. Add this alias to `~/.bashrc`

   ```shell
   alias latex='docker container run --interactive --tty --rm --volume "${PWD}:/data" --name latex latex'
   ```

2. Navigate to the directory containing the `.tex` file and run

   ```shell
   latex filename.tex
   ```
