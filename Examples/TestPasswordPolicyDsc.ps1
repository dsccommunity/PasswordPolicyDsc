
<#PSScriptInfo

.VERSION 0.1

.GUID 8b3b38fd-e143-4abb-b280-2dd06d34bf66

.AUTHOR Michael Greene

.COMPANYNAME Microsoft Corporation

.COPYRIGHT 2018 Microsoft Corporation

.TAGS PSDSC DscResource CompositeResource

.LICENSEURI https://github.com/Microsoft/PasswordPolicyDsc/blob/master/LICENSE

.PROJECTURI http://github.com/Microsoft/PasswordPolicyDsc

.ICONURI 

.EXTERNALMODULEDEPENDENCIES 

.REQUIREDSCRIPTS 

.EXTERNALSCRIPTDEPENDENCIES 

.RELEASENOTES


.PRIVATEDATA 

#>

#Requires -Module SecurityPolicyDsc

<# 

.DESCRIPTION 
 Used to test PasswordPolicyDsc composite resource with properties only defined in resource file 

#> 
Param()

Configuration TestSecurityPolicyDsc
{
    Import-DscResource -Module PSDesiredStateConfiguration
    Import-DscResource -Module PasswordPolicyDsc

    Node Localhost{
        PasswordPolicyDsc MyOrgPasswordRequirements
        {
        }
    }
}
