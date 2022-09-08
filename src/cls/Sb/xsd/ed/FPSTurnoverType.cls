/// Обороты в СБП в течении операционного дня.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.FPSTurnoverType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = Sb.xsd.lt.NotNegativeKopeckAmountType, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "FPSTurnoverType";

Parameter XMLSEQUENCE = 1;

/// Total Credit Docs Sum.
Property FPSCreditSum As Sb.xsd.lt.NotNegativeKopeckAmountType(XMLNAME = "FPSCreditSum", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Total Debt Docs Sum.
Property FPSDebetSum As Sb.xsd.lt.NotNegativeKopeckAmountType(XMLNAME = "FPSDebetSum", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="FPSTurnoverTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>FPSCreditSum</Value>
</Value>
<Value name="3">
<Value>FPSDebetSum</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.FPSTurnoverTypeD</DataLocation>
<DefaultData>FPSTurnoverTypeDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.FPSTurnoverTypeD</IdLocation>
<IndexLocation>^Sb.xsd.ed.FPSTurnoverTypeI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.FPSTurnoverTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

