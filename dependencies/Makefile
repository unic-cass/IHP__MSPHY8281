PMIC_GDS_FILE := PMIC/layout/klayout/Full_Layout.gds
PMIC_NETLIST_FILE := PMIC/verification/lvs/Full_Layout.spice
OTA_DESIGN_NAME := digital_pulse_ina_temp_TOP
OTA_GDS_FILE := OTA/$(OTA_DESIGN_NAME).gds
OTA_NETLIST_FILE := OTA/$(OTA_DESIGN_NAME).spice
pmic_drc:
	python3 $(PDK_ROOT)/$(PDK)/libs.tech/klayout/tech/drc/run_drc.py \
		--precheck_drc --mp=32 --no_offgrid --density_thr=32 \
		--no_density --disable_extra_rules --no_recommended --path=$(PMIC_GDS_FILE)
pmic_drc_full:
	python3 $(PDK_ROOT)/$(PDK)/libs.tech/klayout/tech/drc/run_drc.py \
		--mp=32 --density_thr=32 \
		--no_density --path=$(PMIC_GDS_FILE)
pmic_lvs:
	python3 $(PDK_ROOT)/$(PDK)/libs.tech/klayout/tech/lvs/run_lvs.py --layout=$(PMIC_GDS_FILE) \
		--netlist=$(PMIC_NETLIST_FILE) \
		--topcell="Full_Layout" --run_mode="flat" \
		--top_lvl_pins --purge --combine_device \
		--no_simplify --verbose
ota_drc:
	python3 $(PDK_ROOT)/$(PDK)/libs.tech/klayout/tech/drc/run_drc.py \
		--precheck_drc --mp=32 --no_offgrid --density_thr=32 \
		--no_density --disable_extra_rules --no_recommended --path=$(OTA_GDS_FILE)
ota_drc_full:
	python3 $(PDK_ROOT)/$(PDK)/libs.tech/klayout/tech/drc/run_drc.py \
		--mp=32 --density_thr=32 \
		--no_density --path=$(OTA_GDS_FILE)
ota_lvs:
	python3 $(PDK_ROOT)/$(PDK)/libs.tech/klayout/tech/lvs/run_lvs.py --layout=$(OTA_GDS_FILE) \
		--topcell="$(OTA_DESIGN_NAME)" \
		--verbose --run_mode="flat" \
		--netlist=$(OTA_NETLIST_FILE)
.PHONY: clean
clean:
	-rm -rf drc_run_*
	-rm -rf lvs_run_*
