PMIC_GDS_FILE := PMIC/layout/klayout/Full_Layout.gds
OTA_GDS_FILE := OTA/digital_pulse_ina_temp_TOP.gds
OTA_NETLIST_FILE := OTA/digital_pulse_ina_temp_TOP.spice
pmic_drc:
	python3 $(PDK_ROOT)/$(PDK)/libs.tech/klayout/tech/drc/run_drc.py \
		--precheck_drc --mp=32 --no_offgrid --density_thr=32 \
		--no_density --disable_extra_rules --no_recommended --path=$(PMIC_GDS_FILE)
pmic_drc_full:
	python3 $(PDK_ROOT)/$(PDK)/libs.tech/klayout/tech/drc/run_drc.py \
		--mp=32 --density_thr=32 \
		--no_density --path=$(PMIC_GDS_FILE)
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
		--netlist=$(OTA_NETLIST_FILE)
