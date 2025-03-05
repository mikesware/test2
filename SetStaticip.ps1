Get-NetAdapter -Name Ethernet
# Define the network interface name
$InterfaceAlias = "Ethernet"

# Define the static IP address, subnet mask, and default gateway
$IPAddress = "192.168.0.13"
$PrefixLength = 24
$DefaultGateway = "192.168.0.2"

# Define the DNS server addresses

$DNSServer1 = "8.8.8.8"
$DNSServer2 = "8.8.4.4"
$DNSServer3 = "192.168.0.16"

$DNSServer4 = "192.168.0.19"

# Set the static IP address
New-NetIPAddress -InterfaceAlias $InterfaceAlias -IPAddress $IPAddress -PrefixLength $PrefixLength -DefaultGateway $DefaultGateway

# Set the DNS server addresses
Set-DnsClientServerAddress -InterfaceAlias $InterfaceAlias -ServerAddresses ($DNSServer3, $DNSServer4,$DNSServer1, $DNSServer2)
