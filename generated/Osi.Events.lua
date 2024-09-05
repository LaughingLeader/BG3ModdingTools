---@meta
---@diagnostics disable

if Osi == nil then Osi = {} end
	
---@param object GUIDSTRING
function Osi.Activated(object) end
	
---@param instanceID integer
---@param player GUIDSTRING
---@param oldIndex integer
---@param newIndex integer
function Osi.ActorSpeakerIndexChanged(instanceID, player, oldIndex, newIndex) end
	
---@param object GUIDSTRING
---@param inventoryHolder GUIDSTRING
---@param addType string
function Osi.AddedTo(object, inventoryHolder, addType) end
	
function Osi.AllLoadedFlagsInPresetReceivedEvent() end
	
---@param object GUIDSTRING
---@param eventName string
---@param wasFromLoad integer
function Osi.AnimationEvent(object, eventName, wasFromLoad) end
	
---@param character CHARACTER
---@param appearEvent string
function Osi.AppearTeleportFailed(character, appearEvent) end
	
---@param ratingOwner CHARACTER
---@param ratedEntity CHARACTER
---@param attemptedApprovalChange integer
---@param clampedApprovalChange integer
---@param newApproval integer
function Osi.ApprovalRatingChangeAttempt(ratingOwner, ratedEntity, attemptedApprovalChange, clampedApprovalChange, newApproval) end
	
---@param ratingOwner CHARACTER
---@param ratedEntity CHARACTER
---@param newApproval integer
function Osi.ApprovalRatingChanged(ratingOwner, ratedEntity, newApproval) end
	
---@param character CHARACTER
---@param item ITEM
function Osi.ArmedTrapUsed(character, item) end
	
---@param character CHARACTER
---@param eArmorSet ARMOURSET
function Osi.ArmorSetChanged(character, eArmorSet) end
	
---@param character CHARACTER
function Osi.AttachedToPartyGroup(character) end
	
---@param defender GUIDSTRING
---@param attackerOwner GUIDSTRING
---@param attacker2 GUIDSTRING
---@param damageType string
---@param damageAmount integer
---@param damageCause string
---@param storyActionID integer
function Osi.AttackedBy(defender, attackerOwner, attacker2, damageType, damageAmount, damageCause, storyActionID) end
	
---@param disarmableItem ITEM
---@param character CHARACTER
---@param itemUsedToDisarm ITEM
---@param bool integer
function Osi.AttemptedDisarm(disarmableItem, character, itemUsedToDisarm, bool) end
	
---@param dialog DIALOGRESOURCE
---@param instanceID integer
function Osi.AutomatedDialogEnded(dialog, instanceID) end
	
---@param dialog DIALOGRESOURCE
---@param instanceID integer
function Osi.AutomatedDialogForceStopping(dialog, instanceID) end
	
---@param dialog DIALOGRESOURCE
---@param instanceID integer
function Osi.AutomatedDialogRequestFailed(dialog, instanceID) end
	
---@param dialog DIALOGRESOURCE
---@param instanceID integer
function Osi.AutomatedDialogStarted(dialog, instanceID) end
	
---@param character CHARACTER
---@param goal GUIDSTRING
function Osi.BackgroundGoalFailed(character, goal) end
	
---@param character CHARACTER
---@param goal GUIDSTRING
function Osi.BackgroundGoalRewarded(character, goal) end
	
---@param target CHARACTER
---@param oldFaction FACTION
---@param newFaction FACTION
function Osi.BaseFactionChanged(target, oldFaction, newFaction) end
	
---@param spline SPLINE
---@param character CHARACTER
---@param event string
---@param index integer
---@param last integer
function Osi.CameraReachedNode(spline, character, event, index, last) end
	
---@param lootingTarget GUIDSTRING
---@param canBeLooted integer
function Osi.CanBeLootedCapabilityChanged(lootingTarget, canBeLooted) end
	
---@param caster GUIDSTRING
---@param spell string
---@param spellType string
---@param spellElement string
---@param storyActionID integer
function Osi.CastSpell(caster, spell, spellType, spellElement, storyActionID) end
	
---@param caster GUIDSTRING
---@param spell string
---@param spellType string
---@param spellElement string
---@param storyActionID integer
function Osi.CastSpellFailed(caster, spell, spellType, spellElement, storyActionID) end
	
---@param caster GUIDSTRING
---@param spell string
---@param spellType string
---@param spellElement string
---@param storyActionID integer
function Osi.CastedSpell(caster, spell, spellType, spellElement, storyActionID) end
	
---@param character CHARACTER
function Osi.ChangeAppearanceCancelled(character) end
	
---@param character CHARACTER
function Osi.ChangeAppearanceCompleted(character) end
	
function Osi.CharacterCreationFinished() end
	
function Osi.CharacterCreationStarted() end
	
---@param character CHARACTER
---@param item ITEM
---@param slotName EQUIPMENTSLOTNAME
function Osi.CharacterDisarmed(character, item, slotName) end
	
---@param character CHARACTER
function Osi.CharacterJoinedParty(character) end
	
---@param character CHARACTER
function Osi.CharacterLeftParty(character) end
	
---@param character CHARACTER
function Osi.CharacterLoadedInPreset(character) end
	
---@param player CHARACTER
---@param lootedCharacter CHARACTER
function Osi.CharacterLootedCharacter(player, lootedCharacter) end
	
---@param character CHARACTER
function Osi.CharacterMadePlayer(character) end
	
---@param character CHARACTER
function Osi.CharacterMoveFailedUseJump(character) end
	
---@param character CHARACTER
---@param target GUIDSTRING
---@param moveID string
---@param failureReason string
function Osi.CharacterMoveToAndTalkFailed(character, target, moveID, failureReason) end
	
