function prompt
{
    Write-Host ("$pwd ") -nonewline -foregroundcolor Cyan
    Write-Host ("$") -nonewline -foregroundcolor Green
    return " "
}

function open { & explorer.exe $args }
function subl { & "C:\Program Files\Sublime Text 3\sublime_text.exe" $args }
function st { & "C:\Program Files (x86)\Atlassian\SourceTree\SourceTree.exe" $args }
function vim { & "C:\Program Files (x86)\Git\share\vim\vim74\vim.exe" $args }
function g { & git $args }
function gs { & git status $args }
function gci { & git commit $args }
function gco { & git checkout $args }
function gh { & git hist $args }
function gd { & git diff $args }
function ga { & git add $args }
function gignore { & git update-index --assume-unchanged $args }
function gnoignore { & git update-index --no-assume-unchanged $args }

remove-item alias:curl

$scripts = "$(split-path $profile)\scripts"
$desktop = $(resolve-path "$Env:userprofile\Desktop")

$env:path += ";$scripts"

$env:term = "msys"
