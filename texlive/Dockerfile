FROM docker.io/texlive/texlive:latest
RUN tlmgr update --self && tlmgr install latexmk
WORKDIR /data
ENTRYPOINT ["sh", "-c", "latexmk -pdf -xelatex \"$@\" && rm -f *.log *.aux *.fls *.fdb_latexmk *.out *.xdv"]
CMD []
