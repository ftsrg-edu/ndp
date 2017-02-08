# Nagyhatékonyságú deklaratív programozás jegyzet

[![Build Status](https://travis-ci.org/FTSRG/ndp.svg?branch=master)](https://travis-ci.org/FTSRG/ndp)

A tárgy honlapja: http://cs.bme.hu/~szeredi/ndp/

## Fordítás

```bash
./clean.sh && ./build.sh
```

## Szintaxiskiemelés

A szintaxiskiemeléshez a [Pygments függvénykönyvtár](http://pygments.org/) szükséges, ami Ubuntu Linux alatt az alábbi paranccsal telepíthető:

```bash
sudo apt-get install python-pygments
```

A kiemelést a `./enable-minted.sh` parancs használatával kapcsolhatjuk be és a `./disable-minted.sh` paranccsal kapcsolhatjuk ki.
