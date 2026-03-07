%dw 2.0
output application/json
---
{
  limit: min([100, max([1, (attributes.queryParams.limit default vars.defaultLimit default 50) as Number])]),
  offset: max([0, (attributes.queryParams.offset default 0) as Number])
}
