sudo apt install -y snort
snort --version

sudo mv /etc/snort/rules/local.rules /etc/snort/rules/local.rules.bak
sudo cp IDS-SCV/snort_setup/rules/local.rules /etc/snort/rules/


