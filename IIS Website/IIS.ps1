#region Creating the IIS site and SSL binding
## Create the new website
New-Website -Name DemoSite -PhysicalPath c:\

## Notice all web bindings created
Get-WebBinding

## Find the bindings only on the website we just created
(Get-Website -Name 'DemoSite') bindings Collection

## Add a new binding to the site bound to all IP address for out SSL connection
New-WebBinding -Name 'DemoSite' -IPAddress * -Port 443 -Protocol https

## Notice the binding now
(Get-Website -Name 'Demosite') bindings Collection
#endregion

#region Installing a certificate...