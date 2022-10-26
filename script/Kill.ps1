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
            Write-Host "$app is Killed" -ForegroundColor green
        }
    
    } catch {  

        Write-Host "$app is Not Launch" -ForegroundColor red   
    }
}

## Init

. D:\Github\ScriptPowerShell-ProgrammeGestion\script\List.ps1

while($i -ne $arrayApp_Graph.Count)
{
    if(!$i){
        Kill-App($arrayApp_Graph[0])
    } else {
        Kill-App($arrayApp_Graph[$i])
    }
    $i++
}

while($j -ne $arrayApp_JustKill.Count)
{
    if(!$j){
        Kill-App($arrayApp_JustKill[0])
    } else {
        Kill-App($arrayApp_JustKill[$j])
    }
    $j++
}