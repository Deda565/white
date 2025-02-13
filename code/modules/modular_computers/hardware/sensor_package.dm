//This item doesn't do much on its own, but is required by apps such as AtmoZphere.
/obj/item/computer_hardware/sensorpackage
	name = "Сенсорный пакет"
	desc = "Интегрированный пакет датчиков, позволяющий компьютеру снимать показания с окружающей среды. Требуется некоторыми программами."
	icon_state = "servo"
	w_class = WEIGHT_CLASS_TINY
	device_type = MC_SENSORS
	expansion_hw = TRUE

/obj/item/computer_hardware/radio_card
	name = "Сигнальный пакет"
	desc = "Интегрированный узел сигналера для компьютеров, отправляет модулируемый радиосигнал. Используется некоторыми программами."
	icon_state = "servo"
	w_class = WEIGHT_CLASS_TINY
	device_type = MC_SIGNALER
	expansion_hw = TRUE
	power_usage = 10
