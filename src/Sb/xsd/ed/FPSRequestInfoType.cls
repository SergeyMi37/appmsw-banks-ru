/// Информация о состоянии ликвидности в СБП.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.FPSRequestInfoType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.AccountNumberRUIDType, Sb.xsd.lt.BICRUIDType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "FPSRequestInfoType";

Parameter XMLSEQUENCE = 0;

/// Time Range
Property DateTimeInterval As Sb.xsd.ed.DateTimeInterval(XMLNAME = "DateTimeInterval");

/// Operation Date
Property BusinessDay As Sb.xsd.ed.BusinessDay(XMLNAME = "BusinessDay");

/// National BIC of Participant.
Property BIC As Sb.xsd.lt.BICRUIDType(XMLNAME = "BIC", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Participant Account.
Property CorrespAcc As Sb.xsd.lt.AccountNumberRUIDType(XMLNAME = "CorrespAcc", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="FPSRequestInfoTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>DateTimeInterval</Value>
</Value>
<Value name="3">
<Value>BusinessDay</Value>
</Value>
<Value name="4">
<Value>BIC</Value>
</Value>
<Value name="5">
<Value>CorrespAcc</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.FPSRequestInfoTypeD</DataLocation>
<DefaultData>FPSRequestInfoTypeDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.FPSRequestInfoTypeD</IdLocation>
<IndexLocation>^Sb.xsd.ed.FPSRequestInfoTypeI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.FPSRequestInfoTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

