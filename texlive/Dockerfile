FROM texlive/texlive:latest
LABEL maintainer="https://zbhavyai.github.io"
LABEL repo="https://github.com/zbhavyai/containers"
RUN tlmgr update --self && tlmgr install latexmk
WORKDIR /data
ENTRYPOINT ["sh", "-c", "latexmk -pdf -xelatex \"$@\" && rm -f *.log *.aux *.fls *.fdb_latexmk *.out *.xdv"]
CMD []
