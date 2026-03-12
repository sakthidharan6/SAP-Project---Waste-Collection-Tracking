@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZZCLWASTE_TRACK_01CIT'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZZCLC_WASTE_TRACK_01CIT
  provider contract TRANSACTIONAL_QUERY
  as projection on ZZCLR_WASTE_TRACK_01CIT
  association [1..1] to ZZCLR_WASTE_TRACK_01CIT as _BaseEntity on $projection.WASTEID = _BaseEntity.WASTEID
{
  key WasteID,
  AreaName,
  CollectorName,
  VehicleNumber,
  WasteType,
  CollectionDate,
  CollectionTime,
  Status,
  Remarks,
  @Semantics: {
    User.Createdby: true
  }
  CreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  CreatedAt,
  @Semantics: {
    User.Lastchangedby: true
  }
  LastChangedBy,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChangedAt,
  _BaseEntity
}
