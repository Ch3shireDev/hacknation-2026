#!/bin/bash

# dla każdego pliku .md poza README.md wypisz jego zawartość do pliku README.md
# zamien # na ##

echo '# HackNation 2026' > README.md
echo "" >> README.md

for file in *.md
do
  if [ "$file" != "README.md" ]; then
    sed 's/^#/##/' "$file" >> README.md
    echo "" >> README.md
  fi
done