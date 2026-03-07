%dw 2.0
output application/json
---
{
  zoneId: payload[0].zone_id,
  zoneName: payload[0].zone_name,
  zoneCode: payload[0].zone_code,
  city: payload[0].city,
  state: payload[0].state,
  latitude: payload[0].latitude,
  longitude: payload[0].longitude,
  createdAt: payload[0].created_at,
  updatedAt: payload[0].updated_at
}
