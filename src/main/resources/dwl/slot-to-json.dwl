%dw 2.0
output application/json
---
{
  slotId: payload[0].slot_id,
  lotId: payload[0].lot_id,
  slotNumber: payload[0].slot_number,
  floorLevel: payload[0].floor_level,
  slotType: payload[0].slot_type,
  sensorId: payload[0].sensor_id,
  status: payload[0].status,
  lastStatusChange: payload[0].last_status_change,
  createdAt: payload[0].created_at,
  updatedAt: payload[0].updated_at
}
