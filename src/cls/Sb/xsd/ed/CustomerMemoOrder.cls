/// Реквизиты по дебету/кредиту.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.CustomerMemoOrder Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.AccountNumberRUIDType, Sb.xsd.lt.BICRUIDType, Sb.xsd.lt.Max160TextType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "CustomerMemoOrder";

Parameter XMLSEQUENCE = 1;

/// Наименование счета.
Property AccName As Sb.xsd.lt.Max160TextType(XMLNAME = "AccName");

/// Лицевой счет/корсчет.
Property Acc As Sb.xsd.lt.AccountNumberRUIDType(XMLNAME = "Acc", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// БИК ПБР/КО.
Property BIC As Sb.xsd.lt.BICRUIDType(XMLNAME = "BIC", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="CustomerMemoOrderDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>AccName</Value>
</Value>
<Value name="3">
<Value>Acc</Value>
</Value>
<Value name="4">
<Value>BIC</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.CustomerMemoOrderD</DataLocation>
<DefaultData>CustomerMemoOrderDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.CustomerMemoOrderD</IdLocation>
<IndexLocation>^Sb.xsd.ed.CustomerMemoOrderI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.CustomerMemoOrderS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

