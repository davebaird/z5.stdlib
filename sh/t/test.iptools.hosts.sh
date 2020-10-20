#!/bin/bash
source ../importer strict || exit 1
import iptools
import errcho
import stacktrace

#export DEBUG=1

main () {
    setup_testfile

    rerrcho "add dev 127.0.1.1"
    iptools.etchosts.add dev 127.0.1.1

    rerrcho "add newhost 1.2.3.4"
    iptools.etchosts.add newhost 1.2.3.4 test_hosts

    rerrcho "add newhost2 1.2.3.4"
    iptools.etchosts.add newhost2 1.2.3.4 test_hosts

    rerrcho "rm removeme"
    iptools.etchosts.rm removeme test_hosts


    rerrcho "rm removeme2"
    iptools.etchosts.rm removeme2 test_hosts

    rerrcho "add newhost 1.2.3.55"
    iptools.etchosts.add newhost 1.2.3.55 test_hosts

    rerrcho "add lockserver.k2 99.88.77.66"
    iptools.etchosts.add lockserver.k2 99.88.77.66 test_hosts
}



setup_testfile () {
cat > test_hosts <<HOSTS
127.0.0.1       localhost removeme hn.zerofive.co.uk
127.0.1.1       dev

8.7.6.5         removeme2

2.4.6.8         donotremoveme
2.4.7.9         removemenot

7.7.7.7         donot.removeme
9.9.9.9         removeme.not

# The following lines are desirable for IPv6 capable hosts
::1     ip6-localhost ip6-loopback
fe00::0 ip6-localnet
ff00::0 ip6-mcastprefix
ff02::1 ip6-allnodes
ff02::2 ip6-allrouters

192.168.56.101 testbed lockserver.k2
178.62.125.30  urr
HOSTS
}

main