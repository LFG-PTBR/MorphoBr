FROM odanoburu/gf-deb:3.9

ENV LANG C.UTF-8

WORKDIR /home/gfer

RUN wget -q https://github.com/TALP-UPC/FreeLing/raw/master/data/pt/dictionary/entries/nouns https://github.com/TALP-UPC/FreeLing/raw/master/data/pt/dictionary/entries/verbs https://github.com/TALP-UPC/FreeLing/raw/master/data/pt/dictionary/entries/adjs

COPY ./ /home/gfer

CMD ["gf"]
