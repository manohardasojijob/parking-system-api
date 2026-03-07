%dw 2.0
output application/json
---
{
  holdId: payload[0].hold_id,
  slotId: payload[0].slot_id,
  userId: payload[0].user_id,
  holdStart: payload[0].hold_start,
  holdExpiry: payload[0].hold_expiry,
  status: payload[0].status,
  createdAt: payload[0].created_at
}
