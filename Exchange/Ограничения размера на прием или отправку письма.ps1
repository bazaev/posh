# Ограничение на размер отправляемого/принимаемого письма в байтах

Get-Mailbox "zaoeps\adubas" | Set-Mailbox -MaxSendSize "12582912" -MaxReceiveSize "12582912"


#Get-Mailbox "zaoeps\adubas" | select MaxSendSize