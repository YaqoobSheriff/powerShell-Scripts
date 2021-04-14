# userShortcut

.Synopsis
This powerShell script is used to place application shortcuts on the user desktop.

.Description
This PowerShell script matches the name of the application given with the predefined names in the switch condition and places the corresponding application desktop.
Change the paths according to your applications.

.Input
Params 'appnames' has to be passed to the script.
Example: userShortcut.ps1 -appnames ["chrome","autocad","bluej"]

.Output
Places the application shorcut on the user desktop.

This powerShell script can be scheduled to run at logon of the userin group policy at the following path,
User Configuration\Policies\Windows Settings\Scripts (Logon).
