cls
Get-MailContact | %{
	$User = $_.ExternalEmailAddress.SmtpAddress -replace "@.+"
	$ErrorActionPreference = "SilentlyContinue"
	$ADUser = $false
	$ADUser = Get-ADUser $User
	$ErrorActionPreference = "Continue"
	If ($ADUser -eq $false) {}#$_.ExternalEmailAddress.SmtpAddress}
	Else
	{
		If ($ADUser.Enabled -like "False") {$_.ExternalEmailAddress.SmtpAddress}
	}
}
	