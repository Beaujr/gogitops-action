FROM beaujr/gogitops:latest
COPY entrypoint.sh .
RUN ln -s $(pwd)/gogitops /bin
ENTRYPOINT ["./entrypoint.sh"]