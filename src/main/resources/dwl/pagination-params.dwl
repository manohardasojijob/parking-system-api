%dw 2.0
output application/json
---
do {
  var limitVal = (attributes.queryParams.limit default vars.defaultLimit default 50) as Number
  var offsetVal = (attributes.queryParams.offset default 0) as Number
  {
    limit: min([100, max([1, limitVal])]),
    offset: max([0, offsetVal])
  }
}
