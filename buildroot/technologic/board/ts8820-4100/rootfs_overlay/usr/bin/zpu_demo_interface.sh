#!/bin/sh

# While it should not happen, we want to restart the main Linux interface to
# the demo and the LCD if it ever has any issues and stops. This should not
# cause operational issues as the FIFO is initialized upon connection, and the
# main ZPU app will not attempt to use the FIFO unless Linux requests data first.

(until /usr/bin/zpu_offload_demo_lcd_interface; do sleep 1; done) &
