FROM docker.io/texlive/texlive:latest
WORKDIR /data
LABEL org.opencontainers.image.title="latex-xelatex-builder"
LABEL org.opencontainers.image.description="Minimal docker image for building LaTeX documents using latexmk with XeLaTeX"
LABEL org.opencontainers.image.source="https://github.com/zbhavyai/containers"
LABEL org.opencontainers.image.licenses="Apache-2.0"
LABEL org.opencontainers.image.authors="Bhavyai Gupta <zbhavyai@gmail.com>"
LABEL org.opencontainers.image.vendor="zbhavyai"
LABEL org.opencontainers.image.version="1.0.0"
RUN tlmgr update --self && tlmgr install latexmk
ENTRYPOINT ["sh", "-c", "latexmk -pdf -xelatex \"$@\" && rm -f *.log *.aux *.fls *.fdb_latexmk *.out *.xdv"]
CMD []
