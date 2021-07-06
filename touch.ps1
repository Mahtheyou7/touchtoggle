get-pnpdevice -status error | tee screen.log

if (grep -w "HID-compliant touch screen") {
  pnputil /enable-device "HID\VID_056A&PID_51F6&COL01\6&359FE077&1&0000"
}
else {
  pnputil /disable-device "HID\VID_056A&PID_51F6&COL01\6&359FE077&1&0000"
}
