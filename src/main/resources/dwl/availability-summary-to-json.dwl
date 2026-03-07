%dw 2.0
output application/json
---
{
  lotId: attributes.uriParams.lotId,
  available: (payload filter ($.status == "AVAILABLE"))[0].cnt default 0,
  occupied: (payload filter ($.status == "OCCUPIED"))[0].cnt default 0,
  reserved: (payload filter ($.status == "RESERVED"))[0].cnt default 0,
  maintenance: (payload filter ($.status == "MAINTENANCE"))[0].cnt default 0,
  offline: (payload filter ($.status == "OFFLINE"))[0].cnt default 0
}
