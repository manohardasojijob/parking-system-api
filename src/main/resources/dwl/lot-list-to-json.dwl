%dw 2.0
output application/json
---
{
  lots: payload map (l) -> {
    lotId: l.lot_id,
    zoneId: l.zone_id,
    lotName: l.lot_name,
    lotCode: l.lot_code,
    address: l.address,
    latitude: l.latitude,
    longitude: l.longitude,
    totalSlots: l.total_slots,
    hourlyRateInr: l.hourly_rate_inr,
    dailyMaxInr: l.daily_max_inr,
    operatingHours: l.operating_hours,
    lotType: l.lot_type,
    isActive: l.is_active,
    createdAt: l.created_at,
    updatedAt: l.updated_at
  },
  total: sizeOf(payload)
}
