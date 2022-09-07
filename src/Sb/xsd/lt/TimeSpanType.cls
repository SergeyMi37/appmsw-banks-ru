/// Time span. Format hh:mm:ss/hh:mm:ss.
/// Создано из: /backup/cbrf/XMLSchemas-2-1/ed/cbr_ed_leaftypes_v2019.2.0.xsd
Class Sb.xsd.lt.TimeSpanType Extends %String [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter MAXLEN;

Parameter NAMESPACE = "urn:cbr-ru:ed:leaftypes:v2.0";

Parameter XMLPATTERN = "(([0-1][0-9])|(2[0-3])):[0-5][0-9]:[0-5][0-9]/(([0-1][0-9])|(2[0-3])):[0-5][0-9]:[0-5][0-9]";

}

