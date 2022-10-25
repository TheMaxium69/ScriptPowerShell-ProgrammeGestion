Echo "Function Launch"
function Kill-App{
    [CmdletBinding()]
	param(
		[Parameter()]
		[string] $app
	)

    try{ 
        $isLaunch = Get-Process -Name $app -ErrorAction Stop 

        
        if($isLaunch){
            # Stop-Process -Name $app
            echo "Kill App"
        }
    
    } catch {  
            
        echo "$app is Not Launch"   
    }
}



