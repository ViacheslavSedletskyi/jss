# Set default Sitecore app pool 'privateMemory' attribute as 4GB according to bug: https://learn.microsoft.com/uk-UA/troubleshoot/developer/webapps/aspnet/development/cache-trimming-occurs
RUN cmd /c \"C:\Windows\system32\inetsrv\appcmd set config /section:applicationPools /[name='DefaultAppPool'].recycling.periodicRestart.privateMemory:4000000 /commit:apphost\";
