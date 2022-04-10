# Zadania Lab 2

Wymagania wstępne:
- Upewnić się, że zadane katalogi istnieją. Jeśli nie, to wyjść z programu z błędem


- Jeżeli nie podano parametrów to poinformować użytkownika i zakończyć z błędem (inny niż poprzednio)


- Podane ścieżki mogą być wielokrotnie zagłębione, oraz względne i bezwzględne


## Zadanie 1

#### Napisać skrypt, który przyjmuje 2 parametry – 2 ścieżki do katalogów. Z zadanego katalogu nr 1 wypisać wszystkie pliki po kolei, wraz z informacją:
  - czy jest to katalog
  - czy jest to dowiązanie symboliczne
  - czy plik regularny


Następnie (lub równolegle) utworzyć w katalogu nr 2 dowiązania symboliczne do każdego pliku regularnego i katalogu z katalogu nr 1, dodając "_ln" przed rozszerzeniem i zmieni nazwę na pisanę WIELKIMI literami, np. magic_file.txt -> MAGIC_FILE_ln.txt
Dowiązania muszą działać, mogą być względne lub bezwzględne.

## Zadanie 2

#### Napisać skrypt, który w zadanym katalogu (1. parametr) usunie wszystkie uszkodzone dowiązania symboliczne, a ich nazwy, małymi literami wpisze do pliku (2. parametr), wraz z dzisiejszą datą w formacie ISO 8601.

## Zadanie 3
#### Napisać skrypt, który w zadanym katalogu (jako parametr) każdemu:
- plikowi regularnemu z rozszerzeniem .bak odbierze uprawnienia do edytowania dla właściciela i innych

- katalogowi z rozszerzeniem .bak (bo można!) pozwoli wchodzić do środka tylko innym

- w katalogach z rozszerzeniem .tmp pozwoli każdemu tworzyć i usuwać jego pliki

- plikowi z rozszerzeniem .txt będą czytać tylko właściciele, edytować grupa właścicieli, wykonywać inni. Brak innych uprawnień

- pliki regularne z rozszerzeniem .exe wykonywać będą mogli wszyscy, ale zawsze wykonają się z uprawnieniami właściciela