%dw 2.0
output application/json
---
{
  message: vars.errorMessage default "Error",
  (code: vars.errorCode) if (vars.errorCode != null and vars.errorCode != "")
}
