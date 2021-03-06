﻿$ErrorActionPreference = 'Stop'
import-module au

function global:au_GetLatest {
    $releases = 'http://www.pspad.com/en/download.php'
    $regex    = 'pspad(\d+)_setup.exe'

    $download_page = Invoke-WebRequest -Uri $releases
 
	$regex_version = 'PSPad - current version (?<Version>[\d\.]+) \('
	$download_page -match $regex_version | Out-Null
    $version    = $matches.Version
    $versionURL = $version -Replace '\.',''

    return @{
        Version = $version
        URL32   = 'https://www.pspad.com/files/pspad/pspad' + $versionURL + '_setup.exe'
    }
}

function global:au_SearchReplace {
    @{
        "tools\chocolateyInstall.ps1" = @{
			"(^(\s)*url\s*=\s*)('.*')"      = "`$1'$($Latest.URL32)'"
            "(^(\s)*checksum\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
        }
    }
}

update