---@param character CHARACTER
---@param target GUIDSTRING
---@param dialog DIALOGRESOURCE
---@param moveID string
function Osi.CharacterMoveToAndTalkRequestDialog(character, target, dialog, moveID) end
	
---@param character CHARACTER
---@param moveID integer
function Osi.CharacterMoveToCancelled(character, moveID) end
	
---@param character CHARACTER
---@param crimeRegion string
---@param crimeID integer
---@param priortiyName string
---@param primaryDialog DIALOGRESOURCE
---@param criminal1 CHARACTER
---@param criminal2 CHARACTER
---@param criminal3 CHARACTER
---@param criminal4 CHARACTER
---@param isPrimary integer
function Osi.CharacterOnCrimeSensibleActionNotification(character, crimeRegion, crimeID, priortiyName, primaryDialog, criminal1, criminal2, criminal3, criminal4, isPrimary) end
	
---@param player CHARACTER
---@param npc CHARACTER
function Osi.CharacterPickpocketFailed(player, npc) end
	
---@param player CHARACTER
---@param npc CHARACTER
---@param item ITEM
---@param itemTemplate GUIDSTRING
---@param amount integer
---@param goldValue integer
function Osi.CharacterPickpocketSuccess(player, npc, item, itemTemplate, amount, goldValue) end
	
---@param character CHARACTER
---@param oldUserID integer
---@param newUserID integer
function Osi.CharacterReservedUserIDChanged(character, oldUserID, newUserID) end
	
---@param character CHARACTER
---@param crimeRegion string
---@param unavailableForCrimeID integer
---@param busyCrimeID integer
function Osi.CharacterSelectedAsBestUnavailableFallbackLead(character, crimeRegion, unavailableForCrimeID, busyCrimeID) end
	
---@param character CHARACTER
function Osi.CharacterSelectedClimbOn(character) end
	
---@param character CHARACTER
---@param userID integer
function Osi.CharacterSelectedForUser(character, userID) end
	
---@param character CHARACTER
---@param item ITEM
---@param itemRootTemplate GUIDSTRING
---@param x number
---@param y number
---@param z number
---@param oldOwner CHARACTER
---@param srcContainer ITEM
---@param amount integer
---@param goldValue integer
function Osi.CharacterStoleItem(character, item, itemRootTemplate, x, y, z, oldOwner, srcContainer, amount, goldValue) end
	
---@param character CHARACTER
---@param tag TAG
---@param event string
function Osi.CharacterTagEvent(character, tag, event) end
	
---@param item ITEM
function Osi.Closed(item) end
	
---@param combatGuid GUIDSTRING
function Osi.CombatEnded(combatGuid) end
	
---@param combatGuid GUIDSTRING
function Osi.CombatPaused(combatGuid) end
	
---@param combatGuid GUIDSTRING
function Osi.CombatResumed(combatGuid) end
	
---@param combatGuid GUIDSTRING
---@param round integer
function Osi.CombatRoundStarted(combatGuid, round) end
	
---@param combatGuid GUIDSTRING
function Osi.CombatStarted(combatGuid) end
	
---@param item1 ITEM
---@param item2 ITEM
---@param item3 ITEM
---@param item4 ITEM
---@param item5 ITEM
---@param character CHARACTER
---@param newItem ITEM
function Osi.Combined(item1, item2, item3, item4, item5, character, newItem) end
	
---@param character CHARACTER
---@param userID integer
function Osi.CompanionSelectedForUser(character, userID) end
	
function Osi.CreditsEnded() end
	
---@param character CHARACTER
---@param crime string
function Osi.CrimeDisabled(character, crime) end
	
---@param character CHARACTER
---@param crime string
function Osi.CrimeEnabled(character, crime) end
	
---@param victim CHARACTER
---@param crimeType string
---@param crimeID integer
---@param evidence GUIDSTRING
---@param criminal1 CHARACTER
---@param criminal2 CHARACTER
---@param criminal3 CHARACTER
---@param criminal4 CHARACTER
function Osi.CrimeIsRegistered(victim, crimeType, crimeID, evidence, criminal1, criminal2, criminal3, criminal4) end
	
---@param crimeID integer
---@param actedOnImmediately integer
function Osi.CrimeProcessingStarted(crimeID, actedOnImmediately) end
	
---@param defender CHARACTER
---@param attackOwner CHARACTER
---@param attacker CHARACTER
---@param storyActionID integer
function Osi.CriticalHitBy(defender, attackOwner, attacker, storyActionID) end
	
---@param character CHARACTER
---@param bookName string
function Osi.CustomBookUIClosed(character, bookName) end
	
---@param dlc DLC
---@param userID integer
---@param installed integer
function Osi.DLCUpdated(dlc, userID, installed) end
	
---@param object GUIDSTRING
function Osi.Deactivated(object) end
	
---@param character CHARACTER
function Osi.DeathSaveStable(character) end
	
---@param entity GUIDSTRING
---@param newDeathType DEATHTYPE
function Osi.DeathTypeChanged(entity, newDeathType) end
	
---@param item ITEM
---@param destroyer CHARACTER
---@param destroyerOwner CHARACTER
---@param storyActionID integer
function Osi.DestroyedBy(item, destroyer, destroyerOwner, storyActionID) end
	
---@param item ITEM
---@param destroyer CHARACTER
---@param destroyerOwner CHARACTER
---@param storyActionID integer
function Osi.DestroyingBy(item, destroyer, destroyerOwner, storyActionID) end
	
---@param character CHARACTER
function Osi.DetachedFromPartyGroup(character) end
	
---@param dialog DIALOGRESOURCE
---@param instanceID integer
---@param actor GUIDSTRING
function Osi.DialogActorJoinFailed(dialog, instanceID, actor) end
	
---@param dialog DIALOGRESOURCE
---@param instanceID integer
---@param actor GUIDSTRING
---@param speakerIndex integer
function Osi.DialogActorJoined(dialog, instanceID, actor, speakerIndex) end
	
