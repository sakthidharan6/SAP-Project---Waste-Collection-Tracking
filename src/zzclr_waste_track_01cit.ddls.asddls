@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZZCLWASTE_TRACK_01CIT'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZZCLR_WASTE_TRACK_01CIT
  as select from ZWASTE_TRACK_01
{
  key waste_id as WasteID,
  area_name as AreaName,
  collector_name as CollectorName,
  vehicle_number as VehicleNumber,
  waste_type as WasteType,
  collection_date as CollectionDate,
  collection_time as CollectionTime,
  status as Status,
  remarks as Remarks,
  @Semantics.user.createdBy: true
  created_by as CreatedBy,
  @Semantics.systemDateTime.createdAt: true
  created_at as CreatedAt,
  @Semantics.user.lastChangedBy: true
  last_changed_by as LastChangedBy,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt
}
