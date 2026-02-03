FROM texlive/texlive:latest
SHELL [ "/bin/bash", "-lc" ]

RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    make \
    latexmk \
    biber \
    perl \
    cpanminus \
    python3 \
    python3-pygments \
    fontconfig \
    locales \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Install uv tool
RUN curl -LsSf https://astral.sh/uv/install.sh | sh

ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8


RUN cpanm -n YAML::Tiny File::HomeDir Unicode::GCString Log::Log4perl

WORKDIR /workspace

