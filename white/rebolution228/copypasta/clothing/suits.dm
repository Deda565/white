// field medic vest

/obj/item/clothing/suit/armor/vest/fieldmedic
	name = "бронежилет полевого медика"
	desc = "Бронированный лабораторный халат полевого медика, обеспечивающий достойную защиту от большинства видов повреждений."
	icon = 'white/rebolution228/icons/clothing/suits.dmi'
	worn_icon = 'white/rebolution228/icons/clothing/mob/suits_mob.dmi'
	icon_state = "labcoatsec"
	blood_overlay_type = "coat"
	dog_fashion = /datum/dog_fashion/back
	allowed = list(/obj/item/ammo_box, /obj/item/ammo_casing, /obj/item/flashlight, /obj/item/gun/ballistic, /obj/item/gun/energy, /obj/item/kitchen/knife/combat, /obj/item/melee/baton, /obj/item/melee/classic_baton, /obj/item/reagent_containers/spray/pepper, /obj/item/restraints/handcuffs, /obj/item/tank/internals/emergency_oxygen, /obj/item/tank/internals/plasmaman, /obj/item/storage/belt/holster/detective, /obj/item/storage/belt/holster/nukie, /obj/item/tank/internals/emergency_oxygen, /obj/item/healthanalyzer, /obj/item/medbot_carrier, /obj/item/gun/syringe)
	armor = list(MELEE = 35, BULLET = 30, LASER = 30, ENERGY = 40, BOMB = 25, BIO = 50, RAD = 0, FIRE = 50, ACID = 50, WOUND = 20)
	disassembly_flag = FALSE

/obj/item/clothing/suit/armor/vest/fieldmedic/AltClick(mob/user)
	..()
	if(!user.canUseTopic(src, BE_CLOSE, NO_DEXTERITY, FALSE, !iscyborg(user)))
		return
	else
		suit_toggle(user)

/obj/item/clothing/suit/armor/vest/fieldmedic/ui_action_click()
	suit_toggle()

/obj/item/clothing/suit/armor/vest/fieldmedic/proc/suit_toggle()
	set src in usr

	if(!can_use(usr))
		return 0

	to_chat(usr, span_notice("Расстегиваю [src]."))
	if(src.suittoggled)
		src.icon_state = "[initial(icon_state)]"
		src.suittoggled = FALSE
	else if(!src.suittoggled)
		src.icon_state = "[initial(icon_state)]_t"
		src.suittoggled = TRUE
	usr.update_inv_wear_suit()
	for(var/X in actions)
		var/datum/action/A = X
		A.UpdateButtonIcon()

/obj/item/clothing/suit/armor/vest/fieldmedic/examine(mob/user)
	. = ..()
	. += "<hr>ПКМ по [src] чтобы расстегнуть халат."

// black&grey hoodies
// нагло спизжено с /tg/reen

/obj/item/clothing/suit/jacket/hoodie
	name = "черная кофта"
	desc = "Простая черная кофточка. Неплохо защитит от ветра."
	icon = 'white/rebolution228/icons/clothing/suits.dmi'
	worn_icon = 'white/rebolution228/icons/clothing/mob/suits_mob.dmi'
	icon_state = "blackhoodie"
	inhand_icon_state = "bluit"
	allowed = list(/obj/item/flashlight, /obj/item/tank/internals/emergency_oxygen, /obj/item/tank/internals/plasmaman, /obj/item/toy, /obj/item/storage/fancy/cigarettes, /obj/item/lighter, /obj/item/radio)
	body_parts_covered = CHEST|GROIN|ARMS
	cold_protection = CHEST|GROIN|ARMS
	min_cold_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT

/obj/item/clothing/suit/jacket/hoodie/grey
	name = "серая кофта"
	desc = "Простая серая кофточка. Неплохо защитит от ветра."
	icon_state = "greyhoodie"
	inhand_icon_state = "gy_suit"

/obj/item/clothing/suit/jacket/hoodie/AltClick(mob/user)
	..()
	if(!user.canUseTopic(src, BE_CLOSE, NO_DEXTERITY, FALSE, !iscyborg(user)))
		return
	else
		suit_toggle(user)

/obj/item/clothing/suit/jacket/hoodie/ui_action_click()
	suit_toggle()

/obj/item/clothing/suit/jacket/hoodie/proc/suit_toggle()
	set src in usr

	if(!can_use(usr))
		return 0

	to_chat(usr, span_notice("Расстегиваю [src]."))
	if(src.suittoggled)
		src.icon_state = "[initial(icon_state)]"
		src.suittoggled = FALSE
	else if(!src.suittoggled)
		src.icon_state = "[initial(icon_state)]_t"
		src.suittoggled = TRUE
	usr.update_inv_wear_suit()
	for(var/X in actions)
		var/datum/action/A = X
		A.UpdateButtonIcon()

/obj/item/clothing/suit/jacket/hoodie/examine(mob/user)
	. = ..()
	. += "<hr>ПКМ по [src] чтобы расстегнуть кофту."


// радужное пончо
// тоже с /tg/reen

/obj/item/clothing/suit/poncho/colorful
	name = "разноцветное пончо"
	desc = "Ваше классическое нерасистское пончо. Этот разноцветный."
	icon = 'white/rebolution228/icons/clothing/suits.dmi'
	worn_icon = 'white/rebolution228/icons/clothing/mob/suits_mob.dmi'
	icon_state = "poncho"
	inhand_icon_state = "clownpriest"

// sobr specialist suit

/obj/item/clothing/suit/armor/heavysobr
	name = "тяжелая броня СОБР"
	desc = "Броневой костюм темного цвета, оснащенный бронепластинами из сплава пластали и титана, защищающий от огня. Хорошо защищает конечности пользователя, однако замедляет скорость его передвижения. Предназачен для специальных единиц отрядов СОБРа."
	icon = 'white/rebolution228/icons/clothing/suits.dmi'
	worn_icon = 'white/rebolution228/icons/clothing/mob/suits_mob.dmi'
	icon_state = "heavy_sobr"
	inhand_icon_state = "swat_suit"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS|FEET|HANDS // на спрайте сзади торчит жопа, а у нас в коде нет такого, поэтому похуй
	clothing_flags = BLOCKS_SHOVE_KNOCKDOWN
	heat_protection = CHEST|GROIN|LEGS|ARMS
	max_heat_protection_temperature = FIRE_SUIT_MAX_TEMP_PROTECT
	strip_delay = 90
	equip_delay_other = 60
	armor = list(MELEE = 90, BULLET = 80, LASER = 50, ENERGY = 40, BOMB = 50, BIO = 20, RAD = 20, FIRE = 80, ACID = 80, WOUND = 20)
	slowdown = 0.8

//some sobr stuff
/obj/item/clothing/suit/armor/opvest/sobr
	name = "пуленепробиваемый бронежилет"
	desc = "Средство индивидуальной защиты, предназначенное для защиты пользователя от пулевых ранений и оружия ближнего боя. Несмотря на высокий класс защиты от огнестрельного оружия, данный тип бронежилета довольно плохо защищает от лазеров."
	armor = list(MELEE = 60, BULLET = 60, LASER = 35, ENERGY = 40, BOMB = 50, BIO = 20, RAD = 20, WOUND = 10)
	strip_delay = 80

/obj/item/clothing/head/hos/beret/sobr
	name = "берет спецназа"
	desc = "Прочный черный берет, показывающий его обладателя как самого настоящего профессионала в своем деле. В каком - пока что неизвестно."
