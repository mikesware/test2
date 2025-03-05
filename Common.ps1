"_____________________________________________________________________________________"

"                                    MyInvocation"
"_____________________________________________________________________________________"
$MyInvocation

$vertable=$psversiontable
"____________________________________ PSVERSION ______________________________________"
$vertable|Ft


"Home:$home"
"PSSenderInfo=$PSSenderInfo"
$commonpwd=$pwd
$commonthis=$this
"commonthis=$commonthis"
"Callstack"
Write-Host $((Get-PSCallStack)[0])
Write-Host $((Get-PSCallStack)[1])

"pwd=$pwd"
"profile=$profile"
"PSCommandPath=$PSCommandPath"
"PSCulture=$PSCulture"
"PSDebugContext=$PSDebugContext"
"PSEdition=$PSEdition"

#if() {cls}
$FuncPath=split-path $PSCommandPath
"FuncPath=$FuncPath"
. $FuncPath\CommonFunctions.ps1
TestCommonFunctions
CommonConstructor

$starttime=get-date
$starttime
$thisunc=$false
"is this path unc=$thisunc"
"split-path $PSCommandPath " +(split-path $PSCommandPath) 
"split-path $PSCommandPath -leaf " +(split-path $PSCommandPath -Leaf) 

$thisscriptdrv=split-path $PSCommandPath
"thisscriptdrv=$thisscriptdrv"

$thisscriptpath= $PSCommandPath
"thisscriptpath=$thisscriptpath"
$thisscriptname=split-path $thisscriptpath -Leaf
"thisscriptname=$thisscriptname"

$thisunc=IsUnc -path $thisscriptpath
"is this path unc=$thisunc"

$thisuncscriptpath=Expand-DriveMapping -Path $thisscriptpath
#write-host -ForegroundColor Cyan "ExpandDrivemapping=$dm"
"thisuncscriptpath=$thisuncscriptpath"

#"$($MyInvocation.PSCommandPath)"

$currentDirectory = Get-Location
"currentDirectory=$currentDirectory"
<#
$currentDrive = Split-Path -qualifier $currentDirectory.Path
# Mapping a non-network drive? Check the DriveType enum documentation https://docs.microsoft.com/en-us/dotnet/api/system.io.drivetype?view=net-6.0
$logicalDisk = Get-CimInstance -ClassName Win32_LogicalDisk -filter "DriveType = 4 AND DeviceID = '$currentDrive'"
$uncPath = $currentDirectory.Path.Replace($currentDrive, $logicalDisk.ProviderName)

#>

<#
$strarry = @("PowerShell", "String", "Array")
show -messages $strarry -color Green
#>

"_____________________________________________________________________________________"

"                             Back to calling script"
"_____________________________________________________________________________________"
