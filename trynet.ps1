param($MyHost, $MyPort)

$tryNet = Test-NetConnection $MyHost -Port $MyPort -WarningAction SilentlyContinue
$time = Measure-Command {$tryNet}

if($tryNet.TcpTestSucceeded) {
    Write-Host "Test was successful and took $($time.TotalMilliseconds)ms"
} else {
    Write-Host "Test was NOT successful and took $($time.TotalMilliseconds)ms"
}



