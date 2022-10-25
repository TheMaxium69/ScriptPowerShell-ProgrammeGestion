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

$app1 = "BorderlessGaming"
# $app1 = "TranslucentTB"

Kill-App($app1)