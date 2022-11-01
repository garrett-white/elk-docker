$url = "http://192.168.79.128:5601/api/fleet/enrollment_api_keys"
$pair = "elastic:changeme"

$Headers =  @{Authorization = 'Basic ' + [Convert]::ToBase64String([Text.Encoding]::ASCII.GetBytes("$pair")) }
$api_key = $($(Invoke-webrequest -Uri $url  -headers $headers).content | ConvertFrom-Json | %{$_.list}  | ?{$_.policy_id -eq "windows-policy"}).api_key

Invoke-WebRequest -Uri https://artifacts.elastic.co/downloads/beats/elastic-agent/elastic-agent-8.5.0-windows-x86_64.zip -OutFile "$env:USERPROFILE\Downloads\elastic-agent-8.5.0-windows-x86_64.zip"
cd "$env:USERPROFILE\Downloads\"
Expand-Archive .\elastic-agent-8.5.0-windows-x86_64.zip -DestinationPath .
cd elastic-agent-8.5.0-windows-x86_64
.\elastic-agent.exe install --url=http://192.168.79.128:8220 --enrollment-token=$api_key --force --insecure --non-interactive
