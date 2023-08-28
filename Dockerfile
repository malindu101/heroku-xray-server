
FROM teddysun/xray
ENV TZ=Asia/Colombo
ADD entrypoint.sh /
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
# The error message is "dockerfile must expose a tcp port"
# To fix this, we need to expose a TCP port in the Dockerfile
# We will add the EXPOSE instruction to expose port 80
EXPOSE 80
