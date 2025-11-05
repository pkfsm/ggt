FROM anasty17/mltb:dev

WORKDIR /mltb
RUN chmod 777 /mltb

COPY requirements.txt .
RUN mltbenv/bin/pip install --no-cache-dir -r requirements.txt

COPY . .
RUN bash start.sh
# CMD ["bash", "start.sh"]
