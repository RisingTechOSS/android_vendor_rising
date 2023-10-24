#
# Copyright (C) 2023 risingOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# -----------------------------------------------------------------
# risingOS fastboot update package

RISING_TARGET_UPDATEPACKAGE := $(PRODUCT_OUT)/risingOS-$(RISING_BUILD_VERSION)-fastboot.zip

.PHONY: updatepackage fastbootpackage
updatepackage: $(INTERNAL_UPDATE_PACKAGE_TARGET)
	$(hide) ln -f $(INTERNAL_UPDATE_PACKAGE_TARGET) $(RISING_TARGET_UPDATEPACKAGE)
	@echo ""
	@echo "                                                                " >&2
	@echo "                                                                " >&2
	@echo "                                                                " >&2
	@echo "                                                                " >&2
	@echo "  ______ _____ _______ _____ __   _  ______       _____  _______" >&2
	@echo " |_____/   |   |______   |   | \  | |  ____      |     | |______" >&2
	@echo " |    \_ __|__ ______| __|__ |  \_| |_____|      |_____| ______|" >&2
	@echo "                                                                " >&2
	@echo "                                                                " >&2
	@echo "                   rising from the bottom                       " >&2
	@echo "                                                                " >&2
	@echo "                                                                " >&2
	@echo "                                                                " >&2
	@echo "                                                                " >&2
	@echo ""
	@echo "****************************************************************" >&2
	@echo " Size            : $(shell du -hs $(RISING_TARGET_UPDATEPACKAGE) | awk '{print $$1}')"
	@echo " Size(in bytes)  : $(shell wc -c $(RISING_TARGET_UPDATEPACKAGE) | awk '{print $$1}')"
	@echo " Package Complete: $(RISING_TARGET_UPDATEPACKAGE)               " >&2
	@echo "****************************************************************" >&2
