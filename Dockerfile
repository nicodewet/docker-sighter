FROM scratch

MAINTAINER Nico de Wet <nico@nicodewet.com>

COPY bin/hello /
CMD ["/hello"]
