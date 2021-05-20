#!/bin/bash


personen_url="https://opendata.dortmund.de/OpenDataConverter/download/Transport%20und%20Verkehr/FB61/FB61-Mobilit%C3%A4tsbefragung%202019%20Personen-json.zip"
haushalte_url="https://opendata.dortmund.de/OpenDataConverter/download/Transport%20und%20Verkehr/FB61/FB61-Mobilit%C3%A4tsbefragung%202019%20Haushalte-json.zip"
wege_url="https://opendata.dortmund.de/OpenDataConverter/download/Transport%20und%20Verkehr/FB61/FB61-Mobilit%C3%A4tsbefragung%202019%20Wege.csv"


rm -rf data
mkdir data

curl -Lo data/personen.zip $personen_url
unzip -p data/personen.zip > data/personen.json
rm data/personen.zip

curl -Lo data/wege.csv $wege_url

curl -Lo data/haushalte.zip $haushalte_url
unzip -p data/haushalte.zip > data/haushalte.json
rm data/haushalte.zip

curl -Lo data/Stadtbezirk.zip https://geoweb1.digistadtdo.de/doris_gdi/opengeodata/statistik/Stadtbezirk.zip
unzip data/Stadtbezirk.zip -d data
rm data/Stadtbezirk.zip
