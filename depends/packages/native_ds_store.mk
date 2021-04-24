package=native_ds_store
$(package)_version=1.1.0
$(package)_download_path=https://pypi.python.org/packages/source/d/ds_store
$(package)_file_name=ds_store-$($(package)_version).tar.gz
$(package)_sha256_hash=2381e7cec7dd4c0b7f59165377ab3f9ae039f4b12b6ed2f20f80bbf6e4b17e0f
$(package)_install_libdir=$(build_prefix)/lib/python/dist-packages
$(package)_dependencies=native_biplist

define $(package)_build_cmds
    python setup.py build
endef

define $(package)_stage_cmds
    mkdir -p $($(package)_install_libdir) && \
    python setup.py install --root=$($(package)_staging_dir) --prefix=$(build_prefix) --install-lib=$($(package)_install_libdir)
endef

