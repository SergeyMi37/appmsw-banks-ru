/// Запись Справочника УФ-ЦФ.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.UFCFRecord Extends (%Persistent, %XML.Adaptor) [ CompileAfter = Sb.xsd.lt.BICRUIDType, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "UFCFRecord";

Parameter XMLSEQUENCE = 1;

/// BIC of Authorized Sender.
Property UFBIC As Sb.xsd.lt.BICRUIDType(XMLNAME = "UFBIC") [ Required ];

/// List of BICs of Banks using Authorized Sender.
/// List of BICs of Banks using Authorized Sender.
/// BIC of Bank using Authorized Sender.
Property CFBICList As list Of Sb.xsd.lt.BICRUIDType(XMLITEMNAME = "CFBIC", XMLNAME = "CFBICList", XMLPROJECTION = "COLLECTION") [ Required ];

Relationship LegacySystemsInfoType As Sb.xsd.ed.LegacySystemsInfoType(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = UFCFMD ];

Storage Default
{
<Data name="UFCFRecordDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>UFBIC</Value>
</Value>
<Value name="3">
<Value>CFBICList</Value>
</Value>
<Value name="4">
<Value>LegacySystemsInfoType</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.UFCFRecordD</DataLocation>
<DefaultData>UFCFRecordDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.UFCFRecordD</IdLocation>
<IndexLocation>^Sb.xsd.ed.UFCFRecordI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.UFCFRecordS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

