/datum/gas/oxygen
	id = GAS_O2
	specific_heat = 20
	name = "Кислород"
	oxidation_temperature = T0C - 100 // it checks max of this and fire temperature, so rarely will things spontaneously combust

/datum/gas/nitrogen
	id = GAS_N2
	specific_heat = 20
	breath_alert_info = list(
		not_enough_alert = list(
			alert_category = "not_enough_nitro",
			alert_type = /atom/movable/screen/alert/not_enough_nitro
		),
		too_much_alert = list(
			alert_category = "too_much_nitro",
			alert_type = /atom/movable/screen/alert/too_much_nitro
		)
	)
	name = "Азот"

/datum/gas/carbon_dioxide //what the fuck is this?
	id = GAS_CO2
	specific_heat = 30
	name = "Углекислый газ"
	breath_results = GAS_O2
	breath_alert_info = list(
		not_enough_alert = list(
			alert_category = "not_enough_co2",
			alert_type = /atom/movable/screen/alert/not_enough_co2
		),
		too_much_alert = list(
			alert_category = "too_much_co2",
			alert_type = /atom/movable/screen/alert/too_much_co2
		)
	)
	fusion_power = 3

/datum/gas/plasma
	id = GAS_PLASMA
	specific_heat = 200
	name = "Плазма"
	gas_overlay = "plasma"
	moles_visible = MOLES_GAS_VISIBLE
	flags = GAS_FLAG_DANGEROUS
	// no fire info cause it has its own bespoke reaction for trit generation reasons

/datum/gas/water_vapor
	id = GAS_H2O
	specific_heat = 40
	name = "Пар"
	gas_overlay = "water_vapor"
	moles_visible = MOLES_GAS_VISIBLE
	fusion_power = 8
	breath_reagent = /datum/reagent/water

/datum/gas/hypernoblium
	id = GAS_HYPERNOB
	specific_heat = 2000
	name = "Гипер-нобилий"
	gas_overlay = "freon"
	moles_visible = MOLES_GAS_VISIBLE

/datum/gas/nitrous_oxide
	id = GAS_NITROUS
	specific_heat = 40
	name = "Закись азота"
	gas_overlay = "nitrous_oxide"
	moles_visible = MOLES_GAS_VISIBLE * 2
	flags = GAS_FLAG_DANGEROUS
	fire_products = list(GAS_N2 = 1)
	oxidation_rate = 0.5
	oxidation_temperature = FIRE_MINIMUM_TEMPERATURE_TO_EXIST + 100

/datum/gas/nitryl
	id = GAS_NITRYL
	specific_heat = 20
	name = "Нитрил"
	gas_overlay = "nitryl"
	moles_visible = MOLES_GAS_VISIBLE
	flags = GAS_FLAG_DANGEROUS
	fusion_power = 15
	fire_products = list(GAS_N2 = 0.5)
	oxidation_temperature = FIRE_MINIMUM_TEMPERATURE_TO_EXIST - 50

/datum/gas/tritium
	id = GAS_TRITIUM
	specific_heat = 10
	name = "Тритий"
	gas_overlay = "tritium"
	moles_visible = MOLES_GAS_VISIBLE
	flags = GAS_FLAG_DANGEROUS
	fusion_power = 1
	/*
	these are for when we add hydrogen, trit gets to keep its hardcoded fire for legacy reasons
	fire_provides = list(GAS_H2O = 2)
	fire_burn_rate = 2
	fire_energy_released = FIRE_HYDROGEN_ENERGY_RELEASED
	fire_temperature = FIRE_MINIMUM_TEMPERATURE_TO_EXIST - 50
	*/

/datum/gas/hydrogen
	id = GAS_HYDROGEN
	specific_heat = 15
	name = "Водород"
	flags = GAS_FLAG_DANGEROUS
	fusion_power = 2

/datum/gas/bz
	id = GAS_BZ
	specific_heat = 20
	name = "БЗ"
	flags = GAS_FLAG_DANGEROUS
	fusion_power = 8

/datum/gas/stimulum
	id = GAS_STIMULUM
	specific_heat = 5
	name = "Стимулум"
	fusion_power = 7

/datum/gas/pluoxium
	id = GAS_PLUOXIUM
	specific_heat = 80
	name = "Плюоксий"
	fusion_power = 10
	oxidation_temperature = FIRE_MINIMUM_TEMPERATURE_TO_EXIST * 1000 // it is VERY stable
	oxidation_rate = 8

/datum/gas/miasma
	id = GAS_MIASMA
	specific_heat = 20
	fusion_power = 50
	name = "Миазма"
	gas_overlay = "miasma"
	moles_visible = MOLES_GAS_VISIBLE * 60

/datum/gas/freon
	id = GAS_FREON
	specific_heat = 600
	name = "Фреон"
	gas_overlay = "freon"
	moles_visible = MOLES_GAS_VISIBLE *30
	fusion_power = -5

/datum/gas/healium
	id = GAS_HEALIUM
	specific_heat = 10
	fusion_power = 20
	name = "Хилиум"
	flags = GAS_FLAG_DANGEROUS
	gas_overlay = "healium"
	moles_visible = MOLES_GAS_VISIBLE

/datum/gas/proto_nitrate
	id = GAS_PROTO_NITRATE
	specific_heat = 30
	name = "Протонитрат"
	flags = GAS_FLAG_DANGEROUS
	gas_overlay = "proto_nitrate"
	moles_visible = MOLES_GAS_VISIBLE

/datum/gas/zauker
	id = GAS_ZAUKER
	specific_heat = 350
	name = "Заукер"
	flags = GAS_FLAG_DANGEROUS
	gas_overlay = "zauker"
	moles_visible = MOLES_GAS_VISIBLE

/datum/gas/halon
	id = GAS_HALON
	specific_heat = 175
	name = "Галон"
	flags = GAS_FLAG_DANGEROUS
	gas_overlay = "halon"
	moles_visible = MOLES_GAS_VISIBLE

/datum/gas/helium
	id = GAS_HELIUM
	specific_heat = 15
	name = "Гелий"
	fusion_power = 7

/datum/gas/antinoblium
	id = GAS_ANTINOBLIUM
	specific_heat = 1
	name = "Антиноблий"
	flags = GAS_FLAG_DANGEROUS
	gas_overlay = "antinoblium"
	moles_visible = MOLES_GAS_VISIBLE
	fusion_power = 20
