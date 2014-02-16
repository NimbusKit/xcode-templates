#!/bin/bash
#
# Copyright 2011-2014 NimbusKit
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

XCODE_BASE_TEMPLATE_DIR="$HOME/Library/Developer/Xcode/Templates"

# Installs the Xcode project templates. Overwrites any existing files.
copy_xcode_project_templates(){
  echo "Installing Xcode project templates"
  TEMPLATE_DIR="${XCODE_BASE_TEMPLATE_DIR}"
  mkdir -p "${TEMPLATE_DIR}"
  cp -r "Project Templates" "${TEMPLATE_DIR}"
}

# Installs the Xcode file templates. Overwrites any existing files.
copy_xcode_file_templates(){
  echo "Installing Xcode file templates"
  TEMPLATE_DIR="${XCODE_BASE_TEMPLATE_DIR}"
  mkdir -p "${TEMPLATE_DIR}"
  cp -r "File Templates" "${TEMPLATE_DIR}"
}

copy_xcode_project_templates
copy_xcode_file_templates
