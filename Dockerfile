# Start from a Debian image with the latest version of Go installed
# and a workspace (GOPATH) configured at /go.
FROM golang
ARG MAJOR_VER
# Copy the local package files to the container's workspace.
#ADD . /go/src/github.com/golang/example/outyet
#RUN go get gopkg.in/DuoSoftware/DVP-DialerAPI-CampRelease.$MAJOR_VER/DuoDialer

RUN go get github.com/DuoSoftware/DVP-DialerAPI-CampRelease/DuoDialer

#RUN go install gopkg.in/DuoSoftware/DVP-DialerAPI-CampRelease.$MAJOR_VER/DuoDialer

RUN go install github.com/DuoSoftware/DVP-DialerAPI-CampRelease/DuoDialer

ENTRYPOINT /go/bin/DuoDialer

#RUN go get github.com/DuoSoftware/DVP-DialerAPI-CampRelease/DuoDialer

# Build the outyet command inside the container.
# (You may fetch or manage dependencies here,
# either manually or with a tool like "godep".)
#RUN go install github.com/DuoSoftware/DVP-DialerAPI-CampRelease/DuoDialer

# Run the outyet command by default when the container starts.
#ENTRYPOINT /go/bin/DuoDialer

# Document that the service listens on port 8836.
EXPOSE 8836

