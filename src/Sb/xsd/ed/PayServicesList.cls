/// Список предоставленных услуг
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.PayServicesList Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.EDDrawerIDType, Sb.xsd.lt.Max6NumberType, Sb.xsd.lt.NotNegativeKopeckAmountType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "PayServicesList";

Parameter XMLSEQUENCE = 1;

/// Список предоставленных платных услуг по видам
Relationship PayServicesCodeList As Sb.xsd.ed.PayServicesCodeList(XMLNAME = "PayServicesCodeList", XMLPROJECTION = "ELEMENT") [ Cardinality = many, Inverse = PayServicesList ];

/// Список предоставленных бесплатных услуг по видам
Relationship FreeServicesCodeList As Sb.xsd.ed.FreeServicesCodeList(XMLNAME = "FreeServicesCodeList", XMLPROJECTION = "ELEMENT") [ Cardinality = many, Inverse = PayServicesList1 ];

/// Уникальный идентификатор пользователя СПФС
Property UIS As Sb.xsd.lt.EDDrawerIDType(XMLNAME = "UIS", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Номер реестра
Property RegisterNo As Sb.xsd.lt.Max6NumberType(XMLNAME = "RegisterNo", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Общая сумма платы за предоставленные услуги
Property TotalSum As Sb.xsd.lt.NotNegativeKopeckAmountType(XMLNAME = "TotalSum", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="PayServicesListDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>UIS</Value>
</Value>
<Value name="3">
<Value>RegisterNo</Value>
</Value>
<Value name="4">
<Value>TotalSum</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.PayServicesListD</DataLocation>
<DefaultData>PayServicesListDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.PayServicesListD</IdLocation>
<IndexLocation>^Sb.xsd.ed.PayServicesListI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.PayServicesListS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

