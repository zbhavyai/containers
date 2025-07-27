FROM quay.io/centos/centos:stream9
ENV DISPLAY=:200
ENV RESOLUTION=1920x1080
RUN dnf install --assumeyes epel-release
RUN dnf install --assumeyes tigervnc-server-minimal openbox passwd shadow-utils
RUN useradd -m chromeuser
RUN curl --silent --show-error --location --output /tmp/chrome.rpm https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm && \
    dnf install --assumeyes /tmp/chrome.rpm && \
    rm --force /tmp/chrome.rpm
RUN mkdir -p /tmp/.X11-unix
RUN chmod 1777 /tmp/.X11-unix
COPY start.sh /start.sh
RUN chmod +x /start.sh
USER chromeuser
WORKDIR /home/chromeuser
EXPOSE 6100
CMD ["/start.sh"]
