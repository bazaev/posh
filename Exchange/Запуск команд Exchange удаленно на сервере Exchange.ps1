# Если нет оснастки Exchange и Powershell никак ее не может подгрузить, можно использовать подключение к серверу 
# Exchange и выполнить все команды на нем

$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri http://b000335.zaoeps.local/PowerShell/ -Authentication Kerberos

Import-PSSession $Session


"Наш скрипт"

Remove-PSSession $Session
