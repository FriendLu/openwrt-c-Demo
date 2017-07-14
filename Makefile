#
#Demo makefile
#

include $(TOPDIR)/rules.mk

PKG_NAME:=Demo
PKG_RELEASE:=1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/Demo
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=Test
endef

define Package/Demo/description
 nothing, just test.
endef

define Build/Prepare
	$(INSTALL_DIR) $(PKG_BUILD_DIR)
	$(CP) ./src/* $(PKG_BUILD_DIR)/
endef

define Build/Configure
endef

#define Build/Compile
#	$(TARGET_CC) $(TARGET_CFLAGS) \
		-o $(PKG_BUILD_DIR)/Demo $(PKG_BUILD_DIR)/Demo.c
#endef

define Package/Demo/install
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/Demo $(1)/usr/sbin/
endef

$(eval $(call BuildPackage,Demo))
