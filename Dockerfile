FROM beaujr/gogitops-action:base
COPY entrypoint.sh /
RUN apk add --no-cache bash
RUN ln -s $(pwd)/gogitops /bin
ENTRYPOINT ["/entrypoint.sh"]