$a = Invoke-RestMethod "https://sdk-static.mihoyo.com/hk4e_cn/mdk/launcher/api/resource?key=eYd89JmJ&launcher_id=18"

$latest = $a.data.game.latest
Write-Output "# game`n`n" > .\package.md
Write-Output "`n## path`n $($latest.path)" >> .\package.md
Write-Output "`n## md5`n $($latest.md5)" >> .\package.md
Write-Output "`n# voice_packs`n" >> .\package.md
foreach ($i in $latest.voice_packs) {
    Write-Output "`n***`n## $($i.language)" >> .\package.md
    Write-Output "`n### path`n$($i.path)" >> .\package.md
    Write-Output "`n### md5 `n$($i.md5)" >> .\package.md
    Write-Output "`n" >> .\package.md
}

$pre_dowload = $a.data.pre_download_game.latest
Write-Output "`n# pre_download`n" >> .\package.md
Write-Output "## game`n" >> .\package.md
Write-Output "`n### path`n $($pre_dowload.path)" >> .\package.md
Write-Output "`n### md5`n $($pre_dowload.md5)" >> .\package.md
Write-Output "`n## voice_packs`n" >> .\package.md
foreach ($i in $pre_dowload.voice_packs) {
    Write-Output "`n***`n### $($i.language)" >> .\package.md
    Write-Output "`n#### path`n$($i.path)" >> .\package.md
    Write-Output "`n#### md5 `n$($i.md5)" >> .\package.md
    Write-Output "`n" >> .\package.md
}

$diffs = $a.data.pre_download_game.diffs
Write-Output "`n# diff`n`n" >> .\package.md
Write-Output "## game`n`n" >> .\package.md
Write-Output `npath: $diffs[0].path >> .\package.md
Write-Output `nmd5: $diffs[0].md5 >> .\package.md
Write-Output "`n## voice_packs`n`n" >> .\package.md
foreach ($i in $diffs.voice_packs) {
    Write-Output "`n***`n### $($i.language)" >> .\package.md
    Write-Output "`n#### path`n$($i.path)" >> .\package.md
    Write-Output "`n#### md5 `n$($i.md5)" >> .\package.md
    Write-Output "`n" >> .\package.md
}

