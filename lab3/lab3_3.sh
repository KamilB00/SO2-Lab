#!/bin/bash -eu

# We wszystkich plikach w katalogu ‘groovies’ zamień $HEADER$ na /temat/
find ./groovies -type f -exec sed -i 's/\$HEADER\$/\/temat\//g' {} ';'

# We wszystkich plikach w katalogu ‘groovies’ usuń linijki zawierające frazę 'Help docs:'"
find ./groovies -type f -exec sed -i '/Help docs:/d' {} ';'


