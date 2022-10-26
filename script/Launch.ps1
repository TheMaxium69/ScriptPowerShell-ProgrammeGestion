## Function
function Start-App{
    [CmdletBinding()]
	param(
		[Parameter()]
		[string] $app
	)

    if($app -eq "wallpaper32"){

        . D:\Github\ScriptPowerShell-ProgrammeGestion\raccourci\$app.url    

    } else {
        
        . D:\Github\ScriptPowerShell-ProgrammeGestion\raccourci\$app.lnk

    }
    
    Write-Host "$app is Launch" -ForegroundColor green

}

## Init

. D:\Github\ScriptPowerShell-ProgrammeGestion\script\List.ps1

while($i -ne $arrayApp_Graph.Count)
{
    if(!$i){
        Start-App($arrayApp_Graph[0])
    } else {
        Start-App($arrayApp_Graph[$i])
    }
    $i++
}