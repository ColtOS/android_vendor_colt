# Product version should match Android version
PRODUCT_VERSION_MAJOR = 7
PRODUCT_VERSION_MINOR = 1.2

# Increase COLT Version with each major release.
COS_VERSION := 1.0

LINEAGE_VERSION := ColtOS_Nougat-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(shell date -u +%Y%m%d)-$(CM_BUILD)-v$(COS_VERSION)
LINEAGE_DISPLAY_VERSION := ColtOS_Nougat-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(shell date -u +%Y%m%d)-v$(COS_VERSION)

PRODUCT_PROPERTY_OVERRIDES += \
  ro.colt.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR) \
  ro.modversion=$(LINEAGE_VERSION) \
  ro.colt.display.version=$(LINEAGE_VERSION) \
  ro.substratum.verified=true \
  ro.opa.eligible_device=true
