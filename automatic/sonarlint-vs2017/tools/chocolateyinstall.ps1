﻿$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$file = "$toolsDir\SonarLint.VSIX-4.22.0.18519-2017.vsix"

$packageArgs = @{
  packageName = $env:ChocolateyPackageName
  vsixUrl     = 'file://' + $file.Replace('\', '/')
}

Install-VisualStudioVsixExtension @packageArgs
