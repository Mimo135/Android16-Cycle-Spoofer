
ui_print "*******************************"
ui_print "   Installing Your Module      "
ui_print "       By: @MIMO           "
ui_print "*******************************"

ui_print "- Extracting module files..."
unzip -o "$ZIPFILE" 'system/*' -d "$MODPATH" >&2


set_permissions() {
 
  # set_perm_recursive $MODPATH/system/bin 0 0 0755 0755
  
  : 
}

set_permissions

ui_print "- Installation Complete!"
ui_print "- Please reboot your device."
