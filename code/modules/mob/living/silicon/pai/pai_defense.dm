
/mob/living/silicon/pai/blob_act(obj/structure/blob/B)
	return FALSE

/mob/living/silicon/pai/emp_act(severity)
	. = ..()
	if(. & EMP_PROTECT_SELF)
		return
	take_holo_damage(50 / severity)
	Stun(400 / severity)
	if(holoform)
		fold_in(force = TRUE)
	//Need more effects that aren't instadeath or permanent law corruption.
	//Ask and you shall receive
	switch(rand(1, 3))
		if(1)
			stuttering = 1
			to_chat(src, span_danger("Warning: Feedback loop detected in speech module."))
		if(2)
			slurring = 1
			to_chat(src, span_danger("Warning: Audio synthesizer CPU stuck."))
		if(3)
			derpspeech = 1
			to_chat(src, span_danger("Warning: Vocabulary databank corrupted."))
	if(prob(40))
		mind.language_holder.selected_language = get_random_spoken_language()


/mob/living/silicon/pai/ex_act(severity, target)
	take_holo_damage(severity * 50)
	switch(severity)
		if(1)	//RIP
			qdel(card)
			qdel(src)
		if(2)
			fold_in(force = 1)
			Paralyze(400)
		if(3)
			fold_in(force = 1)
			Paralyze(200)

/mob/living/silicon/pai/attack_hand(mob/living/carbon/human/user)
	switch(user.a_intent)
		if("help")
			visible_message(span_notice("[user] gently pats [src] on the head, eliciting an off-putting buzzing from its holographic field."))
		if("disarm")
			visible_message(span_notice("[user] boops [src] on the head!"))
		if("harm")
			user.do_attack_animation(src)
			if (user.name == master)
				visible_message(span_notice("Responding to its master's touch, [src] disengages its holochassis emitter, rapidly losing coherence."))
				if(do_after(user, 1 SECONDS, src))
					fold_in()
					if(user.put_in_hands(card))
						user.visible_message(span_notice("[user] promptly scoops up [user.ru_ego()] pAI's card."))
			else
				visible_message(span_danger("[user] stomps on [src]!."))
				take_holo_damage(2)

/mob/living/silicon/pai/bullet_act(obj/projectile/Proj)
	if(Proj.stun)
		fold_in(force = TRUE)
		src.visible_message(span_warning("The electrically-charged projectile disrupts [src] holomatrix, forcing [src] to fold in!"))
	. = ..(Proj)

/mob/living/silicon/pai/stripPanelUnequip(obj/item/what, mob/who, where) //prevents stripping
	to_chat(src, span_warning("Your holochassis stutters and warps intensely as you attempt to interact with the object, forcing you to cease lest the field fail."))

/mob/living/silicon/pai/stripPanelEquip(obj/item/what, mob/who, where) //prevents stripping
	to_chat(src, span_warning("Your holochassis stutters and warps intensely as you attempt to interact with the object, forcing you to cease lest the field fail."))

/mob/living/silicon/pai/IgniteMob()
	fire_stacks = 0
	. = ..()

/mob/living/silicon/pai/proc/take_holo_damage(amount)
	emitterhealth = clamp((emitterhealth - amount), -50, emittermaxhealth)
	if(emitterhealth < 0)
		fold_in(force = TRUE)
	to_chat(src, span_userdanger("The impact degrades your holochassis!"))
	return amount

/mob/living/silicon/pai/adjustBruteLoss(amount, updating_health = TRUE, forced = FALSE)
	return take_holo_damage(amount)

/mob/living/silicon/pai/adjustFireLoss(amount, updating_health = TRUE, forced = FALSE)
	return take_holo_damage(amount)

/mob/living/silicon/pai/adjustStaminaLoss(amount, updating_health, forced = FALSE)
	if(forced)
		take_holo_damage(amount)
	else
		take_holo_damage(amount * 0.25)

/mob/living/silicon/pai/getBruteLoss()
	return emittermaxhealth - emitterhealth

/mob/living/silicon/pai/getFireLoss()
	return emittermaxhealth - emitterhealth
