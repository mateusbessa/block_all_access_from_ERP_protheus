Import-Module ActiveDirectory
Import-Csv "C:\Windows\SYSVOL\sysvol\mondelli.local\scripts\Inativacao_AD\funcionarios.txt" | ForEach-Object { $samAccountName = $_."samAccountName"
Get-ADUser -Identity $samAccountName | Disable-ADAccount
}