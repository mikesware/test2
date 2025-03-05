#Connect-WSMan -ComputerName "192.168.0.209"
$password = ConvertTo-SecureString "cfbead4" -AsPlainText -Force
$cred = New-Object System.Management.Automation.PSCredential ("mikesware\mike", $password)

Enter-PSSession -ComputerName "192.168.0.209" -Credential $cred 