#!/bin/bash -eu

# Z pliku yolo.csv wypisz wszystkich, których id jest liczbą nieparzystą. Wyniki zapisz na standardowe wyjście błędów.
grep -p '^\d*[13579],.*$' yolo.csv | cut -d',' -f1,2,3 2>&1

# Z pliku yolo.csv wypisz każdego, kto jest wart dokładnie $2.99 lub $5.99 lub $9.9. Nie wazne czy milionów, czy miliardów (tylko nazwisko i wartość). Wyniki zapisz na standardowe wyjście błędów
grep -E '\$(2|5|9)\.99(M|B)$' yolo.csv | cut -d',' -f2,3,7 2>&1            
