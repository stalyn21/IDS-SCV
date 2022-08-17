import sys
from subprocess import check_output

command = 'nmap ' + str(sys.argv[1])

for _ in range(1000):
 print(command)
 check_output(command , shell=True)
