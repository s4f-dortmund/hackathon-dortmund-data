#!/bin/bash

bevoelkerung_url="https://opendata.dortmund.de/asw/asw.exe?aw=Bev%C3%B6lkerung%5CDS_J_B_BS-Hauptwohnbev%C3%B6lkerung%20nach%20Geschlecht%20seit%201990%20-%20csv"
wohnungen_url="https://opendata.dortmund.de/asw/asw.exe?aw=Infrastruktur,%20Bauen%20und%20Wohnen/DS_J_IBW_Geb%C3%A4ude%20mit%20Wohnraum%20seit%201990%20-%20csv"
foerdermittel_url="https://opendata.dortmund.de/OpenDataConverter/download/Infrastruktur,%20Bauen%20und%20Wohnen/FB64/FB64-WF-F%C3%B6rdermittel%20seit%202009.csv"
wohneiheiten_url="https://opendata.dortmund.de/OpenDataConverter/download/Infrastruktur,%20Bauen%20und%20Wohnen/FB64/FB64-WF-Gef%C3%B6rderte%20Wohneinheiten%20seit%202009.csv"
zuzug_url="https://opendata.dortmund.de/asw/asw.exe?aw=Bev%C3%B6lkerung%5CDS_J_B_BW-Bev%C3%B6lkerungsbewegung%20Hauptwohnbev%C3%B6lkerung%20seit%201990%20-%20csv"

rm -rf data
mkdir data

curl -Lo data/01_DS_J_B_BS_00001.csv $bevoelkerung_url
curl -Lo data/02_DS_J_IBW_Wohnen_00001.csv $wohnungen_url
curl -Lo data/03_FB64-WF-Fördermittel_seit_2009.csv $foerdermittel_url
curl -Lo data/04_FB64-WF-Geförderte_Wohneinheiten_seit_2009.csv $wohneiheiten_url
curl -Lo data/05_DS_J_B_BW_00001.csv $zuzug_url