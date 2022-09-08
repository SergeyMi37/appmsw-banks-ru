/// Корреспондент.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.CashCorrespondentInfo Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.AccountNumberRUIDType, Sb.xsd.lt.BICRUIDType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "CashCorrespondentInfo";

Parameter XMLSEQUENCE = 1;

/// БИК ПБР корреспондента.
Property BICCorr As Sb.xsd.lt.BICRUIDType(XMLNAME = "BICCorr", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Счет, корреспондирующий со счетом кассы.
Property CorrAcc As Sb.xsd.lt.AccountNumberRUIDType(XMLNAME = "CorrAcc", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="CashCorrespondentInfoDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>BICCorr</Value>
</Value>
<Value name="3">
<Value>CorrAcc</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.CashCorresp7444D</DataLocation>
<DefaultData>CashCorrespondentInfoDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.CashCorresp7444D</IdLocation>
<IndexLocation>^Sb.xsd.ed.CashCorresp7444I</IndexLocation>
<StreamLocation>^Sb.xsd.ed.CashCorresp7444S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

