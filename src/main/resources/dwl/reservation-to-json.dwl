%dw 2.0
output application/json
---
{
  reservationId: payload[0].reservation_id,
  slotId: payload[0].slot_id,
  userId: payload[0].user_id,
  vehicleNumber: payload[0].vehicle_number,
  vehicleType: payload[0].vehicle_type,
  startTime: payload[0].start_time,
  endTime: payload[0].end_time,
  actualEntryTime: payload[0].actual_entry_time,
  actualExitTime: payload[0].actual_exit_time,
  status: payload[0].status,
  amountInr: payload[0].amount_inr,
  paymentStatus: payload[0].payment_status,
  createdAt: payload[0].created_at,
  updatedAt: payload[0].updated_at
}
