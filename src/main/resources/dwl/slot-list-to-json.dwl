%dw 2.0
output application/json
---
{
  slots: payload map (s) -> {
    slotId: s.slot_id,
    lotId: s.lot_id,
    slotNumber: s.slot_number,
    floorLevel: s.floor_level,
    slotType: s.slot_type,
    sensorId: s.sensor_id,
    status: s.status,
    lastStatusChange: s.last_status_change,
    createdAt: s.created_at,
    updatedAt: s.updated_at
  },
  total: sizeOf(payload)
}
