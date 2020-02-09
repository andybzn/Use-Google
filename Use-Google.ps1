<#
Script Name: Use-Google.ps1
Author: Dark-Coffee
Version: 1.0.0
Updated: 2020-02-09
Url: https://github.com/dark-coffee/Use-Google/
#>

<#
.Description
    Take clipboard text and make it a LMGTFY link.
.Parameter Browser
    Switch to open the link in the default web browser
.Example
    Use-Google
.Example
    Use-Google -Browser
#>


function Use-Google {
    [Parameter(Mandatory=$false)][String]$Browser

    #Get Clipboard Content
    $ClipboardContent = (Get-Clipboard) -Replace(' ','+')

    #Set URL
    $LMGTFY = "https://lmgtfy.com/?q="

    #Combine URL and Clipboard Content
    $FunctionOutput = $LMGTFY + $ClipboardContent

    if($Browser){
        #Open Link in Browser
        Start-Process -Path "$FunctionOutput"
    }else{
        #Copy Output to Clipboard
        $FunctionOutput | Clip
    }
    
}
