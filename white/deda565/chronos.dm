/obj/item/clothing/under/chronos
	name = "������� ������ ����� �����"
	desc = "� ���� ������� ���� ��� ������ �������"
	icon = 'white/kacherkin/icons/station/clothing/uniforms.dmi'
	worn_icon = 'white/kacherkin/icons/station/clothing/mob/uniforms_mob.dmi'
	icon_state = "torch"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS

/obj/item/clothing/head/beret/chronos
	name = "������� ����� ����� �����"
	desc = "But burning those villages, watching those naked peasants cry..."
	icon = 'white/kacherkin/icons/station/clothing/hats.dmi'
	worn_icon = 'white/kacherkin/icons/station/clothing/mob/hats_mob.dmi'
	icon_state = "torch_beret"

/obj/item/clothing/suit/cape/chronos
	name = "������� ���� ����� �����"
	desc = "����, �������� ������ �������, ������ �� ����� �����, � ��� �� ������� �� ��������"
	icon = 'white/kacherkin/icons/station/clothing/suits.dmi'
	worn_icon = 'white/kacherkin/icons/station/clothing/mob/suits_mob.dmi'
	icon_state = "torch_cape"
	allowed = list(/obj/item/gun, /obj/item/tank/internals)

/datum/gear/uniform/chronos
	display_name = "������� ������ ����� �����"
	path = /obj/item/clothing/under/chronos
	cost = 500

/datum/gear/suit/cape/chronos
	display_name = "������� ���� ����� �����"
	path = /obj/item/clothing/suit/cape/chronos
	cost = 500

/datum/gear/hat/chronos
	display_name = "������� ����� ����� �����"
	path = /obj/item/clothing/head/beret/chronos
	cost = 500
