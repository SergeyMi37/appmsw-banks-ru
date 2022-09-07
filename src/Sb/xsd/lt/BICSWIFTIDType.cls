/// Identifier. SWIFT BIC. String up to 11 characters in format 4!a2!a2!c[3!c].
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_leaftypes_v2019.2.0.xsd
Class Sb.xsd.lt.BICSWIFTIDType Extends Sb.xsd.bt.IdentifierCategory [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter MAXLEN = 11;

Parameter MINLEN = 8;

Parameter NAMESPACE = "urn:cbr-ru:ed:leaftypes:v2.0";

Parameter XMLPATTERN = "[A-Z]{6}[0-9A-Z]{2}([0-9A-Z]{3})?";

}

