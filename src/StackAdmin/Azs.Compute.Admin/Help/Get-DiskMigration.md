---
external help file: Azs.Compute.Admin-help.xml
Module Name: Azs.Compute.Admin
online version:
schema: 2.0.0
---

# Get-DiskMigration

## SYNOPSIS

## SYNTAX

### DiskMigrations_List (Default)
```
Get-DiskMigration [-Status <String>] -Location <String> [<CommonParameters>]
```

### ResourceId_DiskMigrations_Get
```
Get-DiskMigration -ResourceId <String> [<CommonParameters>]
```

### DiskMigrations_Get
```
Get-DiskMigration -Location <String> -Name <String> [<CommonParameters>]
```

### InputObject_DiskMigrations_Get
```
Get-DiskMigration -InputObject <DiskMigration> [<CommonParameters>]
```

## DESCRIPTION
Returns a list of disk migration jobs.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -InputObject
The input object of type Microsoft.AzureStack.Management.Compute.Admin.Models.DiskMigration.

```yaml
Type: DiskMigration
Parameter Sets: InputObject_DiskMigrations_Get
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Location
Location of the resource.

```yaml
Type: String
Parameter Sets: DiskMigrations_List, DiskMigrations_Get
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
The migration job guid name.

```yaml
Type: String
Parameter Sets: DiskMigrations_Get
Aliases: MigrationId

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceId
The resource id.

```yaml
Type: String
Parameter Sets: ResourceId_DiskMigrations_Get
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Status
The parameters of disk migration job status.

```yaml
Type: String
Parameter Sets: DiskMigrations_List
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Microsoft.AzureStack.Management.Compute.Admin.Models.DiskMigration

## NOTES

## RELATED LINKS
