#ftp server info 
$ftp = "ftp.company.com" 
$user = "enterusernamehere" 
$pass = "enterpasswordhere"  
 
$webclient = New-Object System.Net.WebClient 
$webclient.Credentials = New-Object System.Net.NetworkCredential($user,$pass)

$source1 =  "ftp://ftp.company.com/Data/Raw data dump/dailyreport20141114.xlsx"
$target1 = '\\corporatenetwork\DailyData\FTPSAIN\dailyreport20141114.xlsx'

$WebClient.DownloadFile($source1, $target1)

#copies and renames the file you have just downloaded (takes out the date appended to the filename) via FTP to a new folder that you can point SSIS or reporting tool to
Copy-Item '\\corporatenetwork\DailyData\FTPSAIN\dailyreport*.xlsx' '\\corporatenetwork\DailyData\FTPSAIN\dailyreport.xlsx'
