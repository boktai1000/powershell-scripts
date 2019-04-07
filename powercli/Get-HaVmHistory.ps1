$entity = Get-Folder Datacenters
$start = (Get-Date).AddMonths(-3)
$Recurse = $false
$eventTypes = "com.vmware.vc.ha.VmRestartedByHAEvent"
Get-VIEventPlus -Entity $entity -Start $start -EventType $eventTypes |
Select CreatedTime,@{N="VM";E={$_.Vm.Name}},@{N="ESX";E={$_.Host.Name}}
