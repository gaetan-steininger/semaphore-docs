#!/bin/bash
echo "Go to book directory"

cd ../book

echo "Move HTML files to their own directories and rename them to index.html"

find . -type f -name "index.html" | while read file; do
  sed -i '' 's/\>Semaphore Docs\</><img src="https:\/\/docs.semaphoreui.com\/favicon.png\?x=" class="menu-icon"> Semaphore Docs</g' "$file"
done



