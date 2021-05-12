package=native_mac_alias
$(package)_version=1.1.0
$(package)_download_path=https://pypi.python.org/packages/source/m/mac_alias
$(package)_file_name=mac_alias-$($(package)_version).tar.gz
$(package)_sha256_hash=8b6a2666b58bd0e12d4ae71ee23551198d10a8475abe01d709b0bcb5d1f5c97f
$(package)_install_libdir=$(build_prefix)/lib/python/dist-packages
$(package)_patches=python3.patch

define $(package)_preprocess_cmds
  patch -p1 < $($(package)_patch_dir)/python3.patch
endef

define $(package)_build_cmds
    python setup.py build
endef

define $(package)_stage_cmds
    mkdir -p $($(package)_install_libdir) && \
    python setup.py install --root=$($(package)_staging_dir) --prefix=$(build_prefix) --install-lib=$($(package)_install_libdir)
endef
