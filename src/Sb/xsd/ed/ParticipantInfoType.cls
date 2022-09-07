/// Information about Participant (from BIC Directory Entry).
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_objects_v2019.2.0.xsd
Class Sb.xsd.ed.ParticipantInfoType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (Sb.xsd.lt.BICRUIDType, Sb.xsd.lt.DateType, Sb.xsd.lt.EDDrawerIDType, Sb.xsd.lt.Eq2TextType, Sb.xsd.lt.IndicatorType, Sb.xsd.lt.Max140TextType, Sb.xsd.lt.Max160TextType, Sb.xsd.lt.Max1TextType, Sb.xsd.lt.Max25TextType, Sb.xsd.lt.Max2TextType, Sb.xsd.lt.Max5TextType, Sb.xsd.lt.Max6TextType, Sb.xsd.lt.Max9TextType, Sb.xsd.lt.ParticipantStatusType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "urn:cbr-ru:ed:v2.0";

Parameter XMLNAME = "ParticipantInfoType";

Parameter XMLSEQUENCE = 1;

/// Participant's Restrictions.
Relationship RstrList As Sb.xsd.ed.RstrListType(XMLNAME = "RstrList", XMLPROJECTION = "ELEMENT") [ Cardinality = many, Inverse = ParticipantInfoType ];

/// Participant’s Name.
Property NameP As Sb.xsd.lt.Max160TextType(XMLNAME = "NameP", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Participant’s Name in English.
Property EnglName As Sb.xsd.lt.Max140TextType(XMLNAME = "EnglName", XMLPROJECTION = "ATTRIBUTE");

/// Participant’s Registry Number.
Property RegN As Sb.xsd.lt.Max9TextType(XMLNAME = "RegN", XMLPROJECTION = "ATTRIBUTE");

/// Country Code.
Property CntrCd As Sb.xsd.lt.Eq2TextType(XMLNAME = "CntrCd", XMLPROJECTION = "ATTRIBUTE");

/// Region Code.
Property Rgn As Sb.xsd.lt.Max2TextType(XMLNAME = "Rgn", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Postal Index.
Property Ind As Sb.xsd.lt.Max6TextType(XMLNAME = "Ind", XMLPROJECTION = "ATTRIBUTE");

/// Locality Type.
Property Tnp As Sb.xsd.lt.Max5TextType(XMLNAME = "Tnp", XMLPROJECTION = "ATTRIBUTE");

/// Locality Name.
Property Nnp As Sb.xsd.lt.Max25TextType(XMLNAME = "Nnp", XMLPROJECTION = "ATTRIBUTE");

/// Address.
Property Adr As Sb.xsd.lt.Max160TextType(XMLNAME = "Adr", XMLPROJECTION = "ATTRIBUTE");

/// Parent organization.
Property PrntBIC As Sb.xsd.lt.BICRUIDType(XMLNAME = "PrntBIC", XMLPROJECTION = "ATTRIBUTE");

/// Date of Participant Activation (for migrated Participant) or Date Information about Participant was included (for NonMigrated Participant).
Property DateIn As Sb.xsd.lt.DateType(XMLNAME = "DateIn", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Date of Participant’s Deletion.
Property DateOut As Sb.xsd.lt.DateType(XMLNAME = "DateOut", XMLPROJECTION = "ATTRIBUTE");

/// Participant type according to regulation.
Property PtType As Sb.xsd.lt.Max2TextType(XMLNAME = "PtType", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Available fund transfer services.
Property Srvcs As Sb.xsd.lt.Max1TextType(XMLNAME = "Srvcs", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Participant’s exchange type.
Property XchType As Sb.xsd.lt.Max1TextType(XMLNAME = "XchType", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Unique Author ID.
Property UID As Sb.xsd.lt.EDDrawerIDType(XMLNAME = "UID", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// NPS Participant flag.
Property NPSParticipant As Sb.xsd.lt.IndicatorType(XMLNAME = "NPSParticipant", XMLPROJECTION = "ATTRIBUTE") [ InitialExpression = "1", ReadOnly, Required ];

/// Scheduled date of migration to NPS.
Property ToNPSDate As Sb.xsd.lt.DateType(XMLNAME = "ToNPSDate", XMLPROJECTION = "ATTRIBUTE");

/// Participant Status.
Property ParticipantStatus As Sb.xsd.lt.ParticipantStatusType(XMLNAME = "ParticipantStatus", XMLPROJECTION = "ATTRIBUTE");

Storage Default
{
<Data name="ParticipantInfoTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>NameP</Value>
</Value>
<Value name="3">
<Value>EnglName</Value>
</Value>
<Value name="4">
<Value>RegN</Value>
</Value>
<Value name="5">
<Value>CntrCd</Value>
</Value>
<Value name="6">
<Value>Rgn</Value>
</Value>
<Value name="7">
<Value>Ind</Value>
</Value>
<Value name="8">
<Value>Tnp</Value>
</Value>
<Value name="9">
<Value>Nnp</Value>
</Value>
<Value name="10">
<Value>Adr</Value>
</Value>
<Value name="11">
<Value>PrntBIC</Value>
</Value>
<Value name="12">
<Value>DateIn</Value>
</Value>
<Value name="13">
<Value>DateOut</Value>
</Value>
<Value name="14">
<Value>PtType</Value>
</Value>
<Value name="15">
<Value>Srvcs</Value>
</Value>
<Value name="16">
<Value>XchType</Value>
</Value>
<Value name="17">
<Value>UID</Value>
</Value>
<Value name="18">
<Value>NPSParticipant</Value>
</Value>
<Value name="19">
<Value>ToNPSDate</Value>
</Value>
<Value name="20">
<Value>ParticipantStatus</Value>
</Value>
</Data>
<DataLocation>^Sb.xsd.ed.ParticipantInfoTypeD</DataLocation>
<DefaultData>ParticipantInfoTypeDefaultData</DefaultData>
<IdLocation>^Sb.xsd.ed.ParticipantInfoTypeD</IdLocation>
<IndexLocation>^Sb.xsd.ed.ParticipantInfoTypeI</IndexLocation>
<StreamLocation>^Sb.xsd.ed.ParticipantInfoTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

