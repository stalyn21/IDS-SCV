# install snort
sudo apt install -y snort
snort --version
echo "==== Successfully Snort Installation ===="

# Reemplace rules for snort
echo "==== Reemplacing Local Rules ===="
sudo mv /etc/snort/rules/local.rules /etc/snort/rules/local.rules.bak
sudo cp IDS-SCV/snort_setup/rules/local.rules /etc/snort/rules/
echo "==== Succesfully Snort Local Rules ===="

