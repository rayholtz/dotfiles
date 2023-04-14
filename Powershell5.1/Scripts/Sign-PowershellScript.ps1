[CmdletBinding()]
param (
	[Parameter(Mandatory=$True)]
	[String]
	$Script
)

$SignCert = get-childitem -path Cert:\CurrentUser\My -CodeSigningCert

Set-AuthenticodeSignature -FilePath $Script -Certificate $SignCert -HashAlgorithm Sha256 -TimestampServer 'http://timestamp.digicert.com' 