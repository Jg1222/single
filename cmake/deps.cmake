#  Copyright (c) 2021 Google LLC.
#
#  Use of this source code is governed by a BSD-style license
#  that can be found in the LICENSE file in the root of the source
#  tree. An additional intellectual property rights grant can be found
#  in the file PATENTS.  All contributing project authors may
#  be found in the AUTHORS file in the root of the source tree.

#
    }
  "
  HAVE_BUILTIN_BSWAP64)

# Check for libraries.
if(WEBP_USE_THREAD)
  find_package(Threads)
  if(Threads_FOUND)
    # work around cmake bug on QNX (https://cmake.org/
    endif()
  endforeach()
  if(WEBP_DEP_IMG_INCLUDE_DIRS)
    list(REMOVE_DUPLICATES WEBP_DEP_IMG_INCLUDE_DIRS)
  endif()

  # GIF detection, gifdec isn't part of the imageio lib.
  include(CMakePushCheckState)
  set(WEBP_DEP_GIF_LIBRARIES)
  set(WEBP_DEP_GIF_INCLUDE_DIRS)
  find_package(GIF)
 
      }
      "
      GIF_COMPILES)
    cmake_pop_check_state()
    if(GIF_COMPILES)
      list(APPEND WEBP_DEP_GIF_LIBRARIES ${GIF_LIBRARIES})
      list(APPEND WEBP_DEP_GIF_INCLUDE_DIRS ${GIF_INCLUDE_DIR})
    else()
      unset(GIF_FOUND)
    endif()
  endif()
endif()

# Check for specific headers.
include(CheckIncludeFiles)
check_include_files(GLUT/glut.h HAVE_GLUT_GLUT_H)
check_include_files(GL/glut.h HAVE_GL_GLUT_H)
check_lendif()

# Check for SIMD extensions.
include(${CMAKE_CURRENT_LIST_DIR}/cpu.cmake)

# Define extra info.
set(PACKAGE ${PROJECT_NAME})
set(PACKAGE_NAME ${PROJECT_NAME})

