FROM ubuntu
MAINTAINER Guillaume Claret

RUN apt-get update
RUN apt-get install -y gcc make git

# Opam
RUN apt-get install -y opam
RUN opam init

# OCaml 4.02.0
RUN opam switch 4.02.0

# Dependencies
RUN apt-get install -y m4
RUN opam install -y lwt base64