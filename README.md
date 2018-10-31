# stackoverflow_powershell-script-for-ping
Answer for https://stackoverflow.com/questions/53073388/powershell-script-for-ping


pingServers.ps1 contains the Ping-Servers. Source the ps1 file to make the cmdlet available.

. .\pingServers.ps1

After that you can start the ping via:

$result = Ping-Servers -InformationAction Continue



