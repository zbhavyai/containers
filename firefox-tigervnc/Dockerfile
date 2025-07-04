FROM quay.io/centos/centos:stream9
ENV DISPLAY=:200
ENV RESOLUTION=1920x1080
RUN dnf install --assumeyes epel-release
RUN dnf install --assumeyes tigervnc-server-minimal openbox passwd shadow-utils
RUN useradd -m firefoxuser
RUN dnf install --assumeyes firefox
COPY start.sh /start.sh
RUN chmod +x /start.sh
USER firefoxuser
WORKDIR /home/firefoxuser
EXPOSE 6100
CMD ["/start.sh"]
