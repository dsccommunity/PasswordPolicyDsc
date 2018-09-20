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
