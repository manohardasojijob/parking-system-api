%dw 2.0
output application/json skipNullOn="everywhere"
---
{
	"apiName": app.name,
	"correlationId": correlationId,
	"environment": p('mule.env') default "",
	"flowName": flow.name,
	"flowDescription": vars.flowDescription default "",
	"sourceApp": vars.sourceApp default "",
	"targetApps": vars.targetApps default "",
	"message": "Before request",
	"messageValues": {
		"orderId": vars.orderId default "", // replace as needed
		"supplierName": vars.supplierName default "", // replace as needed
	}
// ,"payload": payload // do not use unless specifically recommended in the technical design document
}