---@param dialog DIALOGRESOURCE
---@param instanceID integer
---@param actor GUIDSTRING
---@param instanceEnded integer
function Osi.DialogActorLeft(dialog, instanceID, actor, instanceEnded) end
	
---@param target CHARACTER
---@param player CHARACTER
function Osi.DialogAttackRequested(target, player) end
	
---@param dialog DIALOGRESOURCE
---@param instanceID integer
function Osi.DialogEnded(dialog, instanceID) end
	
---@param dialog DIALOGRESOURCE
---@param instanceID integer
function Osi.DialogForceStopping(dialog, instanceID) end
	
---@param dialog DIALOGRESOURCE
---@param instanceID integer
function Osi.DialogRequestFailed(dialog, instanceID) end
	
---@param character CHARACTER
---@param success integer
---@param dialog DIALOGRESOURCE
---@param isDetectThoughts integer
---@param criticality CRITICALITYTYPE
function Osi.DialogRollResult(character, success, dialog, isDetectThoughts, criticality) end
	
---@param target GUIDSTRING
---@param player GUIDSTRING
function Osi.DialogStartRequested(target, player) end
	
---@param dialog DIALOGRESOURCE
---@param instanceID integer
function Osi.DialogStarted(dialog, instanceID) end
	
---@param character CHARACTER
---@param isEnabled integer
function Osi.DialogueCapabilityChanged(character, isEnabled) end
	
---@param character CHARACTER
function Osi.Died(character) end
	
---@param difficultyLevel integer
function Osi.DifficultyChanged(difficultyLevel) end
	
---@param character CHARACTER
---@param moveID integer
function Osi.DisappearOutOfSightToCancelled(character, moveID) end
	
---@param donatedObject ITEM
---@param fromObject GUIDSTRING
---@param toObject GUIDSTRING
---@param donatedObjectValue integer
function Osi.Donated(donatedObject, fromObject, toObject, donatedObjectValue) end
	
---@param itemTemplate ITEMROOT
---@param item2 ITEM
---@param character CHARACTER
function Osi.DoorTemplateClosing(itemTemplate, item2, character) end
	
---@param character CHARACTER
---@param isDowned integer
function Osi.DownedChanged(character, isDowned) end
	
---@param object GUIDSTRING
---@param mover CHARACTER
function Osi.DroppedBy(object, mover) end
	
---@param object1 GUIDSTRING
---@param object2 GUIDSTRING
---@param event string
function Osi.DualEntityEvent(object1, object2, event) end
	
---@param character CHARACTER
function Osi.Dying(character) end
	
---@param character CHARACTER
function Osi.EndTheDayRequested(character) end
	
---@param opponentLeft GUIDSTRING
---@param opponentRight GUIDSTRING
function Osi.EnterCombatFailed(opponentLeft, opponentRight) end
	
---@param object GUIDSTRING
---@param cause GUIDSTRING
---@param chasm GUIDSTRING
---@param fallbackPosX number
---@param fallbackPosY number
---@param fallbackPosZ number
function Osi.EnteredChasm(object, cause, chasm, fallbackPosX, fallbackPosY, fallbackPosZ) end
	
---@param object GUIDSTRING
---@param combatGuid GUIDSTRING
function Osi.EnteredCombat(object, combatGuid) end
	
---@param object GUIDSTRING
function Osi.EnteredForceTurnBased(object) end
	
---@param object GUIDSTRING
---@param objectRootTemplate ROOT
---@param level string
function Osi.EnteredLevel(object, objectRootTemplate, level) end
	
---@param object GUIDSTRING
---@param zoneId GUIDSTRING
function Osi.EnteredSharedForceTurnBased(object, zoneId) end
	
---@param character CHARACTER
---@param trigger TRIGGER
function Osi.EnteredTrigger(character, trigger) end
	
---@param object GUIDSTRING
---@param event string
function Osi.EntityEvent(object, event) end
	
---@param item ITEM
---@param character CHARACTER
function Osi.EquipFailed(item, character) end
	
---@param item ITEM
---@param character CHARACTER
function Osi.Equipped(item, character) end
	
---@param oldLeader GUIDSTRING
---@param newLeader GUIDSTRING
---@param group string
function Osi.EscortGroupLeaderChanged(oldLeader, newLeader, group) end
	
---@param character CHARACTER
---@param originalItem ITEM
---@param level string
---@param newItem ITEM
function Osi.FailedToLoadItemInPreset(character, originalItem, level, newItem) end
	
---@param entity GUIDSTRING
---@param cause GUIDSTRING
function Osi.Falling(entity, cause) end
	
---@param entity GUIDSTRING
---@param cause GUIDSTRING
function Osi.Fell(entity, cause) end
	
---@param flag FLAG
---@param speaker GUIDSTRING
---@param dialogInstance integer
function Osi.FlagCleared(flag, speaker, dialogInstance) end
	
---@param object GUIDSTRING
---@param flag FLAG
function Osi.FlagLoadedInPresetEvent(object, flag) end
	
---@param flag FLAG
---@param speaker GUIDSTRING
---@param dialogInstance integer
function Osi.FlagSet(flag, speaker, dialogInstance) end
	
---@param participant GUIDSTRING
---@param combatGuid GUIDSTRING
function Osi.FleeFromCombat(participant, combatGuid) end
	
---@param character CHARACTER
function Osi.FollowerCantUseItem(character) end
	
---@param companion CHARACTER
function Osi.ForceDismissCompanion(companion) end
	
---@param source GUIDSTRING
---@param target GUIDSTRING
---@param storyActionID integer
function Osi.ForceMoveEnded(source, target, storyActionID) end
	
---@param source GUIDSTRING
---@param target GUIDSTRING
---@param storyActionID integer
function Osi.ForceMoveStarted(source, target, storyActionID) end
	
