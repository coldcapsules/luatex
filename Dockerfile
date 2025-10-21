FROM ghcr.io/coldcapsules/ubuntu:1.0.0

# install luatex packages
ENV LC_ALL=C.UTF-8
RUN apt update && \
    apt install --yes texlive-luatex texlive-latex-extra texlive-extra-utils latexmk make fonts-noto-cjk fonts-noto-cjk-extra && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*
