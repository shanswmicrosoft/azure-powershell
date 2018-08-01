<#
Copyright (c) Microsoft Corporation. All rights reserved.
Licensed under the MIT License. See License.txt in the project root for license information.

Code generated by Microsoft (R) PSSwagger
Changes may cause incorrect behavior and will be lost if the code is regenerated.
#>

<#
.SYNOPSIS
    After a migration job is created, call this command to cancel the migration job.

.DESCRIPTION
    Cancel a disk migration job.

.PARAMETER Location
    Location of the resource.

.PARAMETER MigrationId
    The migration job guid name.

.EXAMPLE

    PS C:\> $migration =New-AzsDiskMigrationJob -Name "mymigrationJob" -Disks $list -location local -TargetShare "\\SU1FileServer.azurestack.local\SU1_ObjStore"
    PS C:\> Stop-AzsDiskMigrationJob -Location local -MigrationId $migration.MigrationId

#>
function Stop-AzsDiskMigrationJob
{
    [OutputType([Microsoft.AzureStack.Management.Compute.Admin.Models.DiskMigrationJob])]
    [CmdletBinding(DefaultParameterSetName='DiskMigrationJobs_Cancel')]
    param(    
        [Parameter(Mandatory = $false, ParameterSetName = 'DiskMigrationJobs_Cancel')]
        [System.String]
        $Location,
    
        [Parameter(Mandatory = $true, ParameterSetName = 'DiskMigrationJobs_Cancel')]
        [Alias('MigrationId')]
        [System.String]
        $Name
    )

    Begin 
    {
	    Initialize-PSSwaggerDependencies -Azure
        $tracerObject = $null
        if (('continue' -eq $DebugPreference) -or ('inquire' -eq $DebugPreference)) {
            $oldDebugPreference = $global:DebugPreference
			$global:DebugPreference = "continue"
            $tracerObject = New-PSSwaggerClientTracing
            Register-PSSwaggerClientTracing -TracerObject $tracerObject
        }
	}

    Process {
    
    $ErrorActionPreference = 'Stop'

    $NewServiceClient_params = @{
        FullClientTypeName = 'Microsoft.AzureStack.Management.Compute.Admin.ComputeAdminClient'
    }

    $GlobalParameterHashtable = @{}
    $NewServiceClient_params['GlobalParameterHashtable'] = $GlobalParameterHashtable
     
    $GlobalParameterHashtable['SubscriptionId'] = $null
    if($PSBoundParameters.ContainsKey('SubscriptionId')) {
        $GlobalParameterHashtable['SubscriptionId'] = $PSBoundParameters['SubscriptionId']
    }

    $ComputeAdminClient = New-ServiceClient @NewServiceClient_params

    if (-not $PSBoundParameters.ContainsKey('Location')) {
            $Location = (Get-AzureRMLocation).Location
    }

    if ('DiskMigrationJobs_Cancel' -eq $PsCmdlet.ParameterSetName) {
        Write-Verbose -Message 'Performing operation CancelWithHttpMessagesAsync on $ComputeAdminClient.'
        $TaskResult = $ComputeAdminClient.DiskMigrationJobs.CancelWithHttpMessagesAsync($Location, $Name)
    } else {
        Write-Verbose -Message 'Failed to map parameter set to operation method.'
        throw 'Module failed to find operation to execute.'
    }

    if ($TaskResult) {
        $GetTaskResult_params = @{
            TaskResult = $TaskResult
        }
            
        Get-TaskResult @GetTaskResult_params
        
    }
    }

    End {
        if ($tracerObject) {
            $global:DebugPreference = $oldDebugPreference
            Unregister-PSSwaggerClientTracing -TracerObject $tracerObject
        }
    }
}

