cat ./packages.txt | grep -v '#' | xargs sudo apt install -y
