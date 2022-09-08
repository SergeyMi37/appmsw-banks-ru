/// Информация о состоянии ликвидности в СБП.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.RequestInfoType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.AccountNumberRUIDType, Sb.xsd.lt.BICRUIDType, Sb.xsd.lt.LiquidityTransKindType, Sb.xsd.lt.NotNegativeKopeckAmountType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "RequestInfoType";

Parameter XMLSEQUENCE = 1;

/// National BIC of Participant.
Property BIC As Sb.xsd.lt.BICRUIDType(XMLNAME = "BIC", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Participant Account.
Property CorrespAcc As Sb.xsd.lt.AccountNumberRUIDType(XMLNAME = "CorrespAcc", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Limit Change Sum.
Property Sum As Sb.xsd.lt.NotNegativeKopeckAmountType(XMLNAME = "Sum", XMLPROJECTION = "ATTRIBUTE") [ Required, SqlFieldName = _Sum ];

/// Limit Action Code.
Property LiquidityTransKind As Sb.xsd.lt.LiquidityTransKindType(XMLNAME = "LiquidityTransKind", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="RequestInfoTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>BIC</Value>
</Value>
<Value name="3">
<Value>CorrespAcc</Value>
</Value>
<Value name="4">
<Value>Sum</Value>
</Value>
<Value name="5">
<Value>LiquidityTransKind</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.RequestInfoTypeD</DataLocation>
<DefaultData>RequestInfoTypeDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.RequestInfoTypeD</IdLocation>
<IndexLocation>^Sb.xsd.ed.RequestInfoTypeI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.RequestInfoTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

