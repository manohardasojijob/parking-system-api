%dw 2.0
output application/json
---
{
  lotId: payload[0].lot_id,
  zoneId: payload[0].zone_id,
  lotName: payload[0].lot_name,
  lotCode: payload[0].lot_code,
  address: payload[0].address,
  latitude: payload[0].latitude,
  longitude: payload[0].longitude,
  totalSlots: payload[0].total_slots,
  hourlyRateInr: payload[0].hourly_rate_inr,
  dailyMaxInr: payload[0].daily_max_inr,
  operatingHours: payload[0].operating_hours,
  lotType: payload[0].lot_type,
  isActive: payload[0].is_active,
  createdAt: payload[0].created_at,
  updatedAt: payload[0].updated_at
}
