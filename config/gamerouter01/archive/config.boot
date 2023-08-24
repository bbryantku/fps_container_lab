interfaces {
    ethernet eth0 {
        address 10.6.0.2/16
    }
    ethernet eth1 {
        address 10.5.0.2/16
    }
}
nat {
    source {
        rule 100 {
            destination {
                address 0.0.0.0/0
            }
            outbound-interface eth0
            source {
                address 10.6.0.0/16
            }
            translation {
                address masquerade
            }
        }
        rule 200 {
            destination {
                address 0.0.0.0/0
            }
            outbound-interface eth0
            source {
                address 10.5.0.0/16
            }
            translation {
                address masquerade
            }
        }
    }
}
service {
    ssh {
        disable-host-validation
    }
}
system {
    config-management {
        commit-revisions 100
    }
    host-name vyos1
    login {
        user vyos {
            authentication {
                encrypted-password $6$QxPS.uk6mfo$9QBSo8u1FkH16gMyAVhus6fU3LOzvLR9Z9.82m3tiHFAxTtIkhaZSWssSgzt4v4dGAL8rhVQxTg0oAG9/q11h/
                plaintext-password ""
            }
        }
    }
    time-zone UTC
}


// Warning: Do not remove the following line.
// vyos-config-version: "broadcast-relay@1:cluster@1:config-management@1:conntrack@3:conntrack-sync@2:container@1:dhcp-relay@2:dhcp-server@6:dhcpv6-server@1:dns-forwarding@3:firewall@5:https@2:interfaces@22:ipoe-server@1:ipsec@5:isis@1:l2tp@3:lldp@1:mdns@1:nat@5:ntp@1:pppoe-server@5:pptp@2:qos@1:quagga@8:rpki@1:salt@1:snmp@2:ssh@2:sstp@3:system@21:vrrp@2:vyos-accel-ppp@2:wanloadbalance@3:webproxy@2:zone-policy@1"
// Release version: 1.3-rolling-202307211720
