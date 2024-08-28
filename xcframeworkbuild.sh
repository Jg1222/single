#!/bin/bash
#
# This script generates 'WebP.xcframework', 'WebPDecoder.xcframework',
# 'WebPDemux.xcframework' and 'WebPMux.xcframework'.
# An iOS, Mac or Mac Catalyst app can decode WebP images by including
# 'WebPDecoder.xcframework' and both encode and decode WebP images by including
# 'WebP.xcframework'.
#
# $IOS]}" ]] || [[ ${SDK[$IOS]%%.*} -lt 8 ]]; then
  echo "iOS SDK version 8.0 or higher is required!"
  exit 1
fi
:

