/// Information about requesting (requested) Attrubute.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.FieldInfo Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.Max210TextType, Sb.xsd.lt.Max70TextType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "FieldInfo";

Parameter XMLSEQUENCE = 1;

/// Attribute (field) Number.
Property FieldNo As Sb.xsd.lt.Max70TextType(XMLNAME = "FieldNo") [ Required ];

/// Attribute Value.
Property FieldValue As Sb.xsd.lt.Max210TextType(XMLNAME = "FieldValue");

Relationship EDReestrInfo As Sb.xsd.ed.EDReestrInfo(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = EDReestrFieldList ];

Storage Default
{
<Data name="FieldInfoDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>FieldNo</Value>
</Value>
<Value name="3">
<Value>FieldValue</Value>
</Value>
<Value name="4">
<Value>EDReestrInfo</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.FieldInfoD</DataLocation>
<DefaultData>FieldInfoDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.FieldInfoD</IdLocation>
<IndexLocation>^Sb.xsd.ed.FieldInfoI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.FieldInfoS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

