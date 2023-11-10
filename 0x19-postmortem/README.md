# Postmortem Report - Web Server 500 Error Incident

## Issue Summary:
At approximately 2:00 PM GMT+1 on November,9,2023.
The web server began returning a 500 Internal Server Error.
This incident was promptly detected by our monitoring system following a recent code update.

## Timeline:
+ ***2:00 pm:*** The web server started responding with a 500 Internal Server Error.
+ ***2:05 pm:*** Automated monitoring systems alerted the team to the issue.
+ ***2:10 pm:*** The on-call team was notified and began investigating the incident.
+ ***2:15 pm:*** Initial analysis indicated that the issue may be related to the recent code update.
+ ***2:30 pm:*** The team utilized the strace tool to identify the root cause of the 500 error.
+ ***3:00 pm:*** The team discovered a misspelling of a file name in the configuration file.
+ ***3:15 pm:*** Developers corrected the issue and automated it using Puppet.
+ ***3:30 pm:*** The web server was updated with the corrected code, resolving the 500 error.

## Root cause and resolution:
The root cause of the incident was identified as a misspelling of a file name introduced during the recent code update.
This misspelling led to the web server returning a 500 Internal Server Error.

To resolve the issue, the development team corrected the misspelled file name in the codebase.
The corrected code was then deployed to the web server, restoring normal functionality by 3:30 PM GMT+1.

## Corrective and preventative measures:
1. ***Code Reviews:*** Strengthen the code review process to catch potential issues, such as misspellings, before they reach production.
2. ***Automated Testing:*** Implement additional automated tests to identify errors related to file names and other common issues during the development phase.
3. ***Monitoring Improvements:*** Enhance monitoring to provide more detailed alerts and insights into potential issues, reducing the response time in future incidents.

