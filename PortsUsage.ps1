<#
.Synopsis
This powershell script is used to fetch the used ports and display the available ports.   

.Description
This PS Script compares all the ports within the given range to the ports running in the VM.

.Input
Port range(lower-limit and upper-limit) has to be passed as the parameter to the script.
ex: Portsusage.ps1 "8000" "8010"

.Output
Gives the list of available ports in the port range given.

.Notes
Name: PortsUsage
Author: Yaqoob Sheriff R


#>
#param($Llimit,$Ulimit)
$Llimit="8000"
$Ulimit="8010"
$b=@()
$d=@($Llimit..$Ulimit)
$ports =  Get-NetTCPConnection | group localport -NoElement | sort count -Descending
$usedports = $ports.name
forEach($port in $usedports){
if($port -In $Llimit..$Ulimit)
{
#write-host "Port $port is in use"
}
$b= $d | ? {$_ -ne $port} 
$d= $b       
}
Write-host "Available ports are: $d "  -ForegroundColor Green