#Clear-Host
#get-OrganizationConfig | fl HierarchicalAddressBookRoot

#Get-OfflineAddressBook | fl Name,Server,PublicFolderDistributionEnabled,WebDistributionEnabled,VirtualDirectories

#Get-CmdletExtensionAgent | ft Name, Priority, Enabled

#get-help Send-MailMessage -detailed

#Search-AdminAuditLog –UserIds atyurin -IsSuccess $True | FT RunDate, Caller, CmdletName

#Search-AdminAuditLog -Cmdlets Enable-Mailbox -StartDate ((Get-Date).AddHours(-2)) -EndDate (Get-Date) -IsSuccess $true

#get-help Search-Mailbox -detailed

#(Get-Group "системная группа_рас").members | Get-Mailbox

#Get-DistributionGroup | where {($_.managedby -ne $Null)} | select name , managedby 

#Get-ManagementRoleAssignment -role "Mailbox Import Export" | fl

#Remove-ManagementRoleAssignment -Identity "Mailbox Import Export-Мусатов Виктор Олегович" -WhatIf

Get-Queue -Server b000335
Get-Queue -Server b000334

#Get-Mailboxdatabase -status | Get-MailboxDatabaseCopyStatus

#Move-ActiveMailboxDatabase DB3 -ActivateOnServer MBX4


#$StartTime = (Get-Date).AddHours(-2)
#$EndTime = Get-Date #"17.10.2013 15:00:00"
#$StartTime = "21.02.2014 12:00:00"
#$EndTime = "21.02.2014 22:50:00"
#
#$RecipientEmail = "asysoev@him-mash.com"
#$Sender = "lml@keruigroup.com"
#$EventId = "Receive"
#Get-MessageTrackingLog -Sender $Sender -server b000334.zaoeps.local -EventId $EventId -Start $StartTime -End $EndTime 
#Get-MessageTrackingLog -Sender $Sender -server b000335.zaoeps.local -EventId $EventId -Start $StartTime -End $EndTime
#
#$SenderEmail = "adubas@elliron.com"
#$EventId = "Deliver"
#Get-MessageTrackingLog -Sender $SenderEmail -server b000334.zaoeps.local -EventId $EventId -Start $StartTime -End $EndTime | fl
#Get-MessageTrackingLog -Sender $SenderEmail -server b000335.zaoeps.local -EventId $EventId -Start $StartTime -End $EndTime | fl


#Работает только на сервере Exchange 
#Search-Mailbox -identity "andrew_test@zaoeps.local" -SearchQuery "Subject:'Test Auto' from:test@zaoeps.local" -DeleteContent

#get-mailboxserver  | get-MailboxdatabaseCopyStatus

#Clean-MailboxDatabase -Identity "Users"

#Get-CmdletExtensionAgent | ft Name, Priority, Enabled

#Add-MailboxPermission "Chris Ashton" -User "Ayla Kol" -AccessRights FullAccess

#Start-ManagedFolderAssistant -Identity oshugaeva