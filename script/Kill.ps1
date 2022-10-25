## Function
function Kill-App{
    [CmdletBinding()]
	param(
		[Parameter()]
		[string] $app
	)

    try{ 
        $isLaunch = Get-Process -Name $app -ErrorAction Stop 

        
        if($isLaunch){
            Stop-Process -Name $app
            echo "$app is Kill"
        }
    
    } catch {  
            
        echo "$app is Not Launch"   
    }
}

## Init

. D:\Github\ScriptPowerShell-ProgrammeGestion\script\List.ps1

while($i -ne $arrayApp.Count)
{
    if(!$i){
        Kill-App($arrayApp[0])
    } else {
        Kill-App($arrayApp[$i])
    }
    $i++
}