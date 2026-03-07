%dw 2.0
output application/json
---
{
  reservations: payload map (r) -> {
    reservationId: r.reservation_id,
    slotId: r.slot_id,
    userId: r.user_id,
    vehicleNumber: r.vehicle_number,
    vehicleType: r.vehicle_type,
    startTime: r.start_time,
    endTime: r.end_time,
    actualEntryTime: r.actual_entry_time,
    actualExitTime: r.actual_exit_time,
    status: r.status,
    amountInr: r.amount_inr,
    paymentStatus: r.payment_status,
    createdAt: r.created_at,
    updatedAt: r.updated_at
  },
  total: sizeOf(payload)
}
