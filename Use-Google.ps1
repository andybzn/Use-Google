#Script Name: #Use-Google
#Creator: Dark-Coffee
#Version: 0.0.1
#Updated: 28th September 2019
#Url: https://github.com/dark-coffee/Use-Google

function Use-Google {
    $content = Get-Clipboard
    $content1 = $content.Replace(' ','+')
    $lmgtfy = "https://lmgtfy.com/?q="
    $output = $lmgtfy + $content1
    $output | clip
    #& "C:\Program Files\internet explorer\iexplore.exe" "$output"
}