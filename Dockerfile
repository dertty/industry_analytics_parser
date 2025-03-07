FROM python:3.11-slim


RUN apt update && apt upgrade -y && \
    apt-get install -y --no-install-recommends \
    pipx \
    && apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Установка pdm и настройка PATH
RUN pipx ensurepath && \
    pipx install pdm[all] && \
    pipx upgrade pdm