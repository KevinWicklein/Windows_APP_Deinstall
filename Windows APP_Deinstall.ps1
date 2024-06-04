Get-AppxPackage *3d* | Remove-AppxPackage
Get-AppxPackage *photo* | Remove-AppxPackage
Get-AppxPackage *camera* | Remove-AppxPackage
Get-AppxPackage *zune* | Remove-AppxPackage
Get-AppxPackage *people* | Remove-AppxPackage
Get-AppxPackage *communi* | Remove-AppxPackage
Get-AppxPackage *solit* | Remove-AppxPackage
Get-AppxPackage *bing* | Remove-AppxPackage
Get-AppxPackage *phone* | Remove-AppxPackage
Get-AppxPackage *soundrec* | Remove-AppxPackage
Get-AppxPackage *xbox* | Remove-AppxPackage
Get-AppxPackage *3dbuilder* | Remove-AppxPackage
Get-AppxPackage *windowsalarms* | Remove-AppxPackage
Get-AppxPackage *windowsphone* | Remove-AppxPackage
Get-AppxPackage *DrawboardPDF* | Remove-AppxPackage
Get-AppxPackage *getstarted* | Remove-AppxPackage
Get-AppxPackage *Facebook* | Remove-AppxPackage
Get-AppxPackage *feedback* | Remove-AppxPackage
Get-AppxPackage *3d* | Remove-AppxPackage
Get-AppxPackage *zunevideo* | Remove-AppxPackage
Get-AppxPackage *bingfinance* | Remove-AppxPackage
Get-AppxPackage *photos* | Remove-AppxPackage
Get-AppxPackage *zunemusic* | Remove-AppxPackage
Get-AppxPackage *windowscamera* | Remove-AppxPackage
Get-AppxPackage *windowsmaps* | Remove-AppxPackage
Get-AppxPackage *people* | Remove-AppxPackage
Get-AppxPackage *communicationsapps* | remove-appxpackage
Get-AppxPackage *solitairecollection* | Remove-AppxPackage
Get-AppxPackage *bingnews* | Remove-AppxPackage
Get-AppxPackage *messaging* | remove-appxpackage
Get-AppxPackage *officehub* | Remove-AppxPackage
Get-AppxPackage *onenote* | Remove-AppxPackage
Get-AppxPackage *mspaint* | Remove-AppxPackage
Get-AppxPackage *windowscalculator* | Remove-AppxPackage
Get-AppxPackage *skypeapp* | Remove-AppxPackage
Get-AppxPackage *bingsports* | Remove-AppxPackage
Get-AppxPackage *soundrecorder* | Remove-AppxPackage
Get-AppxPackage *dvd* | Remove-AppxPackage
Get-AppxPackage *xboxIdentityprovider* | Remove-AppxPackage
Get-AppxPackage *xboxapp* | Remove-AppxPackage
Get-AppxPackage *XboxGamingOverlay* | Remove-AppxPackage
Get-AppxPackage -Publisher *Microsoft* | Remove-AppxPackage

<#
Die Beispielskripte werden von keinem Standard-Supportprogramm oder -dienst von Microsoft unterstützt. 
Programm oder Dienst unterstützt. Die Beispielskripte werden ohne Mängelgewähr bereitgestellt  
jeglicher Art. Microsoft lehnt außerdem alle stillschweigenden Garantien ab, einschließlich,  
ohne Einschränkung, jegliche stillschweigende Gewährleistung der Marktgängigkeit oder der Eignung 
einen bestimmten Zweck. Das gesamte Risiko, das sich aus der Verwendung oder Leistung der  
der Beispielskripte und der Dokumentation entsteht, liegt bei Ihnen. In keinem Fall werden 
Microsoft, seine Autoren oder andere Personen, die an der Erstellung, Produktion oder 
oder Lieferung der Skripte beteiligt sind, für Schäden jeglicher Art haftbar gemacht werden (einschließlich, 
ohne Einschränkung, für Schäden aus entgangenem Gewinn, Betriebsunterbrechung 
Geschäftsunterbrechung, Verlust von Geschäftsinformationen oder anderen Vermögensschäden), die aus der Nutzung 
oder der Unmöglichkeit der Verwendung der Beispielskripte oder der Dokumentation, selbst wenn Microsoft 
auf die Möglichkeit solcher Schäden hingewiesen wurde.

#> 

#requires -Version 3

<#
	.SYNOPSIS
		The RemoveAppxPackage command will remove Windows Store Appx packages.

	.DESCRIPTION
		This script can help you to remove several Windows Store Apps at one time.  
		
	.EXAMPLE
		PS C:\> C:\Script\RemoveWindowsStoreApp.ps1
		
		ID       App name
		 1       Microsoft.Media.PlayReadyClient.2
		 2       Microsoft.Media.PlayReadyClient.2
		 3       CheckPoint.VPN
		 4       f5.vpn.client
		 5       FileManager
		 6       JuniperNetworks.JunosPulseVpn
		 7       Microsoft.MoCamera
		 8       SonicWALL.MobileConnect
		 9       windows.immersivecontrolpanel
		 10      winstore
		 11      Microsoft.BingSports
		 12      Microsoft.BingTravel
		 13      Microsoft.SkypeApp
		 14      Microsoft.BingFinance
		 15      Microsoft.HelpAndTips
		 16      Microsoft.BingFoodAndDrink
		 17      Microsoft.BingHealthAndFitness
		 18      Microsoft.BingNews
		 19      microsoft.windowscommunicationsapps
		 20      Microsoft.WindowsSoundRecorder
		 21      Microsoft.WindowsScan
		 22      Microsoft.ZuneMusic
		 23      Microsoft.VCLibs.120.00
		 24      Microsoft.WindowsAlarms
		 25      Microsoft.WinJS.2.0
		 26      Microsoft.WindowsCalculator
		 27      Microsoft.BingWeather
		 28      Microsoft.Reader
		 29      Microsoft.ZuneVideo
		 30      Microsoft.WindowsReadingList
		 31      Microsoft.BingMaps
		 32      Microsoft.XboxLIVEGames
		 33      Microsoft.VCLibs.120.00
		Which Apps do you want to remove?
		Input their IDs and seperate IDs by comma: 28

		This example shows how to list all Windows Store apps, and remove the apps specified by user.
	
	.LINK
		Windows PowerShell Advanced Function
		http://technet.microsoft.com/en-us/library/dd315326.aspx
	
	.LINK
		Get-AppxPackage
		http://technet.microsoft.com/en-us/library/hh856044.aspx
		
	.LINK
		Remove-AppxPackage
		http://technet.microsoft.com/en-us/library/hh856038.aspx	
#>
Import-LocalizedData -BindingVariable Messages

Function PSCustomErrorRecord
{
	#This function is used to create a PowerShell ErrorRecord
	Param
	(		
		[Parameter(Mandatory=$true,Position=1)][String]$ExceptionString,
		[Parameter(Mandatory=$true,Position=2)][String]$ErrorID,
		[Parameter(Mandatory=$true,Position=3)][System.Management.Automation.ErrorCategory]$ErrorCategory,
		[Parameter(Mandatory=$true,Position=4)][PSObject]$TargetObject
	)
	Process
	{
		$exception = New-Object System.Management.Automation.RuntimeException($ExceptionString)
		$customError = New-Object System.Management.Automation.ErrorRecord($exception,$ErrorID,$ErrorCategory,$TargetObject)
		return $customError
	}
}
	
Function RemoveAppxPackage
{
	$index=1
	$apps=Get-AppxPackage
	#return entire listing of applications 
	Write-Host "ID`t App name"
	foreach ($app in $apps)
	{
		Write-Host " $index`t $($app.name)"
		$index++
	}
    
    Do
    {
        $IDs=Read-Host -Prompt "Which Apps do you want to remove? `nInput their IDs and seperate IDs by comma"
    }
    While($IDs -eq "")
    
	#check whether input values are correct
	try
	{	
		[int[]]$IDs=$IDs -split ","
	}
	catch
	{
		$errorMsg = $Messages.IncorrectInput
		$errorMsg = $errorMsg -replace "Placeholder01",$IDs
		$customError = PSCustomErrorRecord `
		-ExceptionString $errorMsg `
		-ErrorCategory NotSpecified -ErrorID 1 -TargetObject $pscmdlet
		$pscmdlet.WriteError($customError)
		return
	}

	foreach ($ID in $IDs)
	{
		#check id is in the range
		if ($ID -ge 1 -and $ID -le $apps.count)
		{
			$ID--
			#Remove each app
			$AppName=$apps[$ID].name

			Remove-AppxPackage -Package $apps[$ID] -ErrorAction SilentlyContinue
			if (-not(Get-AppxPackage -Name $AppName))
			{
				Write-host "$AppName has been removed successfully"
			}
			else
			{
				Write-Warning "Remove '$AppName' failed! This app is part of Windows and cannot be uninstalled on a per-user basis."
			}
		}
		else
		{
			$errorMsg = $Messages.WrongID
			$errorMsg = $errorMsg -replace "Placeholder01",$ID
			$customError = PSCustomErrorRecord `
			-ExceptionString $errorMsg `
			-ErrorCategory NotSpecified -ErrorID 1 -TargetObject $pscmdlet
			$pscmdlet.WriteError($customError)
		}
	}
}

RemoveAppxPackage