---@param target CHARACTER
function Osi.GainedControl(target) end
	
---@param item ITEM
---@param character CHARACTER
function Osi.GameBookInterfaceClosed(item, character) end
	
---@param gameMode string
---@param isEditorMode integer
---@param isStoryReload integer
function Osi.GameModeStarted(gameMode, isEditorMode, isStoryReload) end
	
---@param key string
---@param value string
function Osi.GameOption(key, value) end
	
---@param inventoryHolder GUIDSTRING
---@param changeAmount integer
function Osi.GoldChanged(inventoryHolder, changeAmount) end
	
---@param target CHARACTER
function Osi.GotUp(target) end
	
---@param character CHARACTER
---@param trader CHARACTER
---@param characterValue integer
---@param traderValue integer
function Osi.HappyWithDeal(character, trader, characterValue, traderValue) end
	
---@param player CHARACTER
function Osi.HenchmanAborted(player) end
	
---@param player CHARACTER
---@param hireling CHARACTER
function Osi.HenchmanSelected(player, hireling) end
	
---@param proxy GUIDSTRING
---@param target GUIDSTRING
---@param attackerOwner GUIDSTRING
---@param attacker2 GUIDSTRING
---@param storyActionID integer
function Osi.HitProxy(proxy, target, attackerOwner, attacker2, storyActionID) end
	
---@param entity GUIDSTRING
---@param percentage number
function Osi.HitpointsChanged(entity, percentage) end
	
---@param instanceID integer
---@param oldDialog DIALOGRESOURCE
---@param newDialog DIALOGRESOURCE
---@param oldDialogStopping integer
function Osi.InstanceDialogChanged(instanceID, oldDialog, newDialog, oldDialogStopping) end
	
---@param character CHARACTER
---@param isEnabled integer
function Osi.InteractionCapabilityChanged(character, isEnabled) end
	
---@param character CHARACTER
---@param item ITEM
function Osi.InteractionFallback(character, item) end
	
---@param item ITEM
---@param isBoundToInventory integer
function Osi.InventoryBoundChanged(item, isBoundToInventory) end
	
---@param character CHARACTER
---@param sharingEnabled integer
function Osi.InventorySharingChanged(character, sharingEnabled) end
	
---@param item ITEM
---@param trigger TRIGGER
---@param mover GUIDSTRING
function Osi.ItemEnteredTrigger(item, trigger, mover) end
	
---@param item ITEM
---@param trigger TRIGGER
---@param mover GUIDSTRING
function Osi.ItemLeftTrigger(item, trigger, mover) end
	
---@param target ITEM
---@param oldX number
---@param oldY number
---@param oldZ number
---@param newX number
---@param newY number
---@param newZ number
function Osi.ItemTeleported(target, oldX, oldY, oldZ, newX, newY, newZ) end
	
---@param defender CHARACTER
---@param attackOwner GUIDSTRING
---@param attacker GUIDSTRING
---@param storyActionID integer
function Osi.KilledBy(defender, attackOwner, attacker, storyActionID) end
	
---@param character CHARACTER
---@param spell string
function Osi.LearnedSpell(character, spell) end
	
---@param object GUIDSTRING
---@param combatGuid GUIDSTRING
function Osi.LeftCombat(object, combatGuid) end
	
---@param object GUIDSTRING
function Osi.LeftForceTurnBased(object) end
	
---@param object GUIDSTRING
---@param level string
function Osi.LeftLevel(object, level) end
	
---@param character CHARACTER
---@param trigger TRIGGER
function Osi.LeftTrigger(character, trigger) end
	
---@param levelName string
---@param isEditorMode integer
function Osi.LevelGameplayReady(levelName, isEditorMode) end
	
---@param levelName string
---@param isEditorMode integer
function Osi.LevelGameplayStarted(levelName, isEditorMode) end
	
---@param newLevel string
function Osi.LevelLoaded(newLevel) end
	
---@param levelTemplate LEVELTEMPLATE
function Osi.LevelTemplateLoaded(levelTemplate) end
	
---@param level string
function Osi.LevelUnloading(level) end
	
---@param character CHARACTER
function Osi.LeveledUp(character) end
	
function Osi.LongRestCancelled() end
	
function Osi.LongRestFinished() end
	
function Osi.LongRestStartFailed() end
	
function Osi.LongRestStarted() end
	
---@param character CHARACTER
---@param targetCharacter CHARACTER
function Osi.LostSightOf(character, targetCharacter) end
	
---@param character CHARACTER
---@param event string
function Osi.MainPerformerStarted(character, event) end
	
---@param character CHARACTER
---@param message string
---@param resultChoice string
function Osi.MessageBoxChoiceClosed(character, message, resultChoice) end
	
---@param character CHARACTER
---@param message string
function Osi.MessageBoxClosed(character, message) end
	
---@param character CHARACTER
---@param message string
---@param result integer
function Osi.MessageBoxYesNoClosed(character, message, result) end
	
---@param defender CHARACTER
---@param attackOwner CHARACTER
---@param attacker CHARACTER
---@param storyActionID integer
function Osi.MissedBy(defender, attackOwner, attacker, storyActionID) end
	
---@param name string
---@param major integer
---@param minor integer
---@param revision integer
---@param build integer
function Osi.ModuleLoadedinSavegame(name, major, minor, revision, build) end
	
---@param character CHARACTER
---@param isEnabled integer
function Osi.MoveCapabilityChanged(character, isEnabled) end
	
---@param item ITEM
function Osi.Moved(item) end
	
---@param movedEntity GUIDSTRING
---@param character CHARACTER
function Osi.MovedBy(movedEntity, character) end
	
---@param movedObject GUIDSTRING
---@param fromObject GUIDSTRING
---@param toObject GUIDSTRING
---@param isTrade integer
function Osi.MovedFromTo(movedObject, fromObject, toObject, isTrade) end
	
