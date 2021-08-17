FROM beaujr/gogitops:latest
COPY entrypoint.sh .
ENTRYPOINT ["./entrypoint.sh"]