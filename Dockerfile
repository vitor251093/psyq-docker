FROM tudorh/dosbox:latest

# Installing dependencies
RUN apk update
RUN apk add --update --no-cache p7zip bash wine xvfb xvfb-run

# Creating Wine Prefix
RUN winecfg
WORKDIR /root/.wine/drive_c

# Installing SDK
COPY PSYQ_SDK.zip .
RUN 7z x PSYQ_SDK.zip

# Needed startup files
RUN mkdir TEMP
COPY docker/entrypoint.sh .
COPY dosbox.conf /root/.dosbox/dosbox-0.74-2.conf

# Volume of src folder
RUN mkdir src
VOLUME [/root/.wine/drive_c/src]

ENTRYPOINT [ "/root/.wine/drive_c/entrypoint.sh" ]
