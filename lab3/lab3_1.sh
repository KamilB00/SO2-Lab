#!/bin/bash -eu

# Znajdź w pliku access_log unikalnych 10 adresów IP w access_log
grep -m 10 "[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+" access_log | sort -u

# Znajdź w pliku access_log zapytania, które mają frazę "denied" w linku
grep 'denied' access_log 

# Znajdź w pliku access_log zapytania wysłane z IP: 64.242.88.10
grep '64.242.88.10 ' access_log

# Znajdź w pliku access_log unikalne zapytania typu DELETE
grep 'DELETE' access_log | sort -u





