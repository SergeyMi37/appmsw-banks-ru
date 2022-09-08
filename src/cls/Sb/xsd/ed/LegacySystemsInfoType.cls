/// Legacy systems information.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.LegacySystemsInfoType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "LegacySystemsInfoType";

Parameter XMLSEQUENCE = 1;

/// Masterdata or Authorized senders.
/// Masterdata or Authorized senders.
/// Запись Справочника УФ-ЦФ.
Relationship UFCFMD As Sb.xsd.ed.UFCFRecord(XMLITEMNAME = "UFCFRecord", XMLNAME = "UFCFMD", XMLPROJECTION = "COLLECTION") [ Cardinality = many, Inverse = LegacySystemsInfoType ];

Storage Default
{
<Data name="LegacySystemsInfoTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.LegacySyste1A47D</DataLocation>
<DefaultData>LegacySystemsInfoTypeDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.LegacySyste1A47D</IdLocation>
<IndexLocation>^Sb.xsd.ed.LegacySyste1A47I</IndexLocation>
<StreamLocation>^Sb.xsd.ed.LegacySyste1A47S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

