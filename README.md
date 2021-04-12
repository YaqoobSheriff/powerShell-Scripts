# PortsUsage
.Synopsis
This powershell script is used to fetch the used ports and display the available ports.   

.Description
This PS Script compares all the ports within the given range to the ports running in the VM.

.Input
Port range(lower-limit and upper-limit) has to be passed as the parameter to the script.
ex: Portsusage.ps1 "8000" "8010"

.Output
Gives the list of available ports in the port range given