---@param movieName string
function Osi.MovieFinished(movieName) end
	
---@param movieName string
function Osi.MoviePlaylistFinished(movieName) end
	
---@param dialog DIALOGRESOURCE
---@param instanceID integer
function Osi.NestedDialogPlayed(dialog, instanceID) end
	
---@param character CHARACTER
---@param oldLevel integer
---@param newLevel integer
function Osi.ObjectAvailableLevelChanged(character, oldLevel, newLevel) end
	
---@param object GUIDSTRING
---@param timer string
function Osi.ObjectTimerFinished(object, timer) end
	
---@param object GUIDSTRING
---@param toTemplate GUIDSTRING
function Osi.ObjectTransformed(object, toTemplate) end
	
---@param object GUIDSTRING
---@param obscuredState string
function Osi.ObscuredStateChanged(object, obscuredState) end
	
---@param crimeID integer
---@param investigator CHARACTER
---@param wasLead integer
---@param criminal1 CHARACTER
---@param criminal2 CHARACTER
---@param criminal3 CHARACTER
---@param criminal4 CHARACTER
function Osi.OnCrimeConfrontationDone(crimeID, investigator, wasLead, criminal1, criminal2, criminal3, criminal4) end
	
---@param crimeID integer
---@param investigator CHARACTER
---@param fromState string
---@param toState string
function Osi.OnCrimeInvestigatorSwitchedState(crimeID, investigator, fromState, toState) end
	
---@param oldCrimeID integer
---@param newCrimeID integer
function Osi.OnCrimeMergedWith(oldCrimeID, newCrimeID) end
	
---@param crimeID integer
---@param victim CHARACTER
---@param criminal1 CHARACTER
---@param criminal2 CHARACTER
---@param criminal3 CHARACTER
---@param criminal4 CHARACTER
function Osi.OnCrimeRemoved(crimeID, victim, criminal1, criminal2, criminal3, criminal4) end
	
---@param crimeID integer
---@param criminal CHARACTER
function Osi.OnCrimeResetInterrogationForCriminal(crimeID, criminal) end
	
---@param crimeID integer
---@param victim CHARACTER
---@param criminal1 CHARACTER
---@param criminal2 CHARACTER
---@param criminal3 CHARACTER
---@param criminal4 CHARACTER
function Osi.OnCrimeResolved(crimeID, victim, criminal1, criminal2, criminal3, criminal4) end
	
---@param crimeID integer
---@param criminal CHARACTER
function Osi.OnCriminalMergedWithCrime(crimeID, criminal) end
	
---@param isEditorMode integer
function Osi.OnShutdown(isEditorMode) end
	
---@param carriedObject GUIDSTRING
---@param carriedObjectTemplate ROOT
---@param carrier GUIDSTRING
---@param storyActionID integer
---@param pickupPosX number
---@param pickupPosY number
---@param pickupPosZ number
function Osi.OnStartCarrying(carriedObject, carriedObjectTemplate, carrier, storyActionID, pickupPosX, pickupPosY, pickupPosZ) end
	
---@param target CHARACTER
function Osi.OnStoryOverride(target) end
	
---@param thrownObject GUIDSTRING
---@param thrownObjectTemplate ROOT
---@param thrower GUIDSTRING
---@param storyActionID integer
---@param throwPosX number
---@param throwPosY number
---@param throwPosZ number
function Osi.OnThrown(thrownObject, thrownObjectTemplate, thrower, storyActionID, throwPosX, throwPosY, throwPosZ) end
	
---@param item ITEM
function Osi.Opened(item) end
	
---@param partyPreset string
---@param levelName string
function Osi.PartyPresetLoaded(partyPreset, levelName) end
	
---@param character CHARACTER
---@param item ITEM
function Osi.PickupFailed(character, item) end
	
---@param character CHARACTER
function Osi.PingRequested(character) end
	
---@param object GUIDSTRING
function Osi.PlatformDestroyed(object) end
	
---@param object GUIDSTRING
---@param eventId string
function Osi.PlatformMovementCanceled(object, eventId) end
	
---@param object GUIDSTRING
---@param eventId string
function Osi.PlatformMovementFinished(object, eventId) end
	
---@param item ITEM
---@param character CHARACTER
function Osi.PreMovedBy(item, character) end
	
---@param character CHARACTER
---@param uIInstance string
---@param type integer
function Osi.PuzzleUIClosed(character, uIInstance, type) end
	
---@param character CHARACTER
---@param uIInstance string
---@param type integer
---@param command string
---@param elementId integer
function Osi.PuzzleUIUsed(character, uIInstance, type, command, elementId) end
	
---@param character CHARACTER
---@param questID string
function Osi.QuestAccepted(character, questID) end
	
---@param questID string
function Osi.QuestClosed(questID) end
	
---@param character CHARACTER
---@param topLevelQuestID string
---@param stateID string
function Osi.QuestUpdateUnlocked(character, topLevelQuestID, stateID) end
	
---@param object GUIDSTRING
function Osi.QueuePurged(object) end
	
---@param caster GUIDSTRING
---@param storyActionID integer
---@param spellID string
---@param rollResult integer
---@param randomCastDC integer
function Osi.RandomCastProcessed(caster, storyActionID, spellID, rollResult, randomCastDC) end
	
---@param object GUIDSTRING
function Osi.ReactionInterruptActionNeeded(object) end
	
---@param character CHARACTER
---@param reactionInterruptName string
function Osi.ReactionInterruptAdded(character, reactionInterruptName) end
	
---@param object GUIDSTRING
---@param reactionInterruptPrototypeId string
---@param isAutoTriggered integer
function Osi.ReactionInterruptUsed(object, reactionInterruptPrototypeId, isAutoTriggered) end
	
---@param id string
function Osi.ReadyCheckFailed(id) end
	
---@param id string
function Osi.ReadyCheckPassed(id) end
	
