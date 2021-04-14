<#
.Synopsis
This powerShell script is used to place application shortcuts on the user desktop.

.Description
This PowerShell script matches the name of the application given with the predefined names in the switch condition and places the corresponding application desktop.

.Input
Params 'appnames' has to be passed to the script.
Example: userShortcut.ps1 -appnames ["chrome","autocad","bluej"]

.Output
Places the application shorcut on the user desktop.

.Notes
Author: Yaqoob Sheriff R

#>
param([String[]]$appnames)
$user = $env:USERNAME
Remove-Item $home\Desktop\*lnk –Force

foreach($name in $appnames)
  {

switch ($name) 
    {
        "autocad"
        {
        $WshShell = New-Object -comObject WScript.Shell
        $Shortcut = $WshShell.CreateShortcut("$home\Desktop\AutoCAD 2018.lnk")
        $Shortcut.TargetPath = "C:\Program Files\Autodesk\AutoCAD 2018\acad.exe"
        $Shortcut.Save()
        }
        "adobeair"
        {
        $wshell =New-Object -ComObject wscript.shell
        $shortcut=$wshell.CreateShortcut("$home\Desktop\airappinstaller.lnk")
        $Shortcut.TargetPath = "C:\Program Files (x86)\Adobe\Flash Player\AddIns\airappinstaller\airappinstaller.exe"
        $shortcut.save()
        }
        "bluej" 
        {
        $WshShell = New-Object -comObject WScript.Shell
        $Shortcut = $WshShell.CreateShortcut("$home\Desktop\BlueJ.lnk")
        $Shortcut.TargetPath = "C:\Program Files (x86)\BlueJ\BlueJ.exe"
        $Shortcut.Save()
        }
        "chrome" 
        {
        $WshShell = New-Object -comObject WScript.Shell
        $Shortcut = $WshShell.CreateShortcut("$home\Desktop\Google Chrome.lnk")
        $Shortcut.TargetPath = "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
        $Shortcut.Save()
        }
         "codeblocks" 
        {
        $WshShell = New-Object -comObject WScript.Shell
        $Shortcut = $WshShell.CreateShortcut("$home\Desktop\codeblocks.lnk")
        $Shortcut.TargetPath = "C:\Program Files\CodeBlocks\codeblocks.exe"
        $Shortcut.Save()
        }
         "drjava"
        {
        $WshShell = New-Object -comObject WScript.Shell
        $Shortcut = $WshShell.CreateShortcut("$home\Desktop\Drjava.lnk")
        $Shortcut.TargetPath = "C:\Program Files\Drjava\drjava-stable.exe"
        $Shortcut.Save()
        }
         "dropbox" 
        {
        $WshShell = New-Object -comObject WScript.Shell
        $Shortcut = $WshShell.CreateShortcut("$home\Desktop\Dropbox.lnk")
        $Shortcut.TargetPath = "C:\Program Files (x86)\Dropbox\Client\Dropbox.exe"
        $Shortcut.Save()
        }
         "dwsim" 
        {
        $WshShell = New-Object -comObject WScript.Shell
        $Shortcut = $WshShell.CreateShortcut("$home\Desktop\DWSIM (Classic UI).lnk")
        $Shortcut.TargetPath = "C:\Program Files\DWSIM5\DWSIM.exe"
        $Shortcut.Save()
        }
         "kindle" 
        {
        $WshShell = New-Object -comObject WScript.Shell
        $Shortcut = $WshShell.CreateShortcut("$home\Desktop\Kindle.lnk")
        $Shortcut.TargetPath = "C:\Program Files (x86)\Amazon\Kindle\Kindle.exe"
        $Shortcut.Save()
        }
        "firefox" 
        {
        $WshShell = New-Object -comObject WScript.Shell
        $Shortcut = $WshShell.CreateShortcut("$home\Desktop\firefox.lnk")
        $Shortcut.TargetPath = "C:\Program Files\Mozilla Firefox\firefox.exe"
        $Shortcut.Save()
        }
         "nodejs" 
        {
        $WshShell = New-Object -comObject WScript.Shell
        $Shortcut = $WshShell.CreateShortcut("$home\Desktop\Node.lnk")
        $Shortcut.TargetPath = "C:\Program Files\nodejs\node.exe"
        $Shortcut.Save()
        }
         "notepad++" 
        {
        $WshShell = New-Object -comObject WScript.Shell
        $Shortcut = $WshShell.CreateShortcut("$home\Desktop\Notepad++.lnk")
        $Shortcut.TargetPath = "C:\Program Files\Notepad++\notepad++.exe"
        $Shortcut.Save()
        }
         "opensim" 
        {
	    $WshShell = New-Object -comObject WScript.Shell
        $Shortcut = $WshShell.CreateShortcut("$home\Desktop\OpenSim.lnk")
        $Shortcut.TargetPath = "C:\OpenSim 3.3\bin\opensim64.exe"
        $Shortcut.Save()
        }
        "matlab"
        {
        $WshShell = New-Object -comObject WScript.Shell
        $Shortcut = $WshShell.CreateShortcut("$home\Desktop\matlab.lnk")
        $Shortcut.TargetPath = "C:\Program Files\MATLAB\R2018a\bin\matlab.exe"
        $Shortcut.Save()
        }
         "powerbidesktop" 
        {
        $WshShell = New-Object -comObject WScript.Shell
        $Shortcut = $WshShell.CreateShortcut("$home\Desktop\Power BI Desktop.lnk")
        $Shortcut.TargetPath = "C:\Program Files\Microsoft Power BI Desktop\bin\PBIDesktop.exe"
        $Shortcut.Save()
        }
         "scratch" 
        {
        $WshShell = New-Object -comObject WScript.Shell
        $Shortcut = $WshShell.CreateShortcut("$home\Desktop\Scratch.lnk")
        $Shortcut.TargetPath = "C:\Program Files (x86)\Scratch 2\Scratch 2.exe"
        $Shortcut.Save()
        }
        "solidworkselectrical"
        {
        $WshShell = New-Object -ComObject WScript.Shell
        $Shortcut = $WshShell.CreateShortcut("$home\Desktop\SOLIDWORKSElectrical.lnk")
        $Shortcut.TargetPath = "C:\Program Files\SOLIDWORKS Corp\SOLIDWORKS Electrical\bin\SOLIDWORKSElectrical.exe"
        $Shortcut.Save()
        }
        "solidworksedrawing"
        {
        $WshShell = New-Object -ComObject WScript.Shell
        $Shortcut = $WshShell.CreateShortcut("$home\Desktop\eDrawings.lnk")
        $Shortcut.TargetPath = "C:\Program Files\SOLIDWORKS Corp\eDrawings\eDrawings.exe"
        $Shortcut.Save()
        }
        "solidworks"
        {
        $WshShell = New-Object -ComObject WScript.Shell
        $Shortcut = $WshShell.CreateShortcut("$home\Desktop\SLDWORKS.lnk")
        $Shortcut.TargetPath = "C:\Program Files\SOLIDWORKS Corp\SOLIDWORKS\SLDWORKS.exe"
        $Shortcut.Save()
        }
        "sprutcam"
        {
        $WshShell = New-Object -ComObject WScript.Shell
        $Shortcut = $WshShell.CreateShortcut("$home\Desktop\SprutCAM 11.lnk")
        $Shortcut.TargetPath = "C:\Program Files\Sprut Technology\SprutCAM 11\Bin64\SprutCAM.exe"
        $Shortcut.Save()
        }
        "quickbooks"
        {
        $WshShell = New-Object -ComObject WScript.Shell
        $Shortcut = $WshShell.CreateShortcut("$home\Desktop\QuickBooks pro.lnk")
        $Shortcut.TargetPath = "C:\Program Files (x86)\Intuit\QuickBooks 2018\QBW32Pro.exe"
        $Shortcut.Save()
        }
        "office365basic"
        {
         Copy-Item -Path "C:\office 365 icons\Excel 2016.lnk" -Destination "$home\Desktop\Excel 2016.lnk"
         Copy-Item -Path "C:\office 365 icons\PowerPoint 2016.lnk" -Destination "$home\Desktop\PowerPoint 2016.lnk"
         Copy-Item -Path "C:\office 365 icons\Word 2016.lnk" -Destination "$home\Desktop\Word 2016.lnk"
        }
        "office365premium"
        {
         Copy-Item -Path "C:\office 365 icons\Excel 2016.lnk" -Destination "$home\Desktop\Excel 2016.lnk"
         Copy-Item -Path "C:\office 365 icons\PowerPoint 2016.lnk" -Destination "$home\Desktop\PowerPoint 2016.lnk"
         Copy-Item -Path "C:\office 365 icons\Word 2016.lnk" -Destination "$home\Desktop\Word 2016.lnk"
         Copy-Item -Path "C:\office 365 icons\OneNote 2016.lnk" -Destination "$home\Desktop\OneNote 2016.lnk"
         Copy-Item -Path "C:\office 365 icons\Outlook 2016.lnk" -Destination "$home\Desktop\Outlook 2016.lnk"
         Copy-Item -Path "C:\office 365 icons\Access 2016.lnk" -Destination "$home\Desktop\Access 2016.lnk"
        }
         "excel"
        {
         Copy-Item -Path "C:\office 365 icons\Excel 2016.lnk" -Destination "$home\Desktop\Excel 2016.lnk"
        }
        "powerpoint"
        {
         Copy-Item -Path "C:\office 365 icons\PowerPoint 2016.lnk" -Destination "$home\Desktop\PowerPoint 2016.lnk"
        }
        "word"
        {
         Copy-Item -Path "C:\office 365 icons\Word 2016.lnk" -Destination "$home\Desktop\Word 2016.lnk"
        }
        "onenote"
        {
         Copy-Item -Path "C:\office 365 icons\OneNote 2016.lnk" -Destination "$home\Desktop\OneNote 2016.lnk"
        }
        "outlook"
        {
         Copy-Item -Path "C:\office 365 icons\Outlook 2016.lnk" -Destination "$home\Desktop\Outlook 2016.lnk"
        }
        "access"
        {
         Copy-Item -Path "C:\office 365 icons\Access 2016.lnk" -Destination "$home\Desktop\Access 2016.lnk"
        }        
        "adobeacrobat"
        {
        Copy-Item -Path "C:\adobeicons\Adobe Acrobat DC.lnk" -Destination "$home\Desktop\Adobe Acrobat DC.lnk"
        }
        "adobeacrobatdistiller"
        {
        Copy-Item -Path "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe Acrobat Distiller DC.lnk" -Destination "$home\Desktop\Adobe Acrobat Distiller DC.lnk"
        }
        "adobeaftereffects"
        {
        Copy-Item -Path "C:\adobeicons\Adobe After Effects CC 2018.lnk" -Destination "$home\Desktop\Adobe After Effects CC 2018.lnk"
        }
        "adobeanimation"
        {
        Copy-Item -Path "C:\adobeicons\Adobe Animate CC 2018.lnk" -Destination "$home\Desktop\Adobe Animate CC 2018.lnk"
        }
        "adobeaudition"
        {
        Copy-Item -Path "C:\adobeicons\Adobe Audition CC 2018.lnk" -Destination "$home\Desktop\Adobe Audition CC 2018.lnk"
        }
        "adobebridge"
        {
        Copy-Item -Path "C:\adobeicons\Adobe Bridge CC 2018.lnk" -Destination "$home\Desktop\Adobe Bridge CC 2018.lnk"
        }
        "adobedreamweaver"
        {
        Copy-Item -Path "C:\adobeicons\Adobe Dreamweaver CC 2018.lnk" -Destination "$home\Desktop\Adobe Dreamweaver CC 2018.lnk"
        }
        "adobeillustrator"
        {
        Copy-Item -Path "C:\adobeicons\Adobe Illustrator CC 2018.lnk" -Destination "$home\Desktop\Adobe Illustrator CC 2018.lnk"
        }
        "adobeindesign"
        {
        Copy-Item -Path "C:\adobeicons\Adobe InDesign CC 2018.lnk" -Destination "$home\Desktop\Adobe InDesign CC 2018.lnk"
        }
        "adobelightroom"
        {
        Copy-Item -Path "C:\adobeicons\Adobe Lightroom CC.lnk" -Destination "$home\Desktop\Adobe Lightroom CC.lnk"
        }
        "adobephotoshop"
        {
        Copy-Item -Path "C:\adobeicons\Adobe Photoshop CC 2018.lnk" -Destination "$home\Desktop\Adobe Photoshop CC 2018.lnk"
        }
        "adobepremiere"
        {
        Copy-Item -Path "C:\adobeicons\Adobe Premiere Pro CC 2018.lnk" -Destination "$home\Desktop\Adobe Premiere Pro CC 2018.lnk"
        }
        "hsminventor"
        {
        $WshShell = New-Object -comObject WScript.Shell
        $Shortcut = $WshShell.CreateShortcut("$home\Desktop\Inventor.lnk")
        $Shortcut.TargetPath = "C:\Program Files\Autodesk\Inventor 2018\Bin\Inventor.exe"
        $Shortcut.Save()
        }
        "tableau"
        {
        $WshShell = New-Object -comObject WScript.Shell
        $Shortcut = $WshShell.CreateShortcut("$home\Desktop\tableau.lnk")
        $Shortcut.TargetPath = "C:\Program Files\Tableau\Tableau 2018.1\bin\tableau.exe"
        $Shortcut.Save()
        }
        "googlesheets"
        {
        Copy-Item -Path "C:\Program Files\Google Sheets.lnk" -Destination "$home\Desktop\Google Sheets.lnk"
        }
        "googledrive"
        {
        $WshShell = New-Object -ComObject WScript.Shell
        $Shortcut = $WshShell.CreateShortcut("$home\Desktop\Google Drive.lnk")
        $Shortcut.TargetPath = "C:\Program Files\Google\Drive\googledrivesync.exe"
        $Shortcut.Save()
          }
}
}

