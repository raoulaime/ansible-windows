# Check Windows Firewall for ALL network profiles Before Disable
Get-NetFirewallProfile | Format-Table Name, Enabled

# Disable Windows Firewall for ALL network profiles
Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False

# Check Windows Firewall for ALL network profiles After Disable
Get-NetFirewallProfile | Format-Table Name, Enabled
