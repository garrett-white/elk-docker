logsources:
  windows-application:
    product: windows
    service: application
    index: logstash-winlogbeat-application-*
  windows-security:
    product: windows
    service: security
    index: logstash-winlogbeat-security-*
  windows-sysmon:
    product: windows
    service: sysmon
    index: logstash-winlogbeat-sysmon-*
  windows-system:
    product: windows
    service: system
    index: logstash-winlogbeat-system-*
  windows-wmi:
    product: windows
    service: wmi
    index: logstash-winlogbeat-wmiactivity-*
  windows-powershell:
    product: windows
    service: powershell
    index: logstash-winlogbeat-powershell-*
  windows-powershell-classic:
    product: windows
    service: powershell-classic
    index: logstash-winlogbeat-powershell-*
defaultindex: logstash-*
fieldmappings:
    AccessMask: object_access_mask_requested
    AccountName: winlog.event_data.TargetUserName
    AllowedToDelegateTo: user_attribute_allowed_todelegate
    AttributeLDAPDisplayName: dsobject_attribute_name
    AuditPolicyChanges: policy_changes
    AuthenticationPackageName: winlog.event_data.AuthenticationPackageName
    CallingProcessName: process_path
    CallTrace: process_call_trace
    CommandLine: winlog.event_data.CommandLine
    Company: winlog.event_data.Company
    ComputerName: winlog.computer_name
    Configuration:
        EventID=16: sysmon_configuration
    CurrentDirectory: winlog.event_data.CurrentDirectory
    Description: winlog.event_data.Description
    Destination:
        EventID=20: winlog.event_data.Destination
    DestinationHostname: winlog.event_data.DestinationHostname
    DestinationIp: winlog.event_data.DestinationIp
    DestinationIsIpv6: winlog.event_data.DestinationIsIpv6
    DestinationPort: winlog.event_data.DestinationPort
    DestinationPortName: winlog.event_data.DestinationPortName
    Details: 
        EventID=13: winlog.event_data.Details
    Device: device_name
    EngineVersion: winlog.event_data.ContextInfo
    EventID: winlog.event_id
    EventType: winlog.event_data.EventType
    EventNamespace:
        EventID=19: winlog.event_data.EventNamespace
    Filter:
        EventID=21: winlog.event_data.Filter
    FailureCode: ticket_failure_code
    FileName: winlog.event_data.FileName
    FileVersion: winlog.event_data.FileVersion
    GrantedAccess: process_granted_access
    GroupName: winlog.event_data.GroupName
    HiveName: winlog.event_data.HiveName
    HostVersion: powershell.host.version
    Image: winlog.event_data.Image
    ImageLoaded:
        EventID=6: winlog.event_data.ImageLoaded
        EventID=7: winlog.event_data.ImageLoaded
    Imphash: hash_imphash
    Initiated:
        EventID=3: network_initiated
    IntegrityLevel:
        EventID=1: winlog.event_data.IntegrityLevel
    LogonProcessName: winlog.event_data.LogonProcessName
    LogonType: winlog.event_data.LogonType
    MachineName: host.name
    Name:
        EventID=19: winlog.event_data.Name
        EventID=20: winlog.event_data.Name
    NewProcessName: winlog.event_data.NewProcessName
    NewName:
        EventID=14: registry_key_new_name
    ObjectClass: dsobject_class
    ObjectName: object_name
    ObjectType: object_type
    ObjectValueName: object_value_name
    Operation:
        EventID=19: winlog.event_data.Operation
        EventID=20: winlog.event_data.Operation
        EventID=21: winlog.event_data.Operation
    OperationType: object_operation_type
    ParentImage: winlog.event_data.ParentImage
    PasswordLastSet: user_attribute_password_lastset
    Path: process_path
    ParentCommandLine: winlog.event_data.ParentCommandLine
    PipeName: pipe_name
    ProcessName: process_path
    ProcesssCommandLine: winlog.event_data.CommandLine
    Product: winlog.event_data.Product
    Properties: object_properties
    Protocol:
        EventID=3: winlog.event_data.Protocol
    Query:
        EventID=19: winlog.event_data.Query
    RelativeTargetName: share_relative_target_name
    SchemaVersion:
        EventID=4: sysmon_schema_version
    ServiceFileName: winlog.event_data.ServiceFileName
    ServiceName: winlog.event_data.ServiceName
    ShareName: winlog.event_data.ShareName
    Signature: winlog.event_data.Signature
    SignatureStatus: signature_status
    Signed: signed
    Source: winlog.event_data.Source
    SourceHostname: winlog.event_data.SourceHostname
    SourceImage: winlog.event_data.SourceImage
    SourcePort: winlog.event_data.SourcePort
    SourcePortName: winlog.event_data.SourcePortName
    StartAddress: thread_start_address
    StartFunction: thread_start_function
    StartModule: thread_start_module
    Status: event_status
    State:
        EventID=4: service_state
        EventID=16: sysmon_configuration_state
    SubjectUserName: 
        EventID=4624: user_reporter_name
        EventId=4648: user_name
        EventID=5140: user_name
    TargetFilename: winlog.event_data.TargetFilename
    TargetImage: winlog.event_data.TargetImage
    TargetProcessAddress: winlog.event_data.TargetProcessAddress
    TargetObject: winlog.event_data.TargetObject
    TaskName: winlog.event_data.TaskName
    TicketEncryptionType: winlog.event_data.TicketEncryptionType
    TicketOptions: winlog.event_data.TicketOptions
    Type:
        EventID=20: winlog.event_data.Type
    User: user_account
    UserName: user_name
    Version:
        EventID=4: sysmon_version
    Workstation: src_host_name
    WorkstationName: winlog.event_data.WorkstationName
