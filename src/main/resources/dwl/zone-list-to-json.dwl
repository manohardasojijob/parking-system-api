%dw 2.0
output application/json
---
{
  zones: payload map (z) -> {
    zoneId: z.zone_id,
    zoneName: z.zone_name,
    zoneCode: z.zone_code,
    city: z.city,
    state: z.state,
    latitude: z.latitude,
    longitude: z.longitude,
    createdAt: z.created_at,
    updatedAt: z.updated_at
  },
  total: sizeOf(payload)
}
