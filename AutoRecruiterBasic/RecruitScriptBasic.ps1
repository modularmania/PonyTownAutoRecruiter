while($true)
{
    [void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")

    $objNotifyIcon = New-Object System.Windows.Forms.NotifyIcon
    $objNotifyIcon.Icon = [System.Drawing.SystemIcons]::Information
    $objNotifyIcon.BalloonTipIcon = "Info"
    $objNotifyIcon.BalloonTipTitle = "Reminder"
    $objNotifyIcon.BalloonTipText = "Send your next recruitment message." 
    $objNotifyIcon.Visible = $True

    $objNotifyIcon.ShowBalloonTip(10000)

    Start-Sleep 180 # Sends a reminder every 3 minutes.
}