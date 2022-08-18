# Using ip address
# ip_addr=192.168.56.107
# sudo snort -T -i $ip_addr  -c /etc/snort/snort.conf
# Showing the console Instrusion Detection System 
# sudo snort -A console -q -u snort -g snort -c /etc/snort/snort.conf -i $ip_addr
# Another shape to see the console Intrusion Detection System
# sudo snort -A console -i $ip_addr -c /etc/snort/snort.conf

# Using connection insterface
interface='enp0s8'
sudo snort -T -c /etc/snort/snort.conf -i $interface
sudo snort -A console -q -u snort -g snort -c /etc/snort/snort.conf -i $interface
