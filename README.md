# Intrusion Detection System with Snort, and Vagrant

Nowadays, intrusion Detection systems play a significant role in Network security
because internet use is overgrowing, and the possibility of attack is also increasing
in that ratio. For this reason, Martin Roesch designed Snort technology in 1998
to detect network intrusions. Since then, it has been created and maintained by
Cisco. Furthermore, Snort is a robust open-source intrusion detection (IDS) and
prevention system (IPS); also, it is located in the DevOps periodic table in the security
section. In addition, Snort allows protocol analysis, searching/matching of content, and
detection of a wide range of attacks and probes, including buffer, overflows, stealth port
scans, Common Gateway Interface (CGI) attacks, Server Message Block (SMB) probes,
operating system fingerprinting attempts, among other capabilities. In other words, it
contains various features such as real-time traffic monitoring, packet logging, protocol
analysis, content matching, and operating system fingerprinting. Furthermore, it can be
installed in any network environment and create logs, is open-source, and rules are easy
to implement, facilitating its usage.

## Requirements

- Linux as OS
- Vagrant
- Python 3
- Git

## Installation

Clonne repository:
```
$ git clone https://github.com/stalyn21/IDS-SCV.git
```

Create a directory with "snort" name and copy Vagrant file:
```
$ mkdir snort
$ cp ./IDS-SCV/Vagrantfile ./snort/Vagrantfile
```

Wake up the virtual machine with Vagrant:
```
$ cd snort/
$ vagrant up
```

Connect to virtual machine:
```
$ vagrant ssh
```

Check your interface, mask and IP address:
```
$ ip addr
```

Execute install.sh file and put your IP, mask and interface during Snort installation:
```
$ ./IDS-SCV/install.sh
```

Reemplace you IP and mask inside of the snort config file:
```
$ sudo nano /etc/snort/snort.conf

---- Before ----
ipvar HOME_NET any

---- Now ----
ipvar HOME_NET <ip addr>

```

### OPTIONAL
Execute firewall file to ping of death
```
$ ./IDS-SCV/firewall.sh
```

## Usage
Put you interface in snort valid file:
```
$ nano IDS-SCV/snort_setup/snort_valid.sh

---- Interface Variable ----
interface='enp0s8'

```

Valid and run snort rules:
```
$ ./IDS-SCV/snort_setup/snort_valid.sh
```

## Reference

- Acar, Emrullah: What is snort?What is Snort? https://medium.com/@acaremrullahkku/what-is-snort-547916bece5f, December 2018. Access in Junio, 2022. System and Network Administration 5
- [Snort Website](https://www.snort.org/)
- [Vagrant website](https://www.vagrantup.com/)
