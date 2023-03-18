Import-Module "C:\AtomicRedTeam\invoke-atomicredteam\Invoke-AtomicRedTeam.psd1" -Force

$techniques = gci C:\AtomicRedTeam\atomics\* -Recurse -Include T*.yaml | Get-AtomicTechnique

foreach ($technique in $techniques) {
    foreach ($atomic in $technique.atomic_tests) {
        if ($atomic.supported_platforms.contains("windows") -and ($atomic.executor -ne "manual")) {
            # Get Prereqs for test
            Invoke-AtomicTest $technique.attack_technique -TestGuids $atomic.auto_generated_guid -GetPrereqs
            # Invoke
            Invoke-AtomicTest $technique.attack_technique -TestGuids $atomic.auto_generated_guid
            # Sleep then cleanup
            Start-Sleep 10
            Invoke-AtomicTest  $technique.attack_technique -TestGuids $atomic.auto_generated_guid -Cleanup
        }
    }
}