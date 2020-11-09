$len = 12 #桁数
[Reflection.Assembly]::LoadWithPartialName("System.Web")
$pass=[System.Web.Security.Membership]::GeneratePassword($len,0)

write-host "生成したパスワードは $pass です。"


$N = 12 #桁数
$pass_aZ19=-join ((1..$N) | % {Get-Random -input ([char[]]((48..57) + (65..90) + (97..122)))})

write-host "生成した英数字パスワードは $pass_aZ19 です。"


$pass_19=Get-Random -minimum 100000000000 -maximum 999999999999;([String]$c)

write-host "生成した数字パスワードは $pass_19 です。"

