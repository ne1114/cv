FROM texlive/texlive:latest

# Use a reliable CTAN mirror and install required packages
RUN tlmgr option repository https://mirror.ctan.org/systems/texlive/tlnet \
  && tlmgr update --self \
  && tlmgr install fontawesome6 roboto sourcesanspro sourcecodepro unicode-math

WORKDIR /doc

# Default command builds the résumé PDF into /doc/examples/resume.pdf
CMD ["make", "resume.pdf"]


