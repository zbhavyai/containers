FROM texlive/texlive

LABEL maintainer="https://zbhavyai.github.io"
LABEL repo="https://github.com/zbhavyai/containers"

RUN tlmgr update --self && tlmgr install latexmk

WORKDIR /data

ENTRYPOINT ["sh", "-c", "latexmk -pdf && rm -f *.log *.aux *.fls *.fdb_latexmk *.out"]
