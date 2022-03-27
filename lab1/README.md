# Zadania Lab 1

    1. Napisać skrypt, który pobiera 3 argumenty: SOURCE_DIR, RM_LIST, TARGET_DIR o wartościach domyślnych:
    - lab_uno 
    - 2remove
    - bakap

    2. Jeżeli TARGET_DIR nie istnieje, to go tworzymy
    
    3. Iterujemy się po zawartości pliku RM_LIST i tylko jeżeli plik o takiej nazwie występuje w katalogu SOURCE_DIR, to go usuwamy
    
    4. Jeżeli jakiegoś pliku nie ma na liście, ale jest plikiem regularnym, to przenosimy go do TARGET_DIR
    
    5. Jeżeli jakiegoś pliku nie ma na liście, ale jest katalogiem, to kopiujemy go do TARGET_DIR z zawartością
    
    6. Jeżeli po zakończeniu operacji są jeszcze jakieś pliki w katalogu SOURCE_DIR to:

    - piszemy np. „jeszcze coś zostało” na konsolę oraz:
    - jeżeli co najmniej 2 pliki, to wypisujemy: „zostały co najmniej 2 pliki”


    - jeżeli więcej niż 4, to wypisujemy: „zostało więcej niż 4 pliki” (UWAGA: 4, to też więcej niż 2)


    - jeżeli nie więcej, niż 4, ale co najmniej 2, to też coś piszemy


    - Jeżeli nic nie zostało, to informujemy o tym słowami np. „tu był Kononowicz”

    7. Po wszystkich spakuj katalog TARGET_DIR i nazwij bakap_DATA.zip, gdzie DATA to dzień uruchomienia skryptu w formacie RRRR-MM-DD