---@param sourceFaction FACTION
---@param targetFaction FACTION
---@param newRelation integer
---@param permanent integer
function Osi.RelationChanged(sourceFaction, targetFaction, newRelation, permanent) end
	
---@param object GUIDSTRING
---@param inventoryHolder GUIDSTRING
function Osi.RemovedFrom(object, inventoryHolder) end
	
---@param entity GUIDSTRING
---@param onEntity GUIDSTRING
function Osi.ReposeAdded(entity, onEntity) end
	
---@param entity GUIDSTRING
---@param onEntity GUIDSTRING
function Osi.ReposeRemoved(entity, onEntity) end
	
---@param character CHARACTER
---@param item1 ITEM
---@param item2 ITEM
---@param item3 ITEM
---@param item4 ITEM
---@param item5 ITEM
---@param requestID integer
function Osi.RequestCanCombine(character, item1, item2, item3, item4, item5, requestID) end
	
---@param character CHARACTER
---@param item ITEM
---@param requestID integer
function Osi.RequestCanDisarmTrap(character, item, requestID) end
	
---@param character CHARACTER
---@param item ITEM
---@param requestID integer
function Osi.RequestCanLockpick(character, item, requestID) end
	
---@param looter CHARACTER
---@param target CHARACTER
function Osi.RequestCanLoot(looter, target) end
	
---@param character CHARACTER
---@param item ITEM
---@param requestID integer
function Osi.RequestCanMove(character, item, requestID) end
	
---@param character CHARACTER
---@param object GUIDSTRING
---@param requestID integer
function Osi.RequestCanPickup(character, object, requestID) end
	
---@param character CHARACTER
---@param item ITEM
---@param requestID integer
function Osi.RequestCanUse(character, item, requestID) end
	
function Osi.RequestEndTheDayFail() end
	
function Osi.RequestEndTheDaySuccess() end
	
---@param character CHARACTER
function Osi.RequestGatherAtCampFail(character) end
	
---@param character CHARACTER
function Osi.RequestGatherAtCampSuccess(character) end
	
---@param player CHARACTER
---@param npc CHARACTER
function Osi.RequestPickpocket(player, npc) end
	
---@param character CHARACTER
---@param trader CHARACTER
---@param tradeMode TRADEMODE
---@param itemsTagFilter string
function Osi.RequestTrade(character, trader, tradeMode, itemsTagFilter) end
	
---@param character CHARACTER
function Osi.RespecCancelled(character) end
	
---@param character CHARACTER
function Osi.RespecCompleted(character) end
	
function Osi.RestorePartyFinished() end
	
---@param character CHARACTER
function Osi.Resurrected(character) end
	
---@param eventName string
---@param roller CHARACTER
---@param rollSubject GUIDSTRING
---@param resultType integer
---@param isActiveRoll integer
---@param criticality CRITICALITYTYPE
function Osi.RollResult(eventName, roller, rollSubject, resultType, isActiveRoll, criticality) end
	
---@param modifier RULESETMODIFIER
---@param old integer
---@param new integer
function Osi.RulesetModifierChangedBool(modifier, old, new) end
	
---@param modifier RULESETMODIFIER
---@param old number
---@param new number
function Osi.RulesetModifierChangedFloat(modifier, old, new) end
	
---@param modifier RULESETMODIFIER
---@param old integer
---@param new integer
function Osi.RulesetModifierChangedInt(modifier, old, new) end
	
---@param modifier RULESETMODIFIER
---@param old string
---@param new string
function Osi.RulesetModifierChangedString(modifier, old, new) end
	
---@param userID integer
---@param state integer
function Osi.SafeRomanceOptionChanged(userID, state) end
	
function Osi.SavegameLoadStarted() end
	
function Osi.SavegameLoaded() end
	
---@param character CHARACTER
---@param targetCharacter CHARACTER
---@param targetWasSneaking integer
function Osi.Saw(character, targetCharacter, targetWasSneaking) end
	
---@param item ITEM
---@param x number
---@param y number
---@param z number
function Osi.ScatteredAt(item, x, y, z) end
	
---@param userID integer
---@param fadeID string
function Osi.ScreenFadeCleared(userID, fadeID) end
	
---@param userID integer
---@param fadeID string
function Osi.ScreenFadeDone(userID, fadeID) end
	
---@param character CHARACTER
---@param race string
---@param gender string
---@param shapeshiftStatus string
function Osi.ShapeshiftChanged(character, race, gender, shapeshiftStatus) end
	
---@param entity GUIDSTRING
---@param percentage number
function Osi.ShapeshiftedHitpointsChanged(entity, percentage) end
	
---@param object GUIDSTRING
function Osi.ShareInitiative(object) end
	
---@param character CHARACTER
---@param capable integer
function Osi.ShortRestCapable(character, capable) end
	
---@param character CHARACTER
function Osi.ShortRestProcessing(character) end
	
---@param character CHARACTER
function Osi.ShortRested(character) end
	
---@param item ITEM
---@param stackedWithItem ITEM
function Osi.StackedWith(item, stackedWithItem) end
	
---@param defender GUIDSTRING
---@param attackOwner CHARACTER
---@param attacker GUIDSTRING
---@param storyActionID integer
function Osi.StartAttack(defender, attackOwner, attacker, storyActionID) end
	
---@param x number
---@param y number
---@param z number
---@param attackOwner CHARACTER
---@param attacker GUIDSTRING
---@param storyActionID integer
function Osi.StartAttackPosition(x, y, z, attackOwner, attacker, storyActionID) end
	
---@param character CHARACTER
---@param item ITEM
function Osi.StartedDisarmingTrap(character, item) end
	
---@param character CHARACTER
function Osi.StartedFleeing(character) end
	
---@param character CHARACTER
---@param item ITEM
function Osi.StartedLockpicking(character, item) end
	
---@param caster GUIDSTRING
---@param spell string
---@param isMostPowerful integer
---@param hasMultipleLevels integer
function Osi.StartedPreviewingSpell(caster, spell, isMostPowerful, hasMultipleLevels) end
	
---@param object GUIDSTRING
---@param status string
---@param causee GUIDSTRING
---@param storyActionID integer
function Osi.StatusApplied(object, status, causee, storyActionID) end
	
---@param object GUIDSTRING
---@param status string
---@param causee GUIDSTRING
---@param storyActionID integer
function Osi.StatusAttempt(object, status, causee, storyActionID) end
	
---@param object GUIDSTRING
---@param status string
---@param causee GUIDSTRING
---@param storyActionID integer
function Osi.StatusAttemptFailed(object, status, causee, storyActionID) end
	
---@param object GUIDSTRING
---@param status string
---@param causee GUIDSTRING
---@param applyStoryActionID integer
function Osi.StatusRemoved(object, status, causee, applyStoryActionID) end
	
---@param target GUIDSTRING
---@param tag TAG
---@param sourceOwner GUIDSTRING
---@param source2 GUIDSTRING
---@param storyActionID integer
function Osi.StatusTagCleared(target, tag, sourceOwner, source2, storyActionID) end
	
---@param target GUIDSTRING
---@param tag TAG
---@param sourceOwner GUIDSTRING
---@param source2 GUIDSTRING
---@param storyActionID integer
function Osi.StatusTagSet(target, tag, sourceOwner, source2, storyActionID) end
	
---@param character CHARACTER
---@param item1 ITEM
---@param item2 ITEM
---@param item3 ITEM
---@param item4 ITEM
---@param item5 ITEM
function Osi.StoppedCombining(character, item1, item2, item3, item4, item5) end
	
---@param character CHARACTER
---@param item ITEM
function Osi.StoppedDisarmingTrap(character, item) end
	
---@param character CHARACTER
---@param item ITEM
function Osi.StoppedLockpicking(character, item) end
	
---@param character CHARACTER
function Osi.StoppedSneaking(character) end
	
---@param character CHARACTER
---@param subQuestID string
---@param stateID string
function Osi.SubQuestUpdateUnlocked(character, subQuestID, stateID) end
	
---@param templateId GUIDSTRING
---@param amount integer
function Osi.SupplyTemplateSpent(templateId, amount) end
	
---@param object GUIDSTRING
---@param group string
function Osi.SwarmAIGroupJoined(object, group) end
	
---@param object GUIDSTRING
---@param group string
function Osi.SwarmAIGroupLeft(object, group) end
	
---@param object GUIDSTRING
---@param oldCombatGuid GUIDSTRING
---@param newCombatGuid GUIDSTRING
function Osi.SwitchedCombat(object, oldCombatGuid, newCombatGuid) end
	
---@param character CHARACTER
---@param power string
function Osi.TadpolePowerAssigned(character, power) end
	
---@param target GUIDSTRING
---@param tag TAG
function Osi.TagCleared(target, tag) end
	
---@param tag TAG
---@param event string
function Osi.TagEvent(tag, event) end
	
---@param target GUIDSTRING
---@param tag TAG
function Osi.TagSet(target, tag) end
	
---@param character CHARACTER
---@param trigger TRIGGER
function Osi.TeleportToFleeWaypoint(character, trigger) end
	
---@param character CHARACTER
function Osi.TeleportToFromCamp(character) end
	
---@param character CHARACTER
---@param trigger TRIGGER
function Osi.TeleportToWaypoint(character, trigger) end
	
---@param target CHARACTER
---@param cause CHARACTER
---@param oldX number
---@param oldY number
---@param oldZ number
---@param newX number
---@param newY number
---@param newZ number
---@param spell string
function Osi.Teleported(target, cause, oldX, oldY, oldZ, newX, newY, newZ, spell) end
	
---@param character CHARACTER
function Osi.TeleportedFromCamp(character) end
	
---@param character CHARACTER
function Osi.TeleportedToCamp(character) end
	
---@param objectTemplate ROOT
---@param object2 GUIDSTRING
---@param inventoryHolder GUIDSTRING
---@param addType string
function Osi.TemplateAddedTo(objectTemplate, object2, inventoryHolder, addType) end
	
---@param itemTemplate ITEMROOT
---@param item2 ITEM
---@param destroyer CHARACTER
---@param destroyerOwner CHARACTER
---@param storyActionID integer
function Osi.TemplateDestroyedBy(itemTemplate, item2, destroyer, destroyerOwner, storyActionID) end
	
---@param itemTemplate ITEMROOT
---@param item2 ITEM
---@param trigger TRIGGER
---@param owner CHARACTER
---@param mover GUIDSTRING
function Osi.TemplateEnteredTrigger(itemTemplate, item2, trigger, owner, mover) end
	
---@param itemTemplate ITEMROOT
---@param character CHARACTER
function Osi.TemplateEquipped(itemTemplate, character) end
	
---@param characterTemplate CHARACTERROOT
---@param defender CHARACTER
---@param attackOwner GUIDSTRING
---@param attacker GUIDSTRING
---@param storyActionID integer
function Osi.TemplateKilledBy(characterTemplate, defender, attackOwner, attacker, storyActionID) end
	
---@param itemTemplate ITEMROOT
---@param item2 ITEM
---@param trigger TRIGGER
---@param owner CHARACTER
---@param mover GUIDSTRING
function Osi.TemplateLeftTrigger(itemTemplate, item2, trigger, owner, mover) end
	
---@param itemTemplate ITEMROOT
---@param item2 ITEM
---@param character CHARACTER
function Osi.TemplateOpening(itemTemplate, item2, character) end
	
---@param objectTemplate ROOT
---@param object2 GUIDSTRING
---@param inventoryHolder GUIDSTRING
function Osi.TemplateRemovedFrom(objectTemplate, object2, inventoryHolder) end
	
