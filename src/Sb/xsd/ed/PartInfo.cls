/// Information about transmitted partition.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.PartInfo Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.OrdinalNumberType, Sb.xsd.lt.PartAggregateIDType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "PartInfo";

Parameter XMLSEQUENCE = 1;

/// Partition Number.
Property PartNo As Sb.xsd.lt.OrdinalNumberType(XMLNAME = "PartNo", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Quantity of Partitions.
Property PartQuantity As Sb.xsd.lt.OrdinalNumberType(XMLNAME = "PartQuantity", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Уникальный идентификатор совокупности частей
Property PartAggregateID As Sb.xsd.lt.PartAggregateIDType(XMLNAME = "PartAggregateID", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="PartInfoDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>PartNo</Value>
</Value>
<Value name="3">
<Value>PartQuantity</Value>
</Value>
<Value name="4">
<Value>PartAggregateID</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.PartInfoD</DataLocation>
<DefaultData>PartInfoDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.PartInfoD</IdLocation>
<IndexLocation>^Sb.xsd.ed.PartInfoI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.PartInfoS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

