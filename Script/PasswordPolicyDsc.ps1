
<#PSScriptInfo

.VERSION 0.1

.GUID a90fd1a1-a151-4386-ad23-a1790de727fb

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
 Composite resource to simplify managing password policies locally on a Windows Server 

#> 

Param()

Configuration PasswordPolicyDsc
{
    Import-DscResource -ModuleName PSDesiredStateConfiguration
    Import-DscResource -ModuleName SecurityPolicyDsc
    
    Node localhost
    {
        AccountPolicy PasswordPolicy {
            Name                                        = 'PasswordPolicy'
            Enforce_password_history                    = 24
            Maximum_Password_Age                        = 70
            Minimum_Password_Age                        = 1
            Minimum_Password_Length                     = 14
            Password_must_meet_complexity_requirements  = 'Enabled'
            Store_passwords_using_reversible_encryption = 'Disabled'
        }
    }
}
