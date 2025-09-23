$counter = 0
Start-Sleep 20 
# You have 20 seconds after clicking the script to copy your recruitment message to your clipboard.

while($true)
{
    [void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")

    $objNotifyIcon = New-Object System.Windows.Forms.NotifyIcon
    $counter++

    $objNotifyIcon.Icon = [System.Drawing.SystemIcons]::Information
    $objNotifyIcon.BalloonTipIcon = "Info"
    $objNotifyIcon.BalloonTipTitle = "Recruiter"
    $objNotifyIcon.BalloonTipText = "Sending message no. $counter." 
    $objNotifyIcon.Visible = $True

    $objNotifyIcon.ShowBalloonTip(10000)
    python ptar.py $counter

    Start-Sleep 180 # Sends a reminder every 3 minutes.

}