---@param itemTemplate ITEMROOT
---@param character CHARACTER
function Osi.TemplateUnequipped(itemTemplate, character) end
	
---@param character CHARACTER
---@param itemTemplate ITEMROOT
---@param item2 ITEM
---@param sucess integer
function Osi.TemplateUseFinished(character, itemTemplate, item2, sucess) end
	
---@param character CHARACTER
---@param itemTemplate ITEMROOT
---@param item2 ITEM
function Osi.TemplateUseStarted(character, itemTemplate, item2) end
	
---@param template1 ITEMROOT
---@param template2 ITEMROOT
---@param template3 ITEMROOT
---@param template4 ITEMROOT
---@param template5 ITEMROOT
---@param character CHARACTER
---@param newItem ITEM
function Osi.TemplatesCombined(template1, template2, template3, template4, template5, character, newItem) end
	
---@param enemy CHARACTER
---@param sourceFaction FACTION
---@param targetFaction FACTION
function Osi.TemporaryHostileRelationRemoved(enemy, sourceFaction, targetFaction) end
	
---@param character1 CHARACTER
---@param character2 CHARACTER
---@param success integer
function Osi.TemporaryHostileRelationRequestHandled(character1, character2, success) end
	
---@param event string
function Osi.TextEvent(event) end
	
---@param userID integer
---@param dialogInstanceId integer
---@param dialog2 DIALOGRESOURCE
function Osi.TimelineScreenFadeStarted(userID, dialogInstanceId, dialog2) end
	
---@param timer string
function Osi.TimerFinished(timer) end
	
---@param character CHARACTER
---@param trader CHARACTER
function Osi.TradeEnds(character, trader) end
	
---@param trader CHARACTER
function Osi.TradeGenerationEnded(trader) end
	
---@param trader CHARACTER
function Osi.TradeGenerationStarted(trader) end
	
---@param object GUIDSTRING
function Osi.TurnEnded(object) end
	
---@param object GUIDSTRING
function Osi.TurnStarted(object) end
	
---@param character CHARACTER
---@param message string
function Osi.TutorialBoxClosed(character, message) end
	
---@param userId integer
---@param entryId GUIDSTRING
function Osi.TutorialClosed(userId, entryId) end
	
---@param entity CHARACTER
---@param event TUTORIALEVENT
function Osi.TutorialEvent(entity, event) end
	
---@param item ITEM
---@param character CHARACTER
function Osi.UnequipFailed(item, character) end
	
---@param item ITEM
---@param character CHARACTER
function Osi.Unequipped(item, character) end
	
---@param item ITEM
---@param character CHARACTER
---@param key ITEM
function Osi.Unlocked(item, character, key) end
	
---@param character CHARACTER
---@param recipe string
function Osi.UnlockedRecipe(character, recipe) end
	
---@param character CHARACTER
---@param item ITEM
---@param sucess integer
function Osi.UseFinished(character, item, sucess) end
	
---@param character CHARACTER
---@param item ITEM
function Osi.UseStarted(character, item) end
	
---@param userID integer
---@param avatar CHARACTER
---@param daisy CHARACTER
function Osi.UserAvatarCreated(userID, avatar, daisy) end
	
---@param userID integer
---@param chest ITEM
function Osi.UserCampChestChanged(userID, chest) end
	
---@param character CHARACTER
---@param isFullRest integer
function Osi.UserCharacterLongRested(character, isFullRest) end
	
---@param userID integer
---@param userName string
---@param userProfileID string
function Osi.UserConnected(userID, userName, userProfileID) end
	
---@param userID integer
---@param userName string
---@param userProfileID string
function Osi.UserDisconnected(userID, userName, userProfileID) end
	
---@param userID integer
---@param userEvent string
function Osi.UserEvent(userID, userEvent) end
	
---@param sourceUserID integer
---@param targetUserID integer
---@param war integer
function Osi.UserMakeWar(sourceUserID, targetUserID, war) end
	
---@param caster GUIDSTRING
---@param spell string
---@param spellType string
---@param spellElement string
---@param storyActionID integer
function Osi.UsingSpell(caster, spell, spellType, spellElement, storyActionID) end
	
---@param caster GUIDSTRING
---@param x number
---@param y number
---@param z number
---@param spell string
---@param spellType string
---@param spellElement string
---@param storyActionID integer
function Osi.UsingSpellAtPosition(caster, x, y, z, spell, spellType, spellElement, storyActionID) end
	
---@param caster GUIDSTRING
---@param spell string
---@param spellType string
---@param spellElement string
---@param trigger TRIGGER
---@param storyActionID integer
function Osi.UsingSpellInTrigger(caster, spell, spellType, spellElement, trigger, storyActionID) end
	
---@param caster GUIDSTRING
---@param target GUIDSTRING
---@param spell string
---@param spellType string
---@param spellElement string
---@param storyActionID integer
function Osi.UsingSpellOnTarget(caster, target, spell, spellType, spellElement, storyActionID) end
	
---@param caster GUIDSTRING
---@param target GUIDSTRING
---@param spell string
---@param spellType string
---@param spellElement string
---@param storyActionID integer
function Osi.UsingSpellOnZoneWithTarget(caster, target, spell, spellType, spellElement, storyActionID) end
	
---@param bark VOICEBARKRESOURCE
---@param instanceID integer
function Osi.VoiceBarkEnded(bark, instanceID) end
	
---@param bark VOICEBARKRESOURCE
function Osi.VoiceBarkFailed(bark) end
	
---@param bark VOICEBARKRESOURCE
---@param instanceID integer
function Osi.VoiceBarkStarted(bark, instanceID) end
	
---@param object GUIDSTRING
---@param isOnStageNow integer
function Osi.WentOnStage(object, isOnStageNow) end
