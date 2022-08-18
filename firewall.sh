interface='enp0s8'
ping_limit='7'

# Configure iptables for snort
sudo iptables -F # eliminar todas las reglas
sudo iptables-save

# Death ping 
sudo iptables -N ping_of_death
sudo iptables -A ping_of_death -m limit --limit-burst $ping_limit --limit 2/m -j RETURN
sudo iptables -A ping_of_death -j DROP
sudo iptables -A INPUT -s 0/0 -i $interface -p icmp --icmp-type echo-request -j ping_of_death 
sudo iptables-save
