$short_name = $args[0]
$out = Resolve-DnsName $short_name -Type A -QuickTimeout -ErrorAction SilentlyContinue
if($out.name) {$mc_host = $out.name} else {$mc_host = $short_name}

Write-Host "FQDN_RESOLVER;"
Write-Host "fqdn=$mc_host;"
Write-Host "END;"

exit 0
