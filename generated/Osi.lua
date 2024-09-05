---@meta
---@diagnostic disable

--#region Types

--Base Types
---@alias INTEGER64 integer
---@alias GUIDSTRING string

--Alias Types

--Custom Aliases (not generated with story_header.div)

---@alias EQUIPMENTSLOTNAME "Amulet"|"Boots"|"Breast"|"Cloak"|"Gloves"|"Helmet"|"Melee Main Weapon"|"Melee Offhand Weapon"|"Ranged Main Weapon"|"Ranged Offhand Weapon"|"Ring"|"Ring2"|"Underwear"|"VanityBody"|"VanityBoots"

---@alias CHARACTER GUIDSTRING
---@alias ITEM GUIDSTRING
---@alias TRIGGER GUIDSTRING
---@alias SPLINE GUIDSTRING
---@alias LEVELTEMPLATE GUIDSTRING
---@alias DIALOGRESOURCE GUIDSTRING
---@alias EFFECTRESOURCE GUIDSTRING
---@alias VOICEBARKRESOURCE GUIDSTRING
---@alias ANIMATION GUIDSTRING
---@alias TAG GUIDSTRING
---@alias FLAG GUIDSTRING
---@alias FACTION GUIDSTRING
---@alias TIMELINERESOURCE GUIDSTRING
---@alias ROOT GUIDSTRING
---@alias CHARACTERROOT ROOT
---@alias ITEMROOT ROOT
---@alias PLATFORM GUIDSTRING
---@alias DISTURBANCEPROPERTY GUIDSTRING
---@alias SHAPESHIFTRULE GUIDSTRING
---@alias DIFFICULTYCLASS GUIDSTRING
---@alias GOLDREWARD GUIDSTRING
---@alias TUTORIALEVENT GUIDSTRING
---@alias DLC GUIDSTRING
---@alias RULESETMODIFIER GUIDSTRING
---@alias UNIFIEDTUTORIAL GUIDSTRING

--Enum Types
---@alias DEATHTYPE
---| `0` # None
---| `1` # Acid
---| `2` # Chasm
---| `3` # DoT
---| `4` # Electrocution
---| `5` # Explode
---| `6` # Falling
---| `7` # Incinerate
---| `8` # KnockedDown
---| `9` # Lifetime
---| `10` # Necrotic
---| `11` # Physical
---| `12` # Psychic
---| `13` # Radiant
---| `14` # CinematicDeath
---| `15` # Cold
---| `16` # Disintegrate

---@alias GRAVITYTYPE
---| `0` # Enabled
---| `1` # Disabled
---| `2` # DisabledUntilMove

---@alias LQUANT
---| `0` # ANY
---| `1` # ALL

---@alias TAGCATEGORY
---| `0` # Undefined
---| `1` # Code
---| `2` # Dialog
---| `3` # Origin
---| `4` # Identity
---| `5` # Profession
---| `6` # Race
---| `7` # Race_Meta
---| `8` # Story
---| `9` # Voice
---| `10` # Background
---| `11` # Class
---| `12` # DialogHidden
---| `13` # Deity
---| `14` # Class_Deity
---| `15` # PlayerRace
---| `16` # CharacterSheet
---| `17` # SpellCondition

---@alias ARMOURSET
---| `0` # Normal
---| `1` # Vanity

---@alias CROWDBEHAVIOUR
---| `0` # Cower
---| `1` # Disperse
---| `2` # Flee

---@alias SPLATTERTYPE
---| `1` # Blood
---| `2` # Bruise
---| `4` # Dirt
---| `8` # Sweat

---@alias QUANTITY
---| `0` # NONE
---| `1` # BARELY
---| `2` # SOME
---| `3` # HALF
---| `4` # LOTS
---| `5` # MOST
---| `6` # ALL

---@alias TRADABLETYPE
---| `0` # Default
---| `1` # Tradable
---| `2` # NonTradable

---@alias EQUIPMENTSLOT
---| `0` # Helmet
---| `1` # Breast
---| `2` # Cloak
---| `3` # MeleeMainHand
---| `4` # MeleeOffHand
---| `5` # RangedMainHand
---| `6` # RangedOffHand
---| `7` # Ring
---| `8` # Underwear
---| `9` # Boots
---| `10` # Gloves
---| `11` # Amulet
---| `12` # Ring2
---| `13` # Wings
---| `14` # Horns
---| `15` # Overhead
---| `16` # MusicalInstrument
---| `17` # VanityBody
---| `18` # VanityBoots

---@alias UNSHEATHSTATE
---| `0` # Instrument
---| `1` # Melee
---| `2` # Ranged
---| `3` # Sheathed

---@alias CRITICALITYTYPE
---| `0` # None
---| `1` # Success
---| `2` # Fail

---@alias TRADEMODE
---| `0` # Barter
---| `3` # Trade
---| `2` # Donate
---| `1` # Default

---@alias JOINBLOCKTYPE
---| `0` # None
---| `1` # BlockNew
---| `2` # BlockAll

--#endregion

if Osi == nil then Osi = {} end

--#region Queries

---@param difficulty string
---@param level integer
---@return integer abilityValue
function Osi.AbilityGetDifficultyLevelMappedValue(difficulty, level) end

---@param object GUIDSTRING
---@return integer anubisEnabled
function Osi.AnubisGetIsEnabled(object) end

---@param target GUIDSTRING
---@param targetSkill string
---@return integer skillValue
function Osi.CalculatePassiveSkill(target, targetSkill) end

---@return integer longRestIsAllowed
function Osi.CanAllPartiesLongRest() end

---@param entity GUIDSTRING
---@return integer bool
function Osi.CanBePickpocketed(entity) end

---@param character CHARACTER
---@param spellID string
---@return CHARACTER target
function Osi.CanCastSpellOnEnemyInSameCombat(character, spellID) end

---@param entity GUIDSTRING
---@return integer bool
function Osi.CanFight(entity) end

---@param entity GUIDSTRING
---@return integer bool
function Osi.CanJoinCombat(entity) end

---@param character CHARACTER
---@param item ITEM
---@param validateGoldCost integer
---@return integer bool
function Osi.CanLearnSpell(character, item, validateGoldCost) end

---@param character CHARACTER
---@return integer bool
function Osi.CanMove(character) end

---@param source GUIDSTRING
---@param target GUIDSTRING
---@return integer bool
function Osi.CanSee(source, target) end

---@param source GUIDSTRING
---@param target GUIDSTRING
---@return integer bool
function Osi.CanSeeCached(source, target) end

---@param character CHARACTER
---@param spellID string
---@return integer bool
function Osi.CanShowSpellForCharacter(character, spellID) end

---@param item ITEM
---@return integer bool
function Osi.CanSitOn(item) end

---@param character CHARACTER
---@return integer bool
function Osi.CanSpotSneakers(character) end

---@param trader CHARACTER
---@return integer bool
function Osi.CanTrade(trader) end

---@param ratingOwner CHARACTER
---@param ratedCharacter CHARACTER
---@param type integer
---@param delta integer
---@return integer bool
function Osi.ChangeApprovalRating(ratingOwner, ratedCharacter, type, delta) end

---@param character CHARACTER
---@return integer bool
function Osi.CharacterCanIgnoreActiveCrimes(character) end

---@param character CHARACTER
---@return integer bool
function Osi.CharacterCanSpotCrimes(character) end

---@param character CHARACTER
---@return integer instanceID
function Osi.CharacterGetCrimeDialog(character) end

---@param character CHARACTER
---@return string region
function Osi.CharacterGetCrimeRegion(character) end

---@param character CHARACTER
---@return CHARACTER owner
function Osi.CharacterGetOwner(character) end

---@param character CHARACTER
---@param dlc DLC
---@return integer hasDLC
function Osi.CharacterHasDLC(character, dlc) end

---@param character CHARACTER
---@return integer bool
function Osi.CharacterIgnoreActiveCrimes(character) end

---@param character CHARACTER
---@param crime string
---@return integer bool
function Osi.CharacterIsCrimeEnabled(character, crime) end

---@param player CHARACTER
---@param crimeType string
---@param evidence GUIDSTRING
---@param victim CHARACTER
---@param crimeID integer
---@return integer success
function Osi.CharacterRegisterCrime(player, crimeType, evidence, victim, crimeID) end

---@param player CHARACTER
---@param crimeType string
---@param evidence GUIDSTRING
---@param victim CHARACTER
---@param x number
---@param y number
---@param z number
---@param crimeID integer
---@return integer success
function Osi.CharacterRegisterCrimeWithPosition(player, crimeType, evidence, victim, x, y, z, crimeID) end

---@param character CHARACTER
---@param tags string
---@param amount integer
---@return integer amountRemoved
function Osi.CharacterRemoveTaggedItems(character, tags, amount) end

---@param itemTemplate CHARACTERROOT
---@param trigger TRIGGER
---@return integer count
function Osi.CharacterTemplatesInTrigger(itemTemplate, trigger) end

---@param modifier RULESETMODIFIER
---@param value integer
---@return integer result
function Osi.CheckRulesetModifierBool(modifier, value) end

---@param modifier RULESETMODIFIER
---@param value number
---@return integer result
function Osi.CheckRulesetModifierFloat(modifier, value) end

---@param modifier RULESETMODIFIER
---@param value integer
---@return integer result
function Osi.CheckRulesetModifierInt(modifier, value) end

---@param modifier RULESETMODIFIER
---@param value string
---@return integer result
function Osi.CheckRulesetModifierString(modifier, value) end

---@param combatGuid GUIDSTRING
---@return GUIDSTRING currentEntity
function Osi.CombatGetActiveEntity(combatGuid) end

---@param object GUIDSTRING
---@return GUIDSTRING combatGuid
function Osi.CombatGetGuidFor(object) end

---@param combatGuid GUIDSTRING
---@param partyMemberIndex integer
---@return CHARACTER partyMember
function Osi.CombatGetInvolvedPartyMember(combatGuid, partyMemberIndex) end

---@param combatGuid GUIDSTRING
---@return integer numPartyMembers
function Osi.CombatGetInvolvedPartyMembersCount(combatGuid) end

---@param combatGuid GUIDSTRING
---@param playerIndex integer
---@return CHARACTER player
function Osi.CombatGetInvolvedPlayer(combatGuid, playerIndex) end

---@param combatGuid GUIDSTRING
---@return integer numPlayers
function Osi.CombatGetInvolvedPlayersCount(combatGuid) end

---@param combatGuid GUIDSTRING
---@return integer active
function Osi.CombatIsActive(combatGuid) end

---@param stringA string
---@param stringB string
---@return string result
function Osi.Concatenate(stringA, stringB) end

---@param string string
---@param guidString GUIDSTRING
---@return string result
function Osi.ConcatenateGUID(string, guidString) end

---@param string string
---@param number integer
---@return string result
function Osi.ConcatenateInteger(string, number) end

---@param stringA string
---@param stringB string
---@return string result
function Osi.ConcatenateNewLine(stringA, stringB) end

---@param string string
---@param number number
---@return string result
function Osi.ConcatenateReal(string, number) end

---@param templateId GUIDSTRING
---@param x number
---@param y number
---@param z number
---@param temporary integer
---@param playSpawn integer
---@param spawnFinishEvent string
---@return GUIDSTRING createdObject
function Osi.CreateAt(templateId, x, y, z, temporary, playSpawn, spawnFinishEvent) end

---@param templateId GUIDSTRING
---@param anchor GUIDSTRING
---@param temporary integer
---@param playSpawn integer
---@param spawnFinishEvent string
---@param matchOrientation integer
---@return GUIDSTRING createdObject
function Osi.CreateAtObject(templateId, anchor, temporary, playSpawn, spawnFinishEvent, matchOrientation) end

---@return GUIDSTRING combatGuid
function Osi.CreateNarrativeCombat() end

---@param templateId GUIDSTRING
---@param x number
---@param y number
---@param z number
---@param directionAngle integer
---@param temporary integer
---@param playSpawn integer
---@param spawnFinishEvent string
---@return GUIDSTRING createdObject
function Osi.CreateOutOfSightAtDirection(templateId, x, y, z, directionAngle, temporary, playSpawn, spawnFinishEvent) end

---@param templateId GUIDSTRING
---@param anchorObject GUIDSTRING
---@param directionFrom GUIDSTRING
---@param temporary integer
---@param playSpawn integer
---@param spawnFinishEvent string
---@return GUIDSTRING createdObject
function Osi.CreateOutOfSightAtDirectionFromObject(templateId, anchorObject, directionFrom, temporary, playSpawn, spawnFinishEvent) end

---@param crimeID integer
---@param criminal GUIDSTRING
---@return integer bool
function Osi.CrimeAddCriminal(crimeID, criminal) end

---@param crimeID integer
---@param evidence GUIDSTRING
---@return integer bool
function Osi.CrimeAddEvidence(crimeID, evidence) end

---@param crimeID integer
---@param evidence ITEM
---@param evidenceTemplate GUIDSTRING
---@param originalOwner CHARACTER
---@param amount integer
---@param totalGoldValue integer
---@return integer bool
function Osi.CrimeAddItemEvidence(crimeID, evidence, evidenceTemplate, originalOwner, amount, totalGoldValue) end

---@param crimeArea TRIGGER
---@return integer modifier
function Osi.CrimeAreaGetTensionModifier(crimeArea) end

---@param crimeID integer
---@param searcher CHARACTER
---@param criminal1 CHARACTER
---@param criminal2 CHARACTER
---@param criminal3 CHARACTER
---@param criminal4 CHARACTER
---@return integer someEvidenceFoundForCurrentCrime
---@return integer foundAllEvidenceForCurrentCrime
---@return integer guiltyFound
function Osi.CrimeFindEvidence(crimeID, searcher, criminal1, criminal2, criminal3, criminal4) end

---@param crimeID integer
---@param criminalIndex integer
---@return CHARACTER criminal
function Osi.CrimeGetCriminal(crimeID, criminalIndex) end

---@param crimeID integer
---@return CHARACTER criminal1
---@return CHARACTER criminal2
---@return CHARACTER criminal3
---@return CHARACTER criminal4
function Osi.CrimeGetCriminals(crimeID) end

---@param crimeID integer
---@return integer criminalsCount
function Osi.CrimeGetCriminalsCount(crimeID) end

---@param crimeID integer
---@return number range
function Osi.CrimeGetDetectionRange(crimeID) end

---@param crimeID integer
---@param index integer
---@return GUIDSTRING evidence
function Osi.CrimeGetEvidence(crimeID, index) end

---@param crimeID integer
---@return integer goldValue
function Osi.CrimeGetEvidenceValue(crimeID) end

---@param crimeID integer
---@param interrogator CHARACTER
---@return DIALOGRESOURCE interrogationDialog
function Osi.CrimeGetInterrogationDialog(crimeID, interrogator) end

---@param crimeID integer
---@return CHARACTER leadInvestigator
function Osi.CrimeGetLeadInvestigator(crimeID) end

---@return integer crimeID
function Osi.CrimeGetNewID() end

---@param crimeID integer
---@return integer numEvidence
function Osi.CrimeGetNumberOfEvidence(crimeID) end

---@param crimeID integer
---@return integer tension
function Osi.CrimeGetTension(crimeID) end

---@param crimeID integer
---@return string type
function Osi.CrimeGetType(crimeID) end

---@param crimeID integer
---@return CHARACTER crimeVictim
function Osi.CrimeGetVictim(crimeID) end

---@param crimeID integer
---@param evidence GUIDSTRING
---@return integer hasEvidence
function Osi.CrimeHasEvidence(crimeID, evidence) end

---@param crimeID integer
---@param disturbanceProperty DISTURBANCEPROPERTY
---@return integer hasProperty
function Osi.CrimeHasProperty(crimeID, disturbanceProperty) end

---@param crime integer
---@param criminal CHARACTER
---@return integer bool
function Osi.CrimeIgnoreCriminal(crime, criminal) end

---@param crimeID integer
---@param investigator CHARACTER
---@param suspect CHARACTER
---@return integer startInterrogation
---@return integer sucess
function Osi.CrimeInvestigatorConfrontSuspect(crimeID, investigator, suspect) end

---@param crimeID integer
---@param investigator CHARACTER
---@param ignoreCantTalk integer
---@return integer success
function Osi.CrimeInvestigatorEnterInterrogationState(crimeID, investigator, ignoreCantTalk) end

---@param crimeID integer
---@return integer bool
function Osi.CrimeIsContinuous(crimeID) end

---@param crimeID integer
---@return integer isSuspended
function Osi.CrimeIsSuspended(crimeID) end

---@param character CHARACTER
---@return integer bool
function Osi.CrimeIsTensionOverWarningTreshold(character) end

---@param crime integer
---@param criminal CHARACTER
---@return integer bool
function Osi.CrimeStopIgnoringCriminal(crime, criminal) end

---@param oldLead GUIDSTRING
---@param crimeID integer
---@param newLead GUIDSTRING
---@return integer bool
function Osi.CrimeTransferLeadershipTo(oldLead, crimeID, newLead) end

---@param crimeType string
---@return integer tension
function Osi.CrimeTypeGetTension(crimeType) end

---@param disturbanceType string
---@param disturbanceProperty DISTURBANCEPROPERTY
---@return integer hasProperty
function Osi.CrimeTypeHasProperty(disturbanceType, disturbanceProperty) end

---@param origin CHARACTER
---@param index integer
---@return TAG backgroundTag
function Osi.DataGetBackgroundTagAt(origin, index) end

---@param origin CHARACTER
---@return integer count
function Osi.DataGetBackgroundTagCount(origin) end

---@param origin CHARACTER
---@param index integer
---@return TAG godTag
function Osi.DataGetGodTagAt(origin, index) end

---@param origin CHARACTER
---@return integer count
function Osi.DataGetGodTagCount(origin) end

---@param type GOLDREWARD
---@param level integer
---@return integer value
function Osi.DataGetGoldValue(type, level) end

---@param origin CHARACTER
---@param index integer
---@return TAG reallyTag
function Osi.DataGetReallyTagAt(origin, index) end

---@param origin CHARACTER
---@return integer count
function Osi.DataGetReallyTagCount(origin) end

---@param dialog DIALOGRESOURCE
---@return integer allowDeadSpeakers
function Osi.DialogAllowDeadSpeakers(dialog) end

---@param instanceID integer
---@param actor GUIDSTRING
---@return integer speakerSlot
function Osi.DialogFindReservedSpeakerSlot(instanceID, actor) end

---@param instanceID integer
---@return string category
function Osi.DialogGetCategory(instanceID) end

---@param instanceID integer
---@param index integer
---@return GUIDSTRING npc
function Osi.DialogGetInvolvedNPC(instanceID, index) end

---@param instanceID integer
---@param index integer
---@return GUIDSTRING player
function Osi.DialogGetInvolvedPlayer(instanceID, index) end

---@param instanceID integer
---@return integer numberOfNPCs
function Osi.DialogGetNumberOfInvolvedNPCs(instanceID) end

---@param instanceID integer
---@return integer count
function Osi.DialogGetNumberOfInvolvedPlayers(instanceID) end

---@param dialog DIALOGRESOURCE
---@return integer isAllowingJoinCombat
function Osi.DialogIsAllowingJoinCombat(dialog) end

---@param dialog DIALOGRESOURCE
---@return integer isAutomated
function Osi.DialogIsAutomated(dialog) end

---@param instanceID integer
---@return integer isCrimeDialog
function Osi.DialogIsCrimeDialog(instanceID) end

---@param instanceID integer
---@param actor GUIDSTRING
---@return integer success
function Osi.DialogRemoveActorFromDialog(instanceID, actor) end

---@param dialog DIALOGRESOURCE
---@param speakerSlot integer
---@return integer hasLines
function Osi.DialogSpeakerHasLines(dialog, speakerSlot) end

---@param crimeID integer
---@param dialog DIALOGRESOURCE
---@param npc GUIDSTRING
---@param criminal1 GUIDSTRING
---@param criminal2 GUIDSTRING
---@param criminal3 GUIDSTRING
---@param criminal4 GUIDSTRING
---@return integer success
---@return integer dialogInstance
function Osi.DialogStartCrimeDialog(crimeID, dialog, npc, criminal1, criminal2, criminal3, criminal4) end

---@param ownerObject GUIDSTRING
---@param followObject GUIDSTRING
---@param surfaceType string
---@param radius number
---@param lifeTime number
---@return INTEGER64 surfaceActionHandle
function Osi.DrawSurfaceOnPath(ownerObject, followObject, surfaceType, radius, lifeTime) end

---@param object GUIDSTRING
---@return integer bool
function Osi.Exists(object) end

---@param faction FACTION
---@param parentNumber integer
---@return FACTION parentFaction
function Osi.FactionGetParentFaction(faction, parentNumber) end

---@param faction FACTION
---@param howMany LQUANT
---@param tag TAG
---@return integer bool
function Osi.FactionIsTagged(faction, howMany, tag) end

---@param trigger TRIGGER
---@return DIALOGRESOURCE dialog
---@return string type
function Osi.FindGossipCamp(trigger) end

---@param character CHARACTER
---@return DIALOGRESOURCE dialog
---@return string type
function Osi.FindGossipWorld(character) end

---@param sourceX number
---@param sourceY number
---@param sourceZ number
---@param radius number
---@param object GUIDSTRING
---@param avoidDangerousSurfaces integer
---@return number validPositionX
---@return number validPositionY
---@return number validPositionZ
function Osi.FindValidPosition(sourceX, sourceY, sourceZ, radius, object, avoidDangerousSurfaces) end

---@param guidString GUIDSTRING
---@return string result
function Osi.GUIDToString(guidString) end

---@param character CHARACTER
---@param attribute string
---@return integer value
function Osi.GetAbility(character, attribute) end

---@param player CHARACTER
---@param resourceName string
---@param resourceLevel integer
---@return number amount
function Osi.GetActionResourceValuePersonal(player, resourceName, resourceLevel) end

---@param target GUIDSTRING
---@return string archetype
function Osi.GetActiveArchetype(target) end

---@return string levelName
function Osi.GetActiveModStartupLevel() end

---@param target GUIDSTRING
---@return TAG aiHint
function Osi.GetAiHint(target) end

---@param dirFromX number
---@param dirFromZ number
---@param dirToX number
---@param dirToZ number
---@return integer angleDeg
function Osi.GetAngleXToDirection(dirFromX, dirFromZ, dirToX, dirToZ) end

---@param object GUIDSTRING
---@return string anubisConfig
function Osi.GetAnubisConfig(object) end

---@param entity GUIDSTRING
---@param splatterType SPLATTERTYPE
---@return QUANTITY splatterLevel
function Osi.GetAppliedSplatterLevel(entity, splatterType) end

---@param ratingOwner CHARACTER
---@param ratedCharacter CHARACTER
---@return integer rating
function Osi.GetApprovalRating(ratingOwner, ratedCharacter) end

---@param character CHARACTER
---@return ARMOURSET eArmorSet
function Osi.GetArmourSet(character) end

---@param character CHARACTER
---@param player CHARACTER
---@return integer attitude
function Osi.GetAttitudeTowardsPlayer(character, player) end

---@param target GUIDSTRING
---@return string archetype
function Osi.GetBaseArchetype(target) end

---@param target GUIDSTRING
---@return FACTION faction
function Osi.GetBaseFaction(target) end

---@param item ITEM
---@return string damageType
function Osi.GetBaseWeaponDamageType(item) end

---@param character CHARACTER
---@param allowShapeshiftOverride integer
---@return string bodyType
function Osi.GetBodyType(character, allowShapeshiftOverride) end

---@param item ITEM
---@return string bookID
function Osi.GetBookID(item) end

---@param tags string
---@param inventoryHolder GUIDSTRING
---@return GUIDSTRING entity
function Osi.GetByTagInInventory(tags, inventoryHolder) end

---@param item ITEM
---@return integer bool
function Osi.GetCanInteract(item) end

---@param item ITEM
---@return integer bool
function Osi.GetCanPickUp(item) end

---@param target GUIDSTRING
---@return CHARACTER player
---@return number distance
function Osi.GetClosestAlivePlayer(target) end

---@param target GUIDSTRING
---@param userID integer
---@return CHARACTER player
---@return number distance
function Osi.GetClosestAliveUserPlayer(target, userID) end

---@param target GUIDSTRING
---@return CHARACTER player
---@return number distance
function Osi.GetClosestPlayer(target) end

---@param x number
---@param y number
---@param z number
---@return CHARACTER player
---@return number distance
function Osi.GetClosestPlayerToPosition(x, y, z) end

---@param target GUIDSTRING
---@return string groupID
function Osi.GetCombatGroupID(target) end

---@param user integer
---@return CHARACTER character
function Osi.GetCurrentCharacter(user) end

---@param character CHARACTER
---@return string deathType
function Osi.GetDeathType(character) end

---@return CHARACTER character
function Osi.GetDebugCharacter() end

---@param index integer
---@return string template
function Osi.GetDebugItem(index) end

---@param character CHARACTER
---@return DIALOGRESOURCE dialog
function Osi.GetDefaultDialog(character) end

---@param target CHARACTER
---@return string equipmentSet
function Osi.GetDefaultEquipmentSet(target) end

---@param character CHARACTER
---@return string state
function Osi.GetDefaultState(character) end

---@param object GUIDSTRING
---@return GUIDSTRING directInventoryHolder
function Osi.GetDirectInventoryOwner(object) end

---@param item ITEM
---@return integer bool
function Osi.GetDisableUse(item) end

---@param target GUIDSTRING
---@return string translatedStringKey
function Osi.GetDisplayName(target) end

---@param object1 GUIDSTRING
---@param object2 GUIDSTRING
---@return number dist
function Osi.GetDistanceTo(object1, object2) end

---@param object GUIDSTRING
---@param x number
---@param y number
---@param z number
---@return number dist
function Osi.GetDistanceToPosition(object, x, y, z) end

---@return number enterCombatRange
function Osi.GetEnterCombatRange() end

---@param item ITEM
---@return EQUIPMENTSLOT preferredSlot
function Osi.GetEquipmentSlotForItem(item) end

---@param character CHARACTER
---@param slotName EQUIPMENTSLOTNAME
---@return ITEM item
function Osi.GetEquippedItem(character, slotName) end

---@param character CHARACTER
---@return ITEM item
function Osi.GetEquippedShield(character) end

---@param character CHARACTER
---@return ITEM item
function Osi.GetEquippedWeapon(character) end

---@param target GUIDSTRING
---@return FACTION faction
function Osi.GetFaction(target) end

---@param object GUIDSTRING
---@return GUIDSTRING firstInventoryCharacterHolder
function Osi.GetFirstInventoryOwnerCharacter(object) end

---@param flag FLAG
---@param object GUIDSTRING
---@return integer flagState
function Osi.GetFlag(flag, object) end

---@param flag FLAG
---@return string flagDescription
function Osi.GetFlagDescription(flag) end

---@param flag FLAG
---@return string flagName
function Osi.GetFlagName(flag) end

---@param character CHARACTER
---@param allowShapeshiftOverride integer
---@return string gender
function Osi.GetGender(character, allowShapeshiftOverride) end

---@return number modifier
function Osi.GetGlobalPriceModifier() end

---@param inventoryHolder GUIDSTRING
---@return integer amount
function Osi.GetGold(inventoryHolder) end

---@param source GUIDSTRING
---@return integer amount
function Osi.GetGoldInMagicPockets(source) end

---@param dialog DIALOGRESOURCE
---@param index integer
---@return CHARACTER speaker
function Osi.GetGossipSpeaker(dialog, index) end

---@param character CHARACTER
---@return integer crimeID
function Osi.GetHandlingCrimeID(character) end

---@param character CHARACTER
---@return integer hasDefaultDialog
function Osi.GetHasDefaultDialog(character) end

---@param speaker GUIDSTRING
---@return integer hasOsirisDialog
function Osi.GetHasOsirisDialog(speaker) end

---@param proxyObject GUIDSTRING
---@return GUIDSTRING ownerObject
function Osi.GetHitProxyOwner(proxyObject) end

---@param entity GUIDSTRING
---@return integer hp
function Osi.GetHitpoints(entity) end

---@param entity GUIDSTRING
---@return number percentage
function Osi.GetHitpointsPercentage(entity) end

---@return CHARACTER character
function Osi.GetHostCharacter() end

---@param character CHARACTER
---@param allowShapeshiftOverride integer
---@return string identity
function Osi.GetIdentity(character, allowShapeshiftOverride) end

---@param entity GUIDSTRING
---@param faction FACTION
---@return integer relation
function Osi.GetIndividualRelation(entity, faction) end

---@param object1 GUIDSTRING
---@param object2 GUIDSTRING
---@return number dist
function Osi.GetInnerDistanceTo(object1, object2) end

---@param object GUIDSTRING
---@param x number
---@param y number
---@param z number
---@return number dist
function Osi.GetInnerDistanceToPosition(object, x, y, z) end

---@param character CHARACTER
---@return integer interrupts
function Osi.GetInterruptCount(character) end

---@param object GUIDSTRING
---@return GUIDSTRING topLevelInventoryHolder
function Osi.GetInventoryOwner(object) end

---@param tags string
---@param inventoryHolder GUIDSTRING
---@return ITEM item
function Osi.GetItemByTagInInventory(tags, inventoryHolder) end

---@param tags string
---@param character CHARACTER
---@return ITEM item
function Osi.GetItemByTagInPartyInventory(tags, character) end

---@param tags string
---@param character CHARACTER
---@return ITEM item
function Osi.GetItemByTagInUserInventory(tags, character) end

---@param itemTemplate ITEMROOT
---@param inventoryHolder GUIDSTRING
---@return ITEM item
function Osi.GetItemByTemplateInInventory(itemTemplate, inventoryHolder) end

---@param itemTemplate ITEMROOT
---@param character CHARACTER
---@return ITEM item
function Osi.GetItemByTemplateInPartyInventory(itemTemplate, character) end

---@param itemTemplate ITEMROOT
---@param character CHARACTER
---@return ITEM item
function Osi.GetItemByTemplateInUserInventory(itemTemplate, character) end

---@param itemTemplate ITEMROOT
---@param tags string
---@param inventoryHolder GUIDSTRING
---@return ITEM item
function Osi.GetItemByTemplateTagInInventory(itemTemplate, tags, inventoryHolder) end

---@param object GUIDSTRING
---@return integer level
function Osi.GetLevel(object) end

---@param entity GUIDSTRING
---@return integer maxHP
function Osi.GetMaxHitpoints(entity) end

---@return integer maxPartySize
function Osi.GetMaxPartySize() end

---@param item ITEM
---@return integer maxAmount
function Osi.GetMaxStackAmount(item) end

---@param name string
---@return integer major
---@return integer minor
---@return integer revision
---@return integer build
function Osi.GetModuleVersion(name) end

---@param character CHARACTER
---@return CHARACTER multiplayerCharacter
function Osi.GetMultiplayerCharacter(character) end

---@param object GUIDSTRING
---@return string obscuredState
function Osi.GetObscuredState(object) end

---@param x number
---@param y number
---@param z number
---@return string obscuredState
function Osi.GetObscuredStateAtPosition(x, y, z) end

---@param item ITEM
---@return CHARACTER character
function Osi.GetOriginalOwner(item) end

---@param item ITEM
---@return CHARACTER character
function Osi.GetOwner(item) end

---@param item ITEM
---@return PLATFORM platform
function Osi.GetParentPlatform(item) end

---@return number performGroupJoinRadius
function Osi.GetPerformGroupJoinRadius() end

---@param object GUIDSTRING
---@return PLATFORM platform
function Osi.GetPlatformUnderObject(object) end

---@param item ITEM
---@return integer bool
function Osi.GetPortalIsOpen(item) end

---@param target GUIDSTRING
---@return number x
---@return number y
---@return number z
function Osi.GetPosition(target) end

---@param player CHARACTER
---@param canPolymorphOverride integer
---@return string race
function Osi.GetRace(player, canPolymorphOverride) end

---@param object GUIDSTRING
---@return string region
function Osi.GetRegion(object) end

---@param sourceFaction FACTION
---@param targetFaction FACTION
---@return integer relation
function Osi.GetRelation(sourceFaction, targetFaction) end

---@param sourceFaction FACTION
---@param targetFaction FACTION
---@return integer relation
function Osi.GetRelationRaw(sourceFaction, targetFaction) end

---@param character CHARACTER
---@return integer userID
function Osi.GetReservedUserID(character) end

---@param target GUIDSTRING
---@return number xDeg
---@return number yDeg
---@return number zDeg
function Osi.GetRotation(target) end

---@param modifier RULESETMODIFIER
---@return integer value
function Osi.GetRulesetModifierBool(modifier) end

---@param modifier RULESETMODIFIER
---@return number value
function Osi.GetRulesetModifierFloat(modifier) end

---@param modifier RULESETMODIFIER
---@return integer value
function Osi.GetRulesetModifierInt(modifier) end

---@param modifier RULESETMODIFIER
---@return string value
function Osi.GetRulesetModifierString(modifier) end

---@param character CHARACTER
---@return integer state
function Osi.GetSafeRomanceOption(character) end

---@param spellSetID string
---@param spellIndex integer
---@return string spellID
function Osi.GetSpellFromSet(spellSetID, spellIndex) end

---@param item ITEM
---@return integer exactItemAmount
---@return integer totalAmount
function Osi.GetStackAmount(item) end

---@param object GUIDSTRING
---@return string statname
function Osi.GetStatString(object) end

---@param source GUIDSTRING
---@param statusID string
---@return number durationLeft
function Osi.GetStatusCurrentLifetime(source, statusID) end

---@param source GUIDSTRING
---@param statusID string
---@return integer turns
function Osi.GetStatusTurns(source, statusID) end

---@param statusID string
---@return string statusType
function Osi.GetStatusType(statusID) end

---@param target GUIDSTRING
---@return string surface
function Osi.GetSurfaceCloudAt(target) end

---@param target GUIDSTRING
---@return GUIDSTRING ownerCharacter
---@return GUIDSTRING ownerItem
function Osi.GetSurfaceCloudOwnerAt(target) end

---@param target GUIDSTRING
---@return string surface
function Osi.GetSurfaceGroundAt(target) end

---@param target GUIDSTRING
---@return CHARACTER ownerCharacter
---@return ITEM ownerItem
function Osi.GetSurfaceGroundOwnerAt(target) end

---@param surfaceIndex integer
---@return string surfaceName
function Osi.GetSurfaceNameByTypeIndex(surfaceIndex) end

---@param target GUIDSTRING
---@param surfaceLayer string
---@return integer surfaceSize
function Osi.GetSurfaceSize(target, surfaceLayer) end

---@param target GUIDSTRING
---@param surfaceLayer string
---@return integer surfaceTurns
function Osi.GetSurfaceTurns(target, surfaceLayer) end

---@param surface string
---@return integer index
function Osi.GetSurfaceTypeIndex(surface) end

---@param target GUIDSTRING
---@return string swarmGroup
function Osi.GetSwarmGroup(target) end

---@param character CHARACTER
---@return integer powers
function Osi.GetTadpolePowersCount(character) end

---@param item ITEM
---@return ITEM teleportTarget
function Osi.GetTeleportTarget(item) end

---@param target GUIDSTRING
---@return GUIDSTRING template
function Osi.GetTemplate(target) end

---@param number integer
---@return integer value
function Osi.GetTextEventParamInteger(number) end

---@param number integer
---@return number value
function Osi.GetTextEventParamReal(number) end

---@param number integer
---@return string value
function Osi.GetTextEventParamString(number) end

---@param number integer
---@return GUIDSTRING value
function Osi.GetTextEventParamUUID(number) end

---@param target GUIDSTRING
---@return string uuid
function Osi.GetUUID(target) end

---@param item ITEM
---@return integer bool
function Osi.GetUseRemotely(item) end

---@return integer userCount
function Osi.GetUserCount() end

---@param userId integer
---@return string userName
function Osi.GetUserName(userId) end

---@param userId integer
---@return string userProfileID
function Osi.GetUserProfileID(userId) end

---@param source GUIDSTRING
---@param varName string
---@return string varValue
function Osi.GetVarFixedString(source, varName) end

---@param source GUIDSTRING
---@param varName string
---@return GUIDSTRING varValue
function Osi.GetVarFixedStringUUID(source, varName) end

---@param source GUIDSTRING
---@param varName string
---@return number varValue
function Osi.GetVarFloat(source, varName) end

---@param target GUIDSTRING
---@param varName string
---@return number x
---@return number y
---@return number z
function Osi.GetVarFloat3(target, varName) end

---@param source GUIDSTRING
---@param varName string
---@return integer varValue
function Osi.GetVarInteger(source, varName) end

---@param source GUIDSTRING
---@param varName string
---@return GUIDSTRING uuid
function Osi.GetVarObject(source, varName) end

---@param source GUIDSTRING
---@param varName string
---@return string varValue
function Osi.GetVarString(source, varName) end

---@param source GUIDSTRING
---@param varName string
---@return GUIDSTRING uuid
function Osi.GetVarUUID(source, varName) end

---@param weapon ITEM
---@param character CHARACTER
---@return number score
function Osi.GetWeaponScoreForCharacter(weapon, character) end

---@param object GUIDSTRING
---@param locX number
---@param locY number
---@param locZ number
---@param locXDeg number
---@param locYDeg number
---@param locZDeg number
---@return number worldX
---@return number worldY
---@return number worldZ
---@return number worldXDeg
---@return number worldYDeg
---@return number worldZDeg
function Osi.GetWorldTransformFromLocal(object, locX, locY, locZ, locXDeg, locYDeg, locZDeg) end

---@param target GUIDSTRING
---@param status string
---@return integer bool
function Osi.HasActiveStatus(target, status) end

---@param target GUIDSTRING
---@param statusGroup string
---@return integer bool
function Osi.HasActiveStatusWithGroup(target, statusGroup) end

---@param character CHARACTER
---@param tag TAG
---@return integer bool
function Osi.HasAppearanceVisualTag(character, tag) end

---@param target GUIDSTRING
---@param status string
---@return integer bool
function Osi.HasAppliedStatus(target, status) end

---@param target GUIDSTRING
---@param statusType string
---@return integer bool
function Osi.HasAppliedStatusOfType(target, statusType) end

---@param target GUIDSTRING
---@param statusGroup string
---@return integer bool
function Osi.HasAppliedStatusWithGroup(target, statusGroup) end

---@return integer bool
function Osi.HasBeenDishonoured() end

---@param source GUIDSTRING
---@param target GUIDSTRING
---@return integer bool
function Osi.HasLineOfSight(source, target) end

---@param entity GUIDSTRING
---@param mainhandOffhandAny string
---@return integer bool
function Osi.HasMeleeWeaponEquipped(entity, mainhandOffhandAny) end

---@param character CHARACTER
---@return integer bool
function Osi.HasNoFollowFlag(character) end

---@param item ITEM
---@param useAction string
---@return integer bool
function Osi.HasOnUse(item, useAction) end

---@param entity GUIDSTRING
---@param passiveID string
---@return integer boolHasPassive
function Osi.HasPassive(entity, passiveID) end

---@param entity GUIDSTRING
---@param mainhandOffhandAny string
---@return integer bool
function Osi.HasRangedWeaponEquipped(entity, mainhandOffhandAny) end

---@param character CHARACTER
---@param recipeID string
---@return integer bool
function Osi.HasRecipeUnlocked(character, recipeID) end

---@param player CHARACTER
---@param itemTemplate GUIDSTRING
---@return integer bool
function Osi.HasRecipeUnlockedWithIngredient(player, itemTemplate) end

---@param character CHARACTER
---@param skill string
---@return integer value
function Osi.HasSkill(character, skill) end

---@param character CHARACTER
---@param spell string
---@return integer bool
function Osi.HasSpell(character, spell) end

---@param character CHARACTER
---@param power string
---@return integer bool
function Osi.HasTadpolePower(character, power) end

---@param entity GUIDSTRING
---@param tags string
---@return integer bool
function Osi.HasTaggedItem(entity, tags) end

---@param item ITEM
---@return integer bool
function Osi.IgnoreGenerics(item) end

---@param character1 CHARACTER
---@param character2 CHARACTER
---@return integer bool
function Osi.InSamePartyGroup(character1, character2) end

---@param a integer
---@param b integer
---@return integer quotient
function Osi.IntegerDivide(a, b) end

---@param a integer
---@param b integer
---@return integer maximum
function Osi.IntegerMax(a, b) end

---@param a integer
---@param b integer
---@return integer minimum
function Osi.IntegerMin(a, b) end

---@param num integer
---@param mod integer
---@return integer return
function Osi.IntegerModulo(num, mod) end

---@param a integer
---@param b integer
---@return integer product
function Osi.IntegerProduct(a, b) end

---@param a integer
---@param b integer
---@return integer result
function Osi.IntegerSubtract(a, b) end

---@param a integer
---@param b integer
---@return integer sum
function Osi.IntegerSum(a, b) end

---@param i integer
---@return number r
function Osi.IntegerToReal(i) end

---@param integer integer
---@return string result
function Osi.IntegerToString(integer) end

---@param inventoryHolder GUIDSTRING
---@return integer value
function Osi.InventoryGetGoldValue(inventoryHolder) end

---@param object GUIDSTRING
---@return integer active
function Osi.IsActive(object) end

---@param character CHARACTER
---@param otherCharacter CHARACTER
---@return integer bool
function Osi.IsAlly(character, otherCharacter) end

---@param character CHARACTER
---@return integer bool
function Osi.IsAnyTutorialShowingFor(character) end

---@param target GUIDSTRING
---@return integer bool
function Osi.IsBoss(target) end

---@param object GUIDSTRING
---@return integer bool
function Osi.IsCharacter(object) end

---@param levelName string
---@return integer bool
function Osi.IsCharacterCreationLevel(levelName) end

---@param item ITEM
---@return integer closed
function Osi.IsClosed(item) end

---@param door ITEM
---@return integer closing
function Osi.IsClosing(door) end

---@param item ITEM
---@return integer bool
function Osi.IsConsumable(item) end

---@param item ITEM
---@return integer isContainer
function Osi.IsContainer(item) end

---@param character CHARACTER
---@return integer isControlled
function Osi.IsControlled(character) end

---@param character CHARACTER
---@return integer bool
function Osi.IsDead(character) end

---@param item ITEM
---@return integer destroyed
function Osi.IsDestroyed(item) end

---@param item ITEM
---@return integer bool
function Osi.IsDestructible(item) end

---@param character CHARACTER
---@return integer bool
function Osi.IsDialogueBlocked(character) end

---@return integer isDropInCCActive
function Osi.IsDropInCCActive() end

---@param entity GUIDSTRING
---@return integer bool
function Osi.IsDroppedOnDeath(entity) end

---@param character CHARACTER
---@param otherCharacter CHARACTER
---@return integer bool
function Osi.IsEnemy(character, otherCharacter) end

---@param item ITEM
---@return integer bool
function Osi.IsEquipable(item) end

---@param item ITEM
---@param proficiencyGroup string
---@return integer bool
function Osi.IsEquipmentWithProficiency(item, proficiencyGroup) end

---@param item ITEM
---@return integer bool
function Osi.IsEquipped(item) end

---@param item ITEM
---@return integer bool
function Osi.IsFalling(item) end

---@param object GUIDSTRING
---@return integer bool
function Osi.IsFloating(object) end

---@param target GUIDSTRING
---@return integer bool
function Osi.IsForceUpdate(target) end

---@param object GUIDSTRING
---@return integer bool
function Osi.IsFreshCorpse(object) end

---@param levelName string
---@return integer bool
function Osi.IsGameLevel(levelName) end

---@return integer isRunning
function Osi.IsGameStateRunning() end

---@param object GUIDSTRING
---@return integer bool
function Osi.IsGlobal(object) end

---@param proxyObject GUIDSTRING
---@return integer isProxy
function Osi.IsHitProxy(proxyObject) end

---@param ownerObject GUIDSTRING
---@return integer isProxyOwner
function Osi.IsHitProxyOwner(ownerObject) end

---@param character CHARACTER
---@return integer bool
function Osi.IsImmortal(character) end

---@param object GUIDSTRING
---@return integer bool
function Osi.IsImmuneToFallDamage(object) end

---@param target GUIDSTRING
---@param status string
---@param cause GUIDSTRING
---@return integer bool
function Osi.IsImmuneToStatus(target, status, cause) end

---@param target GUIDSTRING
---@param statusGroup string
---@param cause GUIDSTRING
---@return integer bool
function Osi.IsImmuneToStatusGroup(target, statusGroup, cause) end

---@param entity GUIDSTRING
---@return integer bool
function Osi.IsInCombat(entity) end

---@param victim CHARACTER
---@return integer inDanger
function Osi.IsInDangerOfAttackOfOpportunity(victim) end

---@param x number
---@param y number
---@param x2 number
---@param character CHARACTER
---@param radius number
---@param alsoIfCanStopMovement integer
---@return integer isDangerous
function Osi.IsInDangerousSurfaceFor(x, y, x2, character, radius, alsoIfCanStopMovement) end

---@param playerCharacter CHARACTER
---@return integer isInFTB
function Osi.IsInForceTurnBasedMode(playerCharacter) end

---@param object GUIDSTRING
---@return integer bool
function Osi.IsInInventory(object) end

---@param object GUIDSTRING
---@param inventory GUIDSTRING
---@return integer bool
function Osi.IsInInventoryOf(object, inventory) end

---@param object GUIDSTRING
---@param source GUIDSTRING
---@return integer bool
function Osi.IsInMagicPockets(object, source) end

---@param entity GUIDSTRING
---@param combatGuid GUIDSTRING
---@return integer bool
function Osi.IsInNarrativeCombat(entity, combatGuid) end

---@param character CHARACTER
---@param target CHARACTER
---@return integer bool
function Osi.IsInPartyWith(character, target) end

---@param object GUIDSTRING
---@param trigger TRIGGER
---@return integer bool
function Osi.IsInTrigger(object, trigger) end

---@param character CHARACTER
---@return integer bool
function Osi.IsInteractionDisabled(character) end

---@param inventoryHolder GUIDSTRING
---@return integer bool
function Osi.IsInventoryEmpty(inventoryHolder) end

---@param object GUIDSTRING
---@return integer bool
function Osi.IsInvisible(object) end

---@param object GUIDSTRING
---@return integer bool
function Osi.IsInvisibleByScript(object) end

---@param object GUIDSTRING
---@return integer bool
function Osi.IsItem(object) end

---@param item ITEM
---@return integer bool
function Osi.IsJunk(item) end

---@param item ITEM
---@return integer bool
function Osi.IsLadder(item) end

---@param item ITEM
---@return integer locked
function Osi.IsLocked(item) end

---@param item ITEM
---@return integer bool
function Osi.IsMovable(item) end

---@param character CHARACTER
---@return integer bool
function Osi.IsMovementBlocked(character) end

---@param item ITEM
---@return integer bool
function Osi.IsMoving(item) end

---@param combatGuid GUIDSTRING
---@return integer bool
function Osi.IsNarrativeCombat(combatGuid) end

---@param character CHARACTER
---@param otherCharacter CHARACTER
---@return integer bool
function Osi.IsNeutral(character, otherCharacter) end

---@param object GUIDSTRING
---@return integer bool
function Osi.IsOnStage(object) end

---@param character CHARACTER
---@return integer bool
function Osi.IsOnlyPlayer(character) end

---@param character CHARACTER
---@return integer bool
function Osi.IsOnlyPlayerInParty(character) end

---@param item ITEM
---@return integer opened
function Osi.IsOpened(item) end

---@param door ITEM
---@return integer opening
function Osi.IsOpening(door) end

---@param character CHARACTER
---@return integer bool
function Osi.IsPartyFollower(character) end

---@param character CHARACTER
---@param includeNotControlable integer
---@return integer bool
function Osi.IsPartyMember(character, includeNotControlable) end

---@param character CHARACTER
---@return integer bool
function Osi.IsPeanutAvailable(character) end

---@param character CHARACTER
---@return integer bool
function Osi.IsPlayer(character) end

---@param item CHARACTER
---@return integer isPoisoned
function Osi.IsPoisoned(item) end

---@param character CHARACTER
---@param equipment ITEM
---@return integer isProficient
function Osi.IsProficientWith(character, equipment) end

---@param item ITEM
---@return integer bool
function Osi.IsPublicDomain(item) end

---@param item ITEM
---@param includeThrown integer
---@return integer bool
function Osi.IsRangedWeapon(item, includeThrown) end

---@param entity GUIDSTRING
---@return integer bool
function Osi.IsReposed(entity) end

---@param entity GUIDSTRING
---@return integer bool
function Osi.IsReposedConstrained(entity) end

---@param entity GUIDSTRING
---@return integer bool
function Osi.IsReposedLying(entity) end

---@param entity GUIDSTRING
---@param onEntity GUIDSTRING
---@return integer bool
function Osi.IsReposedOnEntity(entity, onEntity) end

---@param entity GUIDSTRING
---@return integer bool
function Osi.IsReposedSitting(entity) end

---@param entity GUIDSTRING
---@return integer bool
function Osi.IsReposedStanding(entity) end

---@param speaker GUIDSTRING
---@return integer success
function Osi.IsSpeakerReserved(speaker) end

---@param character GUIDSTRING
---@param spellID string
---@return integer bool
function Osi.IsSpellActive(character, spellID) end

---@param statusID string
---@param statusGroup string
---@return integer bool
function Osi.IsStatusFromGroup(statusID, statusGroup) end

---@param item ITEM
---@return integer bool
function Osi.IsStoryItem(item) end

---@param item ITEM
---@return integer stuck
function Osi.IsStuck(item) end

---@param stringA string
---@param stringB string
---@return integer bool
function Osi.IsSubstring(stringA, stringB) end

---@param potentialSummon GUIDSTRING
---@return integer bool
function Osi.IsSummon(potentialSummon) end

---@param target GUIDSTRING
---@param tag TAG
---@return integer bool
function Osi.IsTagged(target, tag) end

---@param item ITEM
---@return integer bool
function Osi.IsTorch(item) end

---@param entity GUIDSTRING
---@return integer bool
function Osi.IsTradable(entity) end

---@param item ITEM
---@return integer bool
function Osi.IsTrap(item) end

---@param item ITEM
---@return integer bool
function Osi.IsTrapArmed(item) end

---@param item ITEM
---@return integer bool
function Osi.IsTrapDiscovered(item) end

---@param item ITEM
---@return integer bool
function Osi.IsWeapon(item) end

---@param character CHARACTER
---@return integer bool
function Osi.IsWeaponUnsheathed(character) end

---@param item ITEM
---@return integer value
function Osi.ItemGetGoldValue(item) end

---@param item ITEM
---@return integer value
function Osi.ItemGetSupplyValue(item) end

---@param item ITEM
---@param character CHARACTER
---@param moveAndReport integer
---@return integer bool
function Osi.ItemIsInPartyInventory(item, character, moveAndReport) end

---@param item ITEM
---@param character CHARACTER
---@param moveAndReport integer
---@return integer bool
function Osi.ItemIsInUserInventory(item, character, moveAndReport) end

---@param tags string
---@param inventoryHolder GUIDSTRING
---@return integer count
function Osi.ItemTagIsInInventory(tags, inventoryHolder) end

---@param object GUIDSTRING
---@return string translatedStringKey
function Osi.ObjectGetTitle(object) end

---@param entity GUIDSTRING
---@param timer string
---@return integer exists
function Osi.ObjectTimerExists(entity, timer) end

---@param looter CHARACTER
---@param target CHARACTER
---@return integer bool
function Osi.OpenCharacterLootUI(looter, target) end

---@param player CHARACTER
---@param resourceName string
---@return number amount
function Osi.PartyGetActionResourceValue(player, resourceName) end

---@param character CHARACTER
---@return integer gold
function Osi.PartyGetGold(character) end

---@param character CHARACTER
---@param tags string
---@param amount integer
---@return integer amountRemoved
function Osi.PartyRemoveTaggedItems(character, tags, amount) end

---@param object GUIDSTRING
---@param target GUIDSTRING
---@param fxName EFFECTRESOURCE
---@param sourceBone string
---@param targetBone string
---@return INTEGER64 fxHandle
function Osi.PlayLoopBeamEffect(object, target, fxName, sourceBone, targetBone) end

---@param object GUIDSTRING
---@param fxName EFFECTRESOURCE
---@param boneName string
---@param scale number
---@return INTEGER64 fxHandle
function Osi.PlayLoopEffect(object, fxName, boneName, scale) end

---@param fxName EFFECTRESOURCE
---@param x number
---@param y number
---@param z number
---@param scale number
---@return INTEGER64 fxHandle
function Osi.PlayLoopEffectAtPosition(fxName, x, y, z, scale) end

---@param fxName EFFECTRESOURCE
---@param x number
---@param y number
---@param z number
---@param xAngle number
---@param yAngle number
---@param zAngle number
---@param scale number
---@return INTEGER64 fxHandle
function Osi.PlayLoopEffectAtPositionAndRotation(fxName, x, y, z, xAngle, yAngle, zAngle, scale) end

---@param x number
---@param y number
---@param z number
---@param trigger TRIGGER
---@return integer bool
function Osi.PositionIsInTrigger(x, y, z, trigger) end

---@param quest string
---@return string parentQuest
function Osi.QuestGetParent(quest) end

---@param quest string
---@return string rewardTarget
function Osi.QuestGetRewardTarget(quest) end

---@param character CHARACTER
---@param quest string
---@return integer bool
function Osi.QuestIsAccepted(character, quest) end

---@param quest string
---@return integer bool
function Osi.QuestIsClosed(quest) end

---@param questID string
---@param stateID string
---@return integer result
function Osi.QuestUpdateExists(questID, stateID) end

---@param questID string
---@param stateID string
---@return string topLevelQuestID
function Osi.QuestUpdateGetTopLevel(questID, stateID) end

---@param character CHARACTER
---@param quest string
---@param update string
---@return integer bool
function Osi.QuestUpdateIsUnlocked(character, quest, update) end

---@param modulo integer
---@return integer random
function Osi.Random(modulo) end

---@param a number
---@param b number
---@return number quotient
function Osi.RealDivide(a, b) end

---@param a number
---@param b number
---@return number maximum
function Osi.RealMax(a, b) end

---@param a number
---@param b number
---@return number minimum
function Osi.RealMin(a, b) end

---@param a number
---@param b number
---@return number product
function Osi.RealProduct(a, b) end

---@param a number
---@return number sqrRoot
function Osi.RealSqrRoot(a) end

---@param a number
---@param b number
---@return number result
function Osi.RealSubtract(a, b) end

---@param a number
---@param b number
---@return number sum
function Osi.RealSum(a, b) end

---@param r number
---@return integer i
function Osi.RealToInteger(r) end

---@param number number
---@return string result
function Osi.RealToString(number) end

---@param ratingOwner CHARACTER
---@param ratedCharacter CHARACTER
---@return integer bool
function Osi.RemoveApprovalRating(ratingOwner, ratedCharacter) end

---@param translatedStringKey string
---@return string translatedString
function Osi.ResolveTranslatedString(translatedStringKey) end

---@param target GUIDSTRING
---@param tagExpression string
---@return integer bool
function Osi.SatisfiesTagExpression(target, tagExpression) end

---@param speaker GUIDSTRING
---@param allowAutomatedDialogs integer
---@return DIALOGRESOURCE dialog
---@return integer instanceID
function Osi.SpeakerGetDialog(speaker, allowAutomatedDialogs) end

---@param spellID string
---@param spellFlag string
---@return integer hasFlag
function Osi.SpellHasSpellFlag(spellID, spellFlag) end

---@param dialog DIALOGRESOURCE
---@param allowAttack integer
---@param speaker1 GUIDSTRING
---@param speaker2 GUIDSTRING
---@param speaker3 GUIDSTRING
---@param speaker4 GUIDSTRING
---@param speaker5 GUIDSTRING
---@param speaker6 GUIDSTRING
---@param speaker7 GUIDSTRING
---@param speaker8 GUIDSTRING
---@param triggerID GUIDSTRING
---@return integer success
---@return integer dialogInstance
function Osi.StartBehaviorDialog_Internal(dialog, allowAttack, speaker1, speaker2, speaker3, speaker4, speaker5, speaker6, speaker7, speaker8, triggerID) end

---@param dialog DIALOGRESOURCE
---@param allowAttack integer
---@param speaker1 GUIDSTRING
---@param speaker2 GUIDSTRING
---@param speaker3 GUIDSTRING
---@param speaker4 GUIDSTRING
---@param speaker5 GUIDSTRING
---@param speaker6 GUIDSTRING
---@param allowSpellVocal integer
---@return integer success
---@return integer dialogInstance
function Osi.StartDialog_Internal(dialog, allowAttack, speaker1, speaker2, speaker3, speaker4, speaker5, speaker6, allowSpellVocal) end

---@param timeline TIMELINERESOURCE
---@param speaker1 GUIDSTRING
---@param speaker2 GUIDSTRING
---@param speaker3 GUIDSTRING
---@param speaker4 GUIDSTRING
---@param speaker5 GUIDSTRING
---@param speaker6 GUIDSTRING
---@return integer success
function Osi.StartGameplayTimeline(timeline, speaker1, speaker2, speaker3, speaker4, speaker5, speaker6) end

---@param dialog DIALOGRESOURCE
---@param trigger TRIGGER
---@return integer success
---@return integer dialogID
function Osi.StartWorldTimeline(dialog, trigger) end

---@param statName string
---@param player CHARACTER
---@return integer amount
function Osi.StatStringGetCountInMagicPockets(statName, player) end

---@param statName string
---@param inventoryHolder GUIDSTRING
---@return integer amount
function Osi.StatStringIsInInventory(statName, inventoryHolder) end

---@param target GUIDSTRING
---@return integer bool
function Osi.StayInAiHints(target) end

---@param string string
---@param start integer
---@param count integer
---@return string result
function Osi.Substring(string, start, count) end

---@param tags string
---@param source GUIDSTRING
---@return integer amount
function Osi.TaggedItemsGetCountInMagicPockets(tags, source) end

---@param itemTemplate ITEMROOT
---@return integer bool
function Osi.TemplateCanSitOn(itemTemplate) end

---@param template ROOT
---@param source GUIDSTRING
---@return integer amount
function Osi.TemplateGetCountInMagicPockets(template, source) end

---@param itemTemplate ITEMROOT
---@return string stringHandle
function Osi.TemplateGetDisplayString(itemTemplate) end

---@param itemTemplate ITEMROOT
---@param inventoryHolder GUIDSTRING
---@return integer count
function Osi.TemplateIsInInventory(itemTemplate, inventoryHolder) end

---@param itemTemplate ITEMROOT
---@param character CHARACTER
---@param moveAndReport integer
---@return integer countMoved
function Osi.TemplateIsInPartyInventory(itemTemplate, character, moveAndReport) end

---@param itemTemplate ITEMROOT
---@param character CHARACTER
---@param moveAndReport integer
---@return integer count
function Osi.TemplateIsInUserInventory(itemTemplate, character, moveAndReport) end

---@param timer string
---@return integer exists
function Osi.TimerExists(timer) end

---@param trigger TRIGGER
---@return number x
---@return number y
---@return number z
function Osi.TriggerGetRandomPosition(trigger) end

---@param character CHARACTER
---@return integer gold
function Osi.UserGetGold(character) end

---@param userID integer
---@return integer state
function Osi.UserGetSafeRomanceOption(userID) end

---@param character CHARACTER
---@param tags string
---@param amount integer
---@return integer amountRemoved
function Osi.UserRemoveTaggedItems(character, tags, amount) end

---@param character CHARACTER
---@param toObject GUIDSTRING
---@param tags string
---@param amount integer
---@return integer amountTransfered
function Osi.UserTransferTaggedItems(character, toObject, tags, amount) end

---@param userID integer
---@return integer bool
function Osi.WasTutorialCompletedForUser(userID) end
--#endregion

--#region Calls

function Osi.ActOver() end

---@param levelTemplate LEVELTEMPLATE
function Osi.ActivatePersistentLevelTemplate(levelTemplate) end

---@param levelTemplate LEVELTEMPLATE
function Osi.ActivatePersistentLevelTemplateWithCombat(levelTemplate) end

---@overload fun(player:CHARACTER, trader:CHARACTER, canSell:integer)
---@overload fun(player:CHARACTER, trader:CHARACTER, canSell:integer, tradeMode:TRADEMODE)
---@param player CHARACTER
---@param trader CHARACTER
---@param canSell integer
---@param tradeMode TRADEMODE
---@param initiallySelectedTradeObject GUIDSTRING
---@param itemsTagFilter string
function Osi.ActivateTrade(player, trader, canSell, tradeMode, initiallySelectedTradeObject, itemsTagFilter) end

---@param object GUIDSTRING
---@param amount integer
function Osi.AddActionPoints(object, amount) end

---@param character CHARACTER
---@param player CHARACTER
---@param delta integer
function Osi.AddAttitudeTowardsPlayer(character, player, delta) end

---@param character CHARACTER
---@param goal GUIDSTRING
---@param categoryId string
function Osi.AddBackgroundGoal(character, goal, categoryId) end

---@param object GUIDSTRING
---@param boosts string
---@param sourceID string
---@param cause GUIDSTRING
function Osi.AddBoosts(object, boosts, sourceID, cause) end

---@param object GUIDSTRING
---@param preset string
function Osi.AddCustomMaterialOverride(object, preset) end

---@param object GUIDSTRING
---@param resource string
---@param filter string
function Osi.AddCustomMaterialResourceOverride(object, resource, filter) end

---@param character CHARACTER
---@param visual GUIDSTRING
function Osi.AddCustomVisualOverride(character, visual) end

---@param bookname string
---@param entryname string
function Osi.AddEntryToCustomBook(bookname, entryname) end

---@param character CHARACTER
---@param gain integer
function Osi.AddExplorationExperience(character, gain) end

---@param object GUIDSTRING
---@param fogVolume GUIDSTRING
function Osi.AddFogVolume(object, fogVolume) end

---@param inventoryHolder GUIDSTRING
---@param amount integer
function Osi.AddGold(inventoryHolder, amount) end

---@param source GUIDSTRING
---@param amount integer
function Osi.AddGoldToMagicPockets(source, amount) end

---@param bookname string
---@param entryname string
function Osi.AddIllustrationToCustomBook(bookname, entryname) end

---@param follower CHARACTER
---@param leader CHARACTER
function Osi.AddPartyFollower(follower, leader) end

---@param entity GUIDSTRING
---@param passiveID string
function Osi.AddPassive(entity, passiveID) end

---@param character CHARACTER
---@param tag TAG
function Osi.AddPreferredAiTargetTag(character, tag) end

---@overload fun(character:CHARACTER, spell:string)
---@overload fun(character:CHARACTER, spell:string, showNotification:integer)
---@param character CHARACTER
---@param spell string
---@param showNotification integer
---@param addContainerSpells integer
function Osi.AddSpell(character, spell, showNotification, addContainerSpells) end

---@param character CHARACTER
---@param amount integer
function Osi.AddTadpole(character, amount) end

---@param character CHARACTER
---@param power string
---@param ignorePrerequisites integer
function Osi.AddTadpolePower(character, power, ignorePrerequisites) end

---@param source integer
---@param target integer
function Osi.AddToParty(source, target) end

---@param object GUIDSTRING
---@param rtpcName string
function Osi.AddTrackedSoundEntity(object, rtpcName) end

---@param character CHARACTER
---@param item ITEM
function Osi.AiAddInterestingItem(character, item) end

---@param character CHARACTER
---@param item ITEM
function Osi.AiRemoveInterestingItem(character, item) end

---@param isAllowed integer
function Osi.AllowNewPlayers(isAllowed) end

---@overload fun(character:CHARACTER, target:GUIDSTRING, playSpawn:integer, customSpawnAnimation:ANIMATION, appearedEvent:string)
---@param character CHARACTER
---@param target GUIDSTRING
---@param playSpawn integer
---@param customSpawnAnimation ANIMATION
---@param appearedEvent string
---@param preventTeleportOnFailure integer
function Osi.AppearAt(character, target, playSpawn, customSpawnAnimation, appearedEvent, preventTeleportOnFailure) end

---@overload fun(character:CHARACTER, x:number, y:number, z:number, playSpawn:integer, customSpawnAnimation:ANIMATION, appearedEvent:string)
---@param character CHARACTER
---@param x number
---@param y number
---@param z number
---@param playSpawn integer
---@param customSpawnAnimation ANIMATION
---@param appearedEvent string
---@param preventTeleportOnFailure integer
function Osi.AppearAtPosition(character, x, y, z, playSpawn, customSpawnAnimation, appearedEvent, preventTeleportOnFailure) end

---@overload fun(character:CHARACTER, target:CHARACTER, directionFrom:GUIDSTRING, playSpawn:integer, customSpawnAnimation:ANIMATION, appearedEvent:string)
---@param character CHARACTER
---@param target CHARACTER
---@param directionFrom GUIDSTRING
---@param playSpawn integer
---@param customSpawnAnimation ANIMATION
---@param appearedEvent string
---@param preventTeleportOnFailure integer
function Osi.AppearOnTrailOutOfSightTo(character, target, directionFrom, playSpawn, customSpawnAnimation, appearedEvent, preventTeleportOnFailure) end

---@overload fun(character:CHARACTER, target:GUIDSTRING, directionFrom:GUIDSTRING, playSpawn:integer, customSpawnAnimation:ANIMATION, appearedEvent:string)
---@param character CHARACTER
---@param target GUIDSTRING
---@param directionFrom GUIDSTRING
---@param playSpawn integer
---@param customSpawnAnimation ANIMATION
---@param appearedEvent string
---@param preventTeleportOnFailure integer
function Osi.AppearOutOfSightTo(character, target, directionFrom, playSpawn, customSpawnAnimation, appearedEvent, preventTeleportOnFailure) end

---@overload fun(character:CHARACTER, x:number, y:number, z:number, directionFrom:GUIDSTRING, playSpawn:integer, customSpawnAnimation:ANIMATION, appearedEvent:string)
---@param character CHARACTER
---@param x number
---@param y number
---@param z number
---@param directionFrom GUIDSTRING
---@param playSpawn integer
---@param customSpawnAnimation ANIMATION
---@param appearedEvent string
---@param preventTeleportOnFailure integer
function Osi.AppearOutOfSightToPosition(character, x, y, z, directionFrom, playSpawn, customSpawnAnimation, appearedEvent, preventTeleportOnFailure) end

---@overload fun(object:GUIDSTRING, damage:integer, damageType:string)
---@param object GUIDSTRING
---@param damage integer
---@param damageType string
---@param source GUIDSTRING
function Osi.ApplyDamage(object, damage, damageType, source) end

---@overload fun(object:GUIDSTRING, status:string, duration:number)
---@overload fun(object:GUIDSTRING, status:string, duration:number, force:integer)
---@param object GUIDSTRING
---@param status string
---@param duration number
---@param force integer
---@param source GUIDSTRING
function Osi.ApplyStatus(object, status, duration, force, source) end

---@param userID integer
---@param character CHARACTER
function Osi.AssignToUser(userID, character) end

---@overload fun(parentObject:GUIDSTRING, proxyObject:GUIDSTRING)
---@param parentObject GUIDSTRING
---@param proxyObject GUIDSTRING
---@param attachment string
function Osi.AttachHitProxy(parentObject, proxyObject, attachment) end

---@param springObject GUIDSTRING
---@param attachedBone string
---@param attachToObject GUIDSTRING
---@param attachToBone string
function Osi.AttachSpring(springObject, attachedBone, attachToObject, attachToBone) end

---@param attaching CHARACTER
---@param toCharacter CHARACTER
function Osi.AttachToPartyGroup(attaching, toCharacter) end

---@overload fun(character:CHARACTER, target:GUIDSTRING)
---@param character CHARACTER
---@param target GUIDSTRING
---@param alwaysHit integer
function Osi.Attack(character, target, alwaysHit) end

function Osi.AutoSave() end

---@param character GUIDSTRING
function Osi.BlockFlee(character) end

---@param character CHARACTER
---@param block integer
function Osi.BlockNewCrimeReactions(character, block) end

---@param character CHARACTER
---@param name string
---@param time number
---@param hideUI integer
---@param smooth integer
---@param hideShroud integer
function Osi.CameraActivate(character, name, time, hideUI, smooth, hideShroud) end

---@param character CHARACTER
function Osi.CharacterDisableAllCrimes(character) end

---@param character CHARACTER
---@param crime string
function Osi.CharacterDisableCrime(character, crime) end

---@param character CHARACTER
function Osi.CharacterEnableAllCrimes(character) end

---@param character CHARACTER
---@param crime string
function Osi.CharacterEnableCrime(character, crime) end

---@param character CHARACTER
---@param enable integer
function Osi.CharacterEnableCrimeWarnings(character, enable) end

---@param target CHARACTER
---@param equipmentSet string
function Osi.CharacterGiveEquipmentSet(target, equipmentSet) end

---@param character CHARACTER
---@param player CHARACTER
---@param timer number
function Osi.CharacterIgnoreCharacterActiveCrimes(character, player, timer) end

---@overload fun(character:CHARACTER, target:GUIDSTRING, movementSpeed:string, event:string)
---@param character CHARACTER
---@param target GUIDSTRING
---@param movementSpeed string
---@param event string
---@param moveID integer
function Osi.CharacterMoveTo(character, target, movementSpeed, event, moveID) end

---@param character CHARACTER
---@param target GUIDSTRING
---@param dialog DIALOGRESOURCE
---@param moveID string
---@param movementSpeed string
---@param timeout number
function Osi.CharacterMoveToAndTalk(character, target, dialog, moveID, movementSpeed, timeout) end

---@param character CHARACTER
---@param target GUIDSTRING
---@param moveId string
---@param reason string
function Osi.CharacterMoveToAndTalkFail(character, target, moveId, reason) end

---@overload fun(character:CHARACTER, x:number, y:number, z:number, movementSpeed:string, event:string)
---@param character CHARACTER
---@param x number
---@param y number
---@param z number
---@param movementSpeed string
---@param event string
---@param moveID integer
function Osi.CharacterMoveToPosition(character, x, y, z, movementSpeed, event, moveID) end

---@param character CHARACTER
---@param turn integer
function Osi.CharacterSendGlobalCombatCounter(character, turn) end

---@param player CHARACTER
---@param crimeType string
---@param evidence GUIDSTRING
function Osi.CharacterStopCrime(player, crimeType, evidence) end

---@param player CHARACTER
---@param crime integer
function Osi.CharacterStopCrimeWithID(player, crime) end

---@param character CHARACTER
function Osi.ClearCanOpenDoorsOverride(character) end

---@param object GUIDSTRING
function Osi.ClearCustomMaterialOverrides(object) end

---@param object GUIDSTRING
function Osi.ClearCustomMaterialResourceOverrides(object) end

---@param target GUIDSTRING
---@param tag TAG
function Osi.ClearDialogTag(target, tag) end

---@overload fun(flag:FLAG)
---@overload fun(flag:FLAG, object:GUIDSTRING)
---@overload fun(flag:FLAG, object:GUIDSTRING, dialogInstance:integer)
---@param flag FLAG
---@param object GUIDSTRING
---@param dialogInstance integer
---@param sendFlagClearEventIfChanged integer
function Osi.ClearFlag(flag, object, dialogInstance, sendFlagClearEventIfChanged) end

---@param entity GUIDSTRING
function Osi.ClearGodOverride(entity) end

---@param entity GUIDSTRING
---@param faction FACTION
function Osi.ClearIndividualRelation(entity, faction) end

---@param source GUIDSTRING
---@param flag FLAG
---@param sendFlagClearEventsIfChanged integer
function Osi.ClearMagicPocketsFlag(source, flag, sendFlagClearEventsIfChanged) end

---@param item ITEM
function Osi.ClearOriginalOwner(item) end

---@param item ITEM
function Osi.ClearOwnership(item) end

---@param faction1 FACTION
---@param faction2 FACTION
function Osi.ClearRelation(faction1, faction2) end

---@overload fun(character:CHARACTER, seconds:number, fadeID:string)
---@param character CHARACTER
---@param seconds number
---@param fadeID string
---@param timelineFade integer
function Osi.ClearScreenFade(character, seconds, fadeID, timelineFade) end

---@param springObject GUIDSTRING
function Osi.ClearSpring(springObject) end

---@param object GUIDSTRING
function Osi.ClearStoryBoosts(object) end

---@param target GUIDSTRING
---@param tag TAG
function Osi.ClearTag(target, tag) end

---@param userID integer
---@param seconds number
function Osi.ClearTimelineScreenFade(userID, seconds) end

---@param character CHARACTER
function Osi.ClearTradeGeneratedItems(character) end

---@param source GUIDSTRING
---@param varName string
function Osi.ClearVarObject(source, varName) end

---@param source GUIDSTRING
---@param varName string
function Osi.ClearVarUUID(source, varName) end

---@param item ITEM
function Osi.Close(item) end

---@param character CHARACTER
---@param type integer
---@param uIInstance string
function Osi.CloseStoryElementUI(character, type, uIInstance) end

---@param character CHARACTER
---@param uIName string
function Osi.CloseUI(character, uIName) end

---@param object GUIDSTRING
function Osi.CombatKillFor(object) end

---@param userID integer
function Osi.CompleteTutorialForUser(userID) end

---@param constellationObject GUIDSTRING
---@param inputSocketName string
---@param sender GUIDSTRING
---@param objectParam GUIDSTRING
function Osi.ConstellationTriggerInputSocket(constellationObject, inputSocketName, sender, objectParam) end

---@param target CHARACTER
---@param source CHARACTER
function Osi.CopyCharacterEquipment(target, source) end

---@overload fun(target:GUIDSTRING, spellID:string, casterLevel:integer)
---@param target GUIDSTRING
---@param spellID string
---@param casterLevel integer
---@param caster2 GUIDSTRING
function Osi.CreateExplosion(target, spellID, casterLevel, caster2) end

---@overload fun(x:number, y:number, z:number, spellID:string, casterLevel:integer)
---@param x number
---@param y number
---@param z number
---@param spellID string
---@param casterLevel integer
---@param caster2 GUIDSTRING
function Osi.CreateExplosionAtPosition(x, y, z, spellID, casterLevel, caster2) end

---@param target GUIDSTRING
---@param spellID string
function Osi.CreateProjectileStrikeAt(target, spellID) end

---@param x number
---@param y number
---@param z number
---@param spellID string
function Osi.CreateProjectileStrikeAtPosition(x, y, z, spellID) end

---@param target GUIDSTRING
---@param surfaceType string
---@param cellAmountMin integer
---@param cellAmountMax integer
---@param growAmountMin integer
---@param growAmountMax integer
---@param growTime number
function Osi.CreatePuddle(target, surfaceType, cellAmountMin, cellAmountMax, growAmountMin, growAmountMax, growTime) end

---@overload fun(target:GUIDSTRING, surfaceType:string, radius:number, lifetime:number)
---@param target GUIDSTRING
---@param surfaceType string
---@param radius number
---@param lifetime number
---@param source GUIDSTRING
function Osi.CreateSurface(target, surfaceType, radius, lifetime, source) end

---@overload fun(x:number, y:number, z:number, surfaceType:string, radius:number, lifetime:number)
---@param x number
---@param y number
---@param z number
---@param surfaceType string
---@param radius number
---@param lifetime number
---@param source GUIDSTRING
function Osi.CreateSurfaceAtPosition(x, y, z, surfaceType, radius, lifetime, source) end

---@param crimeArea TRIGGER
function Osi.CrimeAreaResetTensionModifier(crimeArea) end

---@param crimeArea TRIGGER
---@param modifier integer
function Osi.CrimeAreaSetTensionModifier(crimeArea, modifier) end

function Osi.CrimeClearAll() end

---@param crimeID integer
---@param interrogator CHARACTER
function Osi.CrimeConfrontationDone(crimeID, interrogator) end

---@param crimeID integer
---@param fallbackOwner CHARACTER
---@param criminal1 CHARACTER
---@param criminal2 CHARACTER
---@param criminal3 CHARACTER
---@param criminal4 CHARACTER
function Osi.CrimeDropEvidenceFromCriminals(crimeID, fallbackOwner, criminal1, criminal2, criminal3, criminal4) end

---@param criminal GUIDSTRING
---@param npc GUIDSTRING
---@param ignoreDuration integer
function Osi.CrimeIgnoreAllCrimesForCriminal(criminal, npc, ignoreDuration) end

---@param crimeID integer
---@param npc GUIDSTRING
function Osi.CrimeIgnoreCrime(crimeID, npc) end

---@param crimeID integer
---@param interrogator CHARACTER
---@param foundEvidence integer
---@param criminal1 CHARACTER
---@param criminal2 CHARACTER
---@param criminal3 CHARACTER
---@param criminal4 CHARACTER
function Osi.CrimeInterrogationDone(crimeID, interrogator, foundEvidence, criminal1, criminal2, criminal3, criminal4) end

---@param targetCrimeID integer
---@param sourceCrimeID integer
function Osi.CrimeMergeEvidenceFrom(targetCrimeID, sourceCrimeID) end

---@param crimeID integer
---@param criminal1 GUIDSTRING
---@param criminal2 GUIDSTRING
---@param criminal3 GUIDSTRING
---@param criminal4 GUIDSTRING
function Osi.CrimeResetInterrogationForCriminals(crimeID, criminal1, criminal2, criminal3, criminal4) end

---@param crimeID integer
---@param x number
---@param y number
---@param z number
---@param onlyInvestigate integer
function Osi.CrimeResumeWithPosition(crimeID, x, y, z, onlyInvestigate) end

---@param crimeID integer
---@param npc GUIDSTRING
function Osi.CrimeStopIgnoringCrime(crimeID, npc) end

---@param crimeID integer
function Osi.CrimeSuspend(crimeID) end

---@param crimeID integer
---@param criminal CHARACTER
---@param includingNearbyOnGround integer
---@param target GUIDSTRING
function Osi.CrimeTransferEvidenceTo(crimeID, criminal, includingNearbyOnGround, target) end

---@param crimeID integer
function Osi.DEV_CrimeForceResolve(crimeID) end

---@param object GUIDSTRING
---@param config string
function Osi.DEV_EnableAnubis(object, config) end

---@param message string
function Osi.DebugBreak(message) end

---@param flag integer
function Osi.DebugDialogSkillCheck(flag) end

---@param text string
function Osi.DebugLog(text) end

---@param object GUIDSTRING
---@param text string
function Osi.DebugText(object, text) end

---@param target GUIDSTRING
---@param tag TAG
---@param block integer
function Osi.Debug_BlockTag(target, tag, block) end

---@param entity GUIDSTRING
---@param moveAsideCharacters integer
---@param sendItemsToCamp integer
function Osi.DeclutterArea(entity, moveAsideCharacters, sendItemsToCamp) end

---@param levelTemplate GUIDSTRING
---@param moveAsideCharacters integer
---@param sendItemsToCamp integer
function Osi.DeclutterLevelTemplate(levelTemplate, moveAsideCharacters, sendItemsToCamp) end

---@param levelName string
function Osi.DeleteLevelCache(levelName) end

---@param combatGuid GUIDSTRING
function Osi.DestroyNarrativeCombat(combatGuid) end

---@param platform GUIDSTRING
function Osi.DestroyPlatform(platform) end

---@param parentObject GUIDSTRING
function Osi.DetachAllHitProxies(parentObject) end

---@param character CHARACTER
function Osi.DetachFromPartyGroup(character) end

---@param parentObject GUIDSTRING
---@param proxyObject GUIDSTRING
function Osi.DetachHitProxy(parentObject, proxyObject) end

---@param springObject GUIDSTRING
---@param attachedBone string
function Osi.DetachSpring(springObject, attachedBone) end

---@param instanceID integer
---@param actor GUIDSTRING
function Osi.DialogAddActor(instanceID, actor) end

---@param instanceID integer
---@param actor GUIDSTRING
---@param index integer
function Osi.DialogAddActorAt(instanceID, actor, index) end

---@param instanceID integer
---@param actor GUIDSTRING
---@param force integer
---@param peanut integer
---@param considerSpeakerGroups integer
function Osi.DialogAddActorAtReservedSlot(instanceID, actor, force, peanut, considerSpeakerGroups) end

---@param instanceID integer
---@param immediate integer
function Osi.DialogRequestBehaviorGracefulStop(instanceID, immediate) end

---@param speaker GUIDSTRING
function Osi.DialogRequestSmoothStop(speaker) end

---@param speaker GUIDSTRING
function Osi.DialogRequestStop(speaker) end

---@param dialog DIALOGRESOURCE
---@param speaker GUIDSTRING
function Osi.DialogRequestStopForDialog(dialog, speaker) end

---@param speaker GUIDSTRING
function Osi.DialogRequestStopTimelineDialogs(speaker) end

---@param instanceID integer
---@param trigger TRIGGER
function Osi.DialogSetTeleportPartyOnEnded(instanceID, trigger) end

---@param instanceID integer
---@param level string
function Osi.DialogSetTeleportPartyToLevelOnEnded(instanceID, level) end

---@param dialog DIALOGRESOURCE
---@param variable string
---@param value string
function Osi.DialogSetVariableFixedString(dialog, variable, value) end

---@param instanceID integer
---@param variable string
---@param value string
function Osi.DialogSetVariableFixedStringForInstance(instanceID, variable, value) end

---@param dialog DIALOGRESOURCE
---@param variable string
---@param value number
function Osi.DialogSetVariableFloat(dialog, variable, value) end

---@param instanceID integer
---@param variable string
---@param value number
function Osi.DialogSetVariableFloatForInstance(instanceID, variable, value) end

---@param dialog DIALOGRESOURCE
---@param variable string
---@param value integer
function Osi.DialogSetVariableInt(dialog, variable, value) end

---@param instanceID integer
---@param variable string
---@param value integer
function Osi.DialogSetVariableIntForInstance(instanceID, variable, value) end

---@param dialog DIALOGRESOURCE
---@param variable string
---@param value string
function Osi.DialogSetVariableString(dialog, variable, value) end

---@param instanceID integer
---@param variable string
---@param value string
function Osi.DialogSetVariableStringForInstance(instanceID, variable, value) end

---@param dialog DIALOGRESOURCE
---@param variable string
---@param stringHandleValue string
function Osi.DialogSetVariableTranslatedString(dialog, variable, stringHandleValue) end

---@param instanceID integer
---@param variable string
---@param stringHandleValue string
---@param referenceStringValue string
function Osi.DialogSetVariableTranslatedStringForInstance(instanceID, variable, stringHandleValue, referenceStringValue) end

---@overload fun(target:GUIDSTRING)
---@overload fun(target:GUIDSTRING, deathType:DEATHTYPE, generateTreasure:integer)
---@overload fun(target:GUIDSTRING, deathType:DEATHTYPE, source:GUIDSTRING, generateTreasure:integer, immediate:integer)
---@param target GUIDSTRING
---@param deathType DEATHTYPE
---@param source GUIDSTRING
---@param generateTreasure integer
---@param immediate integer
---@param impactForce number
function Osi.Die(target, deathType, source, generateTreasure, immediate, impactForce) end

---@param entity CHARACTER
---@param event TUTORIALEVENT
function Osi.DisableTutorialEvent(entity, event) end

---@overload fun(character:CHARACTER, target:GUIDSTRING, movementSpeed:string, increaseSpeed:integer, disappearEvent:string)
---@param character CHARACTER
---@param target GUIDSTRING
---@param movementSpeed string
---@param increaseSpeed integer
---@param disappearEvent string
---@param storyTransactionID integer
function Osi.DisappearOutOfSightTo(character, target, movementSpeed, increaseSpeed, disappearEvent, storyTransactionID) end

---@param avatarEntity GUIDSTRING
---@param bool integer
function Osi.DismissAvatar(avatarEntity, bool) end

---@param item ITEM
function Osi.Drop(item) end

---@param item ITEM
---@param x number
---@param y number
---@param z number
function Osi.DropTo(item, x, y, z) end

---@param enabled integer
function Osi.EnableCampWaypoint(enabled) end

---@param enabled integer
function Osi.EnableSendToCamp(enabled) end

---@param entity CHARACTER
---@param event TUTORIALEVENT
function Osi.EnableTutorialEvent(entity, event) end

---@param outcome string
function Osi.EndActivity(outcome) end

---@param combatGuid GUIDSTRING
function Osi.EndCombat(combatGuid) end

---@param entity GUIDSTRING
function Osi.EndRepose(entity) end

---@param target GUIDSTRING
function Osi.EndTurn(target) end

---@param object GUIDSTRING
---@param handledInStory integer
function Osi.EnterChasmProcessed(object, handledInStory) end

---@param source GUIDSTRING
---@param target GUIDSTRING
function Osi.EnterCombat(source, target) end

---@param playerCharacter CHARACTER
---@param zoneID GUIDSTRING
function Osi.EnterSharedTurnBaseMode(playerCharacter, zoneID) end

---@overload fun(character:CHARACTER, item:ITEM)
---@overload fun(character:CHARACTER, item:ITEM, addToMainInventoryOnFail:integer)
---@overload fun(character:CHARACTER, item:ITEM, addToMainInventoryOnFail:integer, showNotification:integer)
---@param character CHARACTER
---@param item ITEM
---@param addToMainInventoryOnFail integer
---@param showNotification integer
---@param clearOriginalOwner integer
function Osi.Equip(character, item, addToMainInventoryOnFail, showNotification, clearOriginalOwner) end

---@param target GUIDSTRING
---@param escortGroup string
function Osi.EscortAddCharacter(target, escortGroup) end

---@param escortGroup string
function Osi.EscortRemoveAll(escortGroup) end

---@param target GUIDSTRING
function Osi.EscortRemoveCharacter(target) end

---@param target GUIDSTRING
---@param escortGroup string
function Osi.EscortSetLeader(target, escortGroup) end

---@param target GUIDSTRING
---@param escortGroup string
---@param priority integer
function Osi.EscortSetLeaderPriority(target, escortGroup, priority) end

---@param character CHARACTER
---@param deal integer
---@param attitudeDiff integer
function Osi.ExecuteDeal(character, deal, attitudeDiff) end

---@param faction FACTION
---@param bool integer
function Osi.FactionSetLootOwned(faction, bool) end

function Osi.FireOsirisEvents() end

---@param character CHARACTER
---@param fleeFromRelationType string
---@param fleeRange number
function Osi.FleeFrom(character, fleeFromRelationType, fleeRange) end

---@param fleeingCharacter CHARACTER
---@param fleeFrom GUIDSTRING
---@param fleeRange number
function Osi.FleeFromObject(fleeingCharacter, fleeFrom, fleeRange) end

---@param character CHARACTER
function Osi.FlushOsirisQueue(character) end

---@param follower CHARACTER
---@param leader CHARACTER
function Osi.Follow(follower, leader) end

---@param playerCharacter CHARACTER
---@param onOff integer
function Osi.ForceTurnBasedMode(playerCharacter, onOff) end

---@param character CHARACTER
function Osi.Freeze(character) end

function Osi.GameEnd() end

---@param movie string
function Osi.GameEndWithMovie(movie) end

---@param player CHARACTER
---@param trader CHARACTER
function Osi.GenerateItems(player, trader) end

---@param inventoryHolder GUIDSTRING
---@param treasureID string
---@param level integer
---@param finder CHARACTER
function Osi.GenerateTreasure(inventoryHolder, treasureID, level, finder) end

---@param character CHARACTER
---@param amount number
---@param optionalReasonLocalizedTextKey string
---@param optionalDescriptionLocalizedTextKey string
function Osi.GiveInspirationPoints(character, amount, optionalReasonLocalizedTextKey, optionalDescriptionLocalizedTextKey) end

---@param dialog DIALOGRESOURCE
---@param successful integer
function Osi.GossipCompleted(dialog, successful) end

---@param activityId string
function Osi.HideActivity(activityId) end

---@param type string
function Osi.HideAllActivities(type) end

---@param character CHARACTER
---@param tutorialGuid UNIFIEDTUTORIAL
function Osi.HideTutorial(character, tutorialGuid) end

---@param criminal CHARACTER
---@param crimeID integer
---@param radius number
---@param optionalTagExpression string
function Osi.IgnoreCrimeInRadiusWithTags(criminal, crimeID, radius, optionalTagExpression) end

---@param criminal CHARACTER
---@param radius number
---@param optionalTagExpression string
---@param duration integer
function Osi.IgnoreCrimesInRadiusWithTagsForDuration(criminal, radius, optionalTagExpression, duration) end

---@param character CHARACTER
function Osi.InitializePlayerData(character) end

---@param item ITEM
---@param trigger TRIGGER
function Osi.ItemDragTo(item, trigger) end

---@param item ITEM
---@param x number
---@param y number
---@param z number
function Osi.ItemDragToPosition(item, x, y, z) end

---@overload fun(item:ITEM, target:GUIDSTRING, speed:number, acceleration:number, useRotation:integer)
---@param item ITEM
---@param target GUIDSTRING
---@param speed number
---@param acceleration number
---@param useRotation integer
---@param event string
function Osi.ItemMoveTo(item, target, speed, acceleration, useRotation, event) end

---@overload fun(item:ITEM, x:number, y:number, z:number, speed:number, acceleration:number)
---@param item ITEM
---@param x number
---@param y number
---@param z number
---@param speed number
---@param acceleration number
---@param event string
function Osi.ItemMoveToPosition(item, x, y, z, speed, acceleration, event) end

---@param item ITEM
---@param angleDeg number
---@param speedDegPerSec number
function Osi.ItemRotateY(item, angleDeg, speedDegPerSec) end

---@param item ITEM
---@param angleDeg number
---@param speedDegPerSec number
function Osi.ItemRotateYToAngle(item, angleDeg, speedDegPerSec) end

---@param object GUIDSTRING
---@param event string
---@param completionEvent string
function Osi.IterateActiveObjectsInSameCombatGroup(object, event, completionEvent) end

---@param event string
---@param completionEvent string
function Osi.IterateCharacters(event, completionEvent) end

---@param center GUIDSTRING
---@param radius number
---@param event string
---@param completionEvent string
function Osi.IterateCharactersAround(center, radius, event, completionEvent) end

---@param ownerObject GUIDSTRING
---@param event string
---@param completionEvent string
function Osi.IterateHitProxies(ownerObject, event, completionEvent) end

---@param inventoryHolder GUIDSTRING
---@param event string
---@param completionEvent string
function Osi.IterateInventory(inventoryHolder, event, completionEvent) end

---@param inventoryHolder GUIDSTRING
---@param tags string
---@param event string
---@param completionEvent string
function Osi.IterateInventoryByTag(inventoryHolder, tags, event, completionEvent) end

---@param inventoryHolder GUIDSTRING
---@param template GUIDSTRING
---@param event string
---@param completionEvent string
function Osi.IterateInventoryByTemplate(inventoryHolder, template, event, completionEvent) end

---@param origin CHARACTER
---@param event string
---@param finishEvent string
function Osi.IterateOriginTags(origin, event, finishEvent) end

---@param event string
---@param completionEvent string
function Osi.IteratePlayerCharacters(event, completionEvent) end

---@param category TAGCATEGORY
---@param event string
---@param finishEvent string
function Osi.IterateTagsCategory(category, event, finishEvent) end

---@param event string
---@param completionEvent string
function Osi.IterateUsers(event, completionEvent) end

---@param target GUIDSTRING
function Osi.LeaveCombat(target) end

---@param userId integer
function Osi.LeaveParty(userId) end

---@param playerCharacter CHARACTER
function Osi.LeaveSharedTurnBaseMode(playerCharacter) end

---@param entity GUIDSTRING
---@param entity2 GUIDSTRING
function Osi.LieOnEntity(entity, entity2) end

---@param entity GUIDSTRING
function Osi.LieOnGround(entity) end

---@param savegame string
function Osi.LoadGame(savegame) end

---@param levelTemplate LEVELTEMPLATE
function Osi.LoadLevelTemplate(levelTemplate) end

---@param preset string
---@param teleportToTarget GUIDSTRING
function Osi.LoadPartyPreset(preset, teleportToTarget) end

---@param item ITEM
---@param key string
function Osi.Lock(item, key) end

---@param item ITEM
---@param lock integer
function Osi.LockUnequip(item, lock) end

---@param waypointName string
---@param character CHARACTER
function Osi.LockWaypoint(waypointName, character) end

---@overload fun(character:CHARACTER, target:GUIDSTRING)
---@param character CHARACTER
---@param target GUIDSTRING
---@param duration number
function Osi.LookAtEntity(character, target, duration) end

---@param character CHARACTER
---@param trigger TRIGGER
---@param snapToTarget integer
function Osi.LookFromTrigger(character, trigger, snapToTarget) end

---@param character CHARACTER
---@param requestAccepted integer
function Osi.LootRequestProcessed(character, requestAccepted) end

---@param source GUIDSTRING
---@param tags string
---@param amount integer
function Osi.MagicPocketsDestroyLocalItemsByTag(source, tags, amount) end

---@param source GUIDSTRING
---@param itemTemplate ITEMROOT
---@param amount integer
function Osi.MagicPocketsDestroyLocalItemsByTemplate(source, itemTemplate, amount) end

---@param source GUIDSTRING
---@param object GUIDSTRING
function Osi.MagicPocketsDrop(source, object) end

---@param source GUIDSTRING
---@param tags string
---@param amount integer
function Osi.MagicPocketsDropByTag(source, tags, amount) end

---@param source GUIDSTRING
---@param root ROOT
---@param amount integer
function Osi.MagicPocketsDropByTemplate(source, root, amount) end

---@param source GUIDSTRING
---@param object GUIDSTRING
---@param destinationInventory GUIDSTRING
---@param showNotification integer
---@param clearOriginalOwner integer
function Osi.MagicPocketsMoveTo(source, object, destinationInventory, showNotification, clearOriginalOwner) end

---@param source GUIDSTRING
---@param tags string
---@param amount integer
---@param destinationInventory GUIDSTRING
---@param showNotification integer
---@param clearOriginalOwner integer
function Osi.MagicPocketsMoveToByTag(source, tags, amount, destinationInventory, showNotification, clearOriginalOwner) end

---@param source GUIDSTRING
---@param template ROOT
---@param amount integer
---@param destinationInventory GUIDSTRING
---@param showNotification integer
---@param clearOriginalOwner integer
function Osi.MagicPocketsMoveToByTemplate(source, template, amount, destinationInventory, showNotification, clearOriginalOwner) end

---@param character CHARACTER
function Osi.MakeNPC(character) end

---@param source CHARACTER
---@param target CHARACTER
---@param ignoreVote integer
function Osi.MakePeace(source, target, ignoreVote) end

---@overload fun(targetCharacter:CHARACTER)
---@overload fun(targetCharacter:CHARACTER, ownerCharacter:CHARACTER)
---@param targetCharacter CHARACTER
---@param ownerCharacter CHARACTER
---@param canBeReassigned integer
function Osi.MakePlayer(targetCharacter, ownerCharacter, canBeReassigned) end

---@param target CHARACTER
function Osi.MakePlayerActive(target) end

---@param source CHARACTER
---@param target CHARACTER
---@param ignoreVote integer
function Osi.MakeWar(source, target, ignoreVote) end

---@param markerID string
---@param newRegionID string
function Osi.MapMarkerChangeLevel(markerID, newRegionID) end

---@overload fun(fromObject:GUIDSTRING, toObject:GUIDSTRING)
---@overload fun(fromObject:GUIDSTRING, toObject:GUIDSTRING, moveEquippedArmor:integer, moveEquippedWeapons:integer, clearOriginalOwner:integer)
---@param fromObject GUIDSTRING
---@param toObject GUIDSTRING
---@param moveEquippedArmor integer
---@param moveEquippedWeapons integer
---@param clearOriginalOwner integer
---@param moveVanityClothing integer
function Osi.MoveAllItemsTo(fromObject, toObject, moveEquippedArmor, moveEquippedWeapons, clearOriginalOwner, moveVanityClothing) end

---@param fromObject GUIDSTRING
---@param toObject GUIDSTRING
---@param moveEquippedArmor integer
---@param moveEquippedWeapons integer
---@param clearOriginalOwner integer
---@param moveVanityClothing integer
function Osi.MoveAllLootableItemsTo(fromObject, toObject, moveEquippedArmor, moveEquippedWeapons, clearOriginalOwner, moveVanityClothing) end

---@param fromObject GUIDSTRING
---@param toObject GUIDSTRING
---@param moveEquippedItems integer
---@param clearOriginalOwner integer
function Osi.MoveAllStoryItemsTo(fromObject, toObject, moveEquippedItems, clearOriginalOwner) end

---@param character CHARACTER
---@param item ITEM
---@param target GUIDSTRING
---@param amount integer
---@param event string
function Osi.MoveItemTo(character, item, target, amount, event) end

---@param character CHARACTER
---@param container ITEM
function Osi.MoveWeaponsToContainer(character, container) end

---@param character CHARACTER
---@param event string
---@param fadeInOnEnd integer
function Osi.MoviePlay(character, event, fadeInOnEnd) end

---@param character CHARACTER
---@param eventName string
function Osi.MusicPlayForPeer(character, eventName) end

---@param eventName string
function Osi.MusicPlayGeneral(eventName) end

---@param character CHARACTER
---@param eventName string
function Osi.MusicPlayOnCharacter(character, eventName) end

function Osi.NotifyCharacterCreationFinished() end

function Osi.NotifyCharacterCreationSkipped() end

---@param entity GUIDSTRING
---@param timer string
---@param localizedTextKey string
---@param time2 integer
---@param shouldTickOnTurnStart integer
function Osi.ObjectQuestTimerLaunch(entity, timer, localizedTextKey, time2, shouldTickOnTurnStart) end

---@param object GUIDSTRING
---@param localizedTextKey string
function Osi.ObjectSetTitle(object, localizedTextKey) end

---@param object GUIDSTRING
---@param isHide integer
function Osi.ObjectSetTitleHidden(object, isHide) end

---@param entity GUIDSTRING
---@param timer string
function Osi.ObjectTimerCancel(entity, timer) end

---@overload fun(entity:GUIDSTRING, timer:string, time2:integer)
---@param entity GUIDSTRING
---@param timer string
---@param time2 integer
---@param shouldTickOnTurnStart integer
function Osi.ObjectTimerLaunch(entity, timer, time2, shouldTickOnTurnStart) end

---@param character CHARACTER
function Osi.OnCompanionDismissed(character) end

---@param item ITEM
function Osi.Open(item) end

---@param character CHARACTER
---@param item ITEM
function Osi.OpenCraftUI(character, item) end

---@param character CHARACTER
---@param bookname string
function Osi.OpenCustomBookUI(character, bookname) end

---@param character CHARACTER
---@param message string
function Osi.OpenMessageBox(character, message) end

---@param character CHARACTER
---@param message string
---@param choice1 string
---@param choice2 string
function Osi.OpenMessageBoxChoice(character, message, choice1, choice2) end

---@param character CHARACTER
---@param message string
function Osi.OpenMessageBoxYesNo(character, message) end

---@param character CHARACTER
---@param bookname string
---@param bookGuid ITEM
function Osi.OpenReferencedBookUI(character, bookname, bookGuid) end

---@param character CHARACTER
---@param currentWaypoint string
---@param item ITEM
---@param isFleeing integer
function Osi.OpenWaypointUI(character, currentWaypoint, item, isFleeing) end

---@param character CHARACTER
---@param count integer
function Osi.PartyAddGold(character, count) end

---@param player CHARACTER
---@param resourceName string
---@param delta number
function Osi.PartyIncreaseActionResourceValue(player, resourceName, delta) end

---@param combatGuid GUIDSTRING
function Osi.PauseCombat(combatGuid) end

---@overload fun(character:CHARACTER, item:ITEM, event:string)
---@param character CHARACTER
---@param item ITEM
---@param event string
---@param forcePickUpOnFailure integer
function Osi.Pickup(character, item, event, forcePickUpOnFailure) end

---@param platform GUIDSTRING
---@param spline SPLINE
---@param startNodeId integer
---@param endNodeId integer
---@param speed number
---@param eventId string
---@param ignoreTurnbased integer
function Osi.PlatformMoveOnSpline(platform, spline, startNodeId, endNodeId, speed, eventId, ignoreTurnbased) end

---@param platform GUIDSTRING
---@param targetX number
---@param targetY number
---@param targetZ number
---@param speed number
---@param eventId string
---@param ignoreTurnbased integer
function Osi.PlatformMoveTo(platform, targetX, targetY, targetZ, speed, eventId, ignoreTurnbased) end

---@param object GUIDSTRING
---@param bool integer
function Osi.PlatformSetOnStage(object, bool) end

---@overload fun(sourceObject:GUIDSTRING, animation:ANIMATION)
---@param sourceObject GUIDSTRING
---@param animation ANIMATION
---@param event string
function Osi.PlayAnimation(sourceObject, animation, event) end

---@param object GUIDSTRING
---@param target GUIDSTRING
---@param fxName EFFECTRESOURCE
---@param sourceBone string
---@param targetBone string
function Osi.PlayBeamEffect(object, target, fxName, sourceBone, targetBone) end

---@overload fun(object:GUIDSTRING, fxName:EFFECTRESOURCE)
---@overload fun(object:GUIDSTRING, fxName:EFFECTRESOURCE, bone:string)
---@param object GUIDSTRING
---@param fxName EFFECTRESOURCE
---@param bone string
---@param scale number
function Osi.PlayEffect(object, fxName, bone, scale) end

---@overload fun(fxName:EFFECTRESOURCE, x:number, y:number, z:number)
---@param fxName EFFECTRESOURCE
---@param x number
---@param y number
---@param z number
---@param scale number
function Osi.PlayEffectAtPosition(fxName, x, y, z, scale) end

---@param fxName EFFECTRESOURCE
---@param x number
---@param y number
---@param z number
---@param yangle number
---@param scale number
function Osi.PlayEffectAtPositionAndRotation(fxName, x, y, z, yangle, scale) end

---@param character CHARACTER
---@param soundEvent string
function Osi.PlayHUDSound(character, soundEvent) end

---@param character CHARACTER
---@param soundResource GUIDSTRING
function Osi.PlayHUDSoundResource(character, soundResource) end

---@param sourceObject GUIDSTRING
---@param startAnimation ANIMATION
---@param loopAnimation ANIMATION
---@param endAnimation ANIMATION
---@param loopVariation1 ANIMATION
---@param loopVariation2 ANIMATION
---@param loopVariation3 ANIMATION
---@param loopVariation4 ANIMATION
function Osi.PlayLoopingAnimation(sourceObject, startAnimation, loopAnimation, endAnimation, loopVariation1, loopVariation2, loopVariation3, loopVariation4) end

---@param character CHARACTER
---@param dialogGuidString DIALOGRESOURCE
---@param nodePrefix string
function Osi.PlayMovieForDialog(character, dialogGuidString, nodePrefix) end

---@param object GUIDSTRING
---@param soundEvent string
function Osi.PlaySound(object, soundEvent) end

---@param object GUIDSTRING
---@param soundResource GUIDSTRING
function Osi.PlaySoundResource(object, soundResource) end

---@param character CHARACTER
function Osi.PopUnsheathedState(character) end

---@param startingDialog integer
function Osi.PrepareLevelStartingDialog(startingDialog) end

---@param achievementID string
---@param character CHARACTER
---@param progress integer
function Osi.ProgressAchievement(achievementID, character, progress) end

---@overload fun(character:CHARACTER)
---@param character CHARACTER
---@param sendPurgedEvent integer
function Osi.PurgeOsirisQueue(character, sendPurgedEvent) end

---@param character CHARACTER
---@param eState UNSHEATHSTATE
function Osi.PushUnsheathedState(character, eState) end

---@param character CHARACTER
---@param questID string
function Osi.QuestAdd(character, questID) end

---@param questID string
function Osi.QuestClose(questID) end

---@param messageId string
function Osi.QuestMessageHide(messageId) end

---@param messageId string
---@param localizedTextKey string
function Osi.QuestMessageShow(messageId, localizedTextKey) end

---@param messageId string
---@param localizedTextKey string
---@param initialCount integer
---@param totalCount integer
---@param localizedCountTextKey string
function Osi.QuestMessageWithCounterShow(messageId, localizedTextKey, initialCount, totalCount, localizedCountTextKey) end

---@param quest string
---@param categoryID string
function Osi.QuestSetCategory(quest, categoryID) end

---@overload fun(questID:string, stateID:string)
---@param character CHARACTER
---@param questID string
---@param stateID string
function Osi.QuestUpdate(character, questID, stateID) end

---@param messageId string
---@param deltaUpdateAmount integer
function Osi.QuestUpdateMessageCounter(messageId, deltaUpdateAmount) end

---@param eventId string
function Osi.ReadyCheckCancel(eventId) end

---@param eventId string
---@param translationId string
---@param force integer
---@param initiator CHARACTER
function Osi.ReadyCheckGlobal(eventId, translationId, force, initiator) end

---@param eventId string
---@param translationId string
---@param force integer
---@param initiator CHARACTER
---@param character1 CHARACTER
---@param character2 CHARACTER
---@param character3 CHARACTER
function Osi.ReadyCheckSpecific(eventId, translationId, force, initiator, character1, character2, character3) end

---@param entity GUIDSTRING
---@param timer string
function Osi.RealtimeObjectTimerCancel(entity, timer) end

---@param entity GUIDSTRING
---@param timer string
---@param time2 integer
function Osi.RealtimeObjectTimerLaunch(entity, timer, time2) end

---@param character CHARACTER
---@param recruiter CHARACTER
function Osi.RegisterAsCompanion(character, recruiter) end

---@param waypointName string
---@param item ITEM
function Osi.RegisterWaypoint(waypointName, item) end

---@param character CHARACTER
function Osi.RemoveAllPartyFollowers(character) end

---@param character CHARACTER
function Osi.RemoveAllTadpolePowers(character) end

---@param object CHARACTER
---@param boosts string
---@param removeOnlyFirstDescMatch integer
---@param sourceID string
---@param cause GUIDSTRING
function Osi.RemoveBoosts(object, boosts, removeOnlyFirstDescMatch, sourceID, cause) end

---@param object GUIDSTRING
---@param preset string
function Osi.RemoveCustomMaterialOverride(object, preset) end

---@param object GUIDSTRING
---@param resource string
function Osi.RemoveCustomMaterialResourceOverride(object, resource) end

---@param character CHARACTER
---@param visual GUIDSTRING
function Osi.RemoveCustomVisualOvirride(character, visual) end

---@param bookname string
---@param entryname string
function Osi.RemoveEntryFromCustomBook(bookname, entryname) end

---@param object GUIDSTRING
function Osi.RemoveFogVolume(object) end

---@param source GUIDSTRING
---@param amount integer
function Osi.RemoveGoldFromMagicPockets(source, amount) end

---@param target GUIDSTRING
function Osi.RemoveHarmfulStatuses(target) end

---@param bookname string
---@param entryname string
function Osi.RemoveIllustrationFromCustomBook(bookname, entryname) end

---@param follower CHARACTER
---@param leader CHARACTER
function Osi.RemovePartyFollower(follower, leader) end

---@param entity GUIDSTRING
---@param passiveID string
function Osi.RemovePassive(entity, passiveID) end

---@param character CHARACTER
---@param tag TAG
function Osi.RemovePreferredAiTargetTag(character, tag) end

---@overload fun(character:CHARACTER, spell:string)
---@param character CHARACTER
---@param spell string
---@param removeContainerSpells integer
function Osi.RemoveSpell(character, spell, removeContainerSpells) end

---@param entity GUIDSTRING
function Osi.RemoveSplatters(entity) end

---@overload fun(target:GUIDSTRING, status:string)
---@param target GUIDSTRING
---@param status string
---@param cause GUIDSTRING
function Osi.RemoveStatus(target, status, cause) end

---@overload fun(target:GUIDSTRING, statusGroup:string)
---@param target GUIDSTRING
---@param statusGroup string
---@param cause GUIDSTRING
function Osi.RemoveStatusesWithGroup(target, statusGroup, cause) end

---@param target GUIDSTRING
---@param statusType string
---@param cause GUIDSTRING
function Osi.RemoveStatusesWithType(target, statusType, cause) end

---@param character CHARACTER
---@param die integer
function Osi.RemoveSummons(character, die) end

---@param target GUIDSTRING
---@param surfaceLayer string
---@param radius number
function Osi.RemoveSurfaceLayer(target, surfaceLayer, radius) end

---@param x number
---@param y number
---@param z number
---@param surfaceLayer string
---@param radius number
function Osi.RemoveSurfaceLayerAtPosition(x, y, z, surfaceLayer, radius) end

---@param object GUIDSTRING
function Osi.RemoveTrackedSoundEntity(object) end

---@param object GUIDSTRING
function Osi.RemoveTransforms(object) end

---@overload fun(roller:CHARACTER, rollSubject:GUIDSTRING, rollType:string, difficultyClassID:DIFFICULTYCLASS, event:string)
---@param roller CHARACTER
---@param rollSubject GUIDSTRING
---@param rollType string
---@param skillOrAbility string
---@param difficultyClassID DIFFICULTYCLASS
---@param rollerAdvantage integer
---@param event string
function Osi.RequestActiveRoll(roller, rollSubject, rollType, skillOrAbility, difficultyClassID, rollerAdvantage, event) end

---@param roller CHARACTER
---@param rollSubject GUIDSTRING
---@param rollType string
---@param rollerSkillOrAbility string
---@param subjectSkillOrAbility string
---@param rollerAdvantage integer
---@param subjectAdvantage integer
---@param event string
function Osi.RequestActiveRollVersusSkill(roller, rollSubject, rollType, rollerSkillOrAbility, subjectSkillOrAbility, rollerAdvantage, subjectAdvantage, event) end

function Osi.RequestAdvanceDay() end

---@param target CHARACTER
function Osi.RequestAutoLevel(target) end

---@param item ITEM
function Osi.RequestDelete(item) end

---@param character CHARACTER
function Osi.RequestDeleteTemporary(character) end

---@param initiator CHARACTER
function Osi.RequestEndTheDay(initiator) end

---@param character CHARACTER
function Osi.RequestGatherAtCamp(character) end

---@param target CHARACTER
function Osi.RequestInitialLevel(target) end

---@param initiator CHARACTER
---@param isForced integer
function Osi.RequestLongRest(initiator, isForced) end

function Osi.RequestLongRestConfirmed() end

---@param localizedTextKey string
function Osi.RequestLongRestDeny(localizedTextKey) end

---@param character CHARACTER
function Osi.RequestLongRestFinish(character) end

---@param timeline TIMELINERESOURCE
function Osi.RequestLongRestSetTimeline(timeline) end

function Osi.RequestLongRestSyncedFinish() end

function Osi.RequestLongRestWaiting() end

---@param player CHARACTER
---@param tutorialID string
function Osi.RequestModalTutorial(player, tutorialID) end

---@overload fun(roller:CHARACTER, rollSubject:GUIDSTRING, rollType:string, difficultyClassID:DIFFICULTYCLASS, event:string)
---@param roller CHARACTER
---@param rollSubject GUIDSTRING
---@param rollType string
---@param skillOrAbility string
---@param difficultyClassID DIFFICULTYCLASS
---@param rollerAdvantage integer
---@param event string
function Osi.RequestPassiveRoll(roller, rollSubject, rollType, skillOrAbility, difficultyClassID, rollerAdvantage, event) end

---@param roller CHARACTER
---@param rollSubject GUIDSTRING
---@param rollType string
---@param rollerSkillOrAbility string
---@param subjectSkillOrAbility string
---@param rollerAdvantage integer
---@param subjectAdvantage integer
---@param event string
function Osi.RequestPassiveRollVersusSkill(roller, rollSubject, rollType, rollerSkillOrAbility, subjectSkillOrAbility, rollerAdvantage, subjectAdvantage, event) end

---@param x number
---@param y number
---@param z number
---@param target GUIDSTRING
---@param source GUIDSTRING
function Osi.RequestPing(x, y, z, target, source) end

---@param character CHARACTER
---@param requestId integer
---@param requestAccepted integer
function Osi.RequestProcessed(character, requestId, requestAccepted) end

---@param target GUIDSTRING
function Osi.RequestRespec(target) end

---@param target GUIDSTRING
---@param archetype string
function Osi.RequestSetBaseArchetype(target, archetype) end

---@param target GUIDSTRING
---@param swarmGroup string
function Osi.RequestSetSwarmGroup(target, swarmGroup) end

---@param entity GUIDSTRING
function Osi.ResetCanBePickpocketed(entity) end

---@param character CHARACTER
function Osi.ResetCooldowns(character) end

---@param entity GUIDSTRING
function Osi.ResetIsDroppedOnDeath(entity) end

---@param entity GUIDSTRING
function Osi.ResetIsTradable(entity) end

---@param faction1 FACTION
---@param faction2 FACTION
function Osi.ResetRelation(faction1, faction2) end

---@param userID integer
---@param askPlayer integer
function Osi.ResetTutorialsRequest(userID, askPlayer) end

---@param character CHARACTER
function Osi.RestoreAnubisState(character) end

---@param character CHARACTER
function Osi.RestoreParty(character) end

---@param combatGuid GUIDSTRING
function Osi.ResumeCombat(combatGuid) end

---@overload fun(character:CHARACTER)
---@param character CHARACTER
---@param resurrectAnimationOverride ANIMATION
---@param resetXPReward integer
function Osi.Resurrect(character, resurrectAnimationOverride, resetXPReward) end

---@param character CHARACTER
function Osi.SaveAnubisState(character) end

---@overload fun(item:ITEM, x:number, y:number, z:number)
---@param item ITEM
---@param x number
---@param y number
---@param z number
---@param maxDistance number
function Osi.ScatterAt(item, x, y, z, maxDistance) end

---@param inventoryHolder GUIDSTRING
function Osi.ScatterStoryItems(inventoryHolder) end

---@param character CHARACTER
---@param seconds number
---@param fadeStyle integer
---@param fadeID string
function Osi.ScreenFadeTo(character, seconds, fadeStyle, fadeID) end

---@param sourceEntity GUIDSTRING
---@param targetEntity GUIDSTRING
---@param event string
function Osi.SendArenaCameraEvent(sourceEntity, targetEntity, event) end

---@param notificationType integer
---@param stringParam string
---@param inNumberOfRounds integer
function Osi.SendArenaNotification(notificationType, stringParam, inNumberOfRounds) end

---@param entity GUIDSTRING
---@param player CHARACTER
function Osi.SendToCampChest(entity, player) end

---@param achievementID string
---@param value integer
function Osi.SetAchievementProgress(achievementID, value) end

---@param achievementID string
---@param character CHARACTER
---@param progress integer
function Osi.SetAchievementProgressForPlayer(achievementID, character, progress) end

---@param target GUIDSTRING
---@param aiHint TAG
function Osi.SetAiHint(target, aiHint) end

---@param entity GUIDSTRING
---@param isAmbushing integer
function Osi.SetAmbushing(entity, isAmbushing) end

---@param object GUIDSTRING
---@param eventName string
function Osi.SetAnimationEvent(object, eventName) end

---@param object GUIDSTRING
---@param eventName string
---@param userParam integer
function Osi.SetAnimationEventInt(object, eventName, userParam) end

---@param character CHARACTER
---@param eArmorSet ARMOURSET
function Osi.SetArmourSet(character, eArmorSet) end

---@param character CHARACTER
---@param isBlocked integer
function Osi.SetBlockDismiss(character, isBlocked) end

---@param qualityIndex integer
function Osi.SetCampQuality(qualityIndex) end

---@param entity GUIDSTRING
---@param bool integer
function Osi.SetCanBePickpocketed(entity, bool) end

---@param item ITEM
---@param bool integer
function Osi.SetCanExamine(item, bool) end

---@param entity GUIDSTRING
---@param enabled integer
function Osi.SetCanFight(entity, enabled) end

---@param character CHARACTER
---@param canGossip integer
function Osi.SetCanGossip(character, canGossip) end

---@param item ITEM
---@param bool integer
function Osi.SetCanInteract(item, bool) end

---@param entity GUIDSTRING
---@param enabled integer
function Osi.SetCanJoinCombat(entity, enabled) end

---@param character CHARACTER
---@param canOpenDoors integer
function Osi.SetCanOpenDoorsOverride(character, canOpenDoors) end

---@param item ITEM
---@param bool integer
function Osi.SetCanPickUp(item, bool) end

---@param character CHARACTER
---@param canSpotSneakers integer
function Osi.SetCanSpotSneakers(character, canSpotSneakers) end

---@param trader CHARACTER
---@param bool integer
function Osi.SetCanTrade(trader, bool) end

---@param character CHARACTER
---@param bool integer
function Osi.SetCharacterLootOwned(character, bool) end

---@param character CHARACTER
---@param value integer
function Osi.SetCharacterLootable(character, value) end

---@param character GUIDSTRING
---@param portrait GUIDSTRING
function Osi.SetCharacterOnPortraitPainting(character, portrait) end

---@param target GUIDSTRING
---@param groupID string
---@param enemy GUIDSTRING
function Osi.SetCombatGroupAndEnterCombat(target, groupID, enemy) end

---@param target GUIDSTRING
---@param groupID string
function Osi.SetCombatGroupID(target, groupID) end

---@param character CHARACTER
---@param treasure string
function Osi.SetCustomTradeTreasure(character, treasure) end

---@param ownerObject GUIDSTRING
---@param value integer
function Osi.SetDetached(ownerObject, value) end

---@param item ITEM
---@param bool integer
function Osi.SetDisableUse(item, bool) end

---@param character CHARACTER
---@param value integer
function Osi.SetDoNotFaceFlag(character, value) end

---@overload fun(object1:GUIDSTRING, object2:GUIDSTRING, event:string)
---@param object1 GUIDSTRING
---@param object2 GUIDSTRING
---@param event string
---@param unicast integer
function Osi.SetDualEntityEvent(object1, object2, event, unicast) end

---@overload fun(object1:GUIDSTRING, object2:GUIDSTRING, event:string, dialog:DIALOGRESOURCE)
---@param object1 GUIDSTRING
---@param object2 GUIDSTRING
---@param event string
---@param dialog DIALOGRESOURCE
---@param unicast integer
function Osi.SetDualEntityEventDialog(object1, object2, event, dialog, unicast) end

---@overload fun(object1:GUIDSTRING, object2:GUIDSTRING, event:string, realParam:number)
---@param object1 GUIDSTRING
---@param object2 GUIDSTRING
---@param event string
---@param realParam number
---@param unicast integer
function Osi.SetDualEntityEventReal(object1, object2, event, realParam, unicast) end

---@param bookname string
---@param edition integer
function Osi.SetEditionForCustomBook(bookname, edition) end

---@param state integer
function Osi.SetEndTheDayState(state) end

---@overload fun(object:GUIDSTRING, event:string)
---@param object GUIDSTRING
---@param event string
---@param unicast integer
function Osi.SetEntityEvent(object, event, unicast) end

---@overload fun(object:GUIDSTRING, event:string, dialog:DIALOGRESOURCE)
---@param object GUIDSTRING
---@param event string
---@param dialog DIALOGRESOURCE
---@param unicast integer
function Osi.SetEntityEventDialog(object, event, dialog, unicast) end

---@overload fun(object:GUIDSTRING, event:string, guidParam:GUIDSTRING)
---@param object GUIDSTRING
---@param event string
---@param guidParam GUIDSTRING
---@param unicast integer
function Osi.SetEntityEventGuid(object, event, guidParam, unicast) end

---@overload fun(object:GUIDSTRING, event:string, realParam:number)
---@param object GUIDSTRING
---@param event string
---@param realParam number
---@param unicast integer
function Osi.SetEntityEventReal(object, event, realParam, unicast) end

---@param target GUIDSTRING
---@param faction FACTION
function Osi.SetFaction(target, faction) end

---@overload fun(flag:FLAG)
---@overload fun(flag:FLAG, object:GUIDSTRING)
---@overload fun(flag:FLAG, object:GUIDSTRING, dialogInstance:integer)
---@param flag FLAG
---@param object GUIDSTRING
---@param dialogInstance integer
---@param sendFlagSetEventIfChanged integer
function Osi.SetFlag(flag, object, dialogInstance, sendFlagSetEventIfChanged) end

---@param follower CHARACTER
---@param leader CHARACTER
function Osi.SetFollowCharacter(follower, leader) end

---@param target GUIDSTRING
---@param bool integer
function Osi.SetForceUpdate(target, bool) end

---@param modifier number
function Osi.SetGlobalPriceModifier(modifier) end

---@param entity GUIDSTRING
---@param god GUIDSTRING
function Osi.SetGodOverride(entity, god) end

---@overload fun(item:ITEM, gravityType:GRAVITYTYPE)
---@param item ITEM
---@param gravityType GRAVITYTYPE
---@param instigator GUIDSTRING
function Osi.SetGravity(item, gravityType, instigator) end

---@param speaker GUIDSTRING
---@param hasDialog integer
function Osi.SetHasDialog(speaker, hasDialog) end

---@param speaker GUIDSTRING
---@param hasOsirisDialog integer
function Osi.SetHasOsirisDialog(speaker, hasOsirisDialog) end

---@overload fun(entity:GUIDSTRING, hp:integer)
---@param entity GUIDSTRING
---@param hp integer
---@param healTypes string
function Osi.SetHitpoints(entity, hp, healTypes) end

---@overload fun(entity:GUIDSTRING, percentage:number)
---@param entity GUIDSTRING
---@param percentage number
---@param healTypes string
function Osi.SetHitpointsPercentage(entity, percentage, healTypes) end

---@param sourceFaction FACTION
---@param targetFaction FACTION
---@param source2 GUIDSTRING
---@param target2 GUIDSTRING
function Osi.SetHostileAndEnterCombat(sourceFaction, targetFaction, source2, target2) end

---@param player CHARACTER
---@param item ITEM
function Osi.SetHotbarItem(player, item) end

---@param character CHARACTER
---@param bool integer
function Osi.SetImmortal(character, bool) end

---@param entity GUIDSTRING
---@param combatGuid GUIDSTRING
---@param bool integer
function Osi.SetInNarrativeCombat(entity, combatGuid, bool) end

---@param entity GUIDSTRING
---@param faction FACTION
---@param relation integer
function Osi.SetIndividualRelation(entity, faction, relation) end

---@param target GUIDSTRING
---@param enabled integer
function Osi.SetIsBoss(target, enabled) end

---@param entity GUIDSTRING
---@param bool integer
function Osi.SetIsDroppedOnDeath(entity, bool) end

---@param character CHARACTER
---@param isInDangerZone integer
function Osi.SetIsInDangerZone(character, isInDangerZone) end

---@param entity GUIDSTRING
---@param eIsTradableType TRADABLETYPE
function Osi.SetIsTradable(entity, eIsTradableType) end

---@param joinBlockType JOINBLOCKTYPE
function Osi.SetJoinBlock(joinBlockType) end

---@param item ITEM
---@param bool integer
function Osi.SetKnown(item, bool) end

---@param object GUIDSTRING
---@param level integer
function Osi.SetLevel(object, level) end

---@param instanceID integer
---@param startingDialog integer
function Osi.SetLevelStartingDialog(instanceID, startingDialog) end

---@param isEnabled integer
function Osi.SetLongRestAvailable(isEnabled) end

---@param source GUIDSTRING
---@param flag FLAG
---@param sendFlagSetEventsIfChanged integer
function Osi.SetMagicPocketsFlag(source, flag, sendFlagSetEventsIfChanged) end

---@param partySizeOverride integer
function Osi.SetMaxPartySizeOverride(partySizeOverride) end

---@param item ITEM
---@param bool integer
function Osi.SetMovable(item, bool) end

---@param character CHARACTER
---@param flagValue integer
function Osi.SetNoFollowFlag(character, flagValue) end

---@param object GUIDSTRING
---@param bool integer
function Osi.SetOnStage(object, bool) end

---@param item ITEM
---@param bool integer
function Osi.SetOnlyOwnerCanUse(item, bool) end

---@param item ITEM
---@param newOwner CHARACTER
function Osi.SetOriginalOwner(item, newOwner) end

---@param item ITEM
---@param newOwner CHARACTER
function Osi.SetOwner(item, newOwner) end

---@param playersAreDreaming integer
function Osi.SetPlayersAreDreaming(playersAreDreaming) end

---@param item ITEM
---@param bool integer
function Osi.SetPortalIsOpen(item, bool) end

---@param itemOrChar GUIDSTRING
---@param reaction string
---@param priority integer
function Osi.SetReactionPriority(itemOrChar, reaction, priority) end

---@param character CHARACTER
---@param value integer
function Osi.SetReadyCheckBlocked(character, value) end

---@param sourceFaction FACTION
---@param targetFaction FACTION
---@param relation integer
function Osi.SetRelation(sourceFaction, targetFaction, relation) end

---@param character CHARACTER
---@param otherCharacter CHARACTER
function Osi.SetRelationTemporaryHostile(character, otherCharacter) end

---@param isEnabled integer
function Osi.SetShortRestAvailable(isEnabled) end

---@param item ITEM
---@param amount integer
function Osi.SetStackAmount(item, amount) end

---@param target GUIDSTRING
---@param enabled integer
function Osi.SetStayInAiHints(target, enabled) end

---@param target GUIDSTRING
---@param localizedTextKey string
function Osi.SetStoryDisplayName(target, localizedTextKey) end

---@param item ITEM
---@param bool integer
function Osi.SetStoryItem(item, bool) end

---@param character CHARACTER
---@param reason string
function Osi.SetStoryShortRestDisabled(character, reason) end

---@param character CHARACTER
function Osi.SetStoryShortRestEnabled(character) end

---@param character CHARACTER
---@param subRegionID string
---@param showNotification integer
function Osi.SetSubRegionName(character, subRegionID, showNotification) end

---@param character CHARACTER
---@param tadpoleTreeState integer
function Osi.SetTadpoleTreeState(character, tadpoleTreeState) end

---@param target GUIDSTRING
---@param tag TAG
function Osi.SetTag(target, tag) end

---@param nPCtrader CHARACTER
---@param tag TAG
---@param modifier number
function Osi.SetTagPriceModifier(nPCtrader, tag, modifier) end

---@param source ITEM
---@param teleportTarget GUIDSTRING
function Osi.SetTeleportTargetOverride(source, teleportTarget) end

---@param item ITEM
---@param bool integer
function Osi.SetTrapArmed(item, bool) end

---@param item ITEM
---@param bool integer
function Osi.SetTrapDiscovered(item, bool) end

---@param character CHARACTER
---@param tutorialGuid UNIFIEDTUTORIAL
function Osi.SetTutorialShown(character, tutorialGuid) end

---@param item ITEM
---@param bool integer
function Osi.SetUseRemotely(item, bool) end

---@param target GUIDSTRING
---@param varName string
---@param varValue string
function Osi.SetVarFixedString(target, varName, varValue) end

---@param target GUIDSTRING
---@param varName string
---@param varValue number
function Osi.SetVarFloat(target, varName, varValue) end

---@param target GUIDSTRING
---@param varName string
---@param x number
---@param y number
---@param z number
function Osi.SetVarFloat3(target, varName, x, y, z) end

---@param target GUIDSTRING
---@param varName string
---@param varValue integer
function Osi.SetVarInteger(target, varName, varValue) end

---@param source GUIDSTRING
---@param varName string
---@param object GUIDSTRING
function Osi.SetVarObject(source, varName, object) end

---@param target GUIDSTRING
---@param varName string
---@param varValue string
function Osi.SetVarString(target, varName, varValue) end

---@param source GUIDSTRING
---@param varName string
---@param object GUIDSTRING
function Osi.SetVarUUID(source, varName, object) end

---@param object GUIDSTRING
---@param bool integer
function Osi.SetVisible(object, bool) end

---@param character CHARACTER
---@param enabled integer
---@param immediately integer
function Osi.SetWeaponUnsheathed(character, enabled, immediately) end

---@param playerCharacter CHARACTER
---@param onOff integer
function Osi.SharedTurnBaseMode(playerCharacter, onOff) end

---@param activityId string
function Osi.ShowActivity(activityId) end

---@param type string
function Osi.ShowAllActivities(type) end

---@param character CHARACTER
---@param error string
function Osi.ShowError(character, error) end

---@overload fun()
---@param reason string
function Osi.ShowGameOverMenu(reason) end

---@param character CHARACTER
---@param markerID string
---@param show integer
function Osi.ShowMapMarker(character, markerID, show) end

---@param character CHARACTER
---@param text string
function Osi.ShowNotification(character, text) end

---@param character CHARACTER
---@param type integer
---@param uIInstance string
function Osi.ShowStoryElementUI(character, type, uIInstance) end

---@param character CHARACTER
---@param tutorialGuid UNIFIEDTUTORIAL
function Osi.ShowTutorial(character, tutorialGuid) end

---@param enable integer
function Osi.ShroudRender(enable) end

function Osi.ShutdownCrimeSystem() end

---@param entity GUIDSTRING
---@param entity2 GUIDSTRING
function Osi.SitOnEntity(entity, entity2) end

---@param entity GUIDSTRING
function Osi.SitOnGround(entity) end

---@param character CHARACTER
---@param eventName string
function Osi.SonyRealtimeMultiplayerEvent(character, eventName) end

---@param entity GUIDSTRING
---@param entity2 GUIDSTRING
function Osi.StandOnEntity(entity, entity2) end

---@param activityId string
function Osi.StartActivity(activityId) end

---@param spline SPLINE
---@param character CHARACTER
---@param fadeTime number
---@param hideUI integer
---@param freeze integer
---@param startIndex integer
function Osi.StartCameraSpline(spline, character, fadeTime, hideUI, freeze, startIndex) end

---@param target GUIDSTRING
function Osi.StartChangeAppearance(target) end

function Osi.StartCharacterCreation() end

---@param target GUIDSTRING
function Osi.StartHenchmen(target) end

---@param bark VOICEBARKRESOURCE
---@param source CHARACTER
function Osi.StartInteractiveVoiceBark(bark, source) end

---@param player CHARACTER
---@param npc CHARACTER
---@param success integer
function Osi.StartPickpocket(player, npc, success) end

---@param target GUIDSTRING
function Osi.StartRespec(target) end

---@param target GUIDSTRING
function Osi.StartRespecRestore(target) end

---@param target GUIDSTRING
function Osi.StartRespecToOathbreaker(target) end

---@param target GUIDSTRING
---@param subclass GUIDSTRING
function Osi.StartRespecToSubclass(target, subclass) end

---@param character CHARACTER
function Osi.StartSightEvents(character) end

---@param bark VOICEBARKRESOURCE
---@param source CHARACTER
function Osi.StartVoiceBark(bark, source) end

---@param character CHARACTER
---@param target GUIDSTRING
---@param snapToTarget integer
function Osi.SteerTo(character, target, snapToTarget) end

---@param character CHARACTER
---@param fxName string
function Osi.StopAllEffectsWithName(character, fxName) end

---@param target GUIDSTRING
---@param abort integer
function Osi.StopAnimation(target, abort) end

---@param spline SPLINE
---@param character CHARACTER
function Osi.StopCameraSpline(spline, character) end

---@param surfaceActionHandle INTEGER64
function Osi.StopDrawSurfaceOnPath(surfaceActionHandle) end

---@param follower CHARACTER
function Osi.StopFollow(follower) end

---@param fxHandle INTEGER64
function Osi.StopLoopEffect(fxHandle) end

---@param targetObject GUIDSTRING
function Osi.StopPatrol(targetObject) end

---@param character CHARACTER
function Osi.StopSightEvents(character) end

---@param dialogID integer
function Osi.StopWorldTimeline(dialogID) end

---@param levelName string
---@param event string
---@param movie string
function Osi.TeleportPartiesToLevelWithMovie(levelName, event, movie) end

---@param target GUIDSTRING
---@param event string
---@param movie string
function Osi.TeleportPartiesWithMovie(target, event, movie) end

---@overload fun(sourceObject:GUIDSTRING, targetObject:GUIDSTRING)
---@overload fun(sourceObject:GUIDSTRING, targetObject:GUIDSTRING, event:string)
---@overload fun(sourceObject:GUIDSTRING, targetObject:GUIDSTRING, event:string, teleportLinkedCharacters:integer)
---@overload fun(sourceObject:GUIDSTRING, targetObject:GUIDSTRING, event:string, teleportLinkedCharacters:integer, teleportPartyFollowers:integer)
---@overload fun(sourceObject:GUIDSTRING, targetObject:GUIDSTRING, event:string, teleportLinkedCharacters:integer, teleportPartyFollowers:integer, teleportSummons:integer)
---@param sourceObject GUIDSTRING
---@param targetObject GUIDSTRING
---@param event string
---@param teleportLinkedCharacters integer
---@param teleportPartyFollowers integer
---@param teleportSummons integer
---@param leaveCombat integer
---@param snapToGround integer
function Osi.TeleportTo(sourceObject, targetObject, event, teleportLinkedCharacters, teleportPartyFollowers, teleportSummons, leaveCombat, snapToGround) end

---@overload fun(sourceObject:GUIDSTRING, x:number, y:number, z:number)
---@overload fun(sourceObject:GUIDSTRING, x:number, y:number, z:number, event:string, teleportLinkedCharacters:integer)
---@overload fun(sourceObject:GUIDSTRING, x:number, y:number, z:number, event:string, teleportLinkedCharacters:integer, teleportPartyFollowers:integer, teleportSummons:integer)
---@param sourceObject GUIDSTRING
---@param x number
---@param y number
---@param z number
---@param event string
---@param teleportLinkedCharacters integer
---@param teleportPartyFollowers integer
---@param teleportSummons integer
---@param leaveCombat integer
---@param snapToGround integer
function Osi.TeleportToPosition(sourceObject, x, y, z, event, teleportLinkedCharacters, teleportPartyFollowers, teleportSummons, leaveCombat, snapToGround) end

---@overload fun(itemTemplate:ITEMROOT, inventoryHolder:GUIDSTRING, count:integer)
---@param itemTemplate ITEMROOT
---@param inventoryHolder GUIDSTRING
---@param count integer
---@param showNotification integer
function Osi.TemplateAddTo(itemTemplate, inventoryHolder, count, showNotification) end

---@param itemTemplate ITEMROOT
---@param character CHARACTER
---@param count integer
function Osi.TemplateDropFromCharacter(itemTemplate, character, count) end

---@param itemTemplate ITEMROOT
---@param object GUIDSTRING
---@param count integer
function Osi.TemplateRemoveFrom(itemTemplate, object, count) end

---@param itemTemplate ITEMROOT
---@param character CHARACTER
---@param count integer
function Osi.TemplateRemoveFromParty(itemTemplate, character, count) end

---@param itemTemplate ITEMROOT
---@param character CHARACTER
---@param count integer
function Osi.TemplateRemoveFromUser(itemTemplate, character, count) end

---@param timer string
function Osi.TimerCancel(timer) end

---@param timer string
---@param time2 integer
function Osi.TimerLaunch(timer, time2) end

---@param timer string
function Osi.TimerPause(timer) end

---@param timer string
function Osi.TimerUnpause(timer) end

---@overload fun(object:GUIDSTRING, targetObject:GUIDSTRING)
---@overload fun(object:GUIDSTRING, targetObject:GUIDSTRING, amount:integer)
---@overload fun(object:GUIDSTRING, targetObject:GUIDSTRING, amount:integer, showNotification:integer)
---@param object GUIDSTRING
---@param targetObject GUIDSTRING
---@param amount integer
---@param showNotification integer
---@param clearOriginalOwner integer
function Osi.ToInventory(object, targetObject, amount, showNotification, clearOriginalOwner) end

---@param item ITEM
---@param x number
---@param y number
---@param z number
---@param pitch number
---@param yaw number
---@param roll number
function Osi.ToTransform(item, x, y, z, pitch, yaw, roll) end

---@param entity GUIDSTRING
---@param passiveID string
function Osi.TogglePassive(entity, passiveID) end

---@param eventName string
---@param eventData string
---@param character CHARACTER
function Osi.TrackAnalyticsInfo(eventName, eventData, character) end

---@param character CHARACTER
---@param toCharacter CHARACTER
function Osi.TransferItemsToCharacter(character, toCharacter) end

---@param character CHARACTER
function Osi.TransferItemsToParty(character) end

---@param character CHARACTER
function Osi.TransferItemsToUser(character) end

---@param object GUIDSTRING
---@param targetTemplate GUIDSTRING
---@param shapeshiftRules SHAPESHIFTRULE
function Osi.Transform(object, targetTemplate, shapeshiftRules) end

---@param target GUIDSTRING
---@param transformType string
---@param transformLayer string
---@param radius number
---@param lifetime number
---@param owner GUIDSTRING
function Osi.TransformSurface(target, transformType, transformLayer, radius, lifetime, owner) end

---@param x number
---@param y number
---@param z number
---@param transformType string
---@param transformLayer string
---@param radius number
---@param lifetime number
---@param owner GUIDSTRING
function Osi.TransformSurfaceAtPosition(x, y, z, transformType, transformLayer, radius, lifetime, owner) end

---@param areaTrigger TRIGGER
function Osi.TriggerClearItemsOwner(areaTrigger) end

---@param trigger TRIGGER
function Osi.TriggerDespawnCrowd(trigger) end

---@param trigger TRIGGER
---@param event string
---@param completionEvent string
function Osi.TriggerLaunchIterator(trigger, event, completionEvent) end

---@param character CHARACTER
---@param movieName string
function Osi.TriggerMovieEndFadeIn(character, movieName) end

---@param trigger TRIGGER
---@param character CHARACTER
function Osi.TriggerRegisterForCharacter(trigger, character) end

---@param trigger TRIGGER
function Osi.TriggerRegisterForItems(trigger) end

---@param trigger TRIGGER
function Osi.TriggerRegisterForPlayers(trigger) end

---@param trigger TRIGGER
---@param itemTemplate ITEMROOT
function Osi.TriggerRemoveItemTemplates(trigger, itemTemplate) end

---@param trigger TRIGGER
function Osi.TriggerResetAtmosphere(trigger) end

---@param trigger TRIGGER
function Osi.TriggerResetLighting(trigger) end

---@param trigger TRIGGER
---@param atmosphereUUID string
function Osi.TriggerSetAtmosphere(trigger, atmosphereUUID) end

---@param trigger TRIGGER
---@param behaviour CROWDBEHAVIOUR
function Osi.TriggerSetCrowdBehaviour(trigger, behaviour) end

---@param trigger TRIGGER
---@param enable integer
function Osi.TriggerSetCrowdSpawningEnable(trigger, enable) end

---@param areaTrigger TRIGGER
---@param owner CHARACTER
function Osi.TriggerSetItemsOwner(areaTrigger, owner) end

---@param trigger TRIGGER
---@param lightingUUID string
function Osi.TriggerSetLighting(trigger, lightingUUID) end

---@param trigger TRIGGER
---@param name string
---@param value number
---@param recursive integer
function Osi.TriggerSetSoundRTPC(trigger, name, value, recursive) end

---@param trigger TRIGGER
---@param stateGroup string
---@param state2 string
---@param recursive integer
function Osi.TriggerSetSoundState(trigger, stateGroup, state2, recursive) end

---@param trigger TRIGGER
---@param character CHARACTER
function Osi.TriggerUnregisterForCharacter(trigger, character) end

---@param trigger TRIGGER
function Osi.TriggerUnregisterForItems(trigger) end

---@param trigger TRIGGER
function Osi.TriggerUnregisterForPlayers(trigger) end

---@param entity GUIDSTRING
---@param timer string
function Osi.TurnBasedTimerCancel(entity, timer) end

---@param entity GUIDSTRING
---@param timer string
---@param localizedTextKey string
---@param time2 integer
function Osi.TurnBasedTimerLaunch(entity, timer, localizedTextKey, time2) end

---@param character GUIDSTRING
function Osi.UnblockFlee(character) end

---@param character CHARACTER
---@param item ITEM
function Osi.Unequip(character, item) end

---@param character CHARACTER
function Osi.Unfreeze(character) end

---@param target GUIDSTRING
function Osi.UnloadItem(target) end

---@param levelTemplate LEVELTEMPLATE
function Osi.UnloadLevelTemplate(levelTemplate) end

---@overload fun(item:ITEM)
---@param item ITEM
---@param character CHARACTER
function Osi.Unlock(item, character) end

---@param achievementID string
---@param character CHARACTER
function Osi.UnlockAchievement(achievementID, character) end

---@param character CHARACTER
---@param dlc DLC
function Osi.UnlockCustomDLC(character, dlc) end

---@param recipeID string
function Osi.UnlockJournalRecipe(recipeID) end

---@param character CHARACTER
---@param recipeID string
---@param showNotification integer
function Osi.UnlockRecipe(character, recipeID, showNotification) end

---@param item ITEM
---@param character CHARACTER
function Osi.UnlockRecipes(item, character) end

---@param waypointName string
---@param trigger TRIGGER
---@param character CHARACTER
function Osi.UnlockWaypoint(waypointName, trigger, character) end

---@param character CHARACTER
function Osi.UnregisterAsCompanion(character) end

---@overload fun(character:CHARACTER, item:ITEM, event:string)
---@param character CHARACTER
---@param item ITEM
---@param useItem integer
---@param isInteraction integer
---@param event string
function Osi.Use(character, item, useItem, isInteraction, event) end

---@overload fun(caster:GUIDSTRING, spellID:string, target:GUIDSTRING)
---@overload fun(caster:GUIDSTRING, spellID:string, target:GUIDSTRING, target2:GUIDSTRING)
---@param caster GUIDSTRING
---@param spellID string
---@param target GUIDSTRING
---@param target2 GUIDSTRING
---@param withoutMove integer
function Osi.UseSpell(caster, spellID, target, target2, withoutMove) end

---@overload fun(caster:GUIDSTRING, spellID:string, x:number, y:number, z:number)
---@param caster GUIDSTRING
---@param spellID string
---@param x number
---@param y number
---@param z number
---@param withoutMove integer
function Osi.UseSpellAtPosition(caster, spellID, x, y, z, withoutMove) end

---@param character CHARACTER
---@param count integer
function Osi.UserAddGold(character, count) end
--#endregion
    