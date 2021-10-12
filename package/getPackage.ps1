$a = Invoke-RestMethod "https://sdk-static.mihoyo.com/hk4e_cn/mdk/launcher/api/resource?key=eYd89JmJ&launcher_id=18"

$latest = $a.data.game.latest
Write-Output "# game`n`n" > .\package.md
Write-Output $latest.path >> .\package.md
Write-Output "`n# voice_packs`n" >> .\package.md
Write-Output $latest.voice_packs.path >> .\package.md
$diffs = $a.data.game.diffs
Write-Output "`n# diff`n`n" >> .\package.md
Write-Output "## game`n`n" >> .\package.md
Write-Output $diffs[0].path >> .\package.md
Write-Output "`n## voice_packs`n`n" >> .\package.md
Write-Output $diffs[0].voice_packs.path >> .\package.md
