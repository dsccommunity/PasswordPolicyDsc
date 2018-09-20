# PasswordPolicyDsc

[![Build status](https://ci.appveyor.com/api/projects/status/rt71xrs58kd75sp9/branch/master?svg=true)](https://ci.appveyor.com/project/mgreenegit/passwordpolicydsc/branch/master)

This is a composite resource wrapping settings from the SecurityPolicyDsc resource.
The intent of this resource is to align with Azure Policy Guest Configuration definition
"[Preview]: Audit Password security settings inside Linux and Windows virtual machines".
Adding this resource with no properties to a configuration will configure a Windows Server
with password policy settings that comply with the Azure Policy definition.

## Contributing

This project welcomes contributions and suggestions.  Most contributions require you to agree to a
Contributor License Agreement (CLA) declaring that you have the right to, and actually do, grant us
the rights to use your contribution. For details, visit https://cla.microsoft.com.

When you submit a pull request, a CLA-bot will automatically determine whether you need to provide
a CLA and decorate the PR appropriately (e.g., label, comment). Simply follow the instructions
provided by the bot. You will only need to do this once across all repos using our CLA.

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or
contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.
