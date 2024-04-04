---@meta
---@diagnostic disable

if Osi == nil then Osi = {} end

---@param a0 ITEM
---@param a1 GUIDSTRING
---@param a2 number
---@param a3 number
---@param a4 integer
---@param a5 string
---@param a6 integer
function Osi.ItemMoveTo(a0, a1, a2, a3, a4, a5, a6) end

---@param a0 ITEM
---@param a1 number
---@param a2 number
---@param a3 number
---@param a4 number
---@param a5 number
---@param a6 string
---@param a7 integer
function Osi.ItemMoveToPosition(a0, a1, a2, a3, a4, a5, a6, a7) end

function Osi.PROC_Achievements_BG3_EndingAchievementsHook() end

function Osi.PROC_Achievements_BG3_EndingAchievementsHook_EarlyEndInclusive() end

function Osi.PROC_Achievements_BG3_EndingAchievementsHook_EndgameOnly() end

---@param a0 CHARACTER
function Osi.PROC_Achievements_BG3_Quest21_PrisonerEscaped(a0) end

function Osi.PROC_Achievements_BG3_Quest24_CleanUp() end

function Osi.PROC_Achievements_BG3_Quest29_DefineMultiAttackSpells() end

---@param a0 CHARACTER
---@param a1 integer
---@param a2 string
function Osi.PROC_Achievements_BG3_Quest29_ProcessAttack(a0, a1, a2) end

function Osi.PROC_Achievements_BG3_Quest30_DefineUnarmedAttackSpells() end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_Achievements_BG3_Quest30_UnarmedAttack(a0, a1) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_Achievements_BG3_Quest43_AddReadBook(a0, a1) end

---@param a0 string
---@param a1 integer
---@param a2 CHARACTER
function Osi.PROC_Achievements_DEBUG_DisplayProgress(a0, a1, a2) end

---@param a0 string
function Osi.PROC_Achievements_IncrementProgress(a0) end

---@param a0 string
---@param a1 CHARACTER
function Osi.PROC_Achievements_IncrementProgress(a0, a1) end

---@param a0 string
---@param a1 integer
function Osi.PROC_Achievements_IncrementProgress_User(a0, a1) end

---@param a0 string
---@param a1 string
function Osi.PROC_Achievements_IncrementProgress_UserProfile(a0, a1) end

---@param a0 string
---@param a1 CHARACTER
function Osi.PROC_Achievements_Internal_Unlock(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_Achievements_Quest12_GivenShovelRewardsHook(a0) end

---@param a0 string
---@param a1 integer
function Osi.PROC_Achievements_SetProgress(a0, a1) end

---@param a0 string
---@param a1 integer
---@param a2 CHARACTER
function Osi.PROC_Achievements_SetProgress(a0, a1, a2) end

---@param a0 string
---@param a1 integer
---@param a2 integer
function Osi.PROC_Achievements_SetProgress_User(a0, a1, a2) end

---@param a0 string
---@param a1 integer
---@param a2 string
function Osi.PROC_Achievements_SetProgress_UserProfile(a0, a1, a2) end

---@param a0 string
function Osi.PROC_Achievements_Unlock(a0) end

---@param a0 string
---@param a1 CHARACTER
function Osi.PROC_Achievements_Unlock(a0, a1) end

---@param a0 string
---@param a1 CHARACTER
function Osi.PROC_Achievements_Unlocked(a0, a1) end

function Osi.PROC_Act1_StopCombatStatusGoal() end

function Osi.PROC_Act1a_MainQuestFallback_MizoraIntro_Check() end

function Osi.PROC_Act1b_StopCombatStatusGoal() end

function Osi.PROC_Act2_StopCombatStatusGoal() end

---@param a0 GUIDSTRING
function Osi.PROC_Act3_FlorrickExecution_CancelHangedState(a0) end

function Osi.PROC_Act3_FlorrickExecution_DisableFlorrickHanging() end

---@param a0 string
function Osi.PROC_Act3_GLO_Gazette_AddArticles(a0) end

---@param a0 string
function Osi.PROC_Act3_GLO_Gazette_AddFooter(a0) end

---@param a0 string
function Osi.PROC_Act3_GLO_Gazette_AddHeadline(a0) end

---@param a0 integer
function Osi.PROC_Act3_GLO_Gazette_BuildIssue(a0) end

function Osi.PROC_Act3_GLO_Gazette_ChooseBestArticle() end

function Osi.PROC_Act3_GLO_Gazette_ChooseBestFooter() end

function Osi.PROC_Act3_GLO_Gazette_ChooseBestHeadline() end

---@param a0 integer
function Osi.PROC_Act3_GLO_Gazette_HandleNumbering(a0) end

---@param a0 string
---@param a1 integer
function Osi.PROC_Act3_GLO_Gazette_UpdatePriority(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_Act3_VampireSpawns_CommentOnSpawnEscape(a0) end

---@param a0 CHARACTER
function Osi.PROC_Act3_VampireSpawns_SendToPalace(a0) end

---@param a0 integer
---@param a1 GUIDSTRING
function Osi.PROC_AddActorToDialogList(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_AddAnubisConfigDB(a0) end

---@param a0 DIALOGRESOURCE
---@param a1 TRIGGER
function Osi.PROC_AddCharactersInTriggerToDialog_Clear(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_AddDebugCharToParty(a0) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_AddGoldToMagicPockets(a0, a1) end

---@param a0 integer
---@param a1 GUIDSTRING
function Osi.PROC_AddNPCActorToDialogList(a0, a1) end

---@param a0 integer
---@param a1 GUIDSTRING
function Osi.PROC_AddPlayerActorToDialogList(a0, a1) end

function Osi.PROC_AddRandomIncludedOrigin() end

---@param a0 integer
---@param a1 integer
---@param a2 integer
---@param a3 integer
function Osi.PROC_AddRemainingCriminals(a0, a1, a2, a3) end

---@param a0 integer
---@param a1 integer
---@param a2 integer
---@param a3 integer
---@param a4 integer
function Osi.PROC_AddRemainingEvidence(a0, a1, a2, a3, a4) end

---@param a0 CHARACTER
function Osi.PROC_AddTadpolePoint(a0) end

---@param a0 CHARACTER
---@param a1 TRIGGER
function Osi.PROC_AddToTrackedSoundEntity(a0, a1) end

---@param a0 string
---@param a1 integer
function Osi.PROC_AllyAbilities_BuildSummonsDB(a0, a1) end

---@param a0 string
---@param a1 integer
function Osi.PROC_AllyAbilities_SummonsDBIteration(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_Ambush_SetPlayersSurprised(a0) end

function Osi.PROC_AncientFist_Heal() end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_AnubisConfigs_DelayAssignment(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_AnubisRestoreBaseConfig(a0) end

---@param a0 CHARACTER
function Osi.PROC_Appear(a0) end

---@param a0 CHARACTER
function Osi.PROC_AppearOutOfSightAfterFleeing(a0) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
---@param a2 GUIDSTRING
---@param a3 string
function Osi.PROC_AppearOutOfSightTo(a0, a1, a2, a3) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_AppearOutOfSight_DeadClosestPlayer(a0, a1) end

---@param a0 CHARACTER
---@param a1 number
---@param a2 string
---@param a3 CHARACTER
function Osi.PROC_ApplyLimitedDamagePercent(a0, a1, a2, a3) end

---@param a0 string
---@param a1 string
function Osi.PROC_ApplySavegamePatchInLevel(a0, a1) end

function Osi.PROC_ApplySavegamePatch_305038_KillRavengard() end

function Osi.PROC_ApplySavegamePatch_GUS_305498() end

function Osi.PROC_ApplySavegamePatch_GUS_306961() end

function Osi.PROC_ApplySavegamePatch_GUS_307143() end

function Osi.PROC_ApplySavegamePatch_GUS_307143_CheckRemoveLaezel() end

function Osi.PROC_ApplySavegamePatches() end

---@param a0 string
---@param a1 string
function Osi.PROC_ApplySavegamePatches(a0, a1) end

function Osi.PROC_ApplySavegamePatches_GUS_301029() end

function Osi.PROC_ApplySavegamePatches_GUS_301515() end

function Osi.PROC_ApplySavegamePatches_GUS_302682_ApplyFix() end

function Osi.PROC_ApplySavegamePatches_GUS_302884() end

function Osi.PROC_ApplySavegamePatches_GUS_303084() end

function Osi.PROC_ApplySavegamePatches_GUS_303345() end

function Osi.PROC_ApplySavegamePatches_GUS_303434() end

function Osi.PROC_ApplySavegamePatches_GUS_306758() end

function Osi.PROC_ApplySavegamePatches_GUS_306795() end

function Osi.PROC_ApplySavegamePatches_GUS_306795_AddBag() end

function Osi.PROC_ApplySavegamePatches_GUS_307309() end

function Osi.PROC_ApplySavegamePatches_GUS_307309_RestoreRavengardRequipment() end

function Osi.PROC_ApplySavegamePatches_GUS_307309_RevertSetupCharacters() end

function Osi.PROC_ApplySavegamePatches_GUS_307588() end

function Osi.PROC_ApplySavegamePatches_GUS_308002() end

function Osi.PROC_ApplySavegamePatches_GUS_311211() end

function Osi.PROC_ApplySavegamePatches_GUS_311357_StopTimer() end

function Osi.PROC_ApplySavegamePatches_GUS_314136_BGO() end

function Osi.PROC_ApplySavegamePatches_GUS_314136_IRN() end

function Osi.PROC_ApplySavegamePatches_GUS_315319_CheckIRNState() end

function Osi.PROC_ApplySavegamePatches_GUS_315319_CheckRavengardFix() end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 integer
---@param a3 integer
function Osi.PROC_ApprovalRatingChanged(a0, a1, a2, a3) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 integer
---@param a3 integer
function Osi.PROC_ApprovalRatingChanged_Apply(a0, a1, a2, a3) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 integer
function Osi.PROC_ApprovalRating_SetThresholdEvents(a0, a1, a2) end

function Osi.PROC_ArabellaDiesInTown() end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_AssignCharacterToPlayer(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_AstarionHungerA_TagCandidate(a0) end

---@param a0 CHARACTER
function Osi.PROC_Astarion_Feeding(a0) end

function Osi.PROC_AttackOnDen_StartDrowSpotting() end

function Osi.PROC_AttackOnDen_TryRegisterBackupSpotting() end

---@param a0 CHARACTER
---@param a1 FLAG
function Osi.PROC_BG3_SaveGamePatches_GUS314075_ClearFlag(a0, a1) end

function Osi.PROC_BG3_SaveGamePatches_GUS_285535_InitNautiloidStrikeDBs() end

function Osi.PROC_BG3_SaveGamePatches_GUS_293377() end

function Osi.PROC_BG3_SaveGamePatches_GUS_296005_MoveAndDetachOrpheus() end

function Osi.PROC_BG3_SaveGamePatches_GUS_296005_SetEmperorBehaviourState() end

function Osi.PROC_BG3_SaveGamePatches_GUS_296625() end

---@param a0 integer
function Osi.PROC_BG3_SaveGamePatches_GUS_296625_UpdateInfernalBranch(a0) end

function Osi.PROC_BG3_SaveGamePatches_GUS_296849_CheckSetupZrellAfterStart() end

function Osi.PROC_BG3_SaveGamePatches_GUS_296849_UndoNightsongDeathStateFactionSwitch() end

function Osi.PROC_BG3_SaveGamePatches_GUS_296849_ZrellSwitchBackAndSetScene() end

function Osi.PROC_BG3_SaveGamePatches_GUS_297644_CheckJaheriaBackToMoonrise() end

function Osi.PROC_BG3_SaveGamePatches_GUS_297644_TeleportJaheriaBackToMoonrise() end

function Osi.PROC_BG3_SaveGamePatches_GUS_297672_SendKethericToRoof() end

function Osi.PROC_BG3_SaveGamePatches_GUS_300045_SetupBossIntroScene() end

function Osi.PROC_BG3_SaveGamePatches_GUS_300063_TryRemoveRavenGuardFF() end

function Osi.PROC_BG3_SaveGamePatches_GUS_302004_RemoveUpperFloorCombatGroup() end

---@param a0 DIALOGRESOURCE
function Osi.PROC_BG3_SaveGamePatches_GUS_302049_MigrateOldDaisyDBToNew(a0) end

---@param a0 DIALOGRESOURCE
function Osi.PROC_BG3_SaveGamePatches_GUS_302049_MigrateOldEmperorDBToNew(a0) end

function Osi.PROC_BG3_SaveGamePatches_GUS_302401_OpenPortalOrThrallOfTheAbsolute() end

function Osi.PROC_BG3_SaveGamePatches_GUS_302900_KillAdditionalEnemies() end

function Osi.PROC_BG3_SaveGamePatches_GUS_303217_ClearThrallOfTheAbsoluteFlags() end

---@param a0 CHARACTER
---@param a1 string
---@param a2 integer
function Osi.PROC_BG3_SaveGamePatches_GUS_306145_RemoveClassSpells(a0, a1, a2) end

function Osi.PROC_BG3_SaveGamePatches_GUS_307948_RemoveMindFlayerForm() end

function Osi.PROC_BG3_SaveGamePatches_GUS_308557_SyncSecretDoor() end

---@param a0 ITEM
---@param a1 ITEM
function Osi.PROC_BG3_SaveGamePatches_GUS_308557_SyncTorch(a0, a1) end

---@param a0 ITEM
---@param a1 ITEM
---@param a2 ITEM
---@param a3 GUIDSTRING
function Osi.PROC_BG3_SaveGamePatches_GUS_308557_SyncTrap(a0, a1, a2, a3) end

function Osi.PROC_BG3_SavegamePatch_GUS313016() end

function Osi.PROC_BG3_SavegamePatch_GUS315579_SetActiveScratchDB() end

function Osi.PROC_BG3_StoreCurrentVersion() end

function Osi.PROC_BUGFIX_304849_CheckSummonsImmunity() end

function Osi.PROC_BUGFIX_30600_ForceUpdateRelation() end

---@param a0 CHARACTER
function Osi.PROC_BUGFIX_306027_Fix(a0) end

function Osi.PROC_BUGFIX_306678() end

function Osi.PROC_BUGFIX_306678_RestoreQuestInHAG() end

function Osi.PROC_BUGFIX_308720_CheckTG() end

---@param a0 FLAG
---@param a1 CHARACTER
function Osi.PROC_BUGFIX_308720_CheckTG(a0, a1) end

---@param a0 CHARACTER
---@param a1 FLAG
function Osi.PROC_BUGFIX_AddAndPatch_DB_DeadOnceFlag(a0, a1) end

---@param a0 CHARACTER
---@param a1 FLAG
function Osi.PROC_BUGFIX_AddAndPatch_DB_DeadStateFlag(a0, a1) end

---@param a0 GUIDSTRING
---@param a1 FLAG
function Osi.PROC_BUGFIX_AddAndPatch_DB_DefeatedOnceFlag(a0, a1) end

---@param a0 GUIDSTRING
---@param a1 FLAG
function Osi.PROC_BUGFIX_AddAndPatch_DB_DefeatedStateFlag(a0, a1) end

---@param a0 string
---@param a1 FLAG
function Osi.PROC_BUGFIX_AddAndPatch_DB_GLO_DefeatCounter_AllDeadGlobalFlag(a0, a1) end

---@param a0 string
---@param a1 FLAG
function Osi.PROC_BUGFIX_AddAndPatch_DB_GLO_DefeatCounter_AllDefeatedGlobalFlag(a0, a1) end

---@param a0 string
---@param a1 FLAG
function Osi.PROC_BUGFIX_AddAndPatch_DB_GLO_DefeatCounter_AllPermaDefeatedGlobalFlag(a0, a1) end

---@param a0 GUIDSTRING
---@param a1 FLAG
function Osi.PROC_BUGFIX_AddAndPatch_DB_PermaDefeatedFlag(a0, a1) end

function Osi.PROC_BUGFIX_FillDirectlySetAnubisConfigs() end

function Osi.PROC_BUGFIX_GUS305511_FixBusyDialog() end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_BUGFIX_GUS305511_RecountBusyDialog(a0, a1) end

function Osi.PROC_BUGFIX_GUS306595_ForceFixBusyDialog() end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_BUGFIX_GUS306595_RecountBusyDialog_Boosters(a0, a1) end

function Osi.PROC_BUGFIX_GUS312057_CollectCrimes() end

function Osi.PROC_BUGFIX_GUS315706_TryRemoveWaitingDialogs() end

---@param a0 CHARACTER
function Osi.PROC_BUGFIX_GUS_307672_StuckInWyllDeath(a0) end

function Osi.PROC_BUGFIX_GUS_311465_CheckIsobelState() end

function Osi.PROC_BUGFIX_GUS_312820() end

function Osi.PROC_BUGFIX_GUS_313467_CheckLastPage() end

function Osi.PROC_BUGFIX_GUS_313467_CheckReachedCity() end

function Osi.PROC_BUGFIX_GUS_314524_CheckNightsongPosition() end

function Osi.PROC_BUGFIX_LOW_FixSurvivorsPermaHostility_DollDestroyedWhenMayrinaTakenByHag() end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_BUGFIX_MOO_TieflingPrisonersAnubis(a0, a1) end

function Osi.PROC_BUGFIX_Patch5_AnubisConfigCheck() end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_BUGFIX_Patch5_AnubisConfigCheck(a0, a1) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_BUGFIX_Patch5_AnubisConfigCheck_PatchCharacter(a0, a1) end

---@param a0 ITEM
function Osi.PROC_BUGFIX_PhilgravesMansion_SetGravityItemsAncientLair(a0) end

function Osi.PROC_BUGFIX_PhilgravesMansion_TransformDiagrams() end

function Osi.PROC_BUGFIX_RevertedAnubisConfigsOnShapeshifted() end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_BUGFIX_RevertedAnubisConfigsOnShapeshifted_PatchCharacter(a0, a1) end

function Osi.PROC_BUGFIX_SavegamePatch_303604() end

function Osi.PROC_BUGFIX_VoloAndGuardForceUpdate() end

---@param a0 CHARACTER
function Osi.PROC_BasiliskGate_CheckPlayerHealth(a0) end

function Osi.PROC_BasiliskGate_FlorrickExecution_FlorrickExecuted() end

function Osi.PROC_BasiliskGate_HideExecutionPosters() end

---@param a0 ITEM
function Osi.PROC_Bell_Sound(a0) end

---@param a0 CHARACTER
---@param a1 ITEM
function Osi.PROC_BlockCombineItem(a0, a1) end

---@param a0 CHARACTER
---@param a1 ITEM
function Osi.PROC_BlockLockpickItem(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_BlockLootCorpse(a0, a1) end

---@param a0 CHARACTER
---@param a1 ITEM
function Osi.PROC_BlockMoveOfItem(a0, a1) end

---@param a0 CHARACTER
---@param a1 ITEM
---@param a2 integer
function Osi.PROC_BlockMoveOfItem(a0, a1, a2) end

---@param a0 CHARACTER
function Osi.PROC_BlockPartyDisturbanceReactions(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_BlockPickupOfCharacter(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 integer
function Osi.PROC_BlockPickupOfCharacter(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 ITEM
function Osi.PROC_BlockPickupOfItem(a0, a1) end

---@param a0 CHARACTER
---@param a1 ITEM
---@param a2 integer
function Osi.PROC_BlockPickupOfItem(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 ITEM
function Osi.PROC_BlockTrapDisarm(a0, a1) end

---@param a0 CHARACTER
---@param a1 ITEM
function Osi.PROC_BlockUseOfItem(a0, a1) end

---@param a0 CHARACTER
---@param a1 ITEM
---@param a2 integer
function Osi.PROC_BlockUseOfItem(a0, a1, a2) end

---@param a0 ITEM
---@param a1 FLAG
---@param a2 CHARACTER
function Osi.PROC_BookFlags_FlagSet(a0, a1, a2) end

---@param a0 integer
function Osi.PROC_Bottomless_ForceUpdateAllEttercaps(a0) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_Bottomless_ForceUpdateEttercap(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_BroodingSovereign_SendMyconidCorpseEvent(a0) end

function Osi.PROC_Bugfix_GUS301878() end

---@param a0 CHARACTER
function Osi.PROC_Bugfix_GUS318910_CheckForStuckSleep(a0) end

---@param a0 string
function Osi.PROC_CAMPDEBUGBOOK_InitialPopulate(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_CAMPDEBUGBOOK_LoadMoreCampStrings(a0) end

function Osi.PROC_CAMPDEBUGBOOK_ResetCampStrings() end

function Osi.PROC_CAMPDEBUGBOOK_SetCampStringFlags() end

---@param a0 FLAG
---@param a1 integer
function Osi.PROC_CAMPDEBUG_QueueNight(a0, a1) end

---@param a0 integer
function Osi.PROC_CAMP_ArabellaPowers_JergalDialog_SetUp(a0) end

function Osi.PROC_CAMP_ArabellaPowers_SetUp() end

function Osi.PROC_CAMP_Astarion_CheckRequirementsForTastingParty() end

---@param a0 CHARACTER
function Osi.PROC_CAMP_Astarion_RemoveBiteVictim(a0) end

---@param a0 CHARACTER
function Osi.PROC_CAMP_BlockCampFaction(a0) end

function Osi.PROC_CAMP_DEBUG_PrepGnomeForCamp() end

---@param a0 CHARACTER
function Osi.PROC_CAMP_DaisyAcknowledgement_FindPrimaryPartner(a0) end

---@param a0 CHARACTER
function Osi.PROC_CAMP_DaisyAcknowledgement_FindPrimaryPartner_Lover(a0) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_CAMP_DaisyAcknowledgement_FindSecondaryPartner(a0, a1) end

function Osi.PROC_CAMP_GiveFreeSupplies() end

function Osi.PROC_CAMP_GoblinHuntCelebration_BackupBetrayalReaction() end

---@param a0 CHARACTER
function Osi.PROC_CAMP_GoblinHuntCelebration_CancelRelationshipDialog(a0) end

function Osi.PROC_CAMP_GoblinHuntCelebration_EndOfRevengeScene() end

function Osi.PROC_CAMP_GoblinHuntCelebration_KorrillaSetup() end

---@param a0 CHARACTER
function Osi.PROC_CAMP_GoblinHuntCelebration_PrepLeader(a0) end

function Osi.PROC_CAMP_GoblinHuntCelebration_RaidersBetrayal_JournalHook() end

function Osi.PROC_CAMP_GoblinHuntCelebration_RemoveRaiders() end

function Osi.PROC_CAMP_GoblinHuntCelebration_RemoveTieflings() end

---@param a0 FLAG
function Osi.PROC_CAMP_GoblinHuntCelebration_RestoreDialogs(a0) end

---@param a0 FLAG
---@param a1 CHARACTER
function Osi.PROC_CAMP_GoblinHuntCelebration_SaveDialog(a0, a1) end

function Osi.PROC_CAMP_GoblinHuntCelebration_SetupBird() end

---@param a0 string
function Osi.PROC_CAMP_GoblinHuntCelebration_SetupDog(a0) end

function Osi.PROC_CAMP_GoblinHuntCelebration_SetupHalsin() end

function Osi.PROC_CAMP_GoblinHuntCelebration_SetupRaiders() end

function Osi.PROC_CAMP_GoblinHuntCelebration_SetupTieflings() end

function Osi.PROC_CAMP_GoblinHuntCelebration_SetupVolo() end

function Osi.PROC_CAMP_GoblinHuntCelebration_TeleportKorrillaAndWatch() end

function Osi.PROC_CAMP_GoblinHuntCelebration_Tiefling_JournalHook() end

---@param a0 GUIDSTRING
function Osi.PROC_CAMP_LaezelBeforeDream_KillLaezel(a0) end

function Osi.PROC_CAMP_LaezelBeforeDream_SetLaezelHostileNPC() end

function Osi.PROC_CAMP_Laezel_Romance2_DuelFinished() end

function Osi.PROC_CAMP_Laezel_VossCampConfrontation_SetupVoss() end

function Osi.PROC_CAMP_LastPlayerLeftCamp() end

---@param a0 CHARACTER
function Osi.PROC_CAMP_LeftCamp(a0) end

---@param a0 integer
function Osi.PROC_CAMP_METRIC_PRINTRECURSIVE(a0) end

function Osi.PROC_CAMP_METRIC_RECORD() end

---@param a0 integer
function Osi.PROC_CAMP_METRIC_RECORD_Nights(a0) end

function Osi.PROC_CAMP_Minthara_Init() end

function Osi.PROC_CAMP_Ravengard_MizoraResurrectsRavengardAfterIRNDestruction_InitialDialogFinished() end

function Osi.PROC_CAMP_Ravengard_MizoraResurrectsRavengardAfterIRNDestruction_ResurrectRavengard() end

function Osi.PROC_CAMP_Ravengard_MizoraResurrectsRavengardAfterIRNDestruction_ReturnToPos() end

function Osi.PROC_CAMP_Ravengard_MizoraResurrectsRavengardAfterIRNDestruction_StartResurrection() end

function Osi.PROC_CAMP_Ravengard_RestoreEquipmentAfterIRN() end

function Osi.PROC_CAMP_Ravengard_RestoreRavengard() end

function Osi.PROC_CAMP_Ravengard_ResurrectedByMizora() end

function Osi.PROC_CAMP_ResetRestReminder() end

---@param a0 CHARACTER
function Osi.PROC_CAMP_ReturnToCampPos(a0) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_CAMP_ReturnToCampPos(a0, a1) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 string
function Osi.PROC_CAMP_ReturnToCampPos(a0, a1, a2) end

---@param a0 string
function Osi.PROC_CAMP_SafeFadeOutDone(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_CAMP_Shadowheart_LaezelFight_Hide(a0) end

---@param a0 CHARACTER
---@param a1 DIALOGRESOURCE
function Osi.PROC_CAMP_TiredOfTalkingTo_CheckSpeaker(a0, a1) end

function Osi.PROC_CAMP_UnfortunateGnome_MoveToCamp() end

---@param a0 CHARACTER
function Osi.PROC_CAMP_ZevlorsAppeal_MoveAndOpenLetter(a0) end

function Osi.PROC_CFM_ZevlorsAppeal_CheckIfBodyExists() end

function Osi.PROC_CFM_ZevlorsAppeal_Cleanup() end

---@param a0 string
function Osi.PROC_CFM_ZevlorsAppeal_LoadLetter(a0) end

function Osi.PROC_CFM_ZevlorsAppeal_Requirement() end

function Osi.PROC_CHA_AfterHeistReflectionDialog() end

function Osi.PROC_CHA_BanditsEndScene() end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_CHA_BanditsStartFight(a0, a1) end

function Osi.PROC_CHA_BoulderImpact() end

function Osi.PROC_CHA_BoulderImpact_Underground() end

---@param a0 CHARACTER
function Osi.PROC_CHA_Chapel_SendBanditsTo(a0) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_CHA_Chapel_UnlockExploreObjective(a0, a1) end

function Osi.PROC_CHA_CrypTrap_Activate() end

function Osi.PROC_CHA_CrypTrap_Deactivate() end

---@param a0 CHARACTER
function Osi.PROC_CHA_CryptTrap_SetLastUser(a0) end

---@param a0 CHARACTER
function Osi.PROC_CHA_Crypt_ResurrectSkeletonsNoCinematic(a0) end

---@param a0 CHARACTER
function Osi.PROC_CHA_Crypt_UpdateJergalAtCamp(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_CHA_DamagedByBoulder(a0) end

---@param a0 CHARACTER
function Osi.PROC_CHA_Desecration(a0) end

---@param a0 CHARACTER
function Osi.PROC_CHA_DestroyPillar(a0) end

function Osi.PROC_CHA_DropLadder() end

---@param a0 CHARACTER
function Osi.PROC_CHA_FL1_BanditForceActive(a0) end

---@param a0 CHARACTER
function Osi.PROC_CHA_FL1_BanditUnforceActive(a0) end

function Osi.PROC_CHA_FL1_DoNotFaceBandits() end

---@param a0 CHARACTER
function Osi.PROC_CHA_FL1_SendToCrashPos(a0) end

---@param a0 string
function Osi.PROC_CHA_FL1_SetSanctumBanditsCombatGroup(a0) end

---@param a0 CHARACTER
---@param a1 DIALOGRESOURCE
function Osi.PROC_CHA_FL1_StartBanditDialog(a0, a1) end

function Osi.PROC_CHA_FL1_SurpriseGuardBanditAD() end

function Osi.PROC_CHA_FL1_WeirdDoorUnlocked() end

function Osi.PROC_CHA_LaeZelRecruitment_DecideOnHostileLaezel() end

function Osi.PROC_CHA_LaezelRecruit_ADOnCombatEnded() end

function Osi.PROC_CHA_LaezelRecruit_ADOnLeavingAfterRandomCombat() end

---@param a0 CHARACTER
function Osi.PROC_CHA_LaezelRecruit_AttackedTieflings(a0) end

function Osi.PROC_CHA_LaezelRecruit_BlockRandomCombatReactions() end

---@param a0 CHARACTER
function Osi.PROC_CHA_LaezelRecruit_BottomDestroyed(a0) end

---@param a0 CHARACTER
function Osi.PROC_CHA_LaezelRecruit_CageBeingOpened(a0) end

---@param a0 CHARACTER
---@param a1 integer
---@param a2 number
function Osi.PROC_CHA_LaezelRecruit_CagerDeathReaction(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
function Osi.PROC_CHA_LaezelRecruit_CagersForceJoinCombat(a0, a1) end

function Osi.PROC_CHA_LaezelRecruit_CancelLeavingWithLaezel() end

function Osi.PROC_CHA_LaezelRecruit_CancelScene() end

function Osi.PROC_CHA_LaezelRecruit_CancelStart() end

function Osi.PROC_CHA_LaezelRecruit_CheckAutoResolveScene() end

---@param a0 CHARACTER
function Osi.PROC_CHA_LaezelRecruit_CheckDestroyBottom(a0) end

function Osi.PROC_CHA_LaezelRecruit_CheckDisableDialogAgain() end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_CHA_LaezelRecruit_CheckFreedUpdate(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_CHA_LaezelRecruit_CheckGiveAttackedUpdate(a0) end

function Osi.PROC_CHA_LaezelRecruit_CheckLeaveAfterRandomCombat() end

function Osi.PROC_CHA_LaezelRecruit_ClearCageOwnership() end

function Osi.PROC_CHA_LaezelRecruit_ClearEdgeCaseDB() end

function Osi.PROC_CHA_LaezelRecruit_DestroyBottom() end

function Osi.PROC_CHA_LaezelRecruit_DisableDialogs() end

---@param a0 CHARACTER
function Osi.PROC_CHA_LaezelRecruit_GiveFailedPersuationUpdate(a0) end

---@param a0 CHARACTER
function Osi.PROC_CHA_LaezelRecruit_GiveLeavingUpdate(a0) end

---@param a0 CHARACTER
function Osi.PROC_CHA_LaezelRecruit_GiveRecruitedUpdate(a0) end

function Osi.PROC_CHA_LaezelRecruit_GiveSidedTieflingsUpdate() end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_CHA_LaezelRecruit_GiveUpdateWithAlt(a0, a1) end

function Osi.PROC_CHA_LaezelRecruit_Init() end

function Osi.PROC_CHA_LaezelRecruit_InitNPC_ChapelVersion() end

function Osi.PROC_CHA_LaezelRecruit_InitNPC_CrashVersion() end

---@param a0 integer
function Osi.PROC_CHA_LaezelRecruit_InitPlayer(a0) end

function Osi.PROC_CHA_LaezelRecruit_InterruptScene() end

---@param a0 CHARACTER
function Osi.PROC_CHA_LaezelRecruit_IntroDialogFailed(a0) end

---@param a0 GUIDSTRING
---@param a1 GUIDSTRING
function Osi.PROC_CHA_LaezelRecruit_LaezelDeadSolo(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_CHA_LaezelRecruit_OpenCage(a0) end

---@param a0 CHARACTER
function Osi.PROC_CHA_LaezelRecruit_OpenCageFallback(a0) end

---@param a0 integer
function Osi.PROC_CHA_LaezelRecruit_PickASideDialogFailed(a0) end

function Osi.PROC_CHA_LaezelRecruit_PrepLeavingAlone() end

---@param a0 CHARACTER
function Osi.PROC_CHA_LaezelRecruit_ProcessAttackingLaezel(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 string
function Osi.PROC_CHA_LaezelRecruit_ProcessInterruption(a0, a1, a2) end

---@param a0 CHARACTER
function Osi.PROC_CHA_LaezelRecruit_RecordPrioPlayer(a0) end

function Osi.PROC_CHA_LaezelRecruit_RemoveFallBoost() end

function Osi.PROC_CHA_LaezelRecruit_RemoveTieflings() end

function Osi.PROC_CHA_LaezelRecruit_ResolveScene() end

function Osi.PROC_CHA_LaezelRecruit_SetCHADialog() end

function Osi.PROC_CHA_LaezelRecruit_SetOffStage() end

function Osi.PROC_CHA_LaezelRecruit_SetTieflingsHostileToLaezel() end

function Osi.PROC_CHA_LaezelRecruit_StartRecruitDialog() end

---@param a0 DIALOGRESOURCE
function Osi.PROC_CHA_LaezelRecruit_StartRecruitDialog(a0) end

---@param a0 CHARACTER
function Osi.PROC_CHA_LaezelRecruit_StartScene(a0) end

---@param a0 integer
---@param a1 CHARACTER
function Osi.PROC_CHA_LaezelRecruit_TieflingOpenCage(a0, a1) end

function Osi.PROC_CHA_LaezelRecruit_TieflingsDisappear() end

function Osi.PROC_CHA_LaezelRecruit_TieflingsHostile() end

function Osi.PROC_CHA_LaezelRecruit_TieflingsLeaveAlone() end

function Osi.PROC_CHA_LaezelRecruitment_CheckPickSide() end

function Osi.PROC_CHA_LaezelRecruitment_LeftCage() end

function Osi.PROC_CHA_LaezelRecruitment_PickSide() end

function Osi.PROC_CHA_LaezelRecruitment_SetDefeatedFlags() end

function Osi.PROC_CHA_LaezelRecruitment_SetSpotting() end

function Osi.PROC_CHA_Outpost_SpidersAppear() end

function Osi.PROC_CHA_ResurrectAllSkeletons() end

function Osi.PROC_CHA_ShadowHeart_ClearScene() end

function Osi.PROC_CHA_ShadowheartComments() end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_CHA_StartBanditDialog(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_CHA_StartBanditDialog_FromInside(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_CHA_StartBanditDialog_FromWest(a0) end

function Osi.PROC_CHA_TrySetChapelPartyBanters() end

function Osi.PROC_CHA_TurnAllLightOff() end

---@param a0 ITEM
function Osi.PROC_CMB_CreateNecromite(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 CHARACTER
function Osi.PROC_CMB_SporeServant_AddToParty(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_CMB_SporeServant_Create(a0, a1) end

function Osi.PROC_COL_Barracks_KressaSpotting() end

---@param a0 DIALOGRESOURCE
function Osi.PROC_COL_BrainReadingDevice_SetDialog(a0) end

function Osi.PROC_COL_CheckDebugSetup() end

function Osi.PROC_COL_CleansingRoom_BloodShower_Check() end

---@param a0 CHARACTER
function Osi.PROC_COL_DeviceRemoveBrainJar(a0) end

---@param a0 CHARACTER
---@param a1 TRIGGER
function Osi.PROC_COL_ElderBrainADs_AddAreaPlayer(a0, a1) end

function Osi.PROC_COL_ElderBrainADs_CancelTimer() end

function Osi.PROC_COL_ElderBrainADs_ClearSelectedPlayer() end

---@param a0 CHARACTER
function Osi.PROC_COL_ElderBrainADs_RapidMindmeld_DoAD(a0) end

---@param a0 CHARACTER
---@param a1 TRIGGER
function Osi.PROC_COL_ElderBrainADs_RemoveAreaPlayer(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_COL_ElderBrainADs_SetSelectedPlayer(a0) end

---@param a0 CHARACTER
function Osi.PROC_COL_ElderBrainADs_StartRapidMindmeld(a0) end

function Osi.PROC_COL_ElderBrainADs_StartTimer() end

---@param a0 GUIDSTRING
---@param a1 GUIDSTRING
function Osi.PROC_COL_ElderBrainADs_TeleportSpeaker(a0, a1) end

---@param a0 GUIDSTRING
---@param a1 GUIDSTRING
---@param a2 number
---@param a3 number
---@param a4 number
---@param a5 number
function Osi.PROC_COL_ElderBrainADs_TeleportSpeaker(a0, a1, a2, a3, a4, a5) end

function Osi.PROC_COL_Elevator_DoMove() end

function Osi.PROC_COL_Elevator_Move() end

function Osi.PROC_COL_FindZevlor_HavUpdate() end

function Osi.PROC_COL_FindZevlor_PrisonerUpdate() end

function Osi.PROC_COL_FindZevlor_TwnUpdate() end

function Osi.PROC_COL_KethericShowdown_AD_Check_IsobelKilled() end

function Osi.PROC_COL_KethericShowdown_AD_Check_NightsongApostle() end

function Osi.PROC_COL_KethericShowdown_AD_Check_NightsongFreed() end

function Osi.PROC_COL_KethericShowdown_AD_Check_Phase3Transition() end

function Osi.PROC_COL_KethericShowdown_AD_PlaySelectedAD() end

function Osi.PROC_COL_KethericShowdown_AD_SelectAD() end

function Osi.PROC_COL_KethericShowdown_AfterDefeat() end

function Osi.PROC_COL_KethericShowdown_CheckDownedPlayers() end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_COL_KethericShowdown_ChosenThree_CheckIfLinkedToAvatar(a0, a1) end

function Osi.PROC_COL_KethericShowdown_ChosenThree_CleanUp() end

---@param a0 CHARACTER
function Osi.PROC_COL_KethericShowdown_CleanUpCineCharacter(a0) end

---@param a0 string
function Osi.PROC_COL_KethericShowdown_CueCinematic(a0) end

function Osi.PROC_COL_KethericShowdown_Debug_AssaultRoute() end

function Osi.PROC_COL_KethericShowdown_Debug_AudienceRoute() end

function Osi.PROC_COL_KethericShowdown_Debug_Defeat() end

function Osi.PROC_COL_KethericShowdown_Debug_Start() end

function Osi.PROC_COL_KethericShowdown_Debug_Transform() end

function Osi.PROC_COL_KethericShowdown_DetermineIntDevLeader() end

---@param a0 integer
function Osi.PROC_COL_KethericShowdown_DoNightsongTransform(a0) end

function Osi.PROC_COL_KethericShowdown_EnterPhase_2() end

function Osi.PROC_COL_KethericShowdown_EnterPhase_3() end

function Osi.PROC_COL_KethericShowdown_EnteredChamber() end

function Osi.PROC_COL_KethericShowdown_Init() end

function Osi.PROC_COL_KethericShowdown_IsobelPresentCheck() end

---@param a0 integer
function Osi.PROC_COL_KethericShowdown_KethericApostle_DetermineRandomInclusion(a0) end

---@param a0 integer
function Osi.PROC_COL_KethericShowdown_NightsongGotCaged(a0) end

function Osi.PROC_COL_KethericShowdown_NightsongPresentCheck() end

function Osi.PROC_COL_KethericShowdown_PreInit() end

---@param a0 GUIDSTRING
---@param a1 number
function Osi.PROC_COL_KethericShowdown_ProcessWaitTime(a0, a1) end

---@param a0 integer
function Osi.PROC_COL_KethericShowdown_SetHardMode(a0) end

---@param a0 integer
function Osi.PROC_COL_KethericShowdown_SetNightsongCaged(a0) end

---@param a0 integer
function Osi.PROC_COL_KethericShowdown_SetPhase(a0) end

function Osi.PROC_COL_KethericShowdown_SetRememberedKethericHealth() end

---@param a0 CHARACTER
function Osi.PROC_COL_KethericShowdown_SetSpotting(a0) end

function Osi.PROC_COL_KethericShowdown_SpawnDeathBlooms() end

---@param a0 CHARACTER
function Osi.PROC_COL_KethericShowdown_StartEntry(a0) end

function Osi.PROC_COL_KethericShowdown_StopSpotting() end

---@param a0 CHARACTER
function Osi.PROC_COL_KethericShowdown_TeleportPlayerToEntrance(a0) end

---@param a0 DIALOGRESOURCE
function Osi.PROC_COL_KethericShowdown_TryAD(a0) end

---@param a0 CHARACTER
function Osi.PROC_COL_KethericShowdown_TryPlayerNightsongFirstTurn(a0) end

---@param a0 CHARACTER
function Osi.PROC_COL_KethericShowdown_TryStartIntroDialog(a0) end

---@param a0 CHARACTER
function Osi.PROC_COL_KethericShowdown_WithoutKethericStoneWarning(a0) end

---@param a0 CHARACTER
function Osi.PROC_COL_MizoraRescue_StartWyllDeath(a0) end

function Osi.PROC_COL_Mizora_CaptureSetup() end

function Osi.PROC_COL_Mizora_CaptureSetup_DefineDialog() end

---@param a0 CHARACTER
function Osi.PROC_COL_MizorasRescue_PlayerEnteredShowdown(a0) end

---@param a0 CHARACTER
function Osi.PROC_COL_Morgue_AttackedUs(a0) end

function Osi.PROC_COL_Morgue_ClearCageOwnership() end

function Osi.PROC_COL_Morgue_InitUs() end

function Osi.PROC_COL_Morgue_OnUsFreedAndSafe() end

function Osi.PROC_COL_Morgue_UsFollowingCrime() end

---@param a0 CHARACTER
function Osi.PROC_COL_Morgue_UsTryFollowPlayer(a0) end

---@param a0 CHARACTER
function Osi.PROC_COL_NecroLab_CreateHalfZombie(a0) end

function Osi.PROC_COL_NecromancerLab_CheckAvailableZombies() end

---@param a0 CHARACTER
function Osi.PROC_COL_NecromancerLab_DEBUG_Assault(a0) end

---@param a0 CHARACTER
function Osi.PROC_COL_NecromancerLab_DEBUG_Audience(a0) end

function Osi.PROC_COL_NecromancerLab_FindLighter() end

---@param a0 CHARACTER
function Osi.PROC_COL_NecromancerLab_RecoverCandidate(a0) end

---@param a0 CHARACTER
function Osi.PROC_COL_NecromancerLab_ResetZombieSwarmGroup(a0) end

function Osi.PROC_COL_NecromancerLab_SetAssaultRoute() end

function Osi.PROC_COL_NecromancerLab_SetAudienceRoute() end

---@param a0 string
function Osi.PROC_COL_NecromancerLab_SetCombatState(a0) end

function Osi.PROC_COL_NecromancerLab_SetupCandidates() end

function Osi.PROC_COL_OnFirstEntry() end

function Osi.PROC_COL_OnLastLeave() end

---@param a0 CHARACTER
function Osi.PROC_COL_ResonanceJoy_Remove_TryPAD(a0) end

---@param a0 ITEM
---@param a1 CHARACTER
function Osi.PROC_COL_SetBrainReaderJar(a0, a1) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
function Osi.PROC_COL_TadpolingCentre_AddCombatPartyMember(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_COL_TadpolingCentre_CharacterEnteredPod(a0) end

function Osi.PROC_COL_TadpolingCentre_CheckCharactersInCombat() end

---@param a0 ITEM
function Osi.PROC_COL_TadpolingCentre_EmptyPod(a0) end

function Osi.PROC_COL_TadpolingCentre_HandleTeleports() end

function Osi.PROC_COL_TadpolingCentre_InitMindflayers() end

function Osi.PROC_COL_TadpolingCentre_InitReleaseCombat() end

---@param a0 CHARACTER
function Osi.PROC_COL_TadpolingCentre_OnReleased(a0) end

---@param a0 CHARACTER
function Osi.PROC_COL_TadpolingCentre_PodsPurgeAll(a0) end

function Osi.PROC_COL_TadpolingCentre_PodsReleaseAll() end

---@param a0 GUIDSTRING
function Osi.PROC_COL_TadpolingCentre_PurgeCleanUp(a0) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
function Osi.PROC_COL_TadpolingCentre_RemoveCombatPartyMember(a0, a1) end

function Osi.PROC_COL_TadpolingCentre_ResetPods() end

function Osi.PROC_COL_TadpolingCentre_ZevlorPodFinished() end

---@param a0 integer
function Osi.PROC_COL_TeleportPartiesToColony(a0) end

---@param a0 integer
function Osi.PROC_COL_VaultPuzzle_OnStage(a0) end

---@param a0 ITEM
---@param a1 ROOT
function Osi.PROC_COL_Vault_ApplyNodeTransform(a0, a1) end

---@param a0 ITEM
---@param a1 integer
function Osi.PROC_COL_Vault_ApplyVisualEffect(a0, a1) end

function Osi.PROC_COL_Vault_CheckPuzzleSolved() end

---@param a0 ITEM
function Osi.PROC_COL_Vault_ConnectionAD(a0) end

function Osi.PROC_COL_Vault_ConnectionError() end

function Osi.PROC_COL_Vault_DefineNeighbourDirections() end

---@param a0 ITEM
---@param a1 ITEM
function Osi.PROC_COL_Vault_EstablishConnection(a0, a1) end

---@param a0 ITEM
---@param a1 ITEM
function Osi.PROC_COL_Vault_FlipConnection(a0, a1) end

---@param a0 ITEM
---@param a1 string
---@param a2 integer
---@param a3 integer
function Osi.PROC_COL_Vault_LockedNodeWrongCharge(a0, a1, a2, a3) end

function Osi.PROC_COL_Vault_MatchVisualsToCharges() end

function Osi.PROC_COL_Vault_RecalculateCharges() end

---@param a0 ITEM
function Osi.PROC_COL_Vault_SelectNode(a0) end

---@param a0 ITEM
---@param a1 integer
function Osi.PROC_COL_Vault_SetChargeVisual(a0, a1) end

---@param a0 ITEM
---@param a1 ITEM
function Osi.PROC_COL_Vault_SeverConnection(a0, a1) end

---@param a0 ITEM
---@param a1 ITEM
function Osi.PROC_COL_Vault_ShowConnection(a0, a1) end

---@param a0 ITEM
---@param a1 ITEM
---@param a2 string
function Osi.PROC_COL_Vault_ShowConnectionBeam(a0, a1, a2) end

---@param a0 CHARACTER
function Osi.PROC_COL_Vault_StartSolve(a0) end

---@param a0 CHARACTER
function Osi.PROC_COL_Vault_StopSolve(a0) end

---@param a0 ITEM
function Osi.PROC_COL_Vault_TryConnectionAD(a0) end

---@param a0 ITEM
---@param a1 ITEM
function Osi.PROC_COL_Vault_TryFlipConnection(a0, a1) end

function Osi.PROC_COL_Vault_UnlockNodes() end

---@param a0 ITEM
function Osi.PROC_COL_Vault_UnselectNode(a0) end

---@param a0 CHARACTER
function Osi.PROC_CONST_PreventADSPam(a0) end

function Osi.PROC_CRA_Boosters_CheckForGuideTeleport() end

---@param a0 CHARACTER
function Osi.PROC_CRA_DevourersStartRun(a0) end

function Osi.PROC_CRA_DevourersStopSpotting() end

function Osi.PROC_CRA_Devourers_BlockDevourerSpawn() end

---@param a0 integer
function Osi.PROC_CRA_Devourers_SetCombatDifficulty(a0) end

function Osi.PROC_CRA_Devourers_SpawnDevourer() end

function Osi.PROC_CRA_Escape_CheckDone() end

function Osi.PROC_CRA_Escape_MindflayerSceneInit() end

function Osi.PROC_CRA_Escape_Mindflayer_CleanUp() end

function Osi.PROC_CRA_InitAstarion() end

---@param a0 CHARACTER
function Osi.PROC_CRA_IntDevVB(a0) end

function Osi.PROC_CRA_LaezelRecruit_DebugInit() end

function Osi.PROC_CRA_LaezelRecruit_EndCrashVersion() end

function Osi.PROC_CRA_PerformAutosave() end

---@param a0 CHARACTER
function Osi.PROC_CRA_ShadowHeart_WakeUp(a0) end

function Osi.PROC_CRA_WakeUpCheckSkip() end

function Osi.PROC_CRA_WakeupDone() end

function Osi.PROC_CRE_ActivateEscapeVBs() end

---@param a0 CHARACTER
function Osi.PROC_CRE_AstralPrison_ResurrectWith1HP(a0) end

function Osi.PROC_CRE_BattleStations() end

function Osi.PROC_CRE_BirdExecuteEagles() end

function Osi.PROC_CRE_BloodOfLathander_BarrierTrap_TurnOff() end

function Osi.PROC_CRE_BloodOfLathander_BarrierTrap_TurnOn() end

function Osi.PROC_CRE_BloodOfLathander_GlowCannonCrystals() end

---@param a0 GUIDSTRING
function Osi.PROC_CRE_BloodOfLathander_StartCountDown(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_CRE_BloodOfLathander_StartQuestTimer(a0) end

function Osi.PROC_CRE_CaptainsOffice_PeacefulResolveIfAlive() end

function Osi.PROC_CRE_CarefulRingUnload() end

function Osi.PROC_CRE_ChainOfCommand_CaptainCombatStart() end

---@param a0 CHARACTER
function Osi.PROC_CRE_ChainOfCommand_CharacterEntersCreche(a0) end

function Osi.PROC_CRE_ChainOfCommand_CultistCaptureScene_ClearFlagsAndTriggers() end

function Osi.PROC_CRE_ChainOfCommand_EnterCrecheList_CheckRemaining() end

function Osi.PROC_CRE_ChainOfCommand_GithAndCultistsGoInsideCreche_Finish() end

function Osi.PROC_CRE_ChainOfCommand_GithAndCultistsGoInsideCreche_Start() end

function Osi.PROC_CRE_ChainOfCommand_GithAndCultistsStartTransition() end

function Osi.PROC_CRE_ChainOfCommand_GithAndCultistsStartTransition_Execute() end

function Osi.PROC_CRE_ChainOfCommand_GithAndCultistsStartWalking() end

function Osi.PROC_CRE_ChainOfCommand_GithSquadLeavesCaptainsOffice() end

function Osi.PROC_CRE_ChainOfCommand_LaezelTurnsHostile() end

---@param a0 CHARACTER
function Osi.PROC_CRE_ChainOfCommand_LaezelWaitsAtPlanecaster(a0) end

function Osi.PROC_CRE_ChainOfCommand_OfficersLeave() end

function Osi.PROC_CRE_ChainOfCommand_PlayGithEscortAD() end

function Osi.PROC_CRE_ChainOfCommand_StartGithCultistsCombat() end

function Osi.PROC_CRE_ChainOfCommand_StartSecurityOfficeCombat() end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
function Osi.PROC_CRE_ChainOfCommand_TeleportToAndDie(a0, a1) end

function Osi.PROC_CRE_ChainOfCommand_TemplarGoesToSecurityOffice() end

function Osi.PROC_CRE_ChainOfCommand_TemplarResolved() end

---@param a0 CHARACTER
function Osi.PROC_CRE_ChainOfCommand_TryStartVlaakithDialog(a0) end

function Osi.PROC_CRE_ChainOfCommand_WaitBeforeVlaakithDialog() end

---@param a0 GUIDSTRING
function Osi.PROC_CRE_CheckAllCombatMembers(a0) end

function Osi.PROC_CRE_CheckClearStoppedCrecheDestructionTG() end

function Osi.PROC_CRE_CrecheHostile() end

---@param a0 GUIDSTRING
function Osi.PROC_CRE_CrecheTraps_PsionicBarriers_Activate(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_CRE_CrecheTraps_PsionicBarriers_Break(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_CRE_CrecheTraps_PsionicBarriers_Deactivate(a0) end

function Osi.PROC_CRE_CultistsCapture_CultistsRunForIt() end

function Osi.PROC_CRE_DeactivateEscapeVBs() end

function Osi.PROC_CRE_Dungeon_ElevatorInit() end

---@param a0 LEVELTEMPLATE
---@param a1 number
---@param a2 number
---@param a3 number
function Osi.PROC_CRE_Dungeon_ElevatorMove(a0, a1, a2, a3) end

---@param a0 LEVELTEMPLATE
---@param a1 TRIGGER
function Osi.PROC_CRE_Dungeon_FindDestination(a0, a1) end

---@param a0 GUIDSTRING
function Osi.PROC_CRE_EndLanceAnimation(a0) end

---@param a0 CHARACTER
function Osi.PROC_CRE_EnterForcedTurnBased(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_CRE_FireLance(a0) end

function Osi.PROC_CRE_FloatingBed_ReturnToStartingPos() end

function Osi.PROC_CRE_FlyBirdToRoof() end

function Osi.PROC_CRE_General_MageHandGremishkaAppears() end

function Osi.PROC_CRE_General_MageHandKidsMoveAway() end

function Osi.PROC_CRE_General_MagehandKidsCancel() end

function Osi.PROC_CRE_General_PlayGremishkaCry() end

function Osi.PROC_CRE_General_SpawnMageHandGremishka() end

function Osi.PROC_CRE_GithInfirmary_AmbushGuardsArrive() end

function Osi.PROC_CRE_GithInfirmary_DoctorAmbush() end

function Osi.PROC_CRE_Hatchery_CombatStarts() end

function Osi.PROC_CRE_HungryBird_HideRewardMarker() end

function Osi.PROC_CRE_KillPlayersWithLance() end

---@param a0 CHARACTER
function Osi.PROC_CRE_KillWithLance(a0) end

function Osi.PROC_CRE_Laezel_RecruitedAtCreche() end

---@param a0 CHARACTER
function Osi.PROC_CRE_LanceEscape_AssignCharacterToRole(a0) end

function Osi.PROC_CRE_LanceEscape_FillEmptyRoles() end

function Osi.PROC_CRE_Lance_CancelExplosion() end

function Osi.PROC_CRE_Lance_CheckForSurvivors() end

function Osi.PROC_CRE_Lance_GenerateRolesForCinematic() end

function Osi.PROC_CRE_Lance_GetPlayersAndStartEscapeCinematic() end

function Osi.PROC_CRE_Lance_LanceDestroyed() end

function Osi.PROC_CRE_Lance_StartEscapeCinematic() end

function Osi.PROC_CRE_Lance_SwitchToLivingCharacter() end

function Osi.PROC_CRE_Lance_TurnOffBeamVFX() end

function Osi.PROC_CRE_Lance_TurnOnBeamVFX() end

---@param a0 CHARACTER
---@param a1 ITEM
function Osi.PROC_CRE_LathanderStatues_AttemptRotate(a0, a1) end

function Osi.PROC_CRE_LiftCrystals() end

function Osi.PROC_CRE_MageHandBox_DamageMageHandBox() end

function Osi.PROC_CRE_MageHand_SceneSetup() end

---@param a0 CHARACTER
function Osi.PROC_CRE_PlayCableCarGossipOnce(a0) end

function Osi.PROC_CRE_PlayElevatorAnimation() end

---@param a0 CHARACTER
function Osi.PROC_CRE_PlayWithMageHandKids(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_CRE_ProgressLanceAnimation(a0) end

---@param a0 ITEM
---@param a1 GUIDSTRING
function Osi.PROC_CRE_RotateLathanderStatue(a0, a1) end

---@param a0 GUIDSTRING
function Osi.PROC_CRE_SetEagleAnimationTimer(a0) end

function Osi.PROC_CRE_SetUpSCLNotVisitedFlag() end

function Osi.PROC_CRE_SkipToInquisitor() end

function Osi.PROC_CRE_StartCrecheShakes() end

---@param a0 GUIDSTRING
function Osi.PROC_CRE_StartLanceAnimation(a0) end

---@param a0 CHARACTER
function Osi.PROC_CRE_StartTeacherDialog(a0) end

function Osi.PROC_CRE_StatuePuzzle_EvaluateRotations() end

function Osi.PROC_CRE_StatuePuzzle_OpenSecretDoor() end

function Osi.PROC_CRE_StopCrecheShakes() end

function Osi.PROC_CRE_StopElevatorAnimation() end

---@param a0 GUIDSTRING
function Osi.PROC_CRE_TakenAmulet(a0) end

function Osi.PROC_CRE_TeleportCultistCapture() end

function Osi.PROC_CRE_UpperGuards_HiddenCheckpoint_PeacefulResolve() end

function Osi.PROC_CRE_UpperGuards_MainCheckpoint_PeacefulResolve() end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_CRE_UpperGuards_StartCheckpointWarningDialog(a0, a1) end

function Osi.PROC_CRE_WeaponsPuzzle_GiveReward() end

function Osi.PROC_CRE_WeaponsPuzzle_OpenHiddenCompartment() end

---@param a0 CHARACTER
function Osi.PROC_CRE_WeaponsPuzzle_RemovedWeaponReaction(a0) end

---@param a0 TRIGGER
function Osi.PROC_CRE_WeaponsPuzzle_TurnOffLight(a0) end

---@param a0 TRIGGER
function Osi.PROC_CRE_WeaponsPuzzle_TurnOnLight(a0) end

function Osi.PROC_CRE_YouthTraining_BoyGoesToCorner() end

function Osi.PROC_CRE_YouthTraining_SceneSetup() end

function Osi.PROC_CRE_YouthTraining_TeacherKillsBoy_Gameplay() end

function Osi.PROC_CRE_YouthTraining_UnequipOffHandSword() end

---@param a0 CHARACTER
---@param a1 integer
---@param a2 integer
---@param a3 integer
function Osi.PROC_CRIME_AllowRequestOnReaction(a0, a1, a2, a3) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 GUIDSTRING
---@param a3 integer
function Osi.PROC_CRIME_AttackedInCombat(a0, a1, a2, a3) end

---@param a0 CHARACTER
---@param a1 TRIGGER
---@param a2 integer
function Osi.PROC_CRIME_BackInPrisonRestoreShapeshiftTracking(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 GUIDSTRING
function Osi.PROC_CRIME_Bottomless_RegisterInvestigationCrime(a0, a1, a2) end

---@param a0 CHARACTER
function Osi.PROC_CRIME_Bottomless_RegisterInvestigationCrime_Matriarch(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 GUIDSTRING
function Osi.PROC_CRIME_Bottomless_RegisterWarningCrime(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 ITEM
---@param a2 integer
function Osi.PROC_CRIME_BuyFromTrader_Check(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 integer
function Osi.PROC_CRIME_CarryingCharacter(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 integer
---@param a3 string
---@param a4 integer
function Osi.PROC_CRIME_CheckAttackedInCombat(a0, a1, a2, a3, a4) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 CHARACTER
---@param a3 integer
---@param a4 string
---@param a5 integer
function Osi.PROC_CRIME_CheckAttackedOutsideCombat(a0, a1, a2, a3, a4, a5) end

---@param a0 CHARACTER
function Osi.PROC_CRIME_CheckForNewDisturbance(a0) end

---@param a0 integer
---@param a1 CHARACTER
function Osi.PROC_CRIME_CheckSetBusyDialog(a0, a1) end

---@param a0 integer
---@param a1 CHARACTER
---@param a2 ITEM
function Osi.PROC_CRIME_CheckedPickedUpEvidence(a0, a1, a2) end

---@param a0 integer
---@param a1 TRIGGER
function Osi.PROC_CRIME_CleanUpTrespass(a0, a1) end

---@param a0 CHARACTER
---@param a1 integer
---@param a2 integer
function Osi.PROC_CRIME_CorpseLootWitnessed(a0, a1, a2) end

---@param a0 integer
---@param a1 CHARACTER
---@param a2 string
---@param a3 GUIDSTRING
---@param a4 CHARACTER
function Osi.PROC_CRIME_CrimeTriggers_GetSilentWitnessesForCrime(a0, a1, a2, a3, a4) end

---@param a0 string
---@param a1 integer
function Osi.PROC_CRIME_DialogsStoppedCallback(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_CRIME_DisableDangerousShapeshiftReactions(a0) end

---@param a0 GUIDSTRING
---@param a1 CHARACTER
---@param a2 CHARACTER
---@param a3 string
function Osi.PROC_CRIME_Distraction(a0, a1, a2, a3) end

---@param a0 CHARACTER
function Osi.PROC_CRIME_EnableDangerousShapeshiftReactions(a0) end

---@param a0 CHARACTER
---@param a1 ITEM
---@param a2 CHARACTER
function Osi.PROC_CRIME_EvidenceOwnership_MaybeMovedCrime(a0, a1, a2) end

---@param a0 integer
---@param a1 ITEM
---@param a2 number
---@param a3 number
---@param a4 number
function Osi.PROC_CRIME_EvidenceOwnership_Record(a0, a1, a2, a3, a4) end

---@param a0 integer
---@param a1 ITEM
function Osi.PROC_CRIME_EvidenceOwnership_Remove(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 integer
---@param a3 string
---@param a4 integer
function Osi.PROC_CRIME_FindAssaultSourceInvestigators(a0, a1, a2, a3, a4) end

---@param a0 integer
function Osi.PROC_CRIME_Finished(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 CHARACTER
function Osi.PROC_CRIME_GuardKillerSpotted_MaybeAD(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_CRIME_GuardKillerSpotted_TryLookAtKiller(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 CHARACTER
---@param a3 string
---@param a4 string
---@param a5 FACTION
function Osi.PROC_CRIME_GuardKiller_NewWitness(a0, a1, a2, a3, a4, a5) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 CHARACTER
---@param a3 string
---@param a4 string
function Osi.PROC_CRIME_GuardKiller_Noticed(a0, a1, a2, a3, a4) end

---@param a0 integer
---@param a1 CHARACTER
---@param a2 CHARACTER
---@param a3 CHARACTER
---@param a4 integer
function Osi.PROC_CRIME_Guard_SawCallerAndCriminalOnTheWay(a0, a1, a2, a3, a4) end

function Osi.PROC_CRIME_GuardsEquipment_ChangeEquipments() end

---@param a0 string
---@param a1 integer
---@param a2 integer
function Osi.PROC_CRIME_GuardsEquipment_ChangedTension(a0, a1, a2) end

---@param a0 integer
---@param a1 CHARACTER
---@param a2 string
function Osi.PROC_CRIME_Guards_Call(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 integer
---@param a2 CHARACTER
function Osi.PROC_CRIME_Guards_CallActivateGuard(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 integer
---@param a2 string
function Osi.PROC_CRIME_Guards_CallFoundGuard(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 integer
---@param a2 CHARACTER
function Osi.PROC_CRIME_Guards_CallFoundGuardDelayed(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_CRIME_Guards_CallFoundReinforcements(a0, a1) end

---@param a0 CHARACTER
---@param a1 integer
---@param a2 CHARACTER
---@param a3 string
---@param a4 GUIDSTRING
---@param a5 string
---@param a6 string
function Osi.PROC_CRIME_Guards_CheckIfReinforcement(a0, a1, a2, a3, a4, a5, a6) end

---@param a0 string
---@param a1 string
---@param a2 integer
---@param a3 integer
function Osi.PROC_CRIME_Guards_CheckSpawnPoolTemplatesResorting(a0, a1, a2, a3) end

---@param a0 CHARACTER
function Osi.PROC_CRIME_Guards_CleanUp(a0) end

---@param a0 CHARACTER
function Osi.PROC_CRIME_Guards_ClearGuardKiller(a0) end

---@param a0 CHARACTER
---@param a1 integer
---@param a2 CHARACTER
---@param a3 string
---@param a4 CHARACTER
---@param a5 string
function Osi.PROC_CRIME_Guards_DefineMainGuard(a0, a1, a2, a3, a4, a5) end

---@param a0 CHARACTER
---@param a1 integer
---@param a2 CHARACTER
---@param a3 string
---@param a4 CHARACTER
function Osi.PROC_CRIME_Guards_DefineReinforcement(a0, a1, a2, a3, a4) end

---@param a0 CHARACTER
---@param a1 integer
---@param a2 CHARACTER
---@param a3 string
function Osi.PROC_CRIME_Guards_FindGuardToCall(a0, a1, a2, a3) end

---@param a0 CHARACTER
---@param a1 integer
---@param a2 CHARACTER
---@param a3 string
function Osi.PROC_CRIME_Guards_FindReinforcementToCall(a0, a1, a2, a3) end

---@param a0 CHARACTER
---@param a1 integer
---@param a2 string
function Osi.PROC_CRIME_Guards_LeaveAfterStandardPatrol(a0, a1, a2) end

---@param a0 string
---@param a1 string
function Osi.PROC_CRIME_Guards_MakePeace(a0, a1) end

---@param a0 integer
---@param a1 CHARACTER
---@param a2 CHARACTER
---@param a3 CHARACTER
---@param a4 integer
function Osi.PROC_CRIME_Guards_MaybeStartCriminalSpotting(a0, a1, a2, a3, a4) end

---@param a0 string
---@param a1 string
function Osi.PROC_CRIME_Guards_NewRegionSpawnPoolGroupTemplate(a0, a1) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 string
function Osi.PROC_CRIME_Guards_RecoverSpawnedGuard(a0, a1, a2) end

---@param a0 integer
---@param a1 integer
function Osi.PROC_CRIME_Guards_RestartOrWaitAgain(a0, a1) end

---@param a0 integer
---@param a1 CHARACTER
---@param a2 CHARACTER
---@param a3 CHARACTER
function Osi.PROC_CRIME_Guards_ResumeOriginalCrime(a0, a1, a2, a3) end

---@param a0 CHARACTER
---@param a1 number
---@param a2 number
---@param a3 number
---@param a4 number
function Osi.PROC_CRIME_Guards_ReturnHome(a0, a1, a2, a3, a4) end

---@param a0 string
function Osi.PROC_CRIME_Guards_SetPatrolLeader(a0) end

---@param a0 CHARACTER
---@param a1 integer
---@param a2 CHARACTER
---@param a3 string
---@param a4 string
---@param a5 string
---@param a6 string
function Osi.PROC_CRIME_Guards_SpawnGuards(a0, a1, a2, a3, a4, a5, a6) end

---@param a0 GUIDSTRING
---@param a1 CHARACTER
---@param a2 integer
function Osi.PROC_CRIME_Guards_SpawnedGuardAdded(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 integer
---@param a2 CHARACTER
function Osi.PROC_CRIME_Guards_StartPatrolIfCloseTo(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 integer
---@param a2 CHARACTER
---@param a3 string
---@param a4 CHARACTER
---@param a5 string
---@param a6 string
---@param a7 string
function Osi.PROC_CRIME_Guards_SummonFoundGuard(a0, a1, a2, a3, a4, a5, a6, a7) end

---@param a0 integer
---@param a1 integer
---@param a2 string
function Osi.PROC_CRIME_Guards_SwitchReinforcementsToPatrol(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
function Osi.PROC_CRIME_Guards_TransferSpawnedGuardItems(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_CRIME_Guards_UnsummonCombatReinforcement(a0) end

---@param a0 CHARACTER
function Osi.PROC_CRIME_Guards_UnsummonGuard(a0) end

---@param a0 CHARACTER
function Osi.PROC_CRIME_Guards_UnsummonReinforcement(a0) end

---@param a0 CHARACTER
function Osi.PROC_CRIME_HandlePendingCombatHandle(a0) end

---@param a0 string
---@param a1 string
function Osi.PROC_CRIME_InternGuards_SortSpawnPoolGroupTemplates(a0, a1) end

function Osi.PROC_CRIME_InternGuards_SortSpawnPoolResort() end

---@param a0 CHARACTER
function Osi.PROC_CRIME_Interrogation_CancelTimer(a0) end

---@param a0 CHARACTER
function Osi.PROC_CRIME_Interrogation_CleanUpInterrogator(a0) end

---@param a0 CHARACTER
function Osi.PROC_CRIME_Interrogation_ClearRetryOnDialogEnd(a0) end

---@param a0 integer
---@param a1 CHARACTER
function Osi.PROC_CRIME_Interrogation_CollectInterrogatedSuspects(a0, a1) end

---@param a0 integer
---@param a1 CHARACTER
function Osi.PROC_CRIME_Interrogation_Interrogate(a0, a1) end

---@param a0 integer
---@param a1 CHARACTER
function Osi.PROC_CRIME_Interrogation_InterrogatedSuspect(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_CRIME_Interrogation_RegisterSuspect(a0, a1) end

function Osi.PROC_CRIME_Interrogation_ResetSpotProcessing() end

---@param a0 CHARACTER
function Osi.PROC_CRIME_Interrogation_ResetSuspects(a0) end

---@param a0 CHARACTER
function Osi.PROC_CRIME_Interrogation_StartTimer(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 integer
function Osi.PROC_CRIME_KeepingAnEyeOut_Start(a0, a1, a2) end

---@param a0 CHARACTER
function Osi.PROC_CRIME_KeepingAnEyeOut_Stop(a0) end

---@param a0 CHARACTER
---@param a1 TRIGGER
function Osi.PROC_CRIME_LockPrison(a0, a1) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_CRIME_MakeTemporaryHostileToCriminalsOf(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 DIALOGRESOURCE
---@param a3 string
---@param a4 string
---@param a5 number
---@param a6 integer
function Osi.PROC_CRIME_MoveToAndStartInterrogationDialog(a0, a1, a2, a3, a4, a5, a6) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 integer
function Osi.PROC_CRIME_MusicalPerformance_BardJoins(a0, a1, a2) end

---@param a0 CHARACTER
function Osi.PROC_CRIME_MusicalPerformance_DisableAllReactions(a0) end

---@param a0 CHARACTER
function Osi.PROC_CRIME_MusicalPerformance_DisableBadReactions(a0) end

---@param a0 CHARACTER
function Osi.PROC_CRIME_MusicalPerformance_EnableAllReactions(a0) end

---@param a0 CHARACTER
function Osi.PROC_CRIME_MusicalPerformance_EnableBadReactions(a0) end

---@param a0 CHARACTER
function Osi.PROC_CRIME_MusicalPerformance_Flourish_LaunchTimer(a0) end

---@param a0 CHARACTER
function Osi.PROC_CRIME_MusicalPerformance_Good_LaunchTimer(a0) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 string
function Osi.PROC_CRIME_MusicalPerformance_MaybeStartWalla(a0, a1, a2) end

---@param a0 CHARACTER
function Osi.PROC_CRIME_MusicalPerformance_MaybeStopWalla(a0) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_CRIME_MusicalPerformance_NPCIgnoring_LaunchTimer(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_CRIME_MusicalPerformance_TossedCoin(a0, a1) end

---@param a0 integer
function Osi.PROC_CRIME_MusicalPerformance_TriggerFlourishes(a0) end

---@param a0 string
function Osi.PROC_CRIME_OneTimeAD_EnableOneTimeCrime(a0) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_CRIME_OneTimeAD_EnableOneTimeCrimeForCharacter(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 integer
function Osi.PROC_CRIME_OneshotKnockOut(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 integer
function Osi.PROC_CRIME_OneshotMurder(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 integer
function Osi.PROC_CRIME_OneshotMurder_Fallback(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 string
function Osi.PROC_CRIME_OriginTeam_Fallback(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 integer
---@param a3 integer
function Osi.PROC_CRIME_OriginTeam_Ignore(a0, a1, a2, a3) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 integer
---@param a3 string
---@param a4 DIALOGRESOURCE
---@param a5 CHARACTER
---@param a6 CHARACTER
---@param a7 CHARACTER
---@param a8 CHARACTER
function Osi.PROC_CRIME_OsirisArrest(a0, a1, a2, a3, a4, a5, a6, a7, a8) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 integer
---@param a3 string
---@param a4 DIALOGRESOURCE
---@param a5 CHARACTER
---@param a6 CHARACTER
---@param a7 CHARACTER
---@param a8 CHARACTER
function Osi.PROC_CRIME_OsirisReaction(a0, a1, a2, a3, a4, a5, a6, a7, a8) end

---@param a0 CHARACTER
---@param a1 integer
---@param a2 string
---@param a3 CHARACTER
---@param a4 CHARACTER
---@param a5 CHARACTER
---@param a6 CHARACTER
function Osi.PROC_CRIME_OsirisReaction_TryAddressOwnerFailed(a0, a1, a2, a3, a4, a5, a6) end

---@param a0 CHARACTER
---@param a1 integer
---@param a2 integer
function Osi.PROC_CRIME_OwnedCorpseAddIfEvidence(a0, a1, a2) end

---@param a0 CHARACTER
function Osi.PROC_CRIME_Pickpocket_CheckPockets_ObjectTimerCancel(a0) end

---@param a0 ITEM
function Osi.PROC_CRIME_PreventMoveForbiddenItem(a0) end

---@param a0 CHARACTER
---@param a1 TRIGGER
---@param a2 integer
function Osi.PROC_CRIME_PrisonIgnoreEscapeCrimes(a0, a1, a2) end

---@param a0 CHARACTER
function Osi.PROC_CRIME_PrisonRemoveFugitiveStatuses(a0) end

---@param a0 CHARACTER
---@param a1 TRIGGER
function Osi.PROC_CRIME_PrisonShapeRecord(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_CRIME_Prison_CheckNoLongerFugitive(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 TRIGGER
---@param a3 integer
---@param a4 string
---@param a5 string
---@param a6 string
function Osi.PROC_CRIME_Prison_Escaped(a0, a1, a2, a3, a4, a5, a6) end

---@param a0 TRIGGER
---@param a1 CHARACTER
function Osi.PROC_CRIME_Prison_RemoveCustomPrison(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_CRIME_Prison_StopFugitiveCrimes(a0) end

---@param a0 integer
---@param a1 CHARACTER
function Osi.PROC_CRIME_RecheckOnFastTravel(a0, a1) end

---@param a0 CHARACTER
---@param a1 integer
---@param a2 string
function Osi.PROC_CRIME_RecordIfLootingCorpse(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 integer
---@param a3 string
---@param a4 integer
function Osi.PROC_CRIME_RegisterAssaultMurderFallback(a0, a1, a2, a3, a4) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 integer
---@param a3 string
---@param a4 integer
function Osi.PROC_CRIME_RegisterAssaultMurderWithInvestigation(a0, a1, a2, a3, a4) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 number
---@param a3 number
---@param a4 number
---@param a5 CHARACTER
---@param a6 integer
---@param a7 integer
function Osi.PROC_CRIME_RegisterStealCrimeIfNotBlocked(a0, a1, a2, a3, a4, a5, a6, a7) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_CRIME_RestoreWeaponUnsheathed(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_CRIME_SelectBusyDialog(a0, a1) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 string
---@param a3 integer
---@param a4 string
---@param a5 DIALOGRESOURCE
---@param a6 CHARACTER
---@param a7 CHARACTER
---@param a8 CHARACTER
---@param a9 CHARACTER
function Osi.PROC_CRIME_SelectOsirisAction(a0, a1, a2, a3, a4, a5, a6, a7, a8, a9) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 string
function Osi.PROC_CRIME_SetInPrisonArrestedBy(a0, a1, a2) end

---@param a0 integer
---@param a1 CHARACTER
function Osi.PROC_CRIME_SetInvestigationVars(a0, a1) end

---@param a0 integer
---@param a1 integer
---@param a2 CHARACTER
---@param a3 CHARACTER
function Osi.PROC_CRIME_SetRelationTemporaryHostile(a0, a1, a2, a3) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_CRIME_SetWeaponUnsheathed(a0, a1) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 integer
---@param a3 string
function Osi.PROC_CRIME_ShapeshiftDisturbance_DoRegister(a0, a1, a2, a3) end

---@param a0 CHARACTER
---@param a1 TAG
---@param a2 string
---@param a3 string
---@param a4 string
function Osi.PROC_CRIME_ShapeshiftSummonDisturbance_Register(a0, a1, a2, a3, a4) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_CRIME_ShapeshiftSummonDisturbance_Stop(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_CRIME_ShapeshiftSummonDisturbance_Trigger(a0) end

---@param a0 string
---@param a1 CHARACTER
---@param a2 CHARACTER
function Osi.PROC_CRIME_Shapeshift_WitnessStopTrackingCriminal(a0, a1, a2) end

---@param a0 string
---@param a1 CHARACTER
---@param a2 CHARACTER
function Osi.PROC_CRIME_Shapeshift_WitnessTrackCriminal(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_CRIME_StartInterrogationDialog(a0, a1) end

---@param a0 integer
function Osi.PROC_CRIME_StopForAllCriminals(a0) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_CRIME_StopLootingCorpse(a0, a1) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_CRIME_StoreWeaponUnsheathed(a0, a1) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_CRIME_StoryActionHandled(a0, a1) end

---@param a0 integer
---@param a1 integer
function Osi.PROC_CRIME_StoryActionHandled_Reset(a0, a1) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 integer
---@param a3 string
---@param a4 DIALOGRESOURCE
---@param a5 CHARACTER
---@param a6 CHARACTER
---@param a7 CHARACTER
---@param a8 CHARACTER
function Osi.PROC_CRIME_Trespass_NonPlayerNoCombatFallback(a0, a1, a2, a3, a4, a5, a6, a7, a8) end

---@param a0 CHARACTER
function Osi.PROC_CRIME_Trespass_RegisterNonPlayer(a0) end

---@param a0 CHARACTER
function Osi.PROC_CRIME_Trespass_RegisterPlayer(a0) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
---@param a2 integer
---@param a3 string
function Osi.PROC_CRIME_TryRegisterAssaultLikeCrime(a0, a1, a2, a3) end

---@param a0 CHARACTER
function Osi.PROC_CRIME_TryRemoveFugitiveStatus(a0) end

---@param a0 CHARACTER
function Osi.PROC_CRIME_TryRestoreNPC(a0) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_CRIME_WitnessedShapeshift(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_CTY_FlorrickConfrontation_BookSetup(a0) end

---@param a0 LEVELTEMPLATE
function Osi.PROC_CacheLoadLevelTemplate(a0) end

---@param a0 LEVELTEMPLATE
function Osi.PROC_CacheUnloadLevelTemplate(a0) end

---@param a0 GUIDSTRING
---@param a1 integer
---@param a2 number
function Osi.PROC_CameraShakeAroundObject(a0, a1, a2) end

---@param a0 GUIDSTRING
---@param a1 integer
---@param a2 number
---@param a3 EFFECTRESOURCE
function Osi.PROC_CameraShakeAroundObject(a0, a1, a2, a3) end

function Osi.PROC_CampNight_CacheSleepSpeakers() end

function Osi.PROC_CampNight_CallAudioNotifications() end

---@param a0 FLAG
function Osi.PROC_CampNight_CancelOtherNights(a0) end

function Osi.PROC_CampNight_CheckExpirationDates() end

---@param a0 FLAG
function Osi.PROC_CampNight_ClearCampNight(a0) end

function Osi.PROC_CampNight_DecideCampNight() end

function Osi.PROC_CampNight_DecideCampNight_Recursive() end

function Osi.PROC_CampNight_Dog_Sound() end

function Osi.PROC_CampNight_EndCFM() end

function Osi.PROC_CampNight_EndMorningCFM() end

---@param a0 FLAG
function Osi.PROC_CampNight_ForceComplete(a0) end

---@param a0 integer
function Osi.PROC_CampNight_GaleTressym_ToCamp(a0) end

function Osi.PROC_CampNight_LastDialogPlayed() end

function Osi.PROC_CampNight_OwlBearCub_Sound() end

function Osi.PROC_CampNight_PreSelection_Hook() end

function Osi.PROC_CampNight_StartMorningMoments() end

function Osi.PROC_CampNight_StartSelected() end

function Osi.PROC_CampNight_StartSelected_CFM() end

function Osi.PROC_CampNight_StartSelected_CRDs() end

function Osi.PROC_CampNight_StartSelected_IVB() end

function Osi.PROC_CampNight_StartSelected_MorningIVB() end

function Osi.PROC_CampNight_StartSleepMoments() end

function Osi.PROC_CampNight_StartSleepMoments_PreHook() end

function Osi.PROC_CampNight_TestNoEveningDialogs() end

---@param a0 FLAG
function Osi.PROC_CampNight_TryStartSleepMoment(a0) end

---@param a0 CHARACTER
---@param a1 DIALOGRESOURCE
---@param a2 integer
function Osi.PROC_CampRelationshipDialog(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 DIALOGRESOURCE
---@param a2 FLAG
---@param a3 integer
function Osi.PROC_CampRelationshipDialog(a0, a1, a2, a3) end

---@param a0 CHARACTER
---@param a1 DIALOGRESOURCE
---@param a2 FLAG
---@param a3 integer
---@param a4 integer
function Osi.PROC_CampRelationshipDialog(a0, a1, a2, a3, a4) end

---@param a0 string
---@param a1 CHARACTER
function Osi.PROC_CampSwap_UpdateAnubisCampPos(a0, a1) end

---@param a0 string
---@param a1 string
function Osi.PROC_CampSwapped(a0, a1) end

---@param a0 GUIDSTRING
function Osi.PROC_Camp_Act2_NightsongShadowHeart_SelectCFM(a0) end

---@param a0 CHARACTER
---@param a1 TRIGGER
function Osi.PROC_Camp_CamperPosOverride(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_Camp_CamperPosOverride_Clear(a0) end

function Osi.PROC_Camp_ChangeToVanityArmor() end

function Osi.PROC_Camp_CheckIfPlayersReadyToRest() end

function Osi.PROC_Camp_CheckIfPlayersReadyToTeleportToCamp() end

function Osi.PROC_Camp_CheckSleepMomentsLoopDone() end

---@param a0 CHARACTER
function Osi.PROC_Camp_ClearCampFaction(a0) end

function Osi.PROC_Camp_ClearDisruptiveStatusses() end

---@param a0 FLAG
function Osi.PROC_Camp_DebugQNight_ForceRequirements(a0) end

function Osi.PROC_Camp_DropAllPolymorphs() end

function Osi.PROC_Camp_EndEvening() end

function Osi.PROC_Camp_EnterNightMode() end

function Osi.PROC_Camp_EnterNight_PreFadeout_Hook() end

function Osi.PROC_Camp_EveryoneAwake() end

function Osi.PROC_Camp_EveryoneWakeup() end

function Osi.PROC_Camp_EveryoneWakeupEndHook() end

function Osi.PROC_Camp_FadeOutForRest() end

function Osi.PROC_Camp_ForceAvatarControl() end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_Camp_ForceEndTheDay(a0, a1) end

function Osi.PROC_Camp_ForceEndTheDay_Fadeout() end

---@param a0 string
function Osi.PROC_Camp_ForceEndTheDay_SetCampOverride(a0) end

function Osi.PROC_Camp_ForceHideAllNonPlayers() end

---@param a0 GUIDSTRING
function Osi.PROC_Camp_ForceHideNonPlayer(a0) end

function Osi.PROC_Camp_ForcePlayersToCamp() end

---@param a0 CHARACTER
function Osi.PROC_Camp_GoToNight_Teleport(a0) end

function Osi.PROC_Camp_HideAllNonPlayers() end

---@param a0 ITEM
---@param a1 ITEM
function Osi.PROC_Camp_HideBedIfDifferent(a0, a1) end

function Osi.PROC_Camp_HideCampFollowers() end

function Osi.PROC_Camp_HideCampFollowers_Internal() end

function Osi.PROC_Camp_InstantLongRest() end

function Osi.PROC_Camp_InstantLongRestWithFade() end

function Osi.PROC_Camp_InstantLongRest_FinishForAllPlayers() end

---@param a0 CHARACTER
function Osi.PROC_Camp_Leave(a0) end

function Osi.PROC_Camp_LongRestFinishForAllPlayers() end

function Osi.PROC_Camp_LongRest_UsedOnlyAlcohol() end

function Osi.PROC_Camp_NoEveningDialogs() end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_Camp_PlacePlayerInBed(a0, a1) end

function Osi.PROC_Camp_PlacePlayersInBed() end

function Osi.PROC_Camp_PlayCampNight() end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
---@param a2 number
---@param a3 number
---@param a4 number
function Osi.PROC_Camp_PlayerEnteredChasm(a0, a1, a2, a3, a4) end

---@param a0 CHARACTER
function Osi.PROC_Camp_PlayerForcedToCamp_Hook(a0) end

function Osi.PROC_Camp_PlayerInCampChanged() end

---@param a0 CHARACTER
---@param a1 UNSHEATHSTATE
function Osi.PROC_Camp_PushUnsheathedState(a0, a1) end

function Osi.PROC_Camp_RemoveSplatterFromCampers() end

---@param a0 GUIDSTRING
function Osi.PROC_Camp_RequiredTalks_Complete(a0) end

function Osi.PROC_Camp_Rest() end

function Osi.PROC_Camp_RestoreArmourSets() end

function Osi.PROC_Camp_RevealCampFollowers() end

---@param a0 integer
function Osi.PROC_Camp_SetCampNightFlags_PartySize(a0) end

---@param a0 string
---@param a1 string
function Osi.PROC_Camp_SetCampfireText(a0, a1) end

function Osi.PROC_Camp_SetModeToDay() end

function Osi.PROC_Camp_SetModeToNight() end

function Osi.PROC_Camp_SetVoloOnStageAfterEscape() end

---@param a0 ITEM
---@param a1 integer
function Osi.PROC_Camp_ShowBed(a0, a1) end

---@param a0 string
function Osi.PROC_Camp_ShowDayDeco(a0) end

---@param a0 string
function Osi.PROC_Camp_ShowNightDeco(a0) end

function Osi.PROC_Camp_SleepMomentsLoopDone() end

function Osi.PROC_Camp_SleepUntilMorning() end

---@param a0 CHARACTER
function Osi.PROC_Camp_StoreArmourSet(a0) end

---@param a0 CHARACTER
function Osi.PROC_Camp_StoreArmourSetIfNotPJ(a0) end

---@param a0 CHARACTER
function Osi.PROC_Camp_SwitchNightMode(a0) end

function Osi.PROC_Camp_TeleportAllToCamp() end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
function Osi.PROC_Camp_TeleportToCamp(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_Camp_TryDefaultSleepCutscene(a0) end

---@param a0 CHARACTER
function Osi.PROC_Camp_TryEnterNightMode(a0) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_Camp_TryEnterNightModeFailed(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_Camp_TryLeaveNightMode(a0) end

---@param a0 CHARACTER
function Osi.PROC_Camp_TryLeaveNightMode_CampNightCheck(a0) end

function Osi.PROC_Camp_UpdateDeco() end

function Osi.PROC_Camp_WakeUpAtNight() end

function Osi.PROC_Camp_WakeUpAtNightHook() end

---@param a0 integer
function Osi.PROC_CampfireMoment_AddPlayers(a0) end

function Osi.PROC_CampfireMoment_CheckEndCFM() end

function Osi.PROC_CampfireMoment_CheckEndMorningCFM() end

---@param a0 DIALOGRESOURCE
function Osi.PROC_CampfireMoment_ClearCampfireMoment(a0) end

---@param a0 DIALOGRESOURCE
function Osi.PROC_CampfireMoment_Dialog(a0) end

---@param a0 DIALOGRESOURCE
function Osi.PROC_CampfireMoment_Failed(a0) end

---@param a0 DIALOGRESOURCE
function Osi.PROC_CampfireMoment_PostDialog(a0) end

---@param a0 DIALOGRESOURCE
function Osi.PROC_CampfireMoment_PreDialog(a0) end

---@param a0 integer
---@param a1 GUIDSTRING
function Osi.PROC_CampfireMoment_TryAddOptionalSpeaker(a0, a1) end

function Osi.PROC_Campnight_SleepMomentsDone() end

---@param a0 CHARACTER
function Osi.PROC_CancelAllRelationshipDialogs(a0) end

---@param a0 TRIGGER
function Osi.PROC_CancelAmbush(a0) end

---@param a0 string
function Osi.PROC_CancelCheckpoint(a0) end

---@param a0 CHARACTER
function Osi.PROC_CancelDisappearOutOfSight(a0) end

---@param a0 CHARACTER
---@param a1 integer
---@param a2 integer
---@param a3 CHARACTER
---@param a4 CHARACTER
---@param a5 CHARACTER
---@param a6 CHARACTER
function Osi.PROC_CancelInterrogation(a0, a1, a2, a3, a4, a5, a6) end

---@param a0 CHARACTER
---@param a1 DIALOGRESOURCE
---@param a2 FLAG
function Osi.PROC_CancelRelationshipDialog(a0, a1, a2) end

---@param a0 CHARACTER
function Osi.PROC_CapturedGoblin_SelectGrieflingDialog(a0) end

---@param a0 GUIDSTRING
---@param a1 GUIDSTRING
---@param a2 string
---@param a3 string
---@param a4 string
---@param a5 integer
function Osi.PROC_CastedSpellOnTarget(a0, a1, a2, a3, a4, a5) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_ChangeApprovalRatingForAllAvatars(a0, a1) end

function Osi.PROC_ChangeCasketsOver() end

---@param a0 CHARACTER
---@param a1 ITEM
function Osi.PROC_CharacterBlockedFromSellingItem_CleanUp(a0, a1) end

---@param a0 CHARACTER
---@param a1 ITEM
---@param a2 FLAG
function Osi.PROC_CharacterBlockedFromSellingItem_PrintErrorMessage(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 ITEMROOT
---@param a2 FLAG
function Osi.PROC_CharacterBlockedFromSellingTemplate_PrintErrorMessage(a0, a1, a2) end

---@param a0 CHARACTER
function Osi.PROC_CharacterDisableAllCrimes(a0) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_CharacterDisableAllCrimes(a0, a1) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_CharacterDisableCrime(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_CharacterEnableAllCrimes(a0) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_CharacterEnableCrime(a0, a1) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_CharacterEnteredDangerZone(a0, a1) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 ITEM
function Osi.PROC_CharacterFailedItemSkillCheck(a0, a1, a2) end

---@param a0 CHARACTER
function Osi.PROC_CharacterFullRestore(a0) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_CharacterLeftDangerZone(a0, a1) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
---@param a2 string
---@param a3 string
function Osi.PROC_CharacterMoveTo(a0, a1, a2, a3) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
---@param a2 string
---@param a3 string
---@param a4 string
function Osi.PROC_CharacterMoveTo(a0, a1, a2, a3, a4) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
---@param a2 DIALOGRESOURCE
---@param a3 string
---@param a4 string
---@param a5 number
function Osi.PROC_CharacterMoveToAndTalk(a0, a1, a2, a3, a4, a5) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
---@param a2 DIALOGRESOURCE
---@param a3 string
---@param a4 string
---@param a5 number
---@param a6 integer
---@param a7 integer
---@param a8 integer
function Osi.PROC_CharacterMoveToAndTalk(a0, a1, a2, a3, a4, a5, a6, a7, a8) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
---@param a2 DIALOGRESOURCE
---@param a3 string
function Osi.PROC_CharacterMoveToAndTalkRequestDialog_Closest(a0, a1, a2, a3) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
---@param a2 DIALOGRESOURCE
---@param a3 string
---@param a4 string
---@param a5 number
function Osi.PROC_CharacterMoveToAndTalk_Fixed(a0, a1, a2, a3, a4, a5) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_CharacterMoveToCancelled(a0, a1) end

---@param a0 CHARACTER
---@param a1 number
---@param a2 number
---@param a3 number
---@param a4 string
---@param a5 string
function Osi.PROC_CharacterMoveToPosition(a0, a1, a2, a3, a4, a5) end

---@param a0 CHARACTER
---@param a1 number
---@param a2 number
---@param a3 number
---@param a4 string
---@param a5 string
---@param a6 string
function Osi.PROC_CharacterMoveToPosition(a0, a1, a2, a3, a4, a5, a6) end

---@param a0 CHARACTER
---@param a1 number
---@param a2 number
---@param a3 number
---@param a4 string
---@param a5 string
function Osi.PROC_CharacterMoveToPosition_Intern(a0, a1, a2, a3, a4, a5) end

---@param a0 CHARACTER
---@param a1 integer
---@param a2 string
function Osi.PROC_CharacterMoveTo_Clear(a0, a1, a2) end

---@param a0 CHARACTER
function Osi.PROC_CharacterMoveTo_ClearAll(a0) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
---@param a2 string
---@param a3 string
function Osi.PROC_CharacterMoveTo_Intern(a0, a1, a2, a3) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 ITEM
function Osi.PROC_CharacterPassedItemSkillCheck(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 GUIDSTRING
---@param a3 CHARACTER
---@param a4 integer
function Osi.PROC_CharacterRegisterCrime(a0, a1, a2, a3, a4) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 integer
---@param a3 GUIDSTRING
---@param a4 CHARACTER
---@param a5 integer
function Osi.PROC_CharacterRegisterCrime(a0, a1, a2, a3, a4, a5) end

---@param a0 integer
---@param a1 CHARACTER
---@param a2 string
---@param a3 GUIDSTRING
---@param a4 CHARACTER
function Osi.PROC_CharacterRegisterCrimeHandleIgnoresAfter(a0, a1, a2, a3, a4) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 integer
---@param a3 GUIDSTRING
---@param a4 CHARACTER
---@param a5 integer
function Osi.PROC_CharacterRegisterCrimeInternal(a0, a1, a2, a3, a4, a5) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 GUIDSTRING
---@param a3 number
---@param a4 number
---@param a5 number
---@param a6 CHARACTER
---@param a7 integer
function Osi.PROC_CharacterRegisterCrimeWithPosition(a0, a1, a2, a3, a4, a5, a6, a7) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 integer
---@param a3 GUIDSTRING
---@param a4 number
---@param a5 number
---@param a6 number
---@param a7 CHARACTER
---@param a8 integer
function Osi.PROC_CharacterRegisterCrimeWithPosition(a0, a1, a2, a3, a4, a5, a6, a7, a8) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 integer
---@param a3 GUIDSTRING
---@param a4 number
---@param a5 number
---@param a6 number
---@param a7 CHARACTER
---@param a8 integer
function Osi.PROC_CharacterRegisterCrimeWithPositionInternal(a0, a1, a2, a3, a4, a5, a6, a7, a8) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 integer
---@param a3 GUIDSTRING
---@param a4 CHARACTER
---@param a5 integer
function Osi.PROC_CharacterRegisterCrime_Blocked(a0, a1, a2, a3, a4, a5) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 integer
---@param a3 GUIDSTRING
---@param a4 CHARACTER
---@param a5 integer
function Osi.PROC_CharacterRegisterCrime_Success(a0, a1, a2, a3, a4, a5) end

---@param a0 CHARACTER
function Osi.PROC_CharacterRemoveEquipmentPermanently(a0) end

---@param a0 CHARACTER
function Osi.PROC_ChasmRetrieval_Clear(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 CHARACTER
---@param a3 CHARACTER
---@param a4 CHARACTER
---@param a5 CHARACTER
---@param a6 integer
---@param a7 integer
function Osi.PROC_CheckAdjustAttitude(a0, a1, a2, a3, a4, a5, a6, a7) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_CheckCombatFollow(a0, a1) end

function Osi.PROC_CheckDismissableAvatars() end

---@param a0 CHARACTER
function Osi.PROC_CheckFirstTimeRecruited(a0) end

---@param a0 CHARACTER
function Osi.PROC_CheckInternalMoveRestoreDialogState(a0) end

---@param a0 CHARACTER
---@param a1 DIALOGRESOURCE
function Osi.PROC_CheckInterrogationDone(a0, a1) end

---@param a0 string
---@param a1 FLAG
---@param a2 integer
function Osi.PROC_CheckInventoriesForTag(a0, a1, a2) end

---@param a0 integer
function Osi.PROC_CheckItemTags(a0) end

---@param a0 ITEMROOT
---@param a1 FLAG
---@param a2 integer
function Osi.PROC_CheckItemTemplateEvents(a0, a1, a2) end

---@param a0 ITEM
---@param a1 FLAG
function Osi.PROC_CheckNewHasItemEvent(a0, a1) end

function Osi.PROC_CheckPartyFull() end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
function Osi.PROC_CheckPointDialogue(a0, a1) end

function Osi.PROC_CheckPuzzleBoxInventory() end

function Osi.PROC_CheckRaceTags() end

function Osi.PROC_CheckRemainingPrisonersToFree() end

---@param a0 string
---@param a1 integer
---@param a2 CHARACTER
function Osi.PROC_CheckSetRegionMarker(a0, a1, a2) end

---@param a0 string
---@param a1 string
---@param a2 string
function Osi.PROC_CheckShouldSavegamePatchInLevel(a0, a1, a2) end

---@param a0 integer
---@param a1 integer
---@param a2 integer
---@param a3 integer
---@param a4 string
---@param a5 string
function Osi.PROC_CheckShouldSavegamePatchInLevel(a0, a1, a2, a3, a4, a5) end

---@param a0 string
---@param a1 string
---@param a2 string
function Osi.PROC_CheckShouldSavegamePatchInLevel_SetBugfixMarker(a0, a1, a2) end

---@param a0 integer
---@param a1 integer
---@param a2 integer
---@param a3 integer
---@param a4 string
---@param a5 string
function Osi.PROC_CheckShouldSavegamePatchInLevel_SetBugfixMarker(a0, a1, a2, a3, a4, a5) end

---@param a0 integer
---@param a1 DIALOGRESOURCE
---@param a2 CHARACTER
---@param a3 CHARACTER
---@param a4 CHARACTER
---@param a5 CHARACTER
---@param a6 CHARACTER
function Osi.PROC_CheckStartArrestInterrogation(a0, a1, a2, a3, a4, a5, a6) end

---@param a0 string
function Osi.PROC_CheckpointTeleporter_CancelHostility(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 ITEM
function Osi.PROC_Checkpoint_IllegalTeleport(a0, a1, a2) end

---@param a0 CHARACTER
function Osi.PROC_Children_RemoveNPC(a0) end

function Osi.PROC_CleanUpEffects() end

---@param a0 CHARACTER
function Osi.PROC_CleanUpInterrogation(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_CleanUpLocalOnUnreachable(a0) end

function Osi.PROC_CleanUpLoopBeamEffects() end

function Osi.PROC_CleanUpLoopEffects() end

---@param a0 CHARACTER
function Osi.PROC_CleanupArrest(a0) end

function Osi.PROC_CleanupShadowStones() end

---@param a0 DIALOGRESOURCE
---@param a1 integer
function Osi.PROC_ClearADRequests(a0, a1) end

---@param a0 integer
function Osi.PROC_ClearAutomatedDialog(a0) end

---@param a0 CHARACTER
function Osi.PROC_ClearCorpseOwner(a0) end

---@param a0 integer
function Osi.PROC_ClearDialogCounts(a0) end

---@param a0 integer
function Osi.PROC_ClearDialogNPCs(a0) end

---@param a0 integer
function Osi.PROC_ClearDialogPlayers(a0) end

---@param a0 integer
function Osi.PROC_ClearDialogSpeakers(a0) end

---@param a0 CHARACTER
function Osi.PROC_ClearGeneratedItems(a0) end

---@param a0 GUIDSTRING
---@param a1 FACTION
---@param a2 string
function Osi.PROC_ClearIndividualRelation(a0, a1, a2) end

---@param a0 GUIDSTRING
---@param a1 FACTION
---@param a2 string
function Osi.PROC_ClearIndividualRelation_Error(a0, a1, a2) end

---@param a0 GUIDSTRING
---@param a1 FACTION
---@param a2 string
function Osi.PROC_ClearIndividualRelation_Intern(a0, a1, a2) end

---@param a0 GUIDSTRING
---@param a1 FACTION
---@param a2 string
---@param a3 integer
function Osi.PROC_ClearIndividualRelation_RemoveFromStack(a0, a1, a2, a3) end

---@param a0 GUIDSTRING
---@param a1 string
function Osi.PROC_ClearIndividualRelations(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_ClearLastTradeTime(a0) end

---@param a0 GUIDSTRING
---@param a1 FLAG
function Osi.PROC_ClearMagicPocketsOwnershipFlag(a0, a1) end

---@param a0 GUIDSTRING
---@param a1 FLAG
---@param a2 integer
function Osi.PROC_ClearMagicPocketsOwnershipFlag(a0, a1, a2) end

function Osi.PROC_ClearNewSubregionOnExit() end

---@param a0 TRIGGER
function Osi.PROC_ClearOneShotADCount(a0) end

---@param a0 TRIGGER
function Osi.PROC_ClearOneShotADSpeakers(a0) end

---@param a0 CHARACTER
function Osi.PROC_ClearOriginLeavingDialogs(a0) end

---@param a0 DIALOGRESOURCE
function Osi.PROC_ClearOriginMoment(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_ClearPreviousCombat(a0) end

---@param a0 FACTION
---@param a1 FACTION
function Osi.PROC_ClearRelationMutual(a0, a1) end

---@param a0 FACTION
function Osi.PROC_ClearRelationToPlayers(a0) end

---@param a0 integer
---@param a1 number
function Osi.PROC_ClearScreenFadeTimeline(a0, a1) end

---@param a0 integer
---@param a1 number
function Osi.PROC_ClearScreenFadeTimelineForUser(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_ClearStoryMove(a0) end

---@param a0 TRIGGER
---@param a1 FLAG
function Osi.PROC_ClearWorldGossip_RegionTrigger(a0, a1) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
function Osi.PROC_CombatFlee_CheckReenterCombatAfterFlee(a0, a1) end

---@param a0 GUIDSTRING
---@param a1 string
function Osi.PROC_CombatReact_LaunchTimer(a0, a1) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
function Osi.PROC_CombatReact_PartyDeathIn(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_CombatReact_RemoveCombatADs(a0) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_Combat_CallingForHelp(a0, a1) end

---@param a0 string
function Osi.PROC_Combat_CallingForHelp_CleanUp(a0) end

---@param a0 string
function Osi.PROC_Combat_CallingForHelp_SpawnObjects(a0) end

function Osi.PROC_Combat_DragonHitProxy_UpdatePositions() end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_Combat_Dragon_HideAllProxies(a0, a1) end

---@param a0 string
function Osi.PROC_Combat_Dragon_ProxySetup(a0) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_Combat_Dragon_ShowAllProxies(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_Combat_Dragon_TryAttachProxy(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_Combat_ExplodeOnDeath_LaunchExplodeOnDeathTimer(a0) end

function Osi.PROC_Combat_Titan_CleanUpTargeting() end

---@param a0 ITEM
function Osi.PROC_Combat_Titan_TargetHide(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_Combat_Wraith_LightRemoved(a0) end

---@param a0 GUIDSTRING
---@param a1 GUIDSTRING
function Osi.PROC_Combat_Wraith_LightRemoved_Internal(a0, a1) end

---@param a0 GUIDSTRING
function Osi.PROC_Combat_Wraith_ObjectLeftBlightedArea(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_Combat_Wraith_RemoveLightStatuses(a0) end

function Osi.PROC_ConflictedFlind_DisableCrimesOnZhents() end

---@param a0 FLAG
---@param a1 FLAG
function Osi.PROC_ConflictedFlind_OnStateChanged(a0, a1) end

---@param a0 integer
---@param a1 CHARACTER
---@param a2 integer
function Osi.PROC_ConfrontationDoneAfterDialog(a0, a1, a2) end

---@param a0 CHARACTER
function Osi.PROC_CorpseCleanup_CreateLootbag(a0) end

---@param a0 CHARACTER
function Osi.PROC_CorpseCleanup_RemoveCorpse(a0) end

---@param a0 CHARACTER
function Osi.PROC_CorpseLooting_BecameLootable(a0) end

---@param a0 CHARACTER
function Osi.PROC_CorpseLooting_BecameUnlootable(a0) end

---@param a0 string
function Osi.PROC_CorpseLooting_ClearRedOutlinesForDefeatCounter(a0) end

---@param a0 string
---@param a1 FACTION
function Osi.PROC_CorpseLooting_LootOwnershipCleared(a0, a1) end

---@param a0 string
---@param a1 CHARACTER
function Osi.PROC_CorpseLooting_NoRedOutline(a0, a1) end

---@param a0 string
function Osi.PROC_CountHelper(a0) end

---@param a0 string
function Osi.PROC_CounterDecreased(a0) end

---@param a0 string
---@param a1 integer
function Osi.PROC_CounterDecreased(a0, a1) end

---@param a0 string
---@param a1 integer
function Osi.PROC_CounterIncreased(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_CourierDog_BallThrown(a0) end

---@param a0 GUIDSTRING
---@param a1 number
---@param a2 number
---@param a3 number
function Osi.PROC_CreateAt(a0, a1, a2, a3) end

---@param a0 GUIDSTRING
---@param a1 GUIDSTRING
function Osi.PROC_CreateAtObject(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_CrimeAddToAttackedDBIfAssaultCombat(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 number
function Osi.PROC_CrimeAppearOutOfSightChecks(a0, a1, a2) end

---@param a0 GUIDSTRING
---@param a1 GUIDSTRING
function Osi.PROC_CrimeBribedGuards(a0, a1) end

---@param a0 integer
---@param a1 CHARACTER
---@param a2 integer
---@param a3 integer
function Osi.PROC_CrimeBribes_GetBribe(a0, a1, a2, a3) end

---@param a0 integer
---@param a1 integer
function Osi.PROC_CrimeBribes_GetBribeBounds(a0, a1) end

---@param a0 string
---@param a1 integer
---@param a2 CHARACTER
---@param a3 CHARACTER
---@param a4 DIALOGRESOURCE
---@param a5 string
function Osi.PROC_CrimeBribes_ProcessEludeMethodAvailability(a0, a1, a2, a3, a4, a5) end

---@param a0 string
---@param a1 CHARACTER
---@param a2 CHARACTER
---@param a3 string
function Osi.PROC_CrimeBribes_RecordElude(a0, a1, a2, a3) end

---@param a0 integer
---@param a1 CHARACTER
---@param a2 CHARACTER
---@param a3 DIALOGRESOURCE
function Osi.PROC_CrimeBribes_SetEludingOptions(a0, a1, a2, a3) end

---@param a0 string
---@param a1 integer
---@param a2 CHARACTER
---@param a3 CHARACTER
---@param a4 DIALOGRESOURCE
function Osi.PROC_CrimeBribes_SetEludingOptions_ForAllowedMethod(a0, a1, a2, a3, a4) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 CHARACTER
---@param a3 string
---@param a4 integer
---@param a5 integer
function Osi.PROC_CrimeCheckAssailant(a0, a1, a2, a3, a4, a5) end

---@param a0 integer
---@param a1 CHARACTER
---@param a2 CHARACTER
---@param a3 CHARACTER
---@param a4 CHARACTER
---@param a5 CHARACTER
---@param a6 string
---@param a7 DIALOGRESOURCE
function Osi.PROC_CrimeCheckCrimeTypeForFlags(a0, a1, a2, a3, a4, a5, a6, a7) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 integer
function Osi.PROC_CrimeCheckIfAttitudeCauseCombat(a0, a1, a2) end

---@param a0 string
---@param a1 integer
---@param a2 CHARACTER
---@param a3 CHARACTER
---@param a4 CHARACTER
---@param a5 CHARACTER
---@param a6 CHARACTER
---@param a7 DIALOGRESOURCE
function Osi.PROC_CrimeCheckInterrogationDialog(a0, a1, a2, a3, a4, a5, a6, a7) end

---@param a0 integer
---@param a1 CHARACTER
---@param a2 CHARACTER
---@param a3 CHARACTER
---@param a4 CHARACTER
---@param a5 CHARACTER
---@param a6 DIALOGRESOURCE
function Osi.PROC_CrimeCheckInterrogationDialogSucceeded(a0, a1, a2, a3, a4, a5, a6) end

---@param a0 CHARACTER
---@param a1 ITEM
---@param a2 integer
---@param a3 string
function Osi.PROC_CrimeCheckRegisterUseForbiddenItem(a0, a1, a2, a3) end

---@param a0 integer
---@param a1 CHARACTER
---@param a2 CHARACTER
---@param a3 CHARACTER
---@param a4 CHARACTER
---@param a5 CHARACTER
---@param a6 DIALOGRESOURCE
function Osi.PROC_CrimeCheckStartedWarning(a0, a1, a2, a3, a4, a5, a6) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 integer
---@param a3 string
---@param a4 integer
function Osi.PROC_CrimeCreateMurder(a0, a1, a2, a3, a4) end

---@param a0 integer
---@param a1 CHARACTER
---@param a2 CHARACTER
---@param a3 CHARACTER
---@param a4 CHARACTER
---@param a5 CHARACTER
---@param a6 DIALOGRESOURCE
function Osi.PROC_CrimeDialogSetupFlags(a0, a1, a2, a3, a4, a5, a6) end

---@param a0 integer
---@param a1 string
function Osi.PROC_CrimeDoPerformArrest(a0, a1) end

---@param a0 GUIDSTRING
---@param a1 string
---@param a2 CHARACTER
function Osi.PROC_CrimeDoPerformArrest_Arrest(a0, a1, a2) end

---@param a0 integer
---@param a1 CHARACTER
---@param a2 CHARACTER
---@param a3 CHARACTER
---@param a4 CHARACTER
---@param a5 CHARACTER
---@param a6 DIALOGRESOURCE
function Osi.PROC_CrimeFailedToInterruptStoryDialog(a0, a1, a2, a3, a4, a5, a6) end

---@param a0 integer
---@param a1 CHARACTER
---@param a2 string
function Osi.PROC_CrimeForbiddenItemGetEvidence(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 integer
function Osi.PROC_CrimeHandleEvidence(a0, a1, a2) end

---@param a0 string
---@param a1 integer
---@param a2 CHARACTER
---@param a3 CHARACTER
---@param a4 CHARACTER
---@param a5 CHARACTER
---@param a6 CHARACTER
---@param a7 DIALOGRESOURCE
function Osi.PROC_CrimeInterrogationRequest(a0, a1, a2, a3, a4, a5, a6, a7) end

---@param a0 string
---@param a1 integer
---@param a2 DIALOGRESOURCE
---@param a3 integer
---@param a4 CHARACTER
---@param a5 CHARACTER
---@param a6 CHARACTER
---@param a7 CHARACTER
---@param a8 CHARACTER
function Osi.PROC_CrimeInterruptStoryDialogs(a0, a1, a2, a3, a4, a5, a6, a7, a8) end

---@param a0 string
---@param a1 integer
---@param a2 DIALOGRESOURCE
---@param a3 integer
---@param a4 CHARACTER
---@param a5 CHARACTER
---@param a6 CHARACTER
---@param a7 CHARACTER
---@param a8 CHARACTER
function Osi.PROC_CrimeInterruptStoryDialogs_FinishedWaiting(a0, a1, a2, a3, a4, a5, a6, a7, a8) end

---@param a0 ITEM
---@param a1 CHARACTER
---@param a2 CHARACTER
---@param a3 CHARACTER
---@param a4 integer
function Osi.PROC_CrimeItemDestroyCheckOwner(a0, a1, a2, a3, a4) end

---@param a0 ITEM
---@param a1 CHARACTER
---@param a2 CHARACTER
---@param a3 CHARACTER
---@param a4 integer
function Osi.PROC_CrimeItemDestroyCheckVandal(a0, a1, a2, a3, a4) end

---@param a0 integer
---@param a1 CHARACTER
---@param a2 CHARACTER
---@param a3 CHARACTER
function Osi.PROC_CrimeMurderDefineSilentWitness(a0, a1, a2, a3) end

---@param a0 integer
---@param a1 CHARACTER
---@param a2 CHARACTER
---@param a3 CHARACTER
function Osi.PROC_CrimeMurderMaybeMakeSilentWitness(a0, a1, a2, a3) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 string
function Osi.PROC_CrimePerformArrest(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_CrimePickpocketFailedFlow(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 string
---@param a3 integer
function Osi.PROC_CrimeRegisterAssault(a0, a1, a2, a3) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 string
---@param a3 integer
function Osi.PROC_CrimeRegisterAssaultType(a0, a1, a2, a3) end

---@param a0 ITEM
---@param a1 CHARACTER
---@param a2 CHARACTER
---@param a3 string
---@param a4 integer
function Osi.PROC_CrimeRegisterItemDestroy(a0, a1, a2, a3, a4) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 CHARACTER
---@param a3 string
---@param a4 integer
function Osi.PROC_CrimeRegisterOwnedCorpseInteraction(a0, a1, a2, a3, a4) end

---@param a0 CHARACTER
---@param a1 ITEM
---@param a2 integer
---@param a3 string
function Osi.PROC_CrimeRegisterUseForbiddenItem(a0, a1, a2, a3) end

---@param a0 ITEM
---@param a1 CHARACTER
---@param a2 CHARACTER
function Osi.PROC_CrimeRegisterVandalise(a0, a1, a2) end

---@param a0 ITEM
---@param a1 CHARACTER
---@param a2 CHARACTER
---@param a3 string
---@param a4 string
---@param a5 integer
function Osi.PROC_CrimeRegisterVandalise(a0, a1, a2, a3, a4, a5) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 integer
---@param a3 string
---@param a4 DIALOGRESOURCE
---@param a5 CHARACTER
---@param a6 CHARACTER
---@param a7 CHARACTER
---@param a8 CHARACTER
function Osi.PROC_CrimeSelectWarning(a0, a1, a2, a3, a4, a5, a6, a7, a8) end

---@param a0 integer
---@param a1 CHARACTER
---@param a2 CHARACTER
---@param a3 CHARACTER
---@param a4 CHARACTER
---@param a5 CHARACTER
---@param a6 string
---@param a7 DIALOGRESOURCE
function Osi.PROC_CrimeSetupCountFlag(a0, a1, a2, a3, a4, a5, a6, a7) end

---@param a0 string
---@param a1 CHARACTER
---@param a2 CHARACTER
function Osi.PROC_CrimeSetupCountFlag_ForEachCriminal(a0, a1, a2) end

---@param a0 string
---@param a1 integer
---@param a2 CHARACTER
---@param a3 CHARACTER
---@param a4 CHARACTER
---@param a5 CHARACTER
---@param a6 CHARACTER
---@param a7 DIALOGRESOURCE
function Osi.PROC_CrimeSetupWarning(a0, a1, a2, a3, a4, a5, a6, a7) end

---@param a0 string
---@param a1 integer
---@param a2 CHARACTER
---@param a3 CHARACTER
---@param a4 CHARACTER
---@param a5 CHARACTER
---@param a6 CHARACTER
---@param a7 DIALOGRESOURCE
function Osi.PROC_CrimeSetupWarning_Custom(a0, a1, a2, a3, a4, a5, a6, a7) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_CrimeStartArrest(a0, a1) end

---@param a0 integer
---@param a1 CHARACTER
---@param a2 CHARACTER
---@param a3 CHARACTER
---@param a4 CHARACTER
---@param a5 CHARACTER
---@param a6 integer
function Osi.PROC_CrimeStartArrestInterrogation(a0, a1, a2, a3, a4, a5, a6) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
function Osi.PROC_CrimeStartArrest_Downed(a0, a1) end

---@param a0 string
---@param a1 integer
---@param a2 DIALOGRESOURCE
---@param a3 CHARACTER
---@param a4 CHARACTER
---@param a5 CHARACTER
---@param a6 CHARACTER
---@param a7 CHARACTER
function Osi.PROC_CrimeStartRegionArrestInterrogation(a0, a1, a2, a3, a4, a5, a6, a7) end

---@param a0 string
---@param a1 integer
---@param a2 DIALOGRESOURCE
---@param a3 CHARACTER
---@param a4 CHARACTER
---@param a5 CHARACTER
---@param a6 CHARACTER
---@param a7 CHARACTER
function Osi.PROC_CrimeStartRegionArrestInterrogation_SubActions(a0, a1, a2, a3, a4, a5, a6, a7) end

---@param a0 CHARACTER
---@param a1 ITEM
function Osi.PROC_CrimeStopCombineItemCrime(a0, a1) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 ITEM
function Osi.PROC_CrimeStopForbiddenItem(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 TRIGGER
---@param a3 TRIGGER
---@param a4 string
function Osi.PROC_CrimeTeleportCharacterToPrison(a0, a1, a2, a3, a4) end

---@param a0 CHARACTER
function Osi.PROC_CrimeTryForceStopDialog(a0) end

---@param a0 CHARACTER
---@param a1 ITEM
---@param a2 integer
---@param a3 string
function Osi.PROC_CrimeTryRegisteringUseForbiddenItem(a0, a1, a2, a3) end

---@param a0 ITEM
---@param a1 CHARACTER
---@param a2 CHARACTER
---@param a3 integer
function Osi.PROC_CrimeVandaliseCheckOwner(a0, a1, a2, a3) end

---@param a0 ITEM
---@param a1 CHARACTER
---@param a2 CHARACTER
---@param a3 CHARACTER
---@param a4 string
---@param a5 integer
function Osi.PROC_CrimeVandaliseCheckVandal(a0, a1, a2, a3, a4, a5) end

---@param a0 integer
---@param a1 CHARACTER
---@param a2 CHARACTER
---@param a3 CHARACTER
---@param a4 CHARACTER
---@param a5 CHARACTER
---@param a6 DIALOGRESOURCE
function Osi.PROC_CrimeWarningTryStopDialogs(a0, a1, a2, a3, a4, a5, a6) end

---@param a0 CHARACTER
---@param a1 DIALOGRESOURCE
---@param a2 integer
---@param a3 integer
function Osi.PROC_CrimeWarning_TryAddExtraCriminals(a0, a1, a2, a3) end

---@param a0 GUIDSTRING
---@param a1 string
function Osi.PROC_Crime_ArrestCombat_EndCombatAndClearFade(a0, a1) end

---@param a0 GUIDSTRING
function Osi.PROC_Crime_CheckArrester(a0) end

function Osi.PROC_Crime_ClearArrester() end

---@param a0 GUIDSTRING
function Osi.PROC_Crime_GetArrester(a0) end

---@param a0 integer
function Osi.PROC_Crime_Guards_CallReinforcements(a0) end

---@param a0 CHARACTER
---@param a1 integer
---@param a2 CHARACTER
---@param a3 integer
---@param a4 string
function Osi.PROC_Crime_Guards_TryFindReinforcements(a0, a1, a2, a3, a4) end

---@param a0 GUIDSTRING
---@param a1 CHARACTER
function Osi.PROC_Crime_HandleEvidenceIfArrester(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_Crime_RestoreAndClearNegativeStatuses(a0) end

---@param a0 GUIDSTRING
---@param a1 string
function Osi.PROC_Crime_StartCombatArrest(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_CrowdSupport_DisperseCrowdOnDeath(a0) end

---@param a0 string
function Osi.PROC_CrowdSupport_OffStageLinked(a0) end

---@param a0 string
function Osi.PROC_CrowdSupport_OffStageLinkedImmidiately(a0) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 integer
function Osi.PROC_DBDEBUG_PrintCount(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_DBDebug_CheckSuccess(a0, a1) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_DBDebug_DBList(a0, a1) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 string
---@param a3 integer
---@param a4 integer
function Osi.PROC_DBDebug_DBList_Loop(a0, a1, a2, a3, a4) end

---@param a0 string
---@param a1 integer
function Osi.PROC_DBDebug_TryCount(a0, a1) end

function Osi.PROC_DB_HAG_HagLair_ClearHairDB() end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_DCL_HarperScouts_PlayerFoundDialogue(a0, a1) end

---@param a0 GUIDSTRING
function Osi.PROC_DEBUG_DevilsFee_GetAllRitualItems(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_DEBUG_END_IllithidOptionsFollower_Follow(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_DEBUG_END_IllithidOptionsFollower_RemoveFollowers(a0) end

function Osi.PROC_DEBUG_END_IllithidOptionsFollower_ResetMindFlayerStatus() end

function Osi.PROC_DEBUG_EPI_Epilogue_DebugStart() end

---@param a0 CHARACTER
function Osi.PROC_DEBUG_GLO_StartThrallOfTheAbsoluteDebugDialog(a0) end

function Osi.PROC_DEBUG_Gale_ClearGoalFlags() end

---@param a0 FLAG
function Osi.PROC_DEBUG_IRN_ChangeState(a0) end

---@param a0 CHARACTER
function Osi.PROC_DEBUG_IRN_IronThrone_StartDebugDialogSequence(a0) end

---@param a0 CHARACTER
function Osi.PROC_DEBUG_Thieflings_PlayerGotRobbed(a0) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 DIALOGRESOURCE
function Osi.PROC_DEN_AddOrUpdateDenNPC(a0, a1, a2) end

function Osi.PROC_DEN_AdventurersQuest_AppearAtCorpses() end

function Osi.PROC_DEN_AdventurersQuest_LeaveCorpses() end

function Osi.PROC_DEN_AllPlayersLeftDen() end

function Osi.PROC_DEN_ApprenticePersuaded_JournalHook() end

---@param a0 CHARACTER
function Osi.PROC_DEN_Apprentice_AntidoteFix(a0) end

function Osi.PROC_DEN_Apprentice_CheckClearOwnerships() end

---@param a0 GUIDSTRING
function Osi.PROC_DEN_Apprentice_CheckIfAntidoteStolen(a0) end

function Osi.PROC_DEN_Apprentice_CheckLaunchVB() end

function Osi.PROC_DEN_Apprentice_CheckReactToLostAntidote() end

function Osi.PROC_DEN_Apprentice_CheckThornAvoided() end

function Osi.PROC_DEN_Apprentice_CleanScene() end

function Osi.PROC_DEN_Apprentice_ClearCustomCrime() end

function Osi.PROC_DEN_Apprentice_ClearOwnerships() end

---@param a0 CHARACTER
function Osi.PROC_DEN_Apprentice_Debug_SetupScene(a0) end

---@param a0 CHARACTER
function Osi.PROC_DEN_Apprentice_Debug_TadpoledSceneSolved(a0) end

function Osi.PROC_DEN_Apprentice_FallbackCloseDoor() end

function Osi.PROC_DEN_Apprentice_InitCustomCrime() end

---@param a0 CHARACTER
function Osi.PROC_DEN_Apprentice_InitiatePoison(a0) end

function Osi.PROC_DEN_Apprentice_LockUp() end

---@param a0 ITEM
function Osi.PROC_DEN_Apprentice_OverrideEmptyPocketNoticedInvestigation(a0) end

---@param a0 CHARACTER
function Osi.PROC_DEN_Apprentice_PrepReactToCure(a0) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_DEN_Apprentice_ProgressThornStatus(a0, a1) end

---@param a0 string
function Osi.PROC_DEN_Apprentice_RegisterSpottingTadpoled(a0) end

function Osi.PROC_DEN_Apprentice_SetPostScene() end

---@param a0 string
function Osi.PROC_DEN_Apprentice_StopSpotting(a0) end

---@param a0 CHARACTER
function Osi.PROC_DEN_Apprentice_TadpoleSceneSetUp(a0) end

---@param a0 CHARACTER
function Osi.PROC_DEN_Apprentice_TadpoleSceneStarts(a0) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_DEN_Apprentice_ThornCured(a0, a1) end

function Osi.PROC_DEN_Apprentice_TryReopenDoor() end

function Osi.PROC_DEN_Apprentice_TurnHostile() end

---@param a0 string
function Osi.PROC_DEN_Apprentice_UnlocksDoor(a0) end

function Osi.PROC_DEN_Apprentice_UpdateBirdName() end

function Osi.PROC_DEN_AttackONDen_HornBlown_JournalHook() end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_DEN_AttackOnDen_AddToCombatTracking(a0, a1) end

---@param a0 integer
function Osi.PROC_DEN_AttackOnDen_AddToNextWave(a0) end

---@param a0 CHARACTER
function Osi.PROC_DEN_AttackOnDen_AddToRaiderCombat(a0) end

function Osi.PROC_DEN_AttackOnDen_AllForcesJoinAttack() end

function Osi.PROC_DEN_AttackOnDen_AoD_NoTieflings_JournalHook() end

---@param a0 CHARACTER
function Osi.PROC_DEN_AttackOnDen_ArrivalDialog(a0) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_DEN_AttackOnDen_AssignFaction(a0, a1) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_DEN_AttackOnDen_AssignNewPosition(a0, a1) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_DEN_AttackOnDen_AssignToCombat(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_DEN_AttackOnDen_BarrelTryLeave(a0) end

function Osi.PROC_DEN_AttackOnDen_BetrayTieflings() end

function Osi.PROC_DEN_AttackOnDen_BringBackOffstageCharacters() end

function Osi.PROC_DEN_AttackOnDen_Celebration_JournalHook() end

function Osi.PROC_DEN_AttackOnDen_CheckDefeat() end

function Osi.PROC_DEN_AttackOnDen_CheckInitialDefeat() end

function Osi.PROC_DEN_AttackOnDen_CheckOgresAreDefeated() end

---@param a0 string
---@param a1 DIALOGRESOURCE
---@param a2 CHARACTER
function Osi.PROC_DEN_AttackOnDen_CheckWyllEvent(a0, a1, a2) end

function Osi.PROC_DEN_AttackOnDen_ClearPartyDialogSuppression() end

function Osi.PROC_DEN_AttackOnDen_CombatSetup() end

function Osi.PROC_DEN_AttackOnDen_Combat_Init() end

---@param a0 string
function Osi.PROC_DEN_AttackOnDen_Count(a0) end

function Osi.PROC_DEN_AttackOnDen_DebugDenVictory() end

function Osi.PROC_DEN_AttackOnDen_DebugRaiderVictory() end

function Osi.PROC_DEN_AttackOnDen_DoniToHideout() end

function Osi.PROC_DEN_AttackOnDen_DruidsLastStand() end

---@param a0 string
function Osi.PROC_DEN_AttackOnDen_EndOfCombat(a0) end

function Osi.PROC_DEN_AttackOnDen_ExtraRaidersLeave() end

---@param a0 GUIDSTRING
function Osi.PROC_DEN_AttackOnDen_FailedLeaderDialog(a0) end

function Osi.PROC_DEN_AttackOnDen_ForceDefeat() end

function Osi.PROC_DEN_AttackOnDen_FoundDoni_JournalHook() end

function Osi.PROC_DEN_AttackOnDen_HideEventObjects() end

---@param a0 CHARACTER
function Osi.PROC_DEN_AttackOnDen_HornBlown(a0) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 integer
function Osi.PROC_DEN_AttackOnDen_JoinAttack(a0, a1, a2) end

function Osi.PROC_DEN_AttackOnDen_KidsRunAway() end

function Osi.PROC_DEN_AttackOnDen_KillEveryone() end

function Osi.PROC_DEN_AttackOnDen_KillKids() end

---@param a0 DIALOGRESOURCE
---@param a1 CHARACTER
function Osi.PROC_DEN_AttackOnDen_LeaderDialog(a0, a1) end

function Osi.PROC_DEN_AttackOnDen_LockdownCombat_JournalHook() end

function Osi.PROC_DEN_AttackOnDen_LockdownStart() end

function Osi.PROC_DEN_AttackOnDen_LockdownStart_JournalHook() end

function Osi.PROC_DEN_AttackOnDen_MoveAfterRaidStarted() end

function Osi.PROC_DEN_AttackOnDen_RaiderCelebration_JournalHook() end

function Osi.PROC_DEN_AttackOnDen_RaidersGoInsideDen() end

---@param a0 CHARACTER
function Osi.PROC_DEN_AttackOnDen_RaidersShowAfterCombat(a0) end

function Osi.PROC_DEN_AttackOnDen_RaidersToSafeArea() end

function Osi.PROC_DEN_AttackOnDen_RefillCaveRaiders() end

---@param a0 CHARACTER
function Osi.PROC_DEN_AttackOnDen_RemoveFromAttack(a0) end

---@param a0 GUIDSTRING
---@param a1 string
---@param a2 GUIDSTRING
function Osi.PROC_DEN_AttackOnDen_SetupNPC(a0, a1, a2) end

function Osi.PROC_DEN_AttackOnDen_SetupOver() end

function Osi.PROC_DEN_AttackOnDen_SideWithTieflings_JournalHook() end

function Osi.PROC_DEN_AttackOnDen_SomeTieflingsFlee() end

function Osi.PROC_DEN_AttackOnDen_Start() end

function Osi.PROC_DEN_AttackOnDen_StartCombat() end

function Osi.PROC_DEN_AttackOnDen_Start_JournalHook() end

function Osi.PROC_DEN_AttackOnDen_TieflingBetrayal_JournalHook() end

---@param a0 CHARACTER
function Osi.PROC_DEN_AttackOnDen_TryAddDialog(a0) end

function Osi.PROC_DEN_AttackOnDen_TryAddNewWave() end

---@param a0 CHARACTER
function Osi.PROC_DEN_AttackOnDen_TryJoinGateCombat(a0) end

---@param a0 CHARACTER
function Osi.PROC_DEN_AttackOnDen_TryPlayBlockedLairAD(a0) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_DEN_AttackOnDen_TrySetCombatGroup(a0, a1) end

function Osi.PROC_DEN_AttackOnDen_UnblockLair() end

function Osi.PROC_DEN_AttackOnDen_Victory() end

function Osi.PROC_DEN_AttackOnDen_VictoryInvitation() end

function Osi.PROC_DEN_AttackOnDen_WyllLeaves_CheckWyllInCamp() end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_DEN_BattleHorn_Used(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_DEN_BattleHorn_UsedAndAvailable(a0) end

function Osi.PROC_DEN_BugbearAmbushOver() end

---@param a0 string
function Osi.PROC_DEN_CapturedGoblin_EndScene(a0) end

function Osi.PROC_DEN_CapturedGoblin_ForceConcludeGriefling() end

function Osi.PROC_DEN_CapturedGoblin_GoblinReleased() end

---@param a0 CHARACTER
function Osi.PROC_DEN_CapturedGoblin_GuardsDialog(a0) end

function Osi.PROC_DEN_CapturedGoblin_LeftDen() end

---@param a0 CHARACTER
function Osi.PROC_DEN_CapturedGoblin_PrisonEscapeeReact(a0) end

---@param a0 CHARACTER
function Osi.PROC_DEN_CapturedGoblin_TryAvenge(a0) end

---@param a0 CHARACTER
function Osi.PROC_DEN_CapturedGoblin_TryBreakOath(a0) end

---@param a0 CHARACTER
function Osi.PROC_DEN_CapturedGoblin_UpdateDead(a0) end

---@param a0 CHARACTER
function Osi.PROC_DEN_CapturedGoblin_UpdateLeft(a0) end

---@param a0 string
function Osi.PROC_DEN_Conflict_ClearDiedEarlyConditions(a0) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_DEN_Conflict_Goblin_CheckGiveFirstKill(a0, a1) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_DEN_Conflict_Goblin_CheckLearnedAllNames(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_DEN_Conflict_Ritual_CheckGiveNoteLetterEntry(a0) end

---@param a0 CHARACTER
function Osi.PROC_DEN_Conflict_Ritual_GiveNoteLetterEntry(a0) end

function Osi.PROC_DEN_Conflict_Ritual_NoteLetterCleanUp() end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_DEN_Conflict_Ritual_NoteLetterUpdateMain(a0, a1) end

function Osi.PROC_DEN_Conflict_SUB_Ritual_CloseFightEnded() end

function Osi.PROC_DEN_Conflict_SUB_Ritual_FightEnded() end

---@param a0 CHARACTER
function Osi.PROC_DEN_DEBUG_TieflingRefugees_KillAllGoblins(a0) end

---@param a0 CHARACTER
function Osi.PROC_DEN_DEBUG_TieflingRefugees_KillGoblinLeadership(a0) end

function Osi.PROC_DEN_DechildTielfingKids() end

function Osi.PROC_DEN_DefenderLeader_DefineNew() end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_DEN_DruidAttack_AttackButtonResponse(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 FLAG
function Osi.PROC_DEN_DruidAttack_AttackOver(a0, a1, a2) end

function Osi.PROC_DEN_DruidAttack_CheckIdolMissingBeforeConflictStart() end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_DEN_DruidAttack_CheckStartConflict(a0, a1) end

---@param a0 FLAG
function Osi.PROC_DEN_DruidAttack_CombatEndedCleaning(a0) end

function Osi.PROC_DEN_DruidAttack_DebugSetupDialogs() end

---@param a0 CHARACTER
function Osi.PROC_DEN_DruidAttack_DoMovement(a0) end

function Osi.PROC_DEN_DruidAttack_ForceAttackEnd() end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_DEN_DruidAttack_GoToPrison(a0, a1) end

function Osi.PROC_DEN_DruidAttack_GroveNPCSetup() end

function Osi.PROC_DEN_DruidAttack_Init() end

function Osi.PROC_DEN_DruidAttack_Init_JournalHook() end

---@param a0 CHARACTER
function Osi.PROC_DEN_DruidAttack_LeaderCheckin(a0) end

function Osi.PROC_DEN_DruidAttack_LoadKillCounters() end

function Osi.PROC_DEN_DruidAttack_LockPrison() end

---@param a0 CHARACTER
function Osi.PROC_DEN_DruidAttack_NPCLeft(a0) end

function Osi.PROC_DEN_DruidAttack_PostAttackSetup() end

function Osi.PROC_DEN_DruidAttack_PostAttack_JournalHook() end

---@param a0 CHARACTER
---@param a1 TRIGGER
function Osi.PROC_DEN_DruidAttack_QueueMovement(a0, a1) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 integer
function Osi.PROC_DEN_DruidAttack_QueueMovement(a0, a1, a2) end

---@param a0 GUIDSTRING
function Osi.PROC_DEN_DruidAttack_ResetGrove(a0) end

---@param a0 CHARACTER
---@param a1 DIALOGRESOURCE
function Osi.PROC_DEN_DruidAttack_SetNewDialog(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_DEN_DruidAttack_SetNoDialog(a0) end

---@param a0 CHARACTER
function Osi.PROC_DEN_DruidAttack_SetupMovement(a0) end

---@param a0 string
function Osi.PROC_DEN_DruidAttack_StartCombat(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_DEN_DruidAttack_StartConflictDialog(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_DEN_DruidAttack_StartInitialEncounter(a0, a1) end

function Osi.PROC_DEN_DruidAttack_TieflingsInPrisonBecomeHostile() end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_DEN_DruidAttack_TryStart(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_DEN_DruidLair_CheckRuneState(a0) end

function Osi.PROC_DEN_DruidLair_DeactivateRunes() end

---@param a0 integer
---@param a1 CHARACTER
function Osi.PROC_DEN_DruidLair_DoPuzzleComment(a0, a1) end

---@param a0 CHARACTER
---@param a1 ITEM
function Osi.PROC_DEN_DruidLair_OpenDoorWithCiclet(a0, a1) end

---@param a0 string
function Osi.PROC_DEN_DruidLair_RemoveRocks(a0) end

function Osi.PROC_DEN_DruidLair_SolvePuzzle() end

---@param a0 CHARACTER
---@param a1 ITEM
---@param a2 EFFECTRESOURCE
function Osi.PROC_DEN_DruidLair_UsingCircletVFX(a0, a1, a2) end

function Osi.PROC_DEN_DruidPet_FlyOff() end

function Osi.PROC_DEN_DruidPet_InitBird() end

function Osi.PROC_DEN_Druid_InitLootDistribution() end

function Osi.PROC_DEN_ForceStopDialogAllDenPlayers() end

---@param a0 CHARACTER
function Osi.PROC_DEN_GateRegisterForCharacter(a0) end

---@param a0 CHARACTER
function Osi.PROC_DEN_GateUnregisterForCharacter(a0) end

---@param a0 integer
function Osi.PROC_DEN_Gate_CheckOpenOrClose(a0) end

---@param a0 integer
function Osi.PROC_DEN_Gate_OpenOrCloseGate(a0) end

function Osi.PROC_DEN_Gate_TryGetNewBackupGatekeeper() end

---@param a0 CHARACTER
function Osi.PROC_DEN_General_ElevatorPAD(a0) end

function Osi.PROC_DEN_General_Rat_Movement() end

---@param a0 CHARACTER
---@param a1 ITEM
---@param a2 integer
function Osi.PROC_DEN_GoblinScouts_HiddenCheckAllTurrets(a0, a1, a2) end

function Osi.PROC_DEN_GoblinScouts_TryTurnHostile() end

---@param a0 CHARACTER
function Osi.PROC_DEN_GreetingReaction_Register(a0) end

---@param a0 CHARACTER
function Osi.PROC_DEN_GreetingReaction_Stop(a0) end

---@param a0 integer
function Osi.PROC_DEN_GroveConflict_SDCombat_JournalHook(a0) end

function Osi.PROC_DEN_GroveRefugeesEmptied() end

function Osi.PROC_DEN_GruntingKid_Abandon() end

function Osi.PROC_DEN_GuardedEntrance_EndScene() end

function Osi.PROC_DEN_GuardedEntrance_EndSceneLegit() end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_DEN_GuardedEntrance_MovedOn_JournalHook(a0, a1) end

function Osi.PROC_DEN_GuardedEntrance_OtherParentFlee() end

function Osi.PROC_DEN_GuardedEntrance_ParentsGone_JournalHook() end

function Osi.PROC_DEN_GuardedEntrance_ParentsSeeCorpse() end

function Osi.PROC_DEN_GuardedEntrance_SceneInterrupted() end

function Osi.PROC_DEN_GuardedEntrance_SetSoloDialog() end

---@param a0 CHARACTER
function Osi.PROC_DEN_GuardedEntrance_StartScene(a0) end

function Osi.PROC_DEN_HagTrader_TransferShop() end

function Osi.PROC_DEN_HalsinReturns_JournalUpdate() end

function Osi.PROC_DEN_HarpyMeal_CheckOngoing() end

function Osi.PROC_DEN_HarpyMeal_DebugEnd() end

---@param a0 CHARACTER
function Osi.PROC_DEN_HarpyMeal_ForceStart(a0) end

function Osi.PROC_DEN_HarpyMeal_HarpyLeaderEnter() end

function Osi.PROC_DEN_HarpyMeal_HarpySceneInterrupted() end

function Osi.PROC_DEN_HarpyMeal_InitiateEncounter() end

---@param a0 CHARACTER
function Osi.PROC_DEN_HarpyMeal_KidMoveToAndTalk(a0) end

function Osi.PROC_DEN_HarpyMeal_KidReturnedHideout() end

function Osi.PROC_DEN_HarpyMeal_NPCCharmRemoved() end

function Osi.PROC_DEN_HarpyMeal_NPCPermaDefeated() end

function Osi.PROC_DEN_HarpyMeal_RescuedKidJournalFollowup() end

function Osi.PROC_DEN_HarpyMeal_ResolvedHarpies() end

function Osi.PROC_DEN_HarpyMeal_SetHarpiesHostile() end

function Osi.PROC_DEN_HarpyMeal_StandardHarpiesEnter() end

function Osi.PROC_DEN_HarpyMeal_StateTransitionResolve() end

function Osi.PROC_DEN_HarpyMeal_StopAreaSong() end

function Osi.PROC_DEN_HarpyMeal_SwitchKidDialog() end

function Osi.PROC_DEN_HarpyMeal_TalkedToCharmedNPC() end

function Osi.PROC_DEN_HarpyMeal_TryKidMoveToAndTalk() end

function Osi.PROC_DEN_HarpyMeal_VictimWalkToHarpy() end

function Osi.PROC_DEN_HarpyMeal_WalkInterruptHarpyEnter() end

---@param a0 string
function Osi.PROC_DEN_IdolTheft_UpdateIfActive(a0) end

---@param a0 TRIGGER
function Osi.PROC_DEN_Jailbreak_CheckForPlayer(a0) end

function Osi.PROC_DEN_Jailbreak_CheckSpawns() end

function Osi.PROC_DEN_Jailbreak_ClearInitialTraps() end

function Osi.PROC_DEN_Jailbreak_ClearTempList() end

function Osi.PROC_DEN_Jailbreak_ClearTraps() end

---@param a0 CHARACTER
function Osi.PROC_DEN_Jailbreak_RevealAD(a0) end

function Osi.PROC_DEN_Jailbreak_SetSpawnList() end

---@param a0 TRIGGER
function Osi.PROC_DEN_Jailbreak_SpawnTrap(a0) end

---@param a0 CHARACTER
function Osi.PROC_DEN_Kanon_FoundBag(a0) end

function Osi.PROC_DEN_KillHalsin() end

function Osi.PROC_DEN_KillTieflings() end

---@param a0 CHARACTER
function Osi.PROC_DEN_LeaveDen(a0) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_DEN_LeaveDen(a0, a1) end

function Osi.PROC_DEN_LeftRegion_JournalHook() end

function Osi.PROC_DEN_Lockdown() end

function Osi.PROC_DEN_Lockdown_JournalHook() end

function Osi.PROC_DEN_Lockdown_Stage() end

function Osi.PROC_DEN_Misc_AdjustRemainingTieflings() end

function Osi.PROC_DEN_Misc_NoTieflings_JournalHook() end

function Osi.PROC_DEN_Misc_TryChangeTooLowTieflingsState() end

---@param a0 ITEM
---@param a1 integer
function Osi.PROC_DEN_PetBird_PlaceItemBack(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_DEN_PlayerLeftDen(a0) end

---@param a0 integer
function Osi.PROC_DEN_RaidingParty_AddCharactersToOpenGateDialog(a0) end

function Osi.PROC_DEN_RaidingParty_AdventurersLeaveDen() end

function Osi.PROC_DEN_RaidingParty_ConfrontationCompleted() end

function Osi.PROC_DEN_RaidingParty_DebugFight() end

function Osi.PROC_DEN_RaidingParty_DebugKillGoblins() end

function Osi.PROC_DEN_RaidingParty_DebugResolveConfrontation() end

function Osi.PROC_DEN_RaidingParty_DebugResolveConfrontationNotPeaceful() end

function Osi.PROC_DEN_RaidingParty_ForceAllIntoCombat() end

function Osi.PROC_DEN_RaidingParty_GateFightSetup() end

function Osi.PROC_DEN_RaidingParty_GoblinRaidEnded() end

function Osi.PROC_DEN_RaidingParty_OpenGate() end

function Osi.PROC_DEN_RaidingParty_OpenGate_JournalHook() end

---@param a0 CHARACTER
function Osi.PROC_DEN_RaidingParty_PlayWakeUpAD(a0) end

function Osi.PROC_DEN_RaidingParty_RestoreConfrontationCharacters() end

function Osi.PROC_DEN_RaidingParty_SetupAlignmentsAfterGoblinFight() end

function Osi.PROC_DEN_RaidingParty_SetupPleaExtras() end

function Osi.PROC_DEN_RaidingParty_SkipPleaAtGates() end

---@param a0 CHARACTER
function Osi.PROC_DEN_RaidingParty_StartPleaAtGate(a0) end

function Osi.PROC_DEN_RaidingParty_TryStartReactionVoiceBark() end

function Osi.PROC_DEN_RaidingParty_WyllEntersFight() end

---@param a0 CHARACTER
function Osi.PROC_DEN_RemoveFromDenNPCs(a0) end

function Osi.PROC_DEN_SacredPond_InitiateBirdTakeOff() end

function Osi.PROC_DEN_SacredPond_SetDruidsKilledAtm() end

function Osi.PROC_DEN_SacredPond_UpdateOwnership() end

function Osi.PROC_DEN_ShadowDruid_BuryChild() end

---@param a0 integer
function Osi.PROC_DEN_ShadowDruid_CheckDenouncingSceneQueued(a0) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_DEN_ShadowDruid_CheckSpotTree(a0, a1) end

---@param a0 integer
function Osi.PROC_DEN_ShadowDruid_CourtOutcome(a0) end

function Osi.PROC_DEN_ShadowDruid_CourtSceneEnds() end

function Osi.PROC_DEN_ShadowDruid_DenouncingAutoStartFailed() end

function Osi.PROC_DEN_ShadowDruid_DenouncingDialogEnded() end

function Osi.PROC_DEN_ShadowDruid_DenouncingPrepCombat() end

---@param a0 GUIDSTRING
function Osi.PROC_DEN_ShadowDruid_DenouncingStarts(a0) end

function Osi.PROC_DEN_ShadowDruid_FaithwardenRewardCleanup() end

function Osi.PROC_DEN_ShadowDruid_FightEnded_JournalHook() end

function Osi.PROC_DEN_ShadowDruid_InitDruidReward() end

function Osi.PROC_DEN_ShadowDruid_KaghaTurnedGood_JournalHook() end

function Osi.PROC_DEN_ShadowDruid_KillKid() end

---@param a0 string
---@param a1 CHARACTER
function Osi.PROC_DEN_ShadowDruid_ProcessSnakeCourtInterruption(a0, a1) end

function Osi.PROC_DEN_ShadowDruid_RemoveChildCorpse() end

function Osi.PROC_DEN_ShadowDruid_SetupSceneManager() end

function Osi.PROC_DEN_ShadowDruid_SnakeCourtSceneEnded() end

function Osi.PROC_DEN_ShadowDruid_SnakesLeave() end

function Osi.PROC_DEN_ShadowDruid_TryReactToScene() end

---@param a0 integer
function Osi.PROC_DEN_ShadowDruid_TrySelfReflection(a0) end

function Osi.PROC_DEN_SnakeKid_RemoveFromDruidAttack() end

---@param a0 CHARACTER
function Osi.PROC_DEN_SwapAdventurerCampOwnership(a0) end

function Osi.PROC_DEN_ThieflingHideout_ClearSetCountdownFlags() end

function Osi.PROC_DEN_ThieflingHideout_GiveKidItem() end

---@param a0 CHARACTER
function Osi.PROC_DEN_Thieflings_CheckCanSteal(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 CHARACTER
---@param a3 integer
function Osi.PROC_DEN_Thieflings_CheckSightCrime(a0, a1, a2, a3) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_DEN_Thieflings_CheckTheftDetect(a0, a1) end

function Osi.PROC_DEN_Thieflings_ChooseStealableItem() end

function Osi.PROC_DEN_Thieflings_CollectTreasures() end

function Osi.PROC_DEN_Thieflings_DEBUG_RobberKidEnd() end

function Osi.PROC_DEN_Thieflings_DeactivateHideout() end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_DEN_Thieflings_FollowIntruder(a0, a1) end

---@param a0 CHARACTER
---@param a1 ITEM
---@param a2 integer
function Osi.PROC_DEN_Thieflings_GivePlayerGoodsBag(a0, a1, a2) end

---@param a0 CHARACTER
function Osi.PROC_DEN_Thieflings_KidShakeLootDrop(a0) end

function Osi.PROC_DEN_Thieflings_LooseStash_PatchCheck() end

function Osi.PROC_DEN_Thieflings_PickpocketDiscovered() end

function Osi.PROC_DEN_Thieflings_PickpocketMoveToHideout() end

---@param a0 CHARACTER
function Osi.PROC_DEN_Thieflings_ProcessStolenItem(a0) end

function Osi.PROC_DEN_Thieflings_RobberKidConfrontationBreak() end

function Osi.PROC_DEN_Thieflings_RobberKidConfrontationDialogEnd() end

function Osi.PROC_DEN_Thieflings_RobberKidConfrontationDialogEndProcess() end

function Osi.PROC_DEN_Thieflings_RobberKidJournalAccuse() end

function Osi.PROC_DEN_Thieflings_SetupKidSpotting() end

---@param a0 GUIDSTRING
function Osi.PROC_DEN_Thieflings_StashDeposit(a0) end

function Osi.PROC_DEN_Thieflings_StopAllCrimesOnTransition() end

function Osi.PROC_DEN_Thieflings_TallyStolenTotalValue() end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_DEN_Thieflings_TryStealFromPlayer(a0, a1) end

---@param a0 string
---@param a1 CHARACTER
function Osi.PROC_DEN_ThingLikeMe_ChangeDialogPosition(a0, a1) end

function Osi.PROC_DEN_ThingLikeMe_OMEndedJournalHook() end

---@param a0 integer
function Osi.PROC_DEN_ThingLikeMe_OriginDialogEnded(a0) end

function Osi.PROC_DEN_Tiefling5_ClearTrespassing() end

---@param a0 integer
function Osi.PROC_DEN_Tiefling5_DialogEnded(a0) end

function Osi.PROC_DEN_Tiefling5_HostileTrespassSetup() end

function Osi.PROC_DEN_Tiefling5_Init() end

function Osi.PROC_DEN_Tiefling5_RemoveParalysis() end

---@param a0 integer
function Osi.PROC_DEN_Tiefling5_TrespassingEndExtras(a0) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_DEN_Tiefling5_TryRespondToHeal(a0, a1) end

function Osi.PROC_DEN_Tiefling5_UnblockCrimeReactions() end

function Osi.PROC_DEN_TieflingBard_CrittersLeave() end

function Osi.PROC_DEN_TieflingBard_Init() end

function Osi.PROC_DEN_TieflingLeader_CheckLeaveEntrance() end

function Osi.PROC_DEN_TieflingLeader_Debug_ToCave() end

function Osi.PROC_DEN_TieflingLeader_SetMovingToCave() end

function Osi.PROC_DEN_TieflingLeader_SetUpCaveDialog() end

function Osi.PROC_DEN_TieflingRefugees_DebugLeave() end

function Osi.PROC_DEN_TieflingRefugees_GobHuntVictory_JournalHook() end

function Osi.PROC_DEN_TieflingRefugees_Leave() end

---@param a0 CHARACTER
function Osi.PROC_DEN_TieflingRefugees_MakeNPCLeave(a0) end

function Osi.PROC_DEN_TieflingRefugees_PrepVictory() end

function Osi.PROC_DEN_TieflingRefugees_SetGoblinHuntVictoryState() end

function Osi.PROC_DEN_TieflingRefugees_StartVictory() end

function Osi.PROC_DEN_Tiefling_005_HealedProcessing() end

---@param a0 CHARACTER
function Osi.PROC_DEN_Training_ChangeTrainer(a0) end

function Osi.PROC_DEN_Training_ClearWyll() end

---@param a0 GUIDSTRING
function Osi.PROC_DEN_TryAddGrave(a0) end

function Osi.PROC_DEN_Victory_CheckStartTransition() end

function Osi.PROC_DEN_Victory_LeftSafe_JournalHook() end

function Osi.PROC_DEN_Victory_NoDialogSwap_Init() end

function Osi.PROC_DEN_Victory_Setup() end

---@param a0 CHARACTER
---@param a1 DIALOGRESOURCE
function Osi.PROC_DEN_Victory_SetupNPC(a0, a1) end

function Osi.PROC_DEN_Victory_SetupOver() end

---@param a0 CHARACTER
function Osi.PROC_DEN_Victory_StartTransition(a0) end

---@param a0 CHARACTER
function Osi.PROC_DEN_Victory_TrySwitchDialog(a0) end

---@param a0 CHARACTER
function Osi.PROC_DEN_Victory_TryTeleport(a0) end

function Osi.PROC_DEN_VoloAdventure_UpdateLeft() end

function Osi.PROC_DEN_WoundedBird_ComeBack() end

function Osi.PROC_DEN_WoundedBird_RemoveExhaustion() end

function Osi.PROC_DEN_WyllRecruitment_DefineAvatarOM() end

function Osi.PROC_DEN_WyllRecruitment_Init() end

---@param a0 CHARACTER
function Osi.PROC_DEN_WyllRecruitment_KarlachSpotted(a0) end

function Osi.PROC_DEN_Wyll_CleanTraining() end

---@param a0 TAG
---@param a1 CHARACTER
function Osi.PROC_DLC_AddDivinitySongs(a0, a1) end

---@param a0 DLC
function Osi.PROC_DLC_CheckInstalled(a0) end

---@param a0 GUIDSTRING
---@param a1 CHARACTER
---@param a2 integer
function Osi.PROC_DLC_GiveReward(a0, a1, a2) end

---@param a0 DLC
---@param a1 CHARACTER
function Osi.PROC_DLC_OneTimeRewards_Check(a0, a1) end

---@param a0 TAG
---@param a1 CHARACTER
function Osi.PROC_DLC_RemoveDivinitySongs(a0, a1) end

---@param a0 GUIDSTRING
function Osi.PROC_DLC_RemoveObjectInInventory(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_DLC_RestoreObjectInInventory(a0) end

---@param a0 DLC
---@param a1 integer
function Osi.PROC_DLC_SetInstalled(a0, a1) end

---@param a0 GUIDSTRING
---@param a1 integer
function Osi.PROC_DLC_StageObjects_SetOnStage(a0, a1) end

---@param a0 GUIDSTRING
---@param a1 integer
function Osi.PROC_DLC_StageObjects_SetOnStage_Internal(a0, a1) end

---@param a0 CHARACTER
---@param a1 DIALOGRESOURCE
function Osi.PROC_DaisyAD(a0, a1) end

---@param a0 CHARACTER
---@param a1 DIALOGRESOURCE
function Osi.PROC_DaisyAD_PlayInternal(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 string
function Osi.PROC_DaisyDesire_SetDaisyFor(a0, a1, a2) end

---@param a0 CHARACTER
function Osi.PROC_DangerZone_Dirty(a0) end

---@param a0 TRIGGER
function Osi.PROC_DangerZone_MarkPlayersDirty(a0) end

---@param a0 string
function Osi.PROC_DangerZone_Safe(a0) end

function Osi.PROC_DangerousBook_JournalUpdateLeft() end

function Osi.PROC_DebugBook_Act3_SetupVoss() end

---@param a0 CHARACTER
function Osi.PROC_DebugBook_AddConditionalEntries(a0) end

---@param a0 string
---@param a1 string
function Osi.PROC_DebugBook_AddElement(a0, a1) end

function Osi.PROC_DebugBook_AddGurHunterToGurTribe() end

---@param a0 CHARACTER
function Osi.PROC_DebugBook_CampAfterLevelSwap(a0) end

function Osi.PROC_DebugBook_DeleteConditionalEntries() end

---@param a0 string
---@param a1 CHARACTER
function Osi.PROC_DebugBook_Event(a0, a1) end

---@param a0 string
function Osi.PROC_DebugBook_LoadMoreStrings(a0) end

function Osi.PROC_DebugBook_Populate() end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_DebugBook_RecruitAvatar(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_DebugBook_RecruitCamp(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_DebugBook_RecruitCompanion(a0, a1) end

function Osi.PROC_DebugBook_ResetStrings() end

function Osi.PROC_DebugBook_SetStringFlags() end

---@param a0 CHARACTER
---@param a1 string
---@param a2 integer
---@param a3 integer
function Osi.PROC_DebugBook_SetupPartyMemberEntries(a0, a1, a2, a3) end

---@param a0 CHARACTER
function Osi.PROC_DebugBook_UpdateLastSelectedCompanion(a0) end

---@param a0 string
function Osi.PROC_DebugGiveGlobalFlags(a0) end

---@param a0 string
function Osi.PROC_DebugGiveObjectFlags(a0) end

---@param a0 CHARACTER
---@param a1 TAG
---@param a2 integer
function Osi.PROC_DebugGiveTag(a0, a1, a2) end

---@param a0 string
function Osi.PROC_DebugGiveTags(a0) end

---@param a0 string
function Osi.PROC_DebugRemoveGlobalFlags(a0) end

---@param a0 string
function Osi.PROC_DebugRemoveObjectFlags(a0) end

---@param a0 string
function Osi.PROC_DebugRemoveTags(a0) end

function Osi.PROC_DebugResetPreviousRegion() end

---@param a0 string
function Osi.PROC_DebugSetCurrentRegion(a0) end

---@param a0 string
---@param a1 string
function Osi.PROC_Debug_ActRestored(a0, a1) end

---@param a0 string
function Osi.PROC_Debug_ActSkipped(a0) end

---@param a0 string
function Osi.PROC_Debug_ActivateActScripting(a0) end

function Osi.PROC_Debug_CheckCampLoc() end

---@param a0 FLAG
function Osi.PROC_Debug_ClearFlagOnParty(a0) end

---@param a0 string
---@param a1 integer
function Osi.PROC_Debug_DoRecurrent(a0, a1) end

---@param a0 string
function Osi.PROC_Debug_DoRestoreWaypoints(a0) end

---@param a0 integer
function Osi.PROC_Debug_DoReverseActDatabase(a0) end

---@param a0 string
function Osi.PROC_Debug_ExecuteRestoreWaypoints(a0) end

---@param a0 string
function Osi.PROC_Debug_FindBlockedWaypointActs(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_Debug_FlagRestoredFromState(a0) end

---@param a0 FLAG
---@param a1 GUIDSTRING
function Osi.PROC_Debug_FlagRestoredFromState(a0, a1) end

function Osi.PROC_Debug_FreeNightsong() end

function Osi.PROC_Debug_GEN_OrinsAbduction_DisplayChosenName() end

function Osi.PROC_Debug_Gale_IncreaseRegionCount() end

---@param a0 string
function Osi.PROC_Debug_GetPreviousActs(a0) end

function Osi.PROC_Debug_GiveDebugBook() end

---@param a0 GUIDSTRING
---@param a1 integer
function Osi.PROC_Debug_HAV_KidnapIsobel(a0, a1) end

function Osi.PROC_Debug_HAV_MolsDeal_Reset() end

---@param a0 CHARACTER
function Osi.PROC_Debug_HAV_Siege_IntroDialogDirectly(a0) end

function Osi.PROC_Debug_INT_PopulateCRDs() end

function Osi.PROC_Debug_INT_PopulateCampnightDBs() end

function Osi.PROC_Debug_IRN_SetupMizoraAlly() end

function Osi.PROC_Debug_IRN_SetupMizoraCombat() end

function Osi.PROC_Debug_LOW_BellyOfTheBeast_SetupWaveservantsAttack() end

function Osi.PROC_Debug_LOW_BhaalTemple_JumpToOrinCombat() end

function Osi.PROC_Debug_LOW_BhaalTemple_PathEvilViolent() end

function Osi.PROC_Debug_LOW_BhaalTemple_StartBattle() end

---@param a0 CHARACTER
function Osi.PROC_Debug_LOW_CazadorsPalace_RitualRoom_PostCombatDialog(a0) end

function Osi.PROC_Debug_LOW_Guildhall_Swap_Mol() end

function Osi.PROC_Debug_LOW_Guildhall_Swap_Oskar() end

function Osi.PROC_Debug_LOW_Guildhall_Swap_ZhentLeader() end

function Osi.PROC_Debug_NightsongToMoonrise() end

---@param a0 string
function Osi.PROC_Debug_NotfiyActLoad(a0) end

---@param a0 string
function Osi.PROC_Debug_NotifyActUnload(a0) end

---@param a0 string
function Osi.PROC_Debug_ORI_GoToLevel(a0) end

function Osi.PROC_Debug_ORI_Laezel_ResetVossAct3State() end

function Osi.PROC_Debug_ORI_Laezel_ResetVossSewersState() end

function Osi.PROC_Debug_OpenWaypointUI() end

---@param a0 string
function Osi.PROC_Debug_ProcessFlagsForPreviousAct(a0) end

function Osi.PROC_Debug_ProcessGlobalFlags() end

function Osi.PROC_Debug_RaphaelTangoRestored() end

---@param a0 string
function Osi.PROC_Debug_RestoreWaypoints(a0) end

function Osi.PROC_Debug_ReverseActDatabase() end

---@param a0 CHARACTER
function Osi.PROC_Debug_SHA_Trials_Generics_GiveAllGems(a0) end

---@param a0 string
function Osi.PROC_Debug_SetActFlags(a0) end

---@param a0 FLAG
---@param a1 GUIDSTRING
---@param a2 integer
function Osi.PROC_Debug_SetObjectFlag(a0, a1, a2) end

---@param a0 FLAG
function Osi.PROC_Debug_SetObjectFlagsForActFlag(a0) end

---@param a0 string
---@param a1 integer
---@param a2 integer
function Osi.PROC_Debug_StartRecurrent(a0, a1, a2) end

function Osi.PROC_Debug_StoryStateHasBeenRestored() end

function Osi.PROC_Debug_StoryStateRestoredAndLevelLoaded_Hook() end

function Osi.PROC_Debug_StoryStateRestored_Hook() end

---@param a0 string
function Osi.PROC_Debug_TeleportToAct(a0) end

function Osi.PROC_Debug_TryProcessStoryState() end

function Osi.PROC_Debug_TurnImpossibleOff() end

function Osi.PROC_Debug_TurnImpossibleOn() end

function Osi.PROC_Debug_UND_EbonLake_HostileResolution() end

function Osi.PROC_Debug_UND_EbonLake_PeacefulResolution() end

function Osi.PROC_Debug_UnlockAllWP() end

function Osi.PROC_Debug_WYR_KillDirectorGortash_SendGortashToHisOffice() end

function Osi.PROC_Debug_WYR_OrinsImpersonation_CheckCurImpersonation() end

function Osi.PROC_Debug_WYR_OrinsImpersonation_CheckImpCounter() end

function Osi.PROC_Debug_WYR_OrinsImpersonation_Start_Dryad() end

function Osi.PROC_Debug_WYR_OrinsImpersonation_Start_DyingAttacker() end

function Osi.PROC_Debug_WYR_OrinsImpersonation_Start_DyingAttackerOrin() end

function Osi.PROC_Debug_WYR_OrinsImpersonation_Start_FlamingFist() end

function Osi.PROC_Debug_WYR_OrinsImpersonation_Start_FlamingFistOrin() end

function Osi.PROC_Debug_WYR_OrinsImpersonation_Start_Journalist() end

function Osi.PROC_Debug_WYR_OrinsImpersonation_Start_JournalistOrin() end

function Osi.PROC_Debug_WYR_OrinsImpersonation_Start_Smith() end

---@param a0 string
function Osi.PROC_DeclareCounter(a0) end

---@param a0 string
function Osi.PROC_DecreaseCounter(a0) end

---@param a0 string
---@param a1 integer
function Osi.PROC_DecreaseCounter(a0, a1) end

---@param a0 DIALOGRESOURCE
---@param a1 TAG
---@param a2 DIALOGRESOURCE
function Osi.PROC_DefineSingleOriginMoment(a0, a1, a2) end

---@param a0 DIALOGRESOURCE
---@param a1 TAG
---@param a2 DIALOGRESOURCE
---@param a3 integer
function Osi.PROC_DefineSingleOriginMoment(a0, a1, a2, a3) end

---@param a0 DIALOGRESOURCE
---@param a1 TAG
---@param a2 DIALOGRESOURCE
---@param a3 DIALOGRESOURCE
---@param a4 DIALOGRESOURCE
function Osi.PROC_DefineSingleOriginMoment(a0, a1, a2, a3, a4) end

---@param a0 integer
---@param a1 GUIDSTRING
function Osi.PROC_DialogAddListeningActor(a0, a1) end

---@param a0 integer
---@param a1 GUIDSTRING
function Osi.PROC_DialogAddListeningActor_UpdateSpeakerLists(a0, a1) end

---@param a0 integer
---@param a1 GUIDSTRING
function Osi.PROC_DialogAddSpeakingActor(a0, a1) end

---@param a0 integer
---@param a1 GUIDSTRING
---@param a2 integer
function Osi.PROC_DialogAddSpeakingActor(a0, a1, a2) end

---@param a0 integer
---@param a1 GUIDSTRING
---@param a2 integer
---@param a3 integer
function Osi.PROC_DialogAddSpeakingActor(a0, a1, a2, a3) end

---@param a0 integer
---@param a1 GUIDSTRING
---@param a2 integer
function Osi.PROC_DialogAddSpeakingActorAt(a0, a1, a2) end

---@param a0 DIALOGRESOURCE
---@param a1 GUIDSTRING
function Osi.PROC_DialogFlagSetup(a0, a1) end

---@param a0 DIALOGRESOURCE
---@param a1 GUIDSTRING
---@param a2 GUIDSTRING
function Osi.PROC_DialogFlagSetup(a0, a1, a2) end

---@param a0 DIALOGRESOURCE
---@param a1 GUIDSTRING
---@param a2 GUIDSTRING
---@param a3 GUIDSTRING
function Osi.PROC_DialogFlagSetup(a0, a1, a2, a3) end

---@param a0 DIALOGRESOURCE
---@param a1 GUIDSTRING
---@param a2 GUIDSTRING
---@param a3 GUIDSTRING
---@param a4 GUIDSTRING
function Osi.PROC_DialogFlagSetup(a0, a1, a2, a3, a4) end

---@param a0 DIALOGRESOURCE
---@param a1 GUIDSTRING
---@param a2 GUIDSTRING
---@param a3 GUIDSTRING
---@param a4 GUIDSTRING
---@param a5 GUIDSTRING
function Osi.PROC_DialogFlagSetup(a0, a1, a2, a3, a4, a5) end

---@param a0 DIALOGRESOURCE
---@param a1 GUIDSTRING
---@param a2 GUIDSTRING
---@param a3 GUIDSTRING
---@param a4 GUIDSTRING
---@param a5 GUIDSTRING
---@param a6 GUIDSTRING
function Osi.PROC_DialogFlagSetup(a0, a1, a2, a3, a4, a5, a6) end

---@param a0 DIALOGRESOURCE
---@param a1 GUIDSTRING
---@param a2 GUIDSTRING
---@param a3 GUIDSTRING
---@param a4 GUIDSTRING
---@param a5 GUIDSTRING
---@param a6 GUIDSTRING
function Osi.PROC_DialogFlagSetup_Internal(a0, a1, a2, a3, a4, a5, a6) end

---@param a0 DIALOGRESOURCE
---@param a1 GUIDSTRING
---@param a2 GUIDSTRING
---@param a3 GUIDSTRING
---@param a4 GUIDSTRING
---@param a5 GUIDSTRING
---@param a6 GUIDSTRING
function Osi.PROC_DialogOverridden(a0, a1, a2, a3, a4, a5, a6) end

---@param a0 DIALOGRESOURCE
---@param a1 integer
function Osi.PROC_DialogRequestCache_ClearCache(a0, a1) end

---@param a0 DIALOGRESOURCE
---@param a1 integer
---@param a2 GUIDSTRING
---@param a3 GUIDSTRING
---@param a4 GUIDSTRING
---@param a5 GUIDSTRING
---@param a6 GUIDSTRING
---@param a7 GUIDSTRING
function Osi.PROC_DialogRequestCache_MakeSpeakerLists(a0, a1, a2, a3, a4, a5, a6, a7) end

---@param a0 DIALOGRESOURCE
---@param a1 integer
function Osi.PROC_DialogRequestCache_MakeSpeakerLists_ClearCounters(a0, a1) end

---@param a0 DIALOGRESOURCE
---@param a1 integer
---@param a2 GUIDSTRING
function Osi.PROC_DialogRequestCache_MakeSpeakerLists_Evaluate(a0, a1, a2) end

---@param a0 DIALOGRESOURCE
---@param a1 integer
---@param a2 GUIDSTRING
function Osi.PROC_DialogRequestCache_MakeSpeakerLists_UpdateCount(a0, a1, a2) end

---@param a0 DIALOGRESOURCE
---@param a1 integer
---@param a2 GUIDSTRING
function Osi.PROC_DialogRequestCache_RemoveSpeaker(a0, a1, a2) end

---@param a0 DIALOGRESOURCE
---@param a1 integer
function Osi.PROC_DialogRequestCache_SetAutomated(a0, a1) end

---@param a0 DIALOGRESOURCE
---@param a1 integer
function Osi.PROC_DialogRequestCache_UpdateNPCCount(a0, a1) end

---@param a0 DIALOGRESOURCE
---@param a1 integer
function Osi.PROC_DialogRequestCache_UpdatePlayerCount(a0, a1) end

---@param a0 DIALOGRESOURCE
---@param a1 GUIDSTRING
function Osi.PROC_DialogStart_WaitingForDroppedMutingStatus_FallbackTimer(a0, a1) end

---@param a0 DIALOGRESOURCE
---@param a1 integer
function Osi.PROC_DialogStarted(a0, a1) end

---@param a0 DIALOGRESOURCE
---@param a1 integer
function Osi.PROC_DialogStarted_CheckForStopConditions(a0, a1) end

---@param a0 DIALOGRESOURCE
---@param a1 GUIDSTRING
function Osi.PROC_DialogStoppedBecauseDeadDownedPlayer(a0, a1) end

---@param a0 integer
---@param a1 GUIDSTRING
function Osi.PROC_Dialog_AddNearbyPlayers(a0, a1) end

---@param a0 integer
---@param a1 GUIDSTRING
---@param a2 integer
function Osi.PROC_Dialog_AddNearbyPlayers(a0, a1, a2) end

---@param a0 integer
---@param a1 GUIDSTRING
---@param a2 integer
function Osi.PROC_Dialog_AddNearbyVisiblePlayers(a0, a1, a2) end

---@param a0 DIALOGRESOURCE
---@param a1 GUIDSTRING
function Osi.PROC_Dialog_TempDisableTrade(a0, a1) end

---@param a0 DIALOGRESOURCE
---@param a1 integer
---@param a2 integer
function Osi.PROC_Dialog_TempDisableTrade_ForNPC(a0, a1, a2) end

---@param a0 integer
function Osi.PROC_Dialogs_CancelExistingTimelineClearWait(a0) end

---@param a0 CHARACTER
---@param a1 DEATHTYPE
---@param a2 integer
function Osi.PROC_DieImmediate(a0, a1, a2) end

function Osi.PROC_DisableShroud() end

---@param a0 CHARACTER
---@param a1 ITEM
function Osi.PROC_DisappearEquipableSwitch(a0, a1) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 integer
---@param a3 string
function Osi.PROC_DisappearOutOfSight(a0, a1, a2, a3) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 integer
---@param a3 string
---@param a4 string
function Osi.PROC_DisappearOutOfSight(a0, a1, a2, a3, a4) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
---@param a2 string
---@param a3 integer
---@param a4 string
function Osi.PROC_DisappearOutOfSightTo(a0, a1, a2, a3, a4) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
---@param a2 string
---@param a3 integer
---@param a4 string
---@param a5 string
function Osi.PROC_DisappearOutOfSightTo(a0, a1, a2, a3, a4, a5) end

---@param a0 CHARACTER
function Osi.PROC_DisappearOutOfSightToCancelled(a0) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
---@param a2 string
---@param a3 integer
---@param a4 string
function Osi.PROC_DisappearOutOfSightTo_Intern(a0, a1, a2, a3, a4) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_DisappearOutOfSightTo_ResetInternal(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_DismissToCamp(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 string
function Osi.PROC_Disturbance_MoveToChar_Finished(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 GUIDSTRING
---@param a3 CHARACTER
---@param a4 integer
function Osi.PROC_Disturbance_PerformWhenAvailable(a0, a1, a2, a3, a4) end

---@param a0 CHARACTER
function Osi.PROC_Disturbance_PerformWhenAvailable_CancelDelayedStarting(a0) end

---@param a0 CHARACTER
function Osi.PROC_Disturbance_PerformWhenAvailable_CheckQueue(a0) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 GUIDSTRING
---@param a3 CHARACTER
---@param a4 integer
function Osi.PROC_Disturbance_PerformWhenAvailable_CheckSuccess(a0, a1, a2, a3, a4) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_Disturbance_PerformWhenAvailable_Cleanup(a0, a1) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_Disturbance_PerformWhenAvailable_ClearCurrent(a0, a1) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 GUIDSTRING
---@param a3 CHARACTER
---@param a4 integer
function Osi.PROC_Disturbance_PerformWhenAvailable_Finished(a0, a1, a2, a3, a4) end

---@param a0 CHARACTER
function Osi.PROC_Disturbance_PerformWhenAvailable_MaybeCleanup(a0) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 GUIDSTRING
---@param a3 CHARACTER
---@param a4 integer
function Osi.PROC_Disturbance_PerformWhenAvailable_Reevaluate(a0, a1, a2, a3, a4) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 GUIDSTRING
---@param a3 CHARACTER
function Osi.PROC_Disturbance_PerformWhenAvailable_Start(a0, a1, a2, a3) end

---@param a0 CHARACTER
function Osi.PROC_Disturbance_PerformWhenAvailable_StopForceActivate(a0) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 GUIDSTRING
---@param a3 CHARACTER
function Osi.PROC_Disturbances_PerformWhenAvailable_ClearTryCount(a0, a1, a2, a3) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 GUIDSTRING
---@param a3 CHARACTER
---@param a4 integer
function Osi.PROC_Disturbances_PerformWhenAvailable_ClearTryCountIfFinished(a0, a1, a2, a3, a4) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 integer
function Osi.PROC_DoCrimeCheckTeleportAssailant(a0, a1, a2) end

---@param a0 string
function Osi.PROC_DoDebugSetup(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_DoGenTradeItems(a0, a1) end

---@param a0 integer
---@param a1 integer
function Osi.PROC_DoNTimes_Batch(a0, a1) end

---@param a0 integer
---@param a1 integer
function Osi.PROC_DoNTimes_BatchSmall(a0, a1) end

---@param a0 integer
function Osi.PROC_DoNTimes_SetUp(a0) end

---@param a0 string
---@param a1 string
---@param a2 GUIDSTRING
function Osi.PROC_DoRegisterLevelObject(a0, a1, a2) end

---@param a0 integer
---@param a1 CHARACTER
---@param a2 CHARACTER
---@param a3 CHARACTER
---@param a4 CHARACTER
---@param a5 CHARACTER
---@param a6 DIALOGRESOURCE
function Osi.PROC_DoStartInterrogationDialog(a0, a1, a2, a3, a4, a5, a6) end

---@param a0 CHARACTER
---@param a1 TRIGGER
function Osi.PROC_DoStartOneShotAD(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_Downed(a0) end

---@param a0 ITEM
function Osi.PROC_DruidLair_CancelDoorOpening(a0) end

function Osi.PROC_DrunkGoblin_SendDrunkGoblinFriendsToTables() end

---@param a0 string
---@param a1 DIALOGRESOURCE
---@param a2 CHARACTER
function Osi.PROC_END_AllyAbilities_CheckSpellAD(a0, a1, a2) end

function Osi.PROC_END_AllyAbilities_CleanPotentialSummonsDB() end

function Osi.PROC_END_AllyAbilities_PatchEnterCombat() end

---@param a0 string
function Osi.PROC_END_AllyAbilities_PlayerHaveAllyContainer(a0) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 number
---@param a3 number
---@param a4 number
function Osi.PROC_END_AllyAbilities_SpawnAllyAtPosition(a0, a1, a2, a3, a4) end

---@param a0 CHARACTER
function Osi.PROC_END_AllyAbilities_StartVossArenaCamera(a0) end

---@param a0 string
function Osi.PROC_END_AllyAbilities_SummonsRemaining(a0) end

---@param a0 CHARACTER
function Osi.PROC_END_AllyAbilities_TryStartSummonsAD(a0) end

---@param a0 CHARACTER
function Osi.PROC_END_AllyAbilities_VossDragonFire(a0) end

function Osi.PROC_END_AllyAbility_AddGurAbility() end

function Osi.PROC_END_AllyAbility_CacheConfiggedSummons() end

function Osi.PROC_END_Armoury_ApplyDeathWard() end

---@param a0 CHARACTER
function Osi.PROC_END_Armoury_StartDoorDialog(a0) end

function Osi.PROC_END_BUGFIX_ClearHagScenes() end

function Osi.PROC_END_BrainBattle_BrainDestructionScene() end

---@param a0 integer
function Osi.PROC_END_BrainBattle_CheckMindGameOver(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_END_BrainBattle_CheckRemoveFollower(a0) end

function Osi.PROC_END_BrainBattle_ClearBrainBattle() end

function Osi.PROC_END_BrainBattle_ClearEmperorOrpheus() end

function Osi.PROC_END_BrainBattle_CombatOverScene() end

---@param a0 GUIDSTRING
---@param a1 string
function Osi.PROC_END_BrainBattle_CrownSpell(a0, a1) end

function Osi.PROC_END_BrainBattle_DarkUrgeConclusion() end

function Osi.PROC_END_BrainBattle_DebugAddEmperor() end

function Osi.PROC_END_BrainBattle_DeleteKeyItems() end

---@param a0 CHARACTER
function Osi.PROC_END_BrainBattle_DominationCompleted(a0) end

---@param a0 CHARACTER
function Osi.PROC_END_BrainBattle_DominationUsed(a0) end

---@param a0 CHARACTER
function Osi.PROC_END_BrainBattle_EnterMind(a0) end

---@param a0 CHARACTER
function Osi.PROC_END_BrainBattle_EnterMindDialog(a0) end

function Osi.PROC_END_BrainBattle_FadeFinished() end

function Osi.PROC_END_BrainBattle_FindHurryUpCharacter() end

function Osi.PROC_END_BrainBattle_ForceChainRemovalAtTurnEnd() end

function Osi.PROC_END_BrainBattle_GUS307551_RestartCombat() end

function Osi.PROC_END_BrainBattle_IncrementCrownTurn() end

function Osi.PROC_END_BrainBattle_IncrementNautiloidTurn() end

function Osi.PROC_END_BrainBattle_MakeMindBrainImmune() end

function Osi.PROC_END_BrainBattle_Over() end

function Osi.PROC_END_BrainBattle_PATCH_SetupNautiloidCannons() end

---@param a0 CHARACTER
function Osi.PROC_END_BrainBattle_PlayerSelectedClass_ClearOtherClasses(a0) end

function Osi.PROC_END_BrainBattle_PreSetup() end

function Osi.PROC_END_BrainBattle_ProcessEndOfMindBrainTurn() end

function Osi.PROC_END_BrainBattle_ProcessFinalDecision() end

---@param a0 CHARACTER
function Osi.PROC_END_BrainBattle_ProcessTurnAD(a0) end

---@param a0 CHARACTER
function Osi.PROC_END_BrainBattle_QueueFullRestore(a0) end

function Osi.PROC_END_BrainBattle_RevelryScene() end

function Osi.PROC_END_BrainBattle_Setup() end

function Osi.PROC_END_BrainBattle_SpawnDragon() end

function Osi.PROC_END_BrainBattle_SpawnNautiloid() end

---@param a0 GUIDSTRING
function Osi.PROC_END_BrainBattle_Spawned(a0) end

function Osi.PROC_END_BrainBattle_TeleportDominationCharacter() end

---@param a0 integer
function Osi.PROC_END_BrainBattle_TeleportParty(a0) end

---@param a0 CHARACTER
function Osi.PROC_END_BrainBattle_TryEnterCombat(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_END_BrainBattle_TryJoinCombat(a0) end

---@param a0 DIALOGRESOURCE
---@param a1 CHARACTER
function Osi.PROC_END_BrainBattle_TryPlayerAD(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_END_BrainBattle_UsedMindTeleporter(a0) end

---@param a0 CHARACTER
---@param a1 ITEM
function Osi.PROC_END_Courtyard_DragonFlyBy(a0, a1) end

---@param a0 integer
function Osi.PROC_END_Courtyard_GateOpenOrClose(a0) end

function Osi.PROC_END_Courtyard_GuardsRushIn() end

function Osi.PROC_END_Courtyard_OpenSewerGrates() end

function Osi.PROC_END_Courtyard_ProcessLastStandOutcome() end

---@param a0 CHARACTER
---@param a1 TRIGGER
function Osi.PROC_END_Courtyard_ProcessTinyTeleporter(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_END_Courtyard_ReactToAllDefeated(a0) end

---@param a0 string
function Osi.PROC_END_DEBUG_EmperorPrelude_ReadyStones(a0) end

function Osi.PROC_END_DEBUG_FixRealPartOfTheTeam() end

---@param a0 CHARACTER
function Osi.PROC_END_DEBUG_GiveSupremeTadpole(a0) end

---@param a0 CHARACTER
function Osi.PROC_END_DEBUG_HighHall_Arrive(a0) end

---@param a0 CHARACTER
function Osi.PROC_END_DEBUG_IllithidOptions_Assimilation(a0) end

---@param a0 CHARACTER
function Osi.PROC_END_DEBUG_IllithidOptions_EmperorLeaving(a0) end

---@param a0 CHARACTER
function Osi.PROC_END_DEBUG_IllithidOptions_OrpheusLeaving(a0) end

---@param a0 integer
function Osi.PROC_END_DEBUG_MorphicPool_ToggleBrainRef(a0) end

---@param a0 CHARACTER
function Osi.PROC_END_Debug_CheckNewAvatar(a0) end

---@param a0 CHARACTER
function Osi.PROC_END_EmperorPreludeCave_CombatStartBrainQuake(a0) end

---@param a0 CHARACTER
function Osi.PROC_END_EmperorPreludeCave_HostileRats(a0) end

---@param a0 integer
function Osi.PROC_END_EmperorPreludeCave_RatUnisonAD(a0) end

---@param a0 CHARACTER
function Osi.PROC_END_EmperorPreludeCave_ResetADFlags(a0) end

function Osi.PROC_END_EmperorPreludeCave_ResetBoatWithoutStonesFlags() end

---@param a0 CHARACTER
function Osi.PROC_END_EmperorPreludeCave_ResetBoatWithoutStonesFlags(a0) end

---@param a0 CHARACTER
function Osi.PROC_END_EmperorPreludeCave_SetBoatUser(a0) end

---@param a0 CHARACTER
function Osi.PROC_END_EmperorPreludeCave_TryToUseBoat(a0) end

---@param a0 CHARACTER
function Osi.PROC_END_EmperorPreludeCave_TryTransferStonesBeforeUseBoatChecks(a0) end

function Osi.PROC_END_Gale_OrbDetonation() end

function Osi.PROC_END_GameFinale_BeginFatesGroupDialogues() end

---@param a0 DIALOGRESOURCE
function Osi.PROC_END_GameFinale_ChooseNextDialog(a0) end

---@param a0 CHARACTER
function Osi.PROC_END_GameFinale_EndRelationship(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_END_GameFinale_EndRelationship(a0, a1) end

function Osi.PROC_END_GameFinale_FatesSetup() end

---@param a0 DIALOGRESOURCE
function Osi.PROC_END_GameFinale_PlayQueuedDialog(a0) end

function Osi.PROC_END_GameFinale_PopulateDeathOfKarlachAvatar() end

---@param a0 CHARACTER
function Osi.PROC_END_GameFinale_RomanceFatesDialogues(a0) end

function Osi.PROC_END_GameFinale_StartEpilogue() end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_END_GatherYourAllies_ChangeAttitude(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_END_GatherYourAllies_CharacterExodus(a0) end

function Osi.PROC_END_GatherYourAllies_DebugSetup() end

---@param a0 integer
function Osi.PROC_END_GatherYourAllies_IgnoreTheft(a0) end

function Osi.PROC_END_GatherYourAllies_InitFactionFlags() end

function Osi.PROC_END_GatherYourAllies_PlaceCharacters() end

---@param a0 CHARACTER
function Osi.PROC_END_GatherYourAllies_PriorizeAvatarSupport(a0) end

function Osi.PROC_END_GatherYourAllies_Setup() end

---@param a0 CHARACTER
---@param a1 TRIGGER
---@param a2 DIALOGRESOURCE
---@param a3 string
function Osi.PROC_END_GatherYourAllies_SetupCharacter(a0, a1, a2, a3) end

---@param a0 CHARACTER
function Osi.PROC_END_GatherYourAllies_StartSupportDialogue(a0) end

---@param a0 CHARACTER
function Osi.PROC_END_General_ApplyFullCeremorphAndReactions(a0) end

---@param a0 CHARACTER
function Osi.PROC_END_General_ApplyMindFlayerForm(a0) end

---@param a0 CHARACTER
---@param a1 integer
---@param a2 FLAG
function Osi.PROC_END_General_AssignInterjection(a0, a1, a2) end

---@param a0 CHARACTER
function Osi.PROC_END_General_AssignMainAvatar(a0) end

---@param a0 CHARACTER
function Osi.PROC_END_General_BrainExtract(a0) end

---@param a0 DIALOGRESOURCE
function Osi.PROC_END_General_CheckAvailableInterjection(a0) end

---@param a0 CHARACTER
function Osi.PROC_END_General_CheckBetrayedLaezel(a0) end

---@param a0 CHARACTER
function Osi.PROC_END_General_CombineStones(a0) end

function Osi.PROC_END_General_FindMainAvatar() end

---@param a0 CHARACTER
function Osi.PROC_END_General_GiveSupremeTadpole(a0) end

function Osi.PROC_END_General_KarsusStatusSafetyCheck() end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_END_General_MakeAvatarUnavailable(a0, a1) end

function Osi.PROC_END_General_ReadyDragonAndNautiloidWorldTimelines() end

function Osi.PROC_END_General_RemoveSupremeTadpole() end

function Osi.PROC_END_General_ResetLeaveAttemptFlag() end

function Osi.PROC_END_General_SpellAssimilationOrpheus() end

function Osi.PROC_END_General_SupremeTadpoleDialogEnded() end

function Osi.PROC_END_General_TEMP_RemoveAstralTadpole() end

---@param a0 CHARACTER
function Osi.PROC_END_General_ThrallOfTheAbsoluteWarning(a0) end

function Osi.PROC_END_General_TryFollowerTransformReactionAD() end

---@param a0 CHARACTER
function Osi.PROC_END_General_TryStartSupremeTadpoleDialog(a0) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_END_General_UpdateBrainCastID(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_END_General_UpdateMindFlayerFlags(a0) end

---@param a0 CHARACTER
function Osi.PROC_END_General_UseSupremeTadpole(a0) end

function Osi.PROC_END_GodsAndMonsters_ClearRaphael() end

---@param a0 string
function Osi.PROC_END_GodsAndMonsters_PreSceneSetup(a0) end

---@param a0 string
function Osi.PROC_END_GodsAndMonsters_PreSceneSetupDone(a0) end

---@param a0 string
function Osi.PROC_END_GodsAndMonsters_RollCredits(a0) end

---@param a0 string
function Osi.PROC_END_GodsAndMonsters_SceneSetup(a0) end

function Osi.PROC_END_GodsAndMonsters_SelectScene() end

---@param a0 DIALOGRESOURCE
---@param a1 CHARACTER
function Osi.PROC_END_GodsAndMonsters_StartScene(a0, a1) end

function Osi.PROC_END_GortashConfrontation_SteelWatcherInit() end

---@param a0 TRIGGER
function Osi.PROC_END_HellFromAbove_DecideStrike(a0) end

---@param a0 integer
function Osi.PROC_END_HellFromAbove_FirePod(a0) end

---@param a0 integer
function Osi.PROC_END_HellFromAbove_SeekTargets(a0) end

function Osi.PROC_END_HighHallInterior_AnimateCannons() end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_END_HighHallInterior_ApplyBrainquakeSlowAndStun(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_END_HighHallInterior_AttemptStatuePush(a0) end

---@param a0 CHARACTER
function Osi.PROC_END_HighHallInterior_BombardmentEndDialog(a0) end

---@param a0 CHARACTER
function Osi.PROC_END_HighHallInterior_BrainADResponse(a0) end

function Osi.PROC_END_HighHallInterior_CheckAvailableDropPods() end

function Osi.PROC_END_HighHallInterior_CheckForAllCannonsPrimed() end

---@param a0 CHARACTER
function Osi.PROC_END_HighHallInterior_CheckForStealth(a0) end

function Osi.PROC_END_HighHallInterior_CheckForWarningShotComplete() end

function Osi.PROC_END_HighHallInterior_ClearFurthestSafeRoomPlayerDB() end

function Osi.PROC_END_HighHallInterior_ClearNearestIntDevSwarmSpawnPointDB() end

function Osi.PROC_END_HighHallInterior_ClearReadyEnemyFodder() end

function Osi.PROC_END_HighHallInterior_EndBombardment() end

function Osi.PROC_END_HighHallInterior_FiringCamera() end

function Osi.PROC_END_HighHallInterior_ForceUpdateNautiloid() end

function Osi.PROC_END_HighHallInterior_GetCannonHelperOrigin() end

function Osi.PROC_END_HighHallInterior_GetNautiloidOrigin() end

function Osi.PROC_END_HighHallInterior_IncreasePrimedCount() end

function Osi.PROC_END_HighHallInterior_KillStragglers() end

function Osi.PROC_END_HighHallInterior_MoveNautiloidToNearestTargetToPlayer() end

function Osi.PROC_END_HighHallInterior_MovePlayersToSafeRoom() end

function Osi.PROC_END_HighHallInterior_NautiloidDisappear() end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_END_HighHallInterior_NautiloidJoinCombat(a0, a1) end

function Osi.PROC_END_HighHallInterior_NautiloidLeaveCombat() end

---@param a0 CHARACTER
function Osi.PROC_END_HighHallInterior_NautiloidReadyCombat(a0) end

function Osi.PROC_END_HighHallInterior_PrePositionNautiloid() end

function Osi.PROC_END_HighHallInterior_ProgressWave() end

---@param a0 TRIGGER
---@param a1 number
---@param a2 number
---@param a3 number
function Osi.PROC_END_HighHallInterior_ReadyDropPodTargetVFX(a0, a1, a2, a3) end

function Osi.PROC_END_HighHallInterior_ReadyEnemyFodder() end

function Osi.PROC_END_HighHallInterior_RemoveDeadEnemy() end

function Osi.PROC_END_HighHallInterior_RemoveNetherbrainSlow() end

---@param a0 integer
function Osi.PROC_END_HighHallInterior_ReplaceIntDevsInSwarm(a0) end

function Osi.PROC_END_HighHallInterior_SelectPlayerTargets() end

function Osi.PROC_END_HighHallInterior_SelectTargets() end

---@param a0 integer
---@param a1 TRIGGER
function Osi.PROC_END_HighHallInterior_SpawnIntDevsInSwarm(a0, a1) end

function Osi.PROC_END_HighHallInterior_SpawnNautiloid() end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_END_HighHallInterior_StartArenaCameraIntro(a0, a1) end

---@param a0 integer
function Osi.PROC_END_HighHallInterior_StartBrainquakeShakeAndVFX(a0) end

---@param a0 CHARACTER
function Osi.PROC_END_HighHallInterior_StartMindMeldADs(a0) end

---@param a0 CHARACTER
function Osi.PROC_END_HighHallInterior_StartNautiloidEncounter(a0) end

function Osi.PROC_END_HighHallInterior_StopAllCannons() end

function Osi.PROC_END_HighHallInterior_ToppleStatue() end

---@param a0 CHARACTER
function Osi.PROC_END_HighHallInterior_TryAfterCameraAD(a0) end

---@param a0 CHARACTER
function Osi.PROC_END_HighHallInterior_TryEndBombardmentDialog(a0) end

function Osi.PROC_END_HighHallInterior_TryNautiloidLeaveCombat() end

---@param a0 CHARACTER
function Osi.PROC_END_HighHallInterior_TryPlayerKeepGoingAD(a0) end

---@param a0 TRIGGER
---@param a1 number
---@param a2 number
---@param a3 number
function Osi.PROC_END_HighHallInterior_TrySetTriggerTarget(a0, a1, a2, a3) end

function Osi.PROC_END_HighHallInterior_TrySpawnIntDevSwarm() end

function Osi.PROC_END_HighHallInterior_TryTargetDropPod() end

---@param a0 CHARACTER
function Osi.PROC_END_HighHallInterior_TryToClimbBrainStem(a0) end

function Osi.PROC_END_HighHallInterior_WarningShot() end

---@param a0 CHARACTER
function Osi.PROC_END_HighHall_TryStartArrivalDialog(a0) end

function Osi.PROC_END_IllithidOptionsFollower_DebugFreeOrpheus() end

function Osi.PROC_END_IllithidOptionsFollower_SetChosenLeaderFlag() end

function Osi.PROC_END_IllithidOptionsFollower_SetFollowStartFlag() end

function Osi.PROC_END_IllithidOptionsFollower_StartFollow() end

function Osi.PROC_END_IllithidOptions_BetrayedLaezel() end

function Osi.PROC_END_IllithidOptions_BetrayedLaezelPermaDefeated() end

---@param a0 CHARACTER
---@param a1 ITEM
function Osi.PROC_END_IllithidOptions_BreakCrystal(a0, a1) end

function Osi.PROC_END_IllithidOptions_CheckEmperorLeftThrallOfTheAbsolute() end

---@param a0 CHARACTER
function Osi.PROC_END_IllithidOptions_CheckNoMoreOptionsLeft(a0) end

function Osi.PROC_END_IllithidOptions_ClearOrbBounds() end

---@param a0 CHARACTER
function Osi.PROC_END_IllithidOptions_EmperorBetrayed(a0) end

function Osi.PROC_END_IllithidOptions_EmperorEscapeToNetherbrain() end

function Osi.PROC_END_IllithidOptions_FallbackPortalCheck() end

function Osi.PROC_END_IllithidOptions_FreeOrpheus() end

function Osi.PROC_END_IllithidOptions_LaezelTurnsHostile() end

function Osi.PROC_END_IllithidOptions_LeaveAstralPrism() end

---@param a0 CHARACTER
function Osi.PROC_END_IllithidOptions_OpenExitPortal(a0) end

---@param a0 CHARACTER
function Osi.PROC_END_IllithidOptions_OrpheusKilled(a0) end

---@param a0 CHARACTER
function Osi.PROC_END_IllithidOptions_RaphaelExit(a0) end

function Osi.PROC_END_IllithidOptions_ReadyRaphael() end

function Osi.PROC_END_IllithidOptions_SetEmperorScene() end

function Osi.PROC_END_IllithidOptions_SetOrpheusScene() end

function Osi.PROC_END_IllithidOptions_Setup() end

function Osi.PROC_END_IllithidOptions_TryEmperorFreedDialog() end

function Osi.PROC_END_IllithidOptions_TryFreeOrpheus() end

---@param a0 CHARACTER
function Osi.PROC_END_IllithidOptions_TryLeaveAstralPrism(a0) end

function Osi.PROC_END_IllithidOptions_TryRaphaelLastChance() end

---@param a0 CHARACTER
function Osi.PROC_END_IllithidOptions_TryToStartHighHall(a0) end

---@param a0 CHARACTER
function Osi.PROC_END_IllithidOptions_UpdateNegotiatingPlayer(a0) end

function Osi.PROC_END_IncreaseTotalTargetCount() end

---@param a0 CHARACTER
function Osi.PROC_END_LastStand_StartScene(a0) end

function Osi.PROC_END_MindBattle_BreakChain() end

function Osi.PROC_END_MindBattle_CheckRemainingPlatforms() end

---@param a0 ITEM
function Osi.PROC_END_MindBattle_DestroyLadder(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_END_MindBattle_MindDeathSetup(a0) end

function Osi.PROC_END_MindflayerOutburst_TurnToMindflayer() end

function Osi.PROC_END_Misc_ChangeToInPartyEND() end

function Osi.PROC_END_Misc_Init() end

function Osi.PROC_END_MorphicPool_AmbushEnded() end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_END_MorphicPool_ApplyBrainquakeSlowAndStun(a0, a1) end

function Osi.PROC_END_MorphicPool_ConfrontationReadyAllPlayers() end

---@param a0 DIALOGRESOURCE
function Osi.PROC_END_MorphicPool_NetherbrainAmbushAD(a0) end

function Osi.PROC_END_MorphicPool_PostConfrontationCleanUp() end

function Osi.PROC_END_MorphicPool_RapidMindMeldADCleanup() end

---@param a0 CHARACTER
function Osi.PROC_END_MorphicPool_RapidMindMeldADTimerStart(a0) end

---@param a0 integer
function Osi.PROC_END_MorphicPool_ReadyBrainquakeSlowAndStun(a0) end

function Osi.PROC_END_MorphicPool_RemoveNetherbrainSlow() end

---@param a0 integer
function Osi.PROC_END_MorphicPool_SetAdjustedTime(a0) end

function Osi.PROC_END_MorphicPool_SetMaxRapidMindMeldDistance() end

function Osi.PROC_END_MorphicPool_Setup() end

function Osi.PROC_END_MorphicPool_SetupGortash() end

---@param a0 CHARACTER
---@param a1 TRIGGER
---@param a2 integer
function Osi.PROC_END_MorphicPool_StartBrainquakeShakeAndVFX(a0, a1, a2) end

---@param a0 GUIDSTRING
---@param a1 GUIDSTRING
function Osi.PROC_END_MorphicPool_TeleportADHelper(a0, a1) end

function Osi.PROC_END_MorphicPool_TeleportToAstralPrism() end

---@param a0 CHARACTER
function Osi.PROC_END_MorphicPool_TryMindMeldAD(a0) end

---@param a0 CHARACTER
---@param a1 TRIGGER
function Osi.PROC_END_MorphicPool_TryRapidMindMeldAD(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_END_MorphicPool_TryStartConfrontationDialog(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_END_NautiloidStrike_Clear(a0) end

function Osi.PROC_END_NautiloidStrike_ClearAll() end

function Osi.PROC_END_NautiloidStrike_ClearForceUpdatedObjects() end

function Osi.PROC_END_NautiloidStrike_DropPodCasted() end

---@param a0 CHARACTER
function Osi.PROC_END_NautiloidStrike_DropPodCharSet(a0) end

function Osi.PROC_END_NautiloidStrike_EntityHitCastBuffer() end

function Osi.PROC_END_NautiloidStrike_FireAll() end

---@param a0 integer
function Osi.PROC_END_NautiloidStrike_FireDropPods(a0) end

function Osi.PROC_END_NautiloidStrike_FireNextInSequence() end

function Osi.PROC_END_NautiloidStrike_FireSequence() end

---@param a0 string
---@param a1 GUIDSTRING
function Osi.PROC_END_NautiloidStrike_FireStrike(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_END_NautiloidStrike_IntDevPodCharSet(a0) end

---@param a0 CHARACTER
function Osi.PROC_END_NautiloidStrike_IntDevPodDetonatorCharSet(a0) end

---@param a0 CHARACTER
function Osi.PROC_END_NautiloidStrike_MindFlayerPodCharSet(a0) end

---@param a0 GUIDSTRING
---@param a1 number
---@param a2 number
function Osi.PROC_END_NautiloidStrike_MoveTargetHelperToPos(a0, a1, a2) end

function Osi.PROC_END_NautiloidStrike_ResetEntityHitTime() end

function Osi.PROC_END_NautiloidStrike_ResetSelectedHelpers() end

---@param a0 number
---@param a1 number
---@param a2 integer
function Osi.PROC_END_NautiloidStrike_SelectPlaceAndReadyHelper(a0, a1, a2) end

---@param a0 GUIDSTRING
---@param a1 integer
function Osi.PROC_END_NautiloidStrike_SetForceUpdate(a0, a1) end

---@param a0 GUIDSTRING
---@param a1 integer
function Osi.PROC_END_NautiloidStrike_SetStrikeType(a0, a1) end

---@param a0 number
---@param a1 number
function Osi.PROC_END_NautiloidStrike_SetTarget(a0, a1) end

---@param a0 number
---@param a1 number
---@param a2 integer
function Osi.PROC_END_NautiloidStrike_SetTarget(a0, a1, a2) end

function Osi.PROC_END_NautiloidStrike_StikeCasted() end

function Osi.PROC_END_Netherbrain_PlayHitAnimation() end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
---@param a2 TRIGGER
function Osi.PROC_END_Reinforcements_CallReinforcementsToCombat(a0, a1, a2) end

---@param a0 CHARACTER
function Osi.PROC_END_Reinforcements_ClearCalledCharacter(a0) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_END_Reinforcements_JoinCombatGroup(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_END_Reinforcements_RestoreCombatGroup(a0) end

---@param a0 CHARACTER
---@param a1 TRIGGER
---@param a2 GUIDSTRING
function Osi.PROC_END_Reinforcements_SendCharacterToDestination(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
function Osi.PROC_END_Reinforcements_TryJoinCombat(a0, a1) end

function Osi.PROC_END_RemoveRedundantOrb() end

---@param a0 CHARACTER
function Osi.PROC_END_Underground_CallForHelp(a0) end

function Osi.PROC_END_VossEncounter_BeginDialogue() end

function Osi.PROC_END_VossEncounter_MoveGith() end

function Osi.PROC_END_VossEncounter_Setup() end

function Osi.PROC_EPI_EPilogue_PoofAwayDivineBard() end

---@param a0 DIALOGRESOURCE
---@param a1 integer
---@param a2 CHARACTER
function Osi.PROC_EPI_Epilogue_AddAllNPCsAndAvatarsToDialog(a0, a1, a2) end

---@param a0 CHARACTER
function Osi.PROC_EPI_Epilogue_AdditionalSetupCharacter(a0) end

---@param a0 CHARACTER
function Osi.PROC_EPI_Epilogue_ApplyGhostStatus(a0) end

---@param a0 integer
function Osi.PROC_EPI_Epilogue_ApplyGodGaleForm(a0) end

---@param a0 string
function Osi.PROC_EPI_Epilogue_ChangeBardTrack(a0) end

function Osi.PROC_EPI_Epilogue_CheckDisable() end

---@param a0 CHARACTER
function Osi.PROC_EPI_Epilogue_CheckForFallback(a0) end

function Osi.PROC_EPI_Epilogue_CheckForReadyStartingDialogs() end

function Osi.PROC_EPI_Epilogue_CloseGoals() end

function Osi.PROC_EPI_Epilogue_CloseOutstandingQuests() end

function Osi.PROC_EPI_Epilogue_CloseWyllQuest() end

function Osi.PROC_EPI_Epilogue_DismissHirelings() end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_EPI_Epilogue_GetViolentInterruptOwner(a0, a1) end

function Osi.PROC_EPI_Epilogue_IncludeSpectralVoiceGale() end

---@param a0 CHARACTER
function Osi.PROC_EPI_Epilogue_LockAvatar(a0) end

---@param a0 CHARACTER
function Osi.PROC_EPI_Epilogue_MakeAvatarGhost(a0) end

function Osi.PROC_EPI_Epilogue_ReadyClosingSpeakers() end

function Osi.PROC_EPI_Epilogue_ReadyDeadGaleFlags() end

function Osi.PROC_EPI_Epilogue_ReadyOpeningSpeakers() end

---@param a0 CHARACTER
function Osi.PROC_EPI_Epilogue_RemoveAndHideNPC(a0) end

function Osi.PROC_EPI_Epilogue_RestoreCharacters() end

function Osi.PROC_EPI_Epilogue_SelectClosingDialog() end

function Osi.PROC_EPI_Epilogue_SelectLetterRecipient() end

function Osi.PROC_EPI_Epilogue_SelectOpeningDialog() end

---@param a0 ITEM
function Osi.PROC_EPI_Epilogue_SendLetterToInventory(a0) end

---@param a0 CHARACTER
function Osi.PROC_EPI_Epilogue_SetAvailableAvatar(a0) end

---@param a0 CHARACTER
function Osi.PROC_EPI_Epilogue_SetAvailableNPC(a0) end

function Osi.PROC_EPI_Epilogue_SetAvatarVlaakithLaezelToDead() end

function Osi.PROC_EPI_Epilogue_SetCharacters() end

function Osi.PROC_EPI_Epilogue_SetCompanionGaleFallback() end

---@param a0 string
---@param a1 ITEM
---@param a2 string
function Osi.PROC_EPI_Epilogue_SetDynamicLetter(a0, a1, a2) end

---@param a0 CHARACTER
function Osi.PROC_EPI_Epilogue_SetFaction(a0) end

function Osi.PROC_EPI_Epilogue_SetFallbackFlags() end

---@param a0 CHARACTER
function Osi.PROC_EPI_Epilogue_SetFallbackPartyEquipment(a0) end

---@param a0 CHARACTER
function Osi.PROC_EPI_Epilogue_SetFinalToastSpeaker(a0) end

function Osi.PROC_EPI_Epilogue_SetFlags() end

---@param a0 string
---@param a1 string
function Osi.PROC_EPI_Epilogue_SetGazette(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_EPI_Epilogue_SetGhostAvatar(a0) end

---@param a0 CHARACTER
function Osi.PROC_EPI_Epilogue_SetLockedAvatar(a0) end

---@param a0 CHARACTER
function Osi.PROC_EPI_Epilogue_SetNPCConditionals(a0) end

---@param a0 CHARACTER
function Osi.PROC_EPI_Epilogue_SetPartyEquipment(a0) end

---@param a0 CHARACTER
function Osi.PROC_EPI_Epilogue_SetPartyUnderwear(a0) end

---@param a0 CHARACTER
function Osi.PROC_EPI_Epilogue_SetSpectralGaleLetter(a0) end

function Osi.PROC_EPI_Epilogue_Setup() end

function Osi.PROC_EPI_Epilogue_SetupAvatars() end

function Osi.PROC_EPI_Epilogue_SetupGazettes() end

function Osi.PROC_EPI_Epilogue_SetupLetters() end

function Osi.PROC_EPI_Epilogue_SetupNPCs() end

---@param a0 DIALOGRESOURCE
---@param a1 CHARACTER
function Osi.PROC_EPI_Epilogue_StartClosingDialog(a0, a1) end

function Osi.PROC_EPI_Epilogue_StartClosingSequence() end

function Osi.PROC_EPI_Epilogue_StartCredits() end

function Osi.PROC_EPI_Epilogue_StartEnterPartyDialog() end

function Osi.PROC_EPI_Epilogue_StartFinalToast() end

---@param a0 DIALOGRESOURCE
---@param a1 CHARACTER
function Osi.PROC_EPI_Epilogue_StartOpeningDialog(a0, a1) end

function Osi.PROC_EPI_Epilogue_StartOpeningSequence() end

function Osi.PROC_EPI_Epilogue_StartViolentClosureDialog() end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_EPI_Epilogue_SwapEquipment(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_EPI_Epilogue_SwapToAvernusClothing(a0) end

---@param a0 ITEMROOT
---@param a1 CHARACTER
function Osi.PROC_EPI_Epilogue_TemplateAddTo(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_EPI_Epilogue_TryClearInventory(a0) end

function Osi.PROC_EPI_Epilogue_TryDivineBardLeave() end

function Osi.PROC_EPI_Epilogue_TryDropInertArtefact() end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_EPI_Epilogue_TryMindFlayerUrgeDialog(a0, a1) end

function Osi.PROC_EPI_Epilogue_TryStartEnterParty() end

function Osi.PROC_EPI_Epilogue_TryStartViolentClosureDialog() end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_EPI_Epilogue_ViolenceReaction(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_EPI_Epilogue_WelcomePlayer(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_EPI_Epilogue_WelcomePlayer_Internal(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_EPI_ExclamationMark_Hide(a0) end

---@param a0 GUIDSTRING
---@param a1 string
function Osi.PROC_EPI_ExclamationMark_Hide(a0, a1) end

---@param a0 CHARACTER
---@param a1 DIALOGRESOURCE
function Osi.PROC_EmperorAD(a0, a1) end

---@param a0 CHARACTER
---@param a1 DIALOGRESOURCE
function Osi.PROC_EmperorAD_PlayInternal(a0, a1) end

function Osi.PROC_EnableShroud() end

---@param a0 string
function Osi.PROC_End_Activity(a0) end

---@param a0 GUIDSTRING
---@param a1 GUIDSTRING
function Osi.PROC_EnterCombat(a0, a1) end

---@param a0 GUIDSTRING
---@param a1 GUIDSTRING
function Osi.PROC_EnterCombatByID(a0, a1) end

---@param a0 GUIDSTRING
---@param a1 GUIDSTRING
function Osi.PROC_EnterCombatByIDWithParticipant(a0, a1) end

---@param a0 GUIDSTRING
---@param a1 string
function Osi.PROC_EntityBecameUnreachable(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_EvaluateEndTheDay_LongRestResourceDepleted_Tutorial(a0) end

---@param a0 CHARACTER
function Osi.PROC_EvaluateEndTheDay_LowHealth_Tutorial(a0) end

---@param a0 CHARACTER
function Osi.PROC_EvaluateEndTheDay_ShortRestResourceDepleted_Tutorial(a0) end

---@param a0 CHARACTER
function Osi.PROC_EvaluateLockedItemsTutorial(a0) end

---@param a0 CHARACTER
function Osi.PROC_EvaluatePartylineTutorial(a0) end

---@param a0 CHARACTER
function Osi.PROC_EvaluateShortRestTutorial_ReasonLowHP(a0) end

---@param a0 CHARACTER
function Osi.PROC_EvaluateShortRestTutorial_ReasonSpellOrResource(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 integer
---@param a3 integer
function Osi.PROC_EvaluateTradeDeal(a0, a1, a2, a3) end

function Osi.PROC_ExclamationMarkCleanup() end

---@param a0 GUIDSTRING
function Osi.PROC_ExclamationMark_Hide(a0) end

---@param a0 GUIDSTRING
---@param a1 string
function Osi.PROC_ExclamationMark_Hide(a0, a1) end

---@param a0 GUIDSTRING
function Osi.PROC_ExclamationMark_Show(a0) end

---@param a0 GUIDSTRING
---@param a1 string
function Osi.PROC_ExclamationMark_Show(a0, a1) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
---@param a2 string
---@param a3 integer
---@param a4 string
---@param a5 integer
function Osi.PROC_ExecuteDisappearOutOfSight(a0, a1, a2, a3, a4, a5) end

---@param a0 string
---@param a1 string
function Osi.PROC_ExecuteInLevel(a0, a1) end

---@param a0 DIALOGRESOURCE
---@param a1 DIALOGRESOURCE
---@param a2 TAG
---@param a3 TAG
---@param a4 GUIDSTRING
---@param a5 GUIDSTRING
---@param a6 GUIDSTRING
---@param a7 GUIDSTRING
---@param a8 FLAG
---@param a9 GUIDSTRING
function Osi.PROC_ExecuteOriginMoment(a0, a1, a2, a3, a4, a5, a6, a7, a8, a9) end

---@param a0 string
---@param a1 GUIDSTRING
function Osi.PROC_ExecuteWhenObjectInCurrentLevel(a0, a1) end

---@param a0 CHARACTER
---@param a1 number
---@param a2 number
---@param a3 number
function Osi.PROC_FOR_BottomlessWell_ImmuneToChasms(a0, a1, a2, a3) end

---@param a0 CHARACTER
function Osi.PROC_FOR_BottomlessWell_SetChasmImmunity(a0) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
function Osi.PROC_FOR_Bottomless_TeleportPlayerWithFade(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_FOR_Bottomless_UnderdarkEntrance(a0) end

---@param a0 CHARACTER
function Osi.PROC_FOR_Bottomless_UnderdarkEntrance_Entered(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_FOR_BugBearLove_EnterCombat(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_FOR_BugBearLove_PrepareCombat(a0) end

---@param a0 CHARACTER
function Osi.PROC_FOR_BugBearLove_Surprise(a0) end

function Osi.PROC_FOR_CMB_PhaseSpiderEggs_UpdateClusterTargets() end

function Osi.PROC_FOR_CMB_PhaseSpiderQueen_WebPlatforms() end

---@param a0 CHARACTER
function Osi.PROC_FOR_CourierDog_AddSpell_FindFamiliarDog(a0) end

function Osi.PROC_FOR_CourierDog_Aura_ClearDetectedItems() end

---@param a0 GUIDSTRING
function Osi.PROC_FOR_CourierDog_Aura_DetectedItem(a0) end

---@param a0 GUIDSTRING
---@param a1 number
function Osi.PROC_FOR_CourierDog_Aura_FindClosestItem(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 GUIDSTRING
---@param a3 integer
function Osi.PROC_FOR_CourierDog_ClearFetch(a0, a1, a2, a3) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
function Osi.PROC_FOR_CourierDog_DropObjectIfNeeded(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_FOR_CourierDog_FamiliarSummoned(a0) end

---@param a0 CHARACTER
function Osi.PROC_FOR_CourierDog_FamiliarUnsummoned(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 GUIDSTRING
function Osi.PROC_FOR_CourierDog_FetchResultsInCrime(a0, a1, a2) end

---@param a0 CHARACTER
function Osi.PROC_FOR_CourierDog_FetchedBallAchievementHook(a0) end

function Osi.PROC_FOR_CourierDog_KillActiveSummon() end

---@param a0 CHARACTER
function Osi.PROC_FOR_CourierDog_RemoveSpell_FindFamiliarDog(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_FOR_CourierDog_ResetOwnershipIfItem(a0) end

function Osi.PROC_FOR_CourierDog_ReturnBall() end

function Osi.PROC_FOR_CourierDog_ReturnBallCheck() end

function Osi.PROC_FOR_CourierDog_ReturnBallIfMissing() end

---@param a0 ITEM
---@param a1 CHARACTER
function Osi.PROC_FOR_CourierDog_ReturnFetchItemToPlayer(a0, a1) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
function Osi.PROC_FOR_CourierDog_StartFetching(a0, a1) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
function Osi.PROC_FOR_Courier_BallThrown(a0, a1) end

function Osi.PROC_FOR_Courier_Dog2Camp2() end

function Osi.PROC_FOR_Courier_Dog_MoveToCamp() end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 GUIDSTRING
function Osi.PROC_FOR_Courier_PlayFetch(a0, a1, a2) end

function Osi.PROC_FOR_Courier_StopCrimeHandling() end

---@param a0 CHARACTER
function Osi.PROC_FOR_DangerousBook_ApplyMadness(a0) end

function Osi.PROC_FOR_DangerousBook_MoveTome() end

function Osi.PROC_FOR_DangerousBook_OnBookDestroyed() end

---@param a0 integer
---@param a1 number
---@param a2 number
---@param a3 number
function Osi.PROC_FOR_DangerousBook_SummonShades(a0, a1, a2, a3) end

function Osi.PROC_FOR_DangerousBook_UpdateRegion() end

---@param a0 CHARACTER
function Osi.PROC_FOR_FirstPhaseSpiderEtherealCast_TryVB(a0) end

function Osi.PROC_FOR_GnomeFreed() end

function Osi.PROC_FOR_GnomeGoblins_LeavePacified() end

---@param a0 CHARACTER
function Osi.PROC_FOR_IncompleteMasterwork_FindJournal(a0) end

---@param a0 CHARACTER
function Osi.PROC_FOR_IncompleteMasterwork_FindPlans(a0) end

---@param a0 CHARACTER
function Osi.PROC_FOR_IncompleteMasterwork_FindSussurBark(a0) end

---@param a0 ITEM
---@param a1 CHARACTER
function Osi.PROC_FOR_IncompleteMasterwork_ForgeWeapon(a0, a1) end

---@param a0 GUIDSTRING
---@param a1 CHARACTER
function Osi.PROC_FOR_IncompleteMasterwork_GetBookVB(a0, a1) end

---@param a0 GUIDSTRING
function Osi.PROC_FOR_IncompleteMasterwork_ReplaceFurnace(a0) end

---@param a0 CHARACTER
function Osi.PROC_FOR_IncompleteMasterwork_SussurHistoryCheck(a0) end

function Osi.PROC_FOR_IncompleteMasterwork_TryLockDoors() end

---@param a0 CHARACTER
function Osi.PROC_FOR_IncompleteMasterwork_TryStartForgeWeaponVB(a0) end

function Osi.PROC_FOR_IncompleteMasterwork_TryUnlockDoors() end

---@param a0 CHARACTER
function Osi.PROC_FOR_KnifeInMeat_StartDiaog(a0) end

function Osi.PROC_FOR_MeetingTheMonitor_Vanish() end

function Osi.PROC_FOR_Monitor_AlterCandleLight() end

---@param a0 CHARACTER
function Osi.PROC_FOR_OwlBearCub_LastCubLeaveCombat(a0) end

function Osi.PROC_FOR_OwlBearCub_LastCubLeaveCombat_VB() end

function Osi.PROC_FOR_OwlBear_GoblinsCome() end

---@param a0 CHARACTER
function Osi.PROC_FOR_OwlBear_LastCubResolution(a0) end

function Osi.PROC_FOR_OwlbearCubEatsMotherSetup() end

---@param a0 DIALOGRESOURCE
---@param a1 GUIDSTRING
---@param a2 GUIDSTRING
function Osi.PROC_FOR_PriestOfTheConqueringGod_StartAD(a0, a1, a2) end

function Osi.PROC_FOR_PriestsConqueringGod_GoToGoblinCamp() end

---@param a0 CHARACTER
function Osi.PROC_FOR_PriestsConqueringGod_GoToGoblinCamp_Disappear(a0) end

function Osi.PROC_FOR_PriestsMoveToOwlbearState() end

---@param a0 CHARACTER
function Osi.PROC_FOR_SchoolOgre_InitSpotTriggers(a0) end

function Osi.PROC_FOR_SchoolOgre_InitSpotting() end

function Osi.PROC_FOR_SchoolOgre_SummonedHaveAttacked() end

---@param a0 CHARACTER
---@param a1 FACTION
function Osi.PROC_FOR_SchoolOgre_SummonedHostileTo(a0, a1) end

function Osi.PROC_FOR_SchoolOgres_CheckCombatEnded() end

---@param a0 CHARACTER
---@param a1 FLAG
function Osi.PROC_FOR_SchoolOgres_PlayerSpotted(a0, a1) end

function Osi.PROC_FOR_SchoolOgres_RunOffAfterHired() end

---@param a0 CHARACTER
function Osi.PROC_FOR_SchoolOgres_Summon(a0) end

---@param a0 ITEM
function Osi.PROC_FOR_SeluneStash_PlayerMessedWithContents(a0) end

---@param a0 ITEM
function Osi.PROC_FOR_SeluneStash_ShadowheartTakeObject(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_FOR_SeluneStash_TriggerTrap(a0) end

function Osi.PROC_FOR_ThayanCellar_InitUndead() end

function Osi.PROC_FOR_ThayanCellar_OrbLeave() end

function Osi.PROC_FOR_ThayanCellar_OrbTrace() end

---@param a0 CHARACTER
function Osi.PROC_FOR_ThayanCellar_SetAndStartDialog(a0) end

---@param a0 ITEM
---@param a1 CHARACTER
function Osi.PROC_FOR_ThayanCellar_SkeletonEmerge(a0, a1) end

function Osi.PROC_FOR_ThayanCellar_TombCheck() end

---@param a0 ITEM
---@param a1 CHARACTER
function Osi.PROC_FOR_ThayanCellar_TombDestroy(a0, a1) end

function Osi.PROC_FOR_UnfortunateGnomeMillRotatingFasterReaction() end

function Osi.PROC_FOR_UnfortunateGnome_LeaderReadyToUnsurrender() end

function Osi.PROC_FOR_UnfortunateGnome_LeaderUnsurrender() end

---@param a0 string
function Osi.PROC_FOR_UnfortunateGnome_RunAway(a0) end

---@param a0 CHARACTER
function Osi.PROC_FOR_UnfortunateGnome_SatchelExploded(a0) end

---@param a0 integer
function Osi.PROC_FOR_UnfortunateGnome_UnfortunateGnomeDialogEnded(a0) end

function Osi.PROC_FOR_Village_PacifyGoblins() end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
function Osi.PROC_FaceCharacter(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_FaceEachother(a0, a1) end

---@param a0 FACTION
---@param a1 integer
function Osi.PROC_FactionSetLootOwned(a0, a1) end

---@param a0 CHARACTER
---@param a1 FACTION
---@param a2 string
function Osi.PROC_FactionTagging_CheckAddedFactionMember(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 FACTION
---@param a2 string
function Osi.PROC_FactionTagging_CheckRemovedFactionMember(a0, a1, a2) end

---@param a0 string
---@param a1 FACTION
---@param a2 TAG
---@param a3 string
function Osi.PROC_FactionTagging_CheckTagCleared(a0, a1, a2, a3) end

---@param a0 string
---@param a1 FACTION
---@param a2 TAG
---@param a3 string
function Osi.PROC_FactionTagging_CheckTagSet(a0, a1, a2, a3) end

---@param a0 string
---@param a1 FACTION
---@param a2 TAG
---@param a3 string
---@param a4 integer
function Osi.PROC_FactionTagging_HandleTaggedResult(a0, a1, a2, a3, a4) end

---@param a0 string
---@param a1 FACTION
---@param a2 TAG
---@param a3 string
function Osi.PROC_FactionTagging_ProcessTagCleared(a0, a1, a2, a3) end

---@param a0 FACTION
---@param a1 TAG
---@param a2 string
---@param a3 string
function Osi.PROC_FactionTagging_QueueTagChanged(a0, a1, a2, a3) end

---@param a0 string
---@param a1 string
---@param a2 FACTION
---@param a3 TAG
---@param a4 string
function Osi.PROC_FactionTagging_TagCleared(a0, a1, a2, a3, a4) end

---@param a0 string
---@param a1 string
---@param a2 FACTION
---@param a3 TAG
---@param a4 string
function Osi.PROC_FactionTagging_TagSet(a0, a1, a2, a3, a4) end

---@param a0 GUIDSTRING
function Osi.PROC_FadeAppear_FadeOver(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_FadeInEntity(a0) end

---@param a0 GUIDSTRING
---@param a1 string
function Osi.PROC_FadeInEntity(a0, a1) end

---@param a0 GUIDSTRING
function Osi.PROC_FadeOutEntity(a0) end

---@param a0 GUIDSTRING
---@param a1 string
function Osi.PROC_FadeOutEntity(a0, a1) end

function Osi.PROC_FallbackCamp_AllPlayersLeave() end

---@param a0 string
function Osi.PROC_FallbackCamp_CheckSpecialConditions(a0) end

function Osi.PROC_FallbackCamp_DefineTeleporterCamps() end

function Osi.PROC_FallbackCamp_EnsureResurrections() end

---@param a0 string
function Osi.PROC_FallbackCamp_EnteredCamp(a0) end

---@param a0 string
function Osi.PROC_FallbackCamp_LeftCamp(a0) end

---@param a0 FLAG
function Osi.PROC_FallbackCamp_OnCampNightQueued(a0) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_FallbackCamp_Start(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_FindNewSubregionOnExit(a0) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_FinishedRespecing(a0, a1) end

---@param a0 GUIDSTRING
---@param a1 FLAG
function Osi.PROC_FlagReactionAfterDialog(a0, a1) end

---@param a0 GUIDSTRING
---@param a1 FLAG
---@param a2 DIALOGRESOURCE
function Osi.PROC_FlagReactionAfterDialog(a0, a1, a2) end

---@param a0 GUIDSTRING
---@param a1 FLAG
---@param a2 DIALOGRESOURCE
---@param a3 integer
function Osi.PROC_FlagReactionAfterDialog(a0, a1, a2, a3) end

function Osi.PROC_FlorrickExecution_ReinstatePosters() end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_Follow(a0, a1) end

---@param a0 GUIDSTRING
function Osi.PROC_Foop(a0) end

---@param a0 GUIDSTRING
---@param a1 EFFECTRESOURCE
function Osi.PROC_Foop(a0, a1) end

---@param a0 GUIDSTRING
function Osi.PROC_ForceStopDialog(a0) end

---@param a0 GUIDSTRING
---@param a1 DIALOGRESOURCE
function Osi.PROC_ForceStopSpecificDialog(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_ForceUpdateDBSees(a0, a1) end

function Osi.PROC_GEN_FreeOrpheus_RemoveUpdatesInHouse() end

function Osi.PROC_GEN_FreeOrpheus_SetUpdatesInHouse() end

function Osi.PROC_GEN_OrinsAbduction_AbductCompanion() end

function Osi.PROC_GEN_OrinsAbduction_Altar_PlayEffect_Bloodied() end

---@param a0 CHARACTER
function Osi.PROC_GEN_OrinsAbduction_BloodiedChar_Apply(a0) end

---@param a0 CHARACTER
function Osi.PROC_GEN_OrinsAbduction_BloodiedChar_Remove(a0) end

function Osi.PROC_GEN_OrinsAbduction_CheckActiveCampDB() end

function Osi.PROC_GEN_OrinsAbduction_CheckCampDB() end

function Osi.PROC_GEN_OrinsAbduction_CheckPlayerDB() end

function Osi.PROC_GEN_OrinsAbduction_Check_PartyFollowersDB() end

function Osi.PROC_GEN_OrinsAbduction_ChooseHalsinVictim() end

function Osi.PROC_GEN_OrinsAbduction_ClearDB_CFM_Orin() end

function Osi.PROC_GEN_OrinsAbduction_ClearDB_ChosenChar() end

function Osi.PROC_GEN_OrinsAbduction_ClearDB_ChosenCharFlag() end

function Osi.PROC_GEN_OrinsAbduction_ClearDB_ChosenCharRelationship() end

function Osi.PROC_GEN_OrinsAbduction_ClearDB_ChosenName() end

function Osi.PROC_GEN_OrinsAbduction_ClearDB_CurCampTrigPos() end

function Osi.PROC_GEN_OrinsAbduction_ClearDB_OrinAttacker() end

function Osi.PROC_GEN_OrinsAbduction_ClearDBs() end

function Osi.PROC_GEN_OrinsAbduction_CompanionLeaves() end

function Osi.PROC_GEN_OrinsAbduction_Debug_EnableAbduction() end

function Osi.PROC_GEN_OrinsAbduction_Debug_GiveGortashNetherstone() end

function Osi.PROC_GEN_OrinsAbduction_Debug_SetKilledGortash() end

function Osi.PROC_GEN_OrinsAbduction_DisableAllImpersonations() end

function Osi.PROC_GEN_OrinsAbduction_FindBestAbductee() end

---@param a0 CHARACTER
function Osi.PROC_GEN_OrinsAbduction_GiveDagger_WithNetherstone(a0) end

---@param a0 CHARACTER
function Osi.PROC_GEN_OrinsAbduction_GiveDagger_WithoutNetherstone(a0) end

function Osi.PROC_GEN_OrinsAbduction_GiveOrinRing() end

---@param a0 CHARACTER
function Osi.PROC_GEN_OrinsAbduction_GiveStone(a0) end

function Osi.PROC_GEN_OrinsAbduction_InCampAbduction_Completed() end

function Osi.PROC_GEN_OrinsAbduction_InCampAbductions_Disable() end

function Osi.PROC_GEN_OrinsAbduction_InCampAbductions_Init() end

function Osi.PROC_GEN_OrinsAbduction_InWorldAbductions_Disable() end

function Osi.PROC_GEN_OrinsAbduction_InWorldAbductions_Init() end

function Osi.PROC_GEN_OrinsAbduction_InWorldImpersonations_Disable() end

function Osi.PROC_GEN_OrinsAbduction_InWorldImpersonations_Init() end

---@param a0 CHARACTER
function Osi.PROC_GEN_OrinsAbduction_KnockedOut_Apply(a0) end

---@param a0 CHARACTER
function Osi.PROC_GEN_OrinsAbduction_KnockedOut_Remove(a0) end

---@param a0 integer
function Osi.PROC_GEN_OrinsAbduction_NestedDialog_Start(a0) end

function Osi.PROC_GEN_OrinsAbduction_OrinAbductionSetup() end

function Osi.PROC_GEN_OrinsAbduction_OrinAttacked_Setup() end

---@param a0 CHARACTER
function Osi.PROC_GEN_OrinsAbduction_OrinAttacked_StartDialog(a0) end

function Osi.PROC_GEN_OrinsAbduction_OrinCorpseTransform() end

function Osi.PROC_GEN_OrinsAbduction_OrinTeleportOut() end

function Osi.PROC_GEN_OrinsAbduction_OrinTransformsBack() end

function Osi.PROC_GEN_OrinsAbduction_Orin_ClearTitle() end

function Osi.PROC_GEN_OrinsAbduction_Orin_Init() end

function Osi.PROC_GEN_OrinsAbduction_Orin_MoveAllItemsToGore() end

function Osi.PROC_GEN_OrinsAbduction_Orin_RemoveAllItems() end

function Osi.PROC_GEN_OrinsAbduction_Orin_RestoreTitle() end

function Osi.PROC_GEN_OrinsAbduction_Orin_SaveTitle() end

function Osi.PROC_GEN_OrinsAbduction_PlayEffect_Teleport() end

---@param a0 CHARACTER
function Osi.PROC_GEN_OrinsAbduction_PlayEffect_TeleportOnCharPoof(a0) end

function Osi.PROC_GEN_OrinsAbduction_PlayEffect_Transform() end

function Osi.PROC_GEN_OrinsAbduction_PostCampHostage_Scratch_DialogSetup() end

function Osi.PROC_GEN_OrinsAbduction_PostCampHostage_Yenna_DialogSetup() end

function Osi.PROC_GEN_OrinsAbduction_SetAvailableMintharaVictim() end

function Osi.PROC_GEN_OrinsAbduction_SetupBestAbductee() end

function Osi.PROC_GEN_OrinsAbduction_SetupCampReq() end

function Osi.PROC_GEN_OrinsAbduction_SetupDummies() end

function Osi.PROC_GEN_OrinsAbduction_SetupOrinGortash() end

---@param a0 CHARACTER
---@param a1 FLAG
function Osi.PROC_GEN_OrinsAbduction_SetupVictimInTemple(a0, a1) end

function Osi.PROC_GEN_OrinsAbduction_Setup_CampTriggerPos() end

---@param a0 CHARACTER
function Osi.PROC_GEN_OrinsAbduction_Temple_KnockedOut_Apply(a0) end

---@param a0 CHARACTER
function Osi.PROC_GEN_OrinsAbduction_Temple_KnockedOut_Remove(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_GEN_OrinsAbduction_Transformation_PlaySound(a0) end

function Osi.PROC_GEN_OrinsAbduction_WakeUpCampAbductee() end

function Osi.PROC_GEN_OrinsAbduction_YennaImmortality_Remove() end

function Osi.PROC_GEN_OrinsAbduction_YennaImmortality_Reset() end

function Osi.PROC_GEN_OrinsAbduction_Yenna_Killcat() end

---@param a0 TRIGGER
function Osi.PROC_GEN_OrinsMessages_BloodSurface_Clear(a0) end

---@param a0 TRIGGER
function Osi.PROC_GEN_OrinsMessages_BloodSurface_Create(a0) end

function Osi.PROC_GEN_OrinsMessages_GortashKilled() end

---@param a0 string
function Osi.PROC_GEN_OrinsMessages_MoveMessageToNewCamp(a0) end

function Osi.PROC_GEN_OrinsMessages_Setup() end

---@param a0 string
function Osi.PROC_GEN_OrinsMessages_SetupMessageInCamp(a0) end

function Osi.PROC_GEN_OrinsMessages_SteelWatchFoundryDestroyed() end

function Osi.PROC_GEN_OrinsMessages_SteelWatchLeftCombat() end

---@param a0 GUIDSTRING
---@param a1 GUIDSTRING
function Osi.PROC_GEN_UpdateHostilePlayerGroup(a0, a1) end

---@param a0 CHARACTER
---@param a1 FACTION
---@param a2 GUIDSTRING
function Osi.PROC_GEN_UpdateHostilePlayerGroupForFaction(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 FACTION
---@param a2 GUIDSTRING
function Osi.PROC_GEN_UpdateHostileToPlayerGroupForPartyMember(a0, a1, a2) end

function Osi.PROC_GEN_Warlock_GUS312579_FixCurrentFlag() end

function Osi.PROC_GLO_303629_TryRestoreCompanion() end

function Osi.PROC_GLO_303784_2_UpdateButlerDB() end

function Osi.PROC_GLO_303784_ClearButlerAnubisDB() end

function Osi.PROC_GLO_303784_SetButlerAnubisDB() end

---@param a0 string
function Osi.PROC_GLO_ADManager_CheckADsOver(a0) end

---@param a0 FLAG
function Osi.PROC_GLO_Act2_DebugSetup_Journal(a0) end

---@param a0 FLAG
function Osi.PROC_GLO_Act3Setup_UnlockJournal(a0) end

---@param a0 FLAG
function Osi.PROC_GLO_Act3_DebugSetup(a0) end

function Osi.PROC_GLO_Act3_DebugSetup_AstarionCompanionSetup() end

---@param a0 FLAG
---@param a1 string
function Osi.PROC_GLO_Act3_DebugSetup_DelayedGlobalFlags(a0, a1) end

---@param a0 CHARACTER
---@param a1 FLAG
---@param a2 string
function Osi.PROC_GLO_Act3_DebugSetup_DelayedObjectFlags(a0, a1, a2) end

function Osi.PROC_GLO_Act3_DebugSetup_JaheiraRecruited() end

---@param a0 CHARACTER
function Osi.PROC_GLO_Act3_DebugSetup_MintharaCompanionSetup(a0) end

function Osi.PROC_GLO_Act3_DebugSetup_NightsongRecruited() end

---@param a0 CHARACTER
---@param a1 FLAG
function Osi.PROC_GLO_Act3_DebugSetup_PartyAndCamp(a0, a1) end

function Osi.PROC_GLO_Act3_DebugSetup_SetCompanionApproval() end

function Osi.PROC_GLO_Act3_DebugSetup_SetupLaezelOrpheusPath() end

function Osi.PROC_GLO_Act3_DebugSetup_SetupLaezelVlaakithPath() end

function Osi.PROC_GLO_ActivateHagScripting() end

function Osi.PROC_GLO_ActivitiesPS5_Act1Start() end

---@param a0 string
function Osi.PROC_GLO_ActivitiesPS5_AttemptEndPreviousActivity(a0) end

---@param a0 string
function Osi.PROC_GLO_ActivitiesPS5_ExclusiveStartActivity(a0) end

function Osi.PROC_GLO_ActivitiesPS5_TutorialStart() end

---@param a0 CHARACTER
function Osi.PROC_GLO_AvatarDismissed(a0) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_GLO_AvatarKickable_DialogueNames(a0, a1) end

function Osi.PROC_GLO_BUGFIX_SetSteelwatcherGuardTag() end

function Osi.PROC_GLO_Background_GUS310413_FixGuildArtisanGoals() end

---@param a0 CHARACTER
function Osi.PROC_GLO_Backgrounds_CheckThieflingsStashGoal(a0) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_GLO_Backgrounds_CompleteGoal(a0, a1) end

---@param a0 CHARACTER
---@param a1 ITEM
---@param a2 integer
---@param a3 integer
function Osi.PROC_GLO_Backgrounds_Criminal_CheckStealing(a0, a1, a2, a3) end

---@param a0 CHARACTER
---@param a1 TRIGGER
function Osi.PROC_GLO_Backgrounds_ExploringTheShadowlands(a0, a1) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
function Osi.PROC_GLO_Backgrounds_GivePoint(a0, a1) end

function Osi.PROC_GLO_Backgrounds_GuildArtisan_AdamantineForgeUsed() end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 ITEM
function Osi.PROC_GLO_Backgrounds_GuildArtisan_Trading(a0, a1, a2) end

---@param a0 CHARACTER
function Osi.PROC_GLO_Backgrounds_HauntedOne_CheckDeathTypesCompleted(a0) end

function Osi.PROC_GLO_Backgrounds_Outlander_BoulderCleanUp() end

---@param a0 CHARACTER
function Osi.PROC_GLO_Backgrounds_Outlander_BoulderRestart(a0) end

---@param a0 CHARACTER
function Osi.PROC_GLO_Backgrounds_Outlander_CheckMushroomKilled(a0) end

---@param a0 GUIDSTRING
---@param a1 CHARACTER
function Osi.PROC_GLO_Backgrounds_PermaDefeatedBy(a0, a1) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_GLO_Backgrounds_RewardPlayer(a0, a1) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_GLO_Backgrounds_ShareGoalRewarding(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_GLO_Backgrounds_Soldier_BossOneShotClear(a0) end

function Osi.PROC_GLO_Backgrounds_Soldier_OnPassedDesireDoor() end

---@param a0 CHARACTER
function Osi.PROC_GLO_BookOfGods_TryStartDialog(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_GLO_BrainEscalationCombatEnded(a0) end

function Osi.PROC_GLO_BrainEscalation_ForceUpdateDBSees() end

function Osi.PROC_GLO_BrainEscalation_ShutDownFoundry() end

function Osi.PROC_GLO_Brainquake_Directional_RemoveNetherbrainSlow() end

---@param a0 CHARACTER
function Osi.PROC_GLO_Brainquakes_ApplyExperiencedFlag(a0) end

---@param a0 string
---@param a1 string
function Osi.PROC_GLO_Brainquakes_OnEventEnded(a0, a1) end

---@param a0 string
function Osi.PROC_GLO_Brainquakes_RunningEvent_Complete(a0) end

---@param a0 string
---@param a1 string
function Osi.PROC_GLO_Brainquakes_RunningEvent_CompleteForUser(a0, a1) end

---@param a0 string
---@param a1 integer
function Osi.PROC_GLO_Brainquakes_RunningEvent_Stop(a0, a1) end

---@param a0 string
function Osi.PROC_GLO_Brainquakes_RunningEvent_TryPlayDaisyAD(a0) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_GLO_Brainquakes_RunningEvent_TryPlayVB(a0, a1) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_GLO_Brainquakes_RunningEvent_TryShakeGround(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_GLO_Brainquakes_ShakeGroundAroundCharacter(a0) end

---@param a0 string
function Osi.PROC_GLO_Brainquakes_StartEvent_Internal(a0) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_GLO_Brainquakes_StartForcedEvent(a0, a1) end

---@param a0 GUIDSTRING
function Osi.PROC_GLO_BreakConcentration(a0) end

---@param a0 GUIDSTRING
---@param a1 GUIDSTRING
function Osi.PROC_GLO_BreakConcentration(a0, a1) end

function Osi.PROC_GLO_BugFix_313066_RestoreAbducteeFollower() end

function Osi.PROC_GLO_BugFix_316893_RestoreAbducteeFollower_BeforeEND() end

function Osi.PROC_GLO_Bugfix_288226() end

function Osi.PROC_GLO_Bugfix_291973_Orin_UpdateDifficultyStat() end

function Osi.PROC_GLO_Bugfix_298318_Remove_PlayableDBs() end

function Osi.PROC_GLO_Bugfix_298318_Remove_PlayableTag() end

function Osi.PROC_GLO_Bugfix_298318_ShouldBePermaDefeated() end

function Osi.PROC_GLO_Bugfix_298426_RemoveCombatADs() end

function Osi.PROC_GLO_Bugfix_298601_RemoveFugitiveStatus() end

function Osi.PROC_GLO_Bugfix_298699_ReplaceActiveDialogs() end

function Osi.PROC_GLO_Bugfix_298824_InitBridgeState() end

function Osi.PROC_GLO_Bugfix_299451_RemoveExtraDefaultFaction() end

function Osi.PROC_GLO_Bugfix_300036_RestoreButler() end

function Osi.PROC_GLO_Bugfix_300554_FixAstarionState() end

function Osi.PROC_GLO_Bugfix_300554_FixRitualCannotBeCompletedFlag() end

function Osi.PROC_GLO_Bugfix_300613_UpdateCheckpointData() end

function Osi.PROC_GLO_Bugfix_300763_UpdateTG() end

function Osi.PROC_GLO_Bugfix_301055_CheckUpdateSavegame() end

function Osi.PROC_GLO_Bugfix_301134_SceneOver() end

function Osi.PROC_GLO_Bugfix_301351_FixDrunkGoblin() end

function Osi.PROC_GLO_Bugfix_301351_FixFlags() end

function Osi.PROC_GLO_Bugfix_301351_FixFriends() end

function Osi.PROC_GLO_Bugfix_301517_RemoveUnneededDBs() end

function Osi.PROC_GLO_Bugfix_301568_RestoreYennaToTemple() end

---@param a0 integer
function Osi.PROC_GLO_Bugfix_301679(a0) end

function Osi.PROC_GLO_Bugfix_301877_UpdateSpotting() end

function Osi.PROC_GLO_Bugfix_302178() end

function Osi.PROC_GLO_Bugfix_302389() end

function Osi.PROC_GLO_Bugfix_302407() end

function Osi.PROC_GLO_Bugfix_302745() end

function Osi.PROC_GLO_Bugfix_302745_GiveItems() end

function Osi.PROC_GLO_Bugfix_302745_RemoveSpawns() end

function Osi.PROC_GLO_Bugfix_302843_Restore_DarkUrgeDualState() end

function Osi.PROC_GLO_Bugfix_304249_RestoreItems() end

function Osi.PROC_GLO_Bugfix_304472() end

function Osi.PROC_GLO_Bugfix_304723_FixGortash() end

function Osi.PROC_GLO_Bugfix_304819() end

function Osi.PROC_GLO_Bugfix_304980_ApplyTagToAbductee() end

function Osi.PROC_GLO_Bugfix_305346_RestoreOrin() end

function Osi.PROC_GLO_Bugfix_305347_TryRestoreMessages() end

function Osi.PROC_GLO_Bugfix_305406_RestorePlayer() end

function Osi.PROC_GLO_Bugfix_305503() end

---@param a0 FACTION
function Osi.PROC_GLO_Bugfix_305681_RestoreFaction(a0) end

function Osi.PROC_GLO_Bugfix_305681_SetTag() end

function Osi.PROC_GLO_Bugfix_305851() end

function Osi.PROC_GLO_Bugfix_305925_CheckDisableImpostorTopic() end

function Osi.PROC_GLO_Bugfix_306013() end

function Osi.PROC_GLO_Bugfix_306257_FixPosterPosition() end

function Osi.PROC_GLO_Bugfix_306369_2_TryRemoveDeadAbductee() end

function Osi.PROC_GLO_Bugfix_306506() end

function Osi.PROC_GLO_Bugfix_306688_TryApplyFix() end

function Osi.PROC_GLO_Bugfix_306955() end

function Osi.PROC_GLO_Bugfix_306974_CheckUpdateJournal() end

function Osi.PROC_GLO_Bugfix_307030_CleanUpOldDB() end

function Osi.PROC_GLO_Bugfix_307431_TryGiveDarkUrgeDagger() end

function Osi.PROC_GLO_Bugfix_307431_TryRestoreDaggerFromChasm() end

function Osi.PROC_GLO_Bugfix_307523() end

function Osi.PROC_GLO_Bugfix_307629() end

---@param a0 GUIDSTRING
function Osi.PROC_GLO_Bugfix_307629_StopCombat(a0) end

function Osi.PROC_GLO_Bugfix_307684() end

function Osi.PROC_GLO_Bugfix_307704_CheckCombat() end

function Osi.PROC_GLO_Bugfix_307720_TryApplyFix() end

function Osi.PROC_GLO_Bugfix_308248() end

function Osi.PROC_GLO_Bugfix_309867_2_TryRestoreCanJoin() end

function Osi.PROC_GLO_Bugfix_311392_TryRestoreBrokenDuelOnParty() end

---@param a0 GUIDSTRING
---@param a1 ITEMROOT
---@param a2 string
function Osi.PROC_GLO_Bugfix_312032_CheckToPatchPotion(a0, a1, a2) end

---@param a0 GUIDSTRING
---@param a1 ITEMROOT
---@param a2 string
function Osi.PROC_GLO_Bugfix_312032_TryCreateReplacementPotion(a0, a1, a2) end

function Osi.PROC_GLO_Bugfix_312593_RemoveGrenades() end

function Osi.PROC_GLO_Bugfix_314220_TrySetBhaalDisappointed() end

---@param a0 GUIDSTRING
---@param a1 string
function Osi.PROC_GLO_Bugfix_317665_Unsummon(a0, a1) end

---@param a0 string
function Osi.PROC_GLO_Bugfix_318710_MakePeace(a0) end

function Osi.PROC_GLO_Bugfix_Jahira_ReviveAndSetupFamily() end

---@param a0 CHARACTER
---@param a1 string
---@param a2 string
function Osi.PROC_GLO_CharacterCreationTeleportWithOptionalMovie(a0, a1, a2) end

---@param a0 GUIDSTRING
---@param a1 integer
function Osi.PROC_GLO_Chasms_RecoverFromChasm(a0, a1) end

---@param a0 string
function Osi.PROC_GLO_Cinematic_ClearPositionFlags(a0) end

---@param a0 DIALOGRESOURCE
---@param a1 string
---@param a2 CHARACTER
function Osi.PROC_GLO_Cinematic_SetPositionFlag(a0, a1, a2) end

function Osi.PROC_GLO_ClearHagDoublesOverflow() end

function Osi.PROC_GLO_ClearHeadRemovalEventFlag() end

function Osi.PROC_GLO_CombatNPCs_Init() end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_GLO_CursedIronFlask_CreatureWasReleased(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_GLO_CursedIronFlask_InitCreature(a0) end

---@param a0 number
---@param a1 number
---@param a2 number
---@param a3 CHARACTER
function Osi.PROC_GLO_CursedIronFlask_ReleaseCreatureAtPosition(a0, a1, a2, a3) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_GLO_DaisyDreams_Backup_CloneTags(a0, a1) end

---@param a0 DIALOGRESOURCE
---@param a1 CHARACTER
function Osi.PROC_GLO_DaisyDreams_ChangeClothing(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_GLO_DaisyDreams_GetDaisy_Attempt(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_GLO_DaisyDreams_GetEmperor_Attempt(a0, a1) end

function Osi.PROC_GLO_DataGetOriginTags() end

---@param a0 CHARACTER
function Osi.PROC_GLO_DataGetOriginTags(a0) end

function Osi.PROC_GLO_Debug_LevelUpHack() end

---@param a0 integer
function Osi.PROC_GLO_Debug_WorldTimelineCleanUp(a0) end

---@param a0 DIALOGRESOURCE
---@param a1 string
---@param a2 TRIGGER
function Osi.PROC_GLO_Debug_WorldTimelineRestart(a0, a1, a2) end

---@param a0 string
function Osi.PROC_GLO_DefeatCounter_AllDead(a0) end

---@param a0 string
function Osi.PROC_GLO_DefeatCounter_AllDefeated(a0) end

---@param a0 string
function Osi.PROC_GLO_DefeatCounter_AllNoLongerDead(a0) end

---@param a0 string
function Osi.PROC_GLO_DefeatCounter_AllNoLongerDefeated(a0) end

---@param a0 string
function Osi.PROC_GLO_DefeatCounter_AllPermaDefeated(a0) end

---@param a0 string
function Osi.PROC_GLO_DefeatCounter_CheckAllDead(a0) end

---@param a0 string
function Osi.PROC_GLO_DefeatCounter_CheckFinished(a0) end

---@param a0 string
---@param a1 integer
---@param a2 integer
---@param a3 integer
function Osi.PROC_GLO_DefeatCounter_Notify(a0, a1, a2, a3) end

---@param a0 CHARACTER
function Osi.PROC_GLO_DeleteAllWeapons(a0) end

function Osi.PROC_GLO_DevilishOx_TeleportIfAlive() end

---@param a0 integer
---@param a1 string
function Osi.PROC_GLO_Dialogs_FadeTimerCheckDialogEnded(a0, a1) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
function Osi.PROC_GLO_DieFlag_ChasmDeath(a0, a1) end

---@param a0 GUIDSTRING
function Osi.PROC_GLO_DifficultyModes_AddHPBoostedEntity(a0) end

---@param a0 CHARACTER
function Osi.PROC_GLO_DifficultyModes_AddPlayerBonuses(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_GLO_DifficultyModes_ApplyHPBoost(a0) end

function Osi.PROC_GLO_DifficultyModes_DisableAllHPBoosts() end

function Osi.PROC_GLO_DifficultyModes_EnableAllHPBoosts() end

---@param a0 GUIDSTRING
function Osi.PROC_GLO_DifficultyModes_RemoveHPBoost(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_GLO_DifficultyModes_RemoveHPBoostedEntity(a0) end

---@param a0 CHARACTER
function Osi.PROC_GLO_DifficultyModes_RemovePlayerBonuses(a0) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
function Osi.PROC_GLO_DifficultyModes_TryTemporarilyRemoveBoost(a0, a1) end

---@param a0 integer
---@param a1 string
function Osi.PROC_GLO_DirectionalBrainquake_ReadyBrainquakeSlowAndStun(a0, a1) end

---@param a0 CHARACTER
---@param a1 integer
---@param a2 string
---@param a3 number
---@param a4 number
function Osi.PROC_GLO_DirectionalBrainquake_ReadyBrainquakeSlowAndStun(a0, a1, a2, a3, a4) end

---@param a0 CHARACTER
---@param a1 TRIGGER
---@param a2 integer
---@param a3 string
---@param a4 string
function Osi.PROC_GLO_DirectionalBrainquake_StartBrainquakeShakeAndVFX(a0, a1, a2, a3, a4) end

---@param a0 CHARACTER
function Osi.PROC_GLO_DoShortRestPAD(a0) end

---@param a0 DIALOGRESOURCE
---@param a1 CHARACTER
function Osi.PROC_GLO_Doppelgangers_PlayFirstTransformationReactionPAD(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_GLO_Drider_PixieDialog(a0) end

---@param a0 CHARACTER
function Osi.PROC_GLO_EmperorPrelude_CheckAllIronThroneStonesReceived(a0) end

function Osi.PROC_GLO_EmperorPrelude_CheckAllStonesInInventory() end

function Osi.PROC_GLO_EmperorPrelude_CheckForIntermezzoStone() end

function Osi.PROC_GLO_EmperorPrelude_CheckGortashPactStones() end

function Osi.PROC_GLO_EmperorPrelude_CheckSahuaginAttackStatus() end

function Osi.PROC_GLO_EmperorPrelude_GortashMoveToMorphicPool() end

---@param a0 CHARACTER
function Osi.PROC_GLO_EmperorPrelude_IronThroneStonesBackAD(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_GLO_EmperorPrelude_MoveLostStonesToInventory(a0) end

---@param a0 CHARACTER
function Osi.PROC_GLO_EmperorPrelude_PlayDroppedStoneAD(a0) end

---@param a0 ITEM
---@param a1 CHARACTER
---@param a2 string
function Osi.PROC_GLO_EmperorPrelude_PlayerDroppedNetherstone(a0, a1, a2) end

---@param a0 ITEM
---@param a1 CHARACTER
---@param a2 string
function Osi.PROC_GLO_EmperorPrelude_PlayerPickedUpNetherstone(a0, a1, a2) end

function Osi.PROC_GLO_EmperorPrelude_ReadyEmperor() end

---@param a0 CHARACTER
function Osi.PROC_GLO_EmperorPrelude_ReadyPlayerForDialog(a0) end

function Osi.PROC_GLO_EmperorPrelude_SetUpNetherstoneFish() end

---@param a0 CHARACTER
function Osi.PROC_GLO_EmperorPrelude_TryStartPreludeDialog(a0) end

---@param a0 string
---@param a1 FLAG
function Osi.PROC_GLO_ExclusiveFlag_ClearOtherFlags(a0, a1) end

function Osi.PROC_GLO_Gazette_DoPrinting() end

function Osi.PROC_GLO_Gazette_PreparePrinting() end

function Osi.PROC_GLO_Gazette_RestockArticles() end

---@param a0 CHARACTER
function Osi.PROC_GLO_Gazette_TryEmperorResponseStelmaneDead(a0) end

---@param a0 CHARACTER
function Osi.PROC_GLO_GithChokepoint_CheckLevel(a0) end

function Osi.PROC_GLO_GithChokepoint_CheckReAddLaezel() end

---@param a0 CHARACTER
function Osi.PROC_GLO_GithChokepoint_CompanionReactionDialog(a0) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
function Osi.PROC_GLO_GithChokepoint_CompanionReactionDialog(a0, a1) end

---@param a0 integer
function Osi.PROC_GLO_GithChokepoint_Outcome(a0) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_GLO_GithChokepoint_ReAddLaezel(a0, a1) end

function Osi.PROC_GLO_GithMap_ClearReader() end

---@param a0 ITEM
---@param a1 CHARACTER
function Osi.PROC_GLO_GithMap_PickUp(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_GLO_GithMap_ProcessInteraction(a0) end

---@param a0 integer
function Osi.PROC_GLO_GithMap_TryStartLaezelAvatarVB(a0) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_GLO_GlobalItems_ApplyFacePaint(a0, a1) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_GLO_GlobalItems_ApplyMaterialOverride(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_GLO_GlobalItems_GiveCoal(a0) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 string
function Osi.PROC_GLO_GlobalItems_RemoveFacePaint(a0, a1, a2) end

function Osi.PROC_GLO_GrandDukeRescue_UpdateLearnedAboutMoonrise() end

function Osi.PROC_GLO_HagCounterswap() end

---@param a0 CHARACTER
function Osi.PROC_GLO_HagCounterswap(a0) end

---@param a0 integer
function Osi.PROC_GLO_HagCounterswap_CheckNewDoublesToSpawn(a0) end

---@param a0 CHARACTER
function Osi.PROC_GLO_HagCounterswap_GetAvailableSwapPoints(a0) end

function Osi.PROC_GLO_HagCounterswap_SpawnNewDoubles() end

---@param a0 CHARACTER
function Osi.PROC_GLO_HagCounterswap_Teleport(a0) end

---@param a0 CHARACTER
---@param a1 number
---@param a2 string
function Osi.PROC_GLO_HagCounterswap_Teleport(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 TRIGGER
function Osi.PROC_GLO_HagCounterswap_Teleport_Success(a0, a1) end

---@param a0 TRIGGER
---@param a1 CHARACTER
---@param a2 number
---@param a3 string
function Osi.PROC_GLO_HagCounterswap_Teleport_TryAvailableRandomTrigger(a0, a1, a2, a3) end

---@param a0 GUIDSTRING
function Osi.PROC_GLO_HagDoublePostSpawnSetup(a0) end

function Osi.PROC_GLO_Halsin_ApplyWildshape() end

function Osi.PROC_GLO_Halsin_DebugGoToKagha() end

function Osi.PROC_GLO_Halsin_DebugReturnAoD() end

function Osi.PROC_GLO_Halsin_DebugReturnVictory() end

function Osi.PROC_GLO_Halsin_GoSeeDruidLeader() end

function Osi.PROC_GLO_Halsin_LeftGoblinCamp() end

function Osi.PROC_GLO_Halsin_RemoveWildshape() end

function Osi.PROC_GLO_Halsin_TeleportToDen() end

function Osi.PROC_GLO_Halsin_WildshapeRemoved() end

---@param a0 GUIDSTRING
---@param a1 GUIDSTRING
---@param a2 string
function Osi.PROC_GLO_Hardcore_SyncStatus(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 CHARACTERROOT
function Osi.PROC_GLO_HeadRemoval_OnHeadPicked(a0, a1) end

---@param a0 CHARACTER
---@param a1 ITEM
function Osi.PROC_GLO_HeadRemoval_TryPutHeadInventory(a0, a1) end

function Osi.PROC_GLO_InfernalBox_AddToOwner() end

function Osi.PROC_GLO_InfernalBox_ClearPartyNeverHadBoxFlag() end

---@param a0 CHARACTER
function Osi.PROC_GLO_InfernalBox_MoveBoxToCharacter(a0) end

function Osi.PROC_GLO_InfernalBox_RestartShadowheartOwnership() end

---@param a0 CHARACTER
function Osi.PROC_GLO_InfernalBox_SendToAvatarFrom(a0) end

---@param a0 CHARACTER
function Osi.PROC_GLO_InfernalBox_SendToCharacter(a0) end

---@param a0 DIALOGRESOURCE
---@param a1 integer
function Osi.PROC_GLO_InfernalBox_SetCurrentInteractiveDialog(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_GLO_InfernalBox_SetNewOwner(a0) end

---@param a0 CHARACTER
function Osi.PROC_GLO_InfernalBox_SetPlayerOwner(a0) end

function Osi.PROC_GLO_InfernalBox_TryApplyBoundStatus() end

function Osi.PROC_GLO_InfernalBox_TryRemoveShadowheart() end

function Osi.PROC_GLO_InfernalBox_TryStartLootingSHDialog() end

---@param a0 CHARACTER
function Osi.PROC_GLO_InfernalBox_UseInteraction(a0) end

---@param a0 CHARACTER
function Osi.PROC_GLO_InfernalBox_UseInteraction_Internal(a0) end

---@param a0 ITEM
---@param a1 FLAG
---@param a2 CHARACTER
function Osi.PROC_GLO_ItemInventoryLockFlag_NotInInventoryAssert(a0, a1, a2) end

function Osi.PROC_GLO_Jaheira_ResolveCampSituation() end

function Osi.PROC_GLO_Jergal_Appear() end

---@param a0 CHARACTER
function Osi.PROC_GLO_Jergal_CancelResurrection(a0) end

---@param a0 CHARACTER
function Osi.PROC_GLO_Jergal_DismissCharacter(a0) end

function Osi.PROC_GLO_Jergal_FollowerCRD_Enable() end

function Osi.PROC_GLO_Jergal_MoveToCamp() end

function Osi.PROC_GLO_Jergal_PrepareAllPlayersResurrection() end

---@param a0 FLAG
function Osi.PROC_GLO_Jergal_PreparePlayerResurrection(a0) end

---@param a0 FLAG
function Osi.PROC_GLO_Jergal_PreparePlayerResurrection_Internal(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_GLO_Jergal_Recruit(a0, a1) end

---@param a0 integer
function Osi.PROC_GLO_Jergal_RemoveAttackedFlagTimer(a0) end

---@param a0 CHARACTER
function Osi.PROC_GLO_Jergal_ResurrectPlayer(a0) end

function Osi.PROC_GLO_Jergal_ResurrectPlayers() end

function Osi.PROC_GLO_Jergal_ResurrectPlayers_Recursive() end

---@param a0 CHARACTER
function Osi.PROC_GLO_Jergal_SaveReturnPosition(a0) end

function Osi.PROC_GLO_Jergal_SetDeadPlayers() end

---@param a0 DIALOGRESOURCE
function Osi.PROC_GLO_Jergal_SetDialog(a0) end

---@param a0 DIALOGRESOURCE
function Osi.PROC_GLO_Jergal_SetDialogVariables(a0) end

---@param a0 CHARACTER
function Osi.PROC_GLO_Jergal_SetPlayerResurrectingOthers(a0) end

---@param a0 integer
---@param a1 DIALOGRESOURCE
function Osi.PROC_GLO_Jergal_SetResurrectionPrice(a0, a1) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
---@param a2 string
function Osi.PROC_GLO_Jergal_Teleport(a0, a1, a2) end

---@param a0 CHARACTER
function Osi.PROC_GLO_Jergal_WillResurrect(a0) end

function Osi.PROC_GLO_Knockout_Cleanup() end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_GLO_Knockout_RemoveDialog(a0, a1) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 GUIDSTRING
---@param a3 DIALOGRESOURCE
---@param a4 integer
function Osi.PROC_GLO_KnowledgeCheckEnded(a0, a1, a2, a3, a4) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 GUIDSTRING
function Osi.PROC_GLO_KnowledgeCheckFailure(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 GUIDSTRING
function Osi.PROC_GLO_KnowledgeCheckSuccess(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 GUIDSTRING
---@param a3 integer
function Osi.PROC_GLO_KnowledgeCheck_ForceComplete(a0, a1, a2, a3) end

---@param a0 string
---@param a1 CHARACTER
function Osi.PROC_GLO_LevelSwapCheckCustomReadyCheckAndProceed(a0, a1) end

---@param a0 string
---@param a1 CHARACTER
function Osi.PROC_GLO_LevelSwapCheckPartyAvailableAndProceed(a0, a1) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 string
function Osi.PROC_GLO_LevelSwap_BlockSwap(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 string
function Osi.PROC_GLO_LevelSwap_CheckSwap(a0, a1, a2) end

---@param a0 string
---@param a1 string
function Osi.PROC_GLO_LevelSwap_LeavingFromTo(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_GLO_LevelSwap_NotifyPartyUnavailable(a0, a1) end

function Osi.PROC_GLO_LiftingTheCurse_CheckHalsin() end

---@param a0 string
function Osi.PROC_GLO_LiftingTheCurse_Debug_HalsinSetUp(a0) end

---@param a0 string
function Osi.PROC_GLO_LiftingTheCurse_Debug_HalsinSetUp_State(a0) end

function Osi.PROC_GLO_LiftingTheCurse_Debug_HandleWorgPens() end

---@param a0 GUIDSTRING
function Osi.PROC_GLO_Mad_RestoreIndivRelation(a0) end

---@param a0 CHARACTER
function Osi.PROC_GLO_MaskedVictimPossessed(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_GLO_Mimic_Cine_AfterTeleport(a0, a1) end

---@param a0 CHARACTER
---@param a1 ITEM
---@param a2 CHARACTER
---@param a3 integer
function Osi.PROC_GLO_Mimic_Revealed(a0, a1, a2, a3) end

---@param a0 CHARACTER
function Osi.PROC_GLO_Mimic_SurprisedPAD(a0) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
function Osi.PROC_GLO_Mimic_TransformCine(a0, a1) end

---@param a0 CHARACTER
---@param a1 ITEM
---@param a2 CHARACTER
---@param a3 ITEM
function Osi.PROC_GLO_Mimic_TransformCine_Inner(a0, a1, a2, a3) end

---@param a0 ITEM
---@param a1 CHARACTER
function Osi.PROC_GLO_Mimic_Transform_Inner(a0, a1) end

---@param a0 ITEM
---@param a1 CHARACTER
function Osi.PROC_GLO_Mimic_Transform_StoreHP(a0, a1) end

---@param a0 ITEM
---@param a1 CHARACTER
function Osi.PROC_GLO_Mimic_Transformed(a0, a1) end

---@param a0 GUIDSTRING
---@param a1 GUIDSTRING
---@param a2 string
function Osi.PROC_GLO_MizoraAppear(a0, a1, a2) end

---@param a0 GUIDSTRING
---@param a1 number
---@param a2 number
---@param a3 number
---@param a4 string
function Osi.PROC_GLO_MizoraAppear(a0, a1, a2, a3, a4) end

---@param a0 GUIDSTRING
---@param a1 string
function Osi.PROC_GLO_MizoraAppear_AppearedHook(a0, a1) end

---@param a0 GUIDSTRING
---@param a1 string
function Osi.PROC_GLO_MizoraDisappear(a0, a1) end

---@param a0 GUIDSTRING
---@param a1 string
function Osi.PROC_GLO_MizoraDisappear_DisappearedHook(a0, a1) end

function Osi.PROC_GLO_MonitorAppearRegister() end

function Osi.PROC_GLO_MonitorAppearUnregisterAll() end

function Osi.PROC_GLO_MonitorIntro_FixRaphaelIntro() end

function Osi.PROC_GLO_Monitor_AttackedReaction() end

function Osi.PROC_GLO_Monitor_DebugStateReset() end

---@param a0 GUIDSTRING
function Osi.PROC_GLO_Monitor_EntityFoop(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_GLO_Monitor_EntityPoof(a0) end

function Osi.PROC_GLO_Monitor_Foop() end

function Osi.PROC_GLO_Monitor_Poof() end

function Osi.PROC_GLO_MonkAmuletBanters_Init() end

---@param a0 GUIDSTRING
function Osi.PROC_GLO_Moonbeams_RemoveMoonbeamsFor(a0) end

function Osi.PROC_GLO_Moonrise_Journal_HelpedMarcusCaptureIsobel() end

function Osi.PROC_GLO_Moonrise_Journal_OnEndingMainQuest() end

---@param a0 CHARACTER
function Osi.PROC_GLO_Moonrise_Journal_TookMoonlanternUpdate(a0) end

function Osi.PROC_GLO_Moonrise_Journal_ZrellGaveAccessToRoof() end

---@param a0 ITEM
---@param a1 TRIGGER
---@param a2 TRIGGER
---@param a3 string
function Osi.PROC_GLO_MovingObject_FinishedMovement(a0, a1, a2, a3) end

---@param a0 ITEM
function Osi.PROC_GLO_MovingObject_Move(a0) end

---@param a0 ITEM
---@param a1 TRIGGER
---@param a2 TRIGGER
---@param a3 string
function Osi.PROC_GLO_MovingObject_StartedMovement(a0, a1, a2, a3) end

---@param a0 TRIGGER
function Osi.PROC_GLO_NarrativeCombat_AllPlayersLeftRegion(a0) end

---@param a0 CHARACTER
---@param a1 TRIGGER
function Osi.PROC_GLO_NarrativeCombat_CharacterEnteredRegion(a0, a1) end

---@param a0 string
---@param a1 CHARACTER
---@param a2 TRIGGER
function Osi.PROC_GLO_NarrativeCombat_CharacterLeftRegion(a0, a1, a2) end

---@param a0 TRIGGER
function Osi.PROC_GLO_NarrativeCombat_CheckForAnyPlayersInRegion(a0) end

---@param a0 string
function Osi.PROC_GLO_NarrativeCombat_EndCombat(a0) end

---@param a0 string
---@param a1 GUIDSTRING
function Osi.PROC_GLO_NarrativeCombat_IDGenerated(a0, a1) end

---@param a0 string
---@param a1 GUIDSTRING
function Osi.PROC_GLO_NarrativeCombat_JoinCombat(a0, a1) end

---@param a0 string
---@param a1 GUIDSTRING
function Osi.PROC_GLO_NarrativeCombat_LeaveCombat(a0, a1) end

---@param a0 string
---@param a1 GUIDSTRING
function Osi.PROC_GLO_NarrativeCombat_ParticipantJoined(a0, a1) end

---@param a0 string
---@param a1 GUIDSTRING
function Osi.PROC_GLO_NarrativeCombat_ParticipantLeft(a0, a1) end

---@param a0 string
function Osi.PROC_GLO_NarrativeCombat_StartCombat(a0) end

function Osi.PROC_GLO_Nightsong_GiveNightsongEquipment() end

---@param a0 string
function Osi.PROC_GLO_NoDifficultyDefinedHagDoublesSpawn(a0) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_GLO_OathbreakerKnight_StartFirstAppearance(a0, a1) end

---@param a0 CHARACTER
---@param a1 DIALOGRESOURCE
function Osi.PROC_GLO_Origins_MaybeSetDefaultDialog(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_GLO_Origins_RemoveRecruitmentDialogs(a0) end

---@param a0 CHARACTER
---@param a1 DIALOGRESOURCE
function Osi.PROC_GLO_Origins_SetRecruitmentDialog(a0, a1) end

---@param a0 CHARACTER
---@param a1 DIALOGRESOURCE
---@param a2 integer
function Osi.PROC_GLO_Origins_SetRecruitmentDialog(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_GLO_Origins_SetRecruitmentDialog_Internal(a0, a1) end

---@param a0 string
function Osi.PROC_GLO_Origins_SetupRecruitment(a0) end

---@param a0 CHARACTER
function Osi.PROC_GLO_PaladinOathbreakerPath_FailedToStartDialog(a0) end

---@param a0 CHARACTER
function Osi.PROC_GLO_PaladinOathbreaker_BecomesOathbreaker(a0) end

---@param a0 CHARACTER
function Osi.PROC_GLO_PaladinOathbreaker_BecomesOathbreakerHook(a0) end

---@param a0 CHARACTER
function Osi.PROC_GLO_PaladinOathbreaker_BecomesOathbreaker_Internal(a0) end

---@param a0 CHARACTER
function Osi.PROC_GLO_PaladinOathbreaker_BrokeOath(a0) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_GLO_PaladinOathbreaker_BrokeOath(a0, a1) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_GLO_PaladinOathbreaker_BrokeOath_Internal(a0, a1) end

---@param a0 DIALOGRESOURCE
---@param a1 integer
---@param a2 CHARACTER
function Osi.PROC_GLO_PaladinOathbreaker_DialogEnded(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 integer
---@param a3 CHARACTER
function Osi.PROC_GLO_PaladinOathbreaker_MightBreakOath(a0, a1, a2, a3) end

---@param a0 CHARACTER
function Osi.PROC_GLO_PaladinOathbreaker_RedemptionObtained(a0) end

---@param a0 CHARACTER
function Osi.PROC_GLO_PaladinOathbreaker_RedemptionObtainedHook(a0) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_GLO_PaladinSpells_TryRemoveDominatedStatusOwnerEffect(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_GLO_PartyMembers_Add(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_GLO_PartyMembers_AddHook(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_GLO_PartyMembers_CheckAdd(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_GLO_PartyMembers_ClearCompanionHostilityForOriginalFaction(a0) end

function Osi.PROC_GLO_PartyMembers_CollectDismissAll() end

---@param a0 CHARACTER
function Osi.PROC_GLO_PartyMembers_DismissAvatar(a0) end

---@param a0 CHARACTER
function Osi.PROC_GLO_PartyMembers_Initialize(a0) end

---@param a0 CHARACTER
---@param a1 FACTION
function Osi.PROC_GLO_PartyMembers_Kick(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_GLO_PartyMembers_Kick_CleanUp(a0) end

---@param a0 CHARACTER
---@param a1 integer
---@param a2 CHARACTER
---@param a3 integer
function Osi.PROC_GLO_PartyMembers_Kick_DefinePartyMemberDB(a0, a1, a2, a3) end

---@param a0 CHARACTER
function Osi.PROC_GLO_PartyMembers_Kick_PartyMembers_Dead(a0) end

---@param a0 CHARACTER
function Osi.PROC_GLO_PartyMembers_Kick_PartyMembers_Restore(a0) end

---@param a0 CHARACTER
function Osi.PROC_GLO_PartyMembers_Kick_PartyMembers_Restore_Internal(a0) end

---@param a0 CHARACTER
function Osi.PROC_GLO_PartyMembers_Kick_PartyMembers_TryDead(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 FACTION
function Osi.PROC_GLO_PartyMembers_Kick_RemoveAIMember(a0, a1, a2) end

---@param a0 string
function Osi.PROC_GLO_PartyMembers_LevelUnreachable(a0) end

---@param a0 CHARACTER
function Osi.PROC_GLO_PartyMembers_MakeNPC(a0) end

---@param a0 CHARACTER
function Osi.PROC_GLO_PartyMembers_MakeNPCHook(a0) end

---@param a0 CHARACTER
function Osi.PROC_GLO_PartyMembers_PreMakeNPCHook(a0) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_GLO_PartyMembers_Remove(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 integer
function Osi.PROC_GLO_PartyMembers_Remove(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 integer
---@param a3 integer
function Osi.PROC_GLO_PartyMembers_Remove(a0, a1, a2, a3) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 integer
---@param a3 integer
function Osi.PROC_GLO_PartyMembers_RemoveIfUserHasOtherCharacter(a0, a1, a2, a3) end

---@param a0 CHARACTER
function Osi.PROC_GLO_PartyMembers_ResetInPartyDialogs(a0) end

---@param a0 CHARACTER
---@param a1 DIALOGRESOURCE
function Osi.PROC_GLO_PartyMembers_SetInpartyDialog(a0, a1) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_GLO_PartyMembers_ShowPermanentLeaveMessage(a0, a1) end

---@param a0 integer
function Osi.PROC_GLO_PartyMembers_TempRemoveAll(a0) end

---@param a0 CHARACTER
function Osi.PROC_GLO_PartyMembers_TempRestore(a0) end

function Osi.PROC_GLO_PartyMembers_TempRestoreAll() end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 string
function Osi.PROC_GLO_PartyMembers_TransferInventoryToPlayer(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_GLO_PartyMembers_TransferStoryItems(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 integer
function Osi.PROC_GLO_PartyMembers_TransferStoryItems(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 integer
function Osi.PROC_GLO_PartyMembers_TransferStoryItems_Execute(a0, a1, a2) end

---@param a0 CHARACTER
function Osi.PROC_GLO_PartyMembers_TryDropBackpackOnDeath(a0) end

function Osi.PROC_GLO_Pixie_BreakMoonlantern() end

function Osi.PROC_GLO_Pixie_DisableShield() end

function Osi.PROC_GLO_Pixie_RestartLanternDialog() end

---@param a0 integer
---@param a1 string
function Osi.PROC_GLO_Plague_PartyCheckCure(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_GLO_PotentDrink_OnStatusApplied(a0) end

function Osi.PROC_GLO_RapidAD_RapidMindMeldADCleanup() end

---@param a0 string
---@param a1 integer
function Osi.PROC_GLO_RapidAD_SetAdjustedTime(a0, a1) end

---@param a0 string
function Osi.PROC_GLO_RapidAD_SetMaxDistance(a0) end

---@param a0 GUIDSTRING
---@param a1 GUIDSTRING
---@param a2 string
function Osi.PROC_GLO_RapidAD_TeleportADHelper(a0, a1, a2) end

---@param a0 GUIDSTRING
---@param a1 GUIDSTRING
---@param a2 number
---@param a3 number
---@param a4 number
---@param a5 number
function Osi.PROC_GLO_RapidAD_TeleportADHelper(a0, a1, a2, a3, a4, a5) end

---@param a0 string
---@param a1 CHARACTER
function Osi.PROC_GLO_RapidAD_TimerStart(a0, a1) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_GLO_RapidAD_TryOneRandomMindMeldAD(a0, a1) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_GLO_RapidAD_TryRapidMindMeldAD(a0, a1) end

function Osi.PROC_GLO_RemoveHagMaskNPCStatuses() end

---@param a0 ITEM
---@param a1 CHARACTER
function Osi.PROC_GLO_RestorationStation_Activate(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_GLO_ScryingEye_Alert(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_GLO_ScryingEye_CallFoundCombatReinforcements(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 CHARACTER
---@param a3 string
---@param a4 integer
function Osi.PROC_GLO_ScryingEye_CheckSeeCrime(a0, a1, a2, a3, a4) end

---@param a0 CHARACTER
function Osi.PROC_GLO_ScryingEye_CombatReinforcements(a0) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_GLO_ScryingEye_FindCombatReinforcement(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 integer
---@param a3 integer
---@param a4 string
function Osi.PROC_GLO_ScryingEye_LookOrFollow(a0, a1, a2, a3, a4) end

---@param a0 CHARACTER
function Osi.PROC_GLO_ScryingEye_SetActedHostile(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 string
function Osi.PROC_GLO_ScryingEye_StartFollow(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 integer
function Osi.PROC_GLO_ScryingEye_StopFollow(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 integer
---@param a2 string
function Osi.PROC_GLO_ScryingEye_TryFindCombatReinforcements(a0, a1, a2) end

---@param a0 string
function Osi.PROC_GLO_SelectFavouredSpeaker_CacheCandidateCheck(a0) end

---@param a0 GUIDSTRING
---@param a1 CHARACTER
---@param a2 string
function Osi.PROC_GLO_SelectFavouredSpeaker_CheckAlternative(a0, a1, a2) end

---@param a0 GUIDSTRING
---@param a1 CHARACTER
---@param a2 GUIDSTRING
---@param a3 string
---@param a4 integer
function Osi.PROC_GLO_SelectFavouredSpeaker_CheckAlternativeCondition(a0, a1, a2, a3, a4) end

---@param a0 GUIDSTRING
---@param a1 CHARACTER
---@param a2 string
function Osi.PROC_GLO_SelectFavouredSpeaker_CheckAlternativeTagExpression(a0, a1, a2) end

---@param a0 CHARACTER
function Osi.PROC_GLO_SetAvatarKickableFlag(a0) end

---@param a0 CHARACTER
function Osi.PROC_GLO_SetGameStartTags(a0) end

---@param a0 string
---@param a1 GUIDSTRING
---@param a2 integer
function Osi.PROC_GLO_SetupForAct(a0, a1, a2) end

---@param a0 string
function Osi.PROC_GLO_SetupForActComplete(a0) end

function Osi.PROC_GLO_SetupForAct_CheckCurrentLevel() end

function Osi.PROC_GLO_SetupForAct_DebugRerun() end

---@param a0 string
function Osi.PROC_GLO_SetupForAct_DebugRerun(a0) end

---@param a0 string
---@param a1 CHARACTER
function Osi.PROC_GLO_SetupForAct_DebugRerun(a0, a1) end

---@param a0 string
---@param a1 CHARACTER
function Osi.PROC_GLO_SetupForAct_DoChecks(a0, a1) end

---@param a0 CHARACTER
---@param a1 TRIGGER
function Osi.PROC_GLO_SetupForAct_Place(a0, a1) end

---@param a0 CHARACTER
---@param a1 TRIGGER
---@param a2 FACTION
function Osi.PROC_GLO_SetupForAct_Place(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 TRIGGER
---@param a2 FACTION
---@param a3 DIALOGRESOURCE
function Osi.PROC_GLO_SetupForAct_Place(a0, a1, a2, a3) end

---@param a0 CHARACTER
---@param a1 TRIGGER
---@param a2 FACTION
---@param a3 DIALOGRESOURCE
---@param a4 string
function Osi.PROC_GLO_SetupForAct_Place(a0, a1, a2, a3, a4) end

function Osi.PROC_GLO_ShadowheartRecruitmentInit() end

---@param a0 GUIDSTRING
---@param a1 integer
function Osi.PROC_GLO_SpellCast_CleanUp(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_GLO_Spells_CheckIsStillDominated(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_GLO_Spells_DominateDisableForceUpdate(a0) end

---@param a0 CHARACTER
function Osi.PROC_GLO_Spells_DominateEnableForceUpdate(a0) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 CHARACTER
function Osi.PROC_GLO_Spells_DominatedCharacter(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 CHARACTER
function Osi.PROC_GLO_Spells_LostDominatedControl(a0, a1, a2) end

---@param a0 CHARACTER
function Osi.PROC_GLO_Spells_Portent_Challenges_Apply(a0) end

---@param a0 integer
function Osi.PROC_GLO_Spells_Portent_Challenges_Pick(a0) end

---@param a0 CHARACTER
function Osi.PROC_GLO_Spells_Portent_Clear(a0) end

---@param a0 CHARACTER
function Osi.PROC_GLO_Spells_Portent_FillPortent(a0) end

---@param a0 CHARACTER
function Osi.PROC_GLO_Spells_Portent_Statuses_Apply(a0) end

---@param a0 integer
function Osi.PROC_GLO_Spells_Portent_Statuses_Pick(a0) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 number
---@param a3 number
---@param a4 number
---@param a5 number
---@param a6 integer
function Osi.PROC_GLO_Spells_Resummon(a0, a1, a2, a3, a4, a5, a6) end

---@param a0 ITEM
---@param a1 string
function Osi.PROC_GLO_Spells_TriggerTimedExplosive(a0, a1) end

---@param a0 ITEM
function Osi.PROC_GLO_Spells_TriggerTimedExplosive_Internal(a0) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_GLO_Spells_TryApplyDominatedOwnerEffect(a0, a1) end

function Osi.PROC_GLO_SteelWatch_CheckClearEnemyFlag() end

---@param a0 CHARACTER
function Osi.PROC_GLO_SteelWatch_EnemyOfAbsoluteCrime_EndOnCharacter(a0) end

function Osi.PROC_GLO_SteelWatch_RegisterEnemyOfAbsoluteCrime_Flag() end

---@param a0 CHARACTER
function Osi.PROC_GLO_SteelWatch_RegisterEnemyOfAbsoluteCrime_ForCharacter(a0) end

function Osi.PROC_GLO_SteelWatch_RegisterEnemyOfAbsoluteCrime_Global() end

---@param a0 string
function Osi.PROC_GLO_SteelWatchers_KillAll(a0) end

---@param a0 string
function Osi.PROC_GLO_SteelWatchers_SetWatchersBrainControlled(a0) end

---@param a0 ITEM
function Osi.PROC_GLO_Sussur_Wither(a0) end

---@param a0 CHARACTER
function Osi.PROC_GLO_TadpolePowerUsed(a0) end

---@param a0 CHARACTER
function Osi.PROC_GLO_TadpolePowerUsed_IncreaseCorruption(a0) end

---@param a0 CHARACTER
function Osi.PROC_GLO_Tadpole_CorruptionIncrease(a0) end

---@param a0 CHARACTER
function Osi.PROC_GLO_Tadpole_GiveAstralTadpoleTo(a0) end

---@param a0 integer
---@param a1 CHARACTER
function Osi.PROC_GLO_Tadpole_GiveLearnedApprentice(a0, a1) end

function Osi.PROC_GLO_Tadpole_Init() end

---@param a0 CHARACTER
function Osi.PROC_GLO_Tadpole_Remove(a0) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_GLO_Tadpole_TrackUseOnNPC(a0, a1) end

---@param a0 CHARACTER
---@param a1 FLAG
---@param a2 FLAG
---@param a3 integer
function Osi.PROC_GLO_ThrallOfTheAbsolute_CheckForValidGameOver(a0, a1, a2, a3) end

---@param a0 CHARACTER
function Osi.PROC_GLO_ThrallOfTheAbsolute_GameOverDialog(a0) end

---@param a0 CHARACTER
function Osi.PROC_GLO_ThrallOfTheAbsolute_PrepareGameOverDialog(a0) end

function Osi.PROC_GLO_ThrallOfTheAbsolute_RecoverDownedPlayers() end

function Osi.PROC_GLO_ThrallOfTheAbsolute_ResetFlags() end

function Osi.PROC_GLO_ThrallOfTheAbsolute_ShowGameOverMenu() end

---@param a0 CHARACTER
function Osi.PROC_GLO_ThrallOfTheAbsolute_StartGenericGameOverDialog(a0) end

---@param a0 CHARACTER
---@param a1 TRIGGER
function Osi.PROC_GLO_ThrallOfTheAbsolute_TeleportMindFlayeredPlayer(a0, a1) end

function Osi.PROC_GLO_ThrallOfTheAbsolute_TransformAndMovePlayers() end

---@param a0 CHARACTER
function Osi.PROC_GLO_ThrallOfTheAbsolute_TryStartGameOverDialog(a0) end

function Osi.PROC_GLO_TryAutosave() end

---@param a0 CHARACTER
---@param a1 UNIFIEDTUTORIAL
---@param a2 UNIFIEDTUTORIAL
function Osi.PROC_GLO_Tutorials_ChainOptionalTutorial(a0, a1, a2) end

---@param a0 GUIDSTRING
---@param a1 CHARACTER
---@param a2 integer
function Osi.PROC_GLO_Tutorials_CombatCheckPlayerCombatLevelTutorial(a0, a1, a2) end

---@param a0 TUTORIALEVENT
function Osi.PROC_GLO_Tutorials_DisableTutorialEventsForUsers(a0) end

---@param a0 TUTORIALEVENT
function Osi.PROC_GLO_Tutorials_EnableTutorialEventsForUsers(a0) end

function Osi.PROC_GLO_Tutorials_EvaluateActiveSearchTutorial() end

---@param a0 CHARACTER
function Osi.PROC_GLO_Tutorials_EvaluateHealingPotionTutorial(a0) end

---@param a0 CHARACTER
function Osi.PROC_GLO_Tutorials_EvaluatePickpocketTutorial(a0) end

function Osi.PROC_GLO_Tutorials_EvaluatePrepareSpellsTutorial() end

---@param a0 CHARACTER
function Osi.PROC_GLO_Tutorials_EvaluateSeeingInTheDarkTutorial(a0) end

---@param a0 CHARACTER
function Osi.PROC_GLO_Tutorials_EvaluateSneakAttackTutorial(a0) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_GLO_Tutorials_EvaluateTrapsTutorial(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_GLO_Tutorials_ProcessDownedTutorial(a0) end

---@param a0 CHARACTER
---@param a1 ITEM
function Osi.PROC_GLO_Tutorials_ProcessItemProficiencies(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_GLO_Tutorials_ProcessWaypointsTutorialTimer(a0) end

---@param a0 string
function Osi.PROC_GLO_Tutorials_TrackedTimerCancel(a0) end

---@param a0 GUIDSTRING
---@param a1 string
function Osi.PROC_GLO_Tutorials_TrackedTimerCancel(a0, a1) end

---@param a0 string
function Osi.PROC_GLO_Tutorials_TrackedTimerFinished(a0) end

---@param a0 GUIDSTRING
---@param a1 string
function Osi.PROC_GLO_Tutorials_TrackedTimerFinished(a0, a1) end

---@param a0 string
---@param a1 integer
function Osi.PROC_GLO_Tutorials_TrackedTimerStart(a0, a1) end

---@param a0 GUIDSTRING
---@param a1 string
---@param a2 integer
function Osi.PROC_GLO_Tutorials_TrackedTimerStart(a0, a1, a2) end

---@param a0 string
function Osi.PROC_GLO_Tutorials_TrackedTimer_EraseTimerRecord(a0) end

---@param a0 GUIDSTRING
---@param a1 string
function Osi.PROC_GLO_Tutorials_TrackedTimer_EraseTimerRecord(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_GLO_UnequipAllWeapons(a0) end

function Osi.PROC_GLO_Us_Summon_Dismiss() end

function Osi.PROC_GLO_VossSewers_VossTeleportedOutAfterAttacked_Hook() end

---@param a0 CHARACTER
function Osi.PROC_GLO_Voss_PermanentHostilityAgainstTarget(a0) end

function Osi.PROC_GLO_Warlock_ApplyAllStatuses() end

---@param a0 string
function Osi.PROC_GLO_Warlock_ApplyStatus(a0) end

function Osi.PROC_GLO_Warlock_Leaves() end

function Osi.PROC_GLO_Warlock_RemoveAllStatuses() end

---@param a0 string
function Osi.PROC_GLO_Warlock_RemoveStatus(a0) end

function Osi.PROC_GLO_Warlock_TeleportOut() end

function Osi.PROC_GLO_Warlock_TeleportOut_Internal() end

function Osi.PROC_GLO_Warlock_TryTravelToElfsongTavern() end

function Osi.PROC_GLO_Warlock_TryTravelToSharessCaress() end

function Osi.PROC_GOB_AcquiredOwlbearToInitialPosition() end

function Osi.PROC_GOB_AdventurerFreed_ProgressTorturers() end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
function Osi.PROC_GOB_BattleStations_DefineAlarmNPC(a0, a1) end

---@param a0 TRIGGER
function Osi.PROC_GOB_BattleStations_RegisterFallbackOwnersForTrigger(a0) end

function Osi.PROC_GOB_BattleStations_Start() end

function Osi.PROC_GOB_CheckIllegalPlayers() end

function Osi.PROC_GOB_CheckSetKingDeadNoPoisonState() end

function Osi.PROC_GOB_Checkpoint_AlarmUsed() end

function Osi.PROC_GOB_Checkpoint_AlarmUsed_CheckInProgress() end

function Osi.PROC_GOB_Checkpoint_AlarmUsed_HandleBackupGuards() end

function Osi.PROC_GOB_Checkpoint_AlarmUsed_HandleMainGuards() end

function Osi.PROC_GOB_Checkpoint_AlarmUsed_HostileResolution() end

function Osi.PROC_GOB_Checkpoint_AlarmUsed_MainGuardHostileReaction() end

function Osi.PROC_GOB_Checkpoint_AlarmUsed_MainGuardPeacefulReaction() end

function Osi.PROC_GOB_Checkpoint_AlarmUsed_PeacefulResolution() end

function Osi.PROC_GOB_Checkpoint_CheckPlayersInBouldersPath() end

function Osi.PROC_GOB_Checkpoint_ClearDesignatedRunner() end

function Osi.PROC_GOB_Checkpoint_DisableDialogs() end

function Osi.PROC_GOB_Checkpoint_EnableDialogs() end

function Osi.PROC_GOB_Checkpoint_FindAlarmRunner() end

function Osi.PROC_GOB_Checkpoint_MakeCheckpointHostile() end

function Osi.PROC_GOB_Checkpoint_MoveCapturedGoblinToCamp() end

function Osi.PROC_GOB_Checkpoint_MoveCapturedGoblinToSecondHalf() end

function Osi.PROC_GOB_Checkpoint_ResetAlarm() end

function Osi.PROC_GOB_Checkpoint_ReturnBackup() end

function Osi.PROC_GOB_Checkpoint_SendBackupToCheckpoint() end

---@param a0 CHARACTER
function Osi.PROC_GOB_Checkpoint_StartThreewayDialogWithCapturedGoblin(a0) end

---@param a0 CHARACTER
function Osi.PROC_GOB_Checkpoint_TryToRecognizeAlarm(a0) end

function Osi.PROC_GOB_ChickenChase_ChaseEnded_CancelTimer() end

function Osi.PROC_GOB_ChickenChase_ChaseEnded_RestoreBallSettings() end

function Osi.PROC_GOB_ChickenChase_ChaseEnded_RestoreFieldOwner() end

function Osi.PROC_GOB_ChickenChase_ChaseEnded_StartSpottingThePlayer() end

function Osi.PROC_GOB_ChickenChase_ChaseEnded_StartSpottingThePlayer_Internal() end

function Osi.PROC_GOB_ChickenChase_ChaseEnded_UpdateFlags() end

---@param a0 CHARACTER
function Osi.PROC_GOB_ChickenChase_CheckIfReady(a0) end

---@param a0 CHARACTER
function Osi.PROC_GOB_ChickenChase_DisableCrimes(a0) end

function Osi.PROC_GOB_ChickenChase_EndChase() end

function Osi.PROC_GOB_ChickenChase_Fireworks() end

---@param a0 TRIGGER
---@param a1 CHARACTER
function Osi.PROC_GOB_ChickenChase_HandleCommentOnThrowing(a0, a1) end

function Osi.PROC_GOB_ChickenChase_MoveBallToGame() end

function Osi.PROC_GOB_ChickenChase_MoveCommentatorToGame() end

---@param a0 CHARACTER
function Osi.PROC_GOB_ChickenChase_MoveOwlbearToCamp(a0) end

function Osi.PROC_GOB_ChickenChase_OwlbearAcquired() end

---@param a0 CHARACTER
function Osi.PROC_GOB_ChickenChase_OwlbearAcquired(a0) end

function Osi.PROC_GOB_ChickenChase_OwlbearAcquired_Internal() end

function Osi.PROC_GOB_ChickenChase_OwlbearIntroEnded() end

function Osi.PROC_GOB_ChickenChase_PlaySoundIfGameInProgress() end

function Osi.PROC_GOB_ChickenChase_ReplaceChickenWithOwlbear() end

function Osi.PROC_GOB_ChickenChase_SetupWinner() end

function Osi.PROC_GOB_ChickenChase_StartChase() end

function Osi.PROC_GOB_ChickenChase_ThrowBallIfCan() end

---@param a0 CHARACTER
function Osi.PROC_GOB_ChickenChase_UnregisterTriggersFor(a0) end

---@param a0 CHARACTER
function Osi.PROC_GOB_DrowCommander_ChangeDialog(a0) end

---@param a0 CHARACTER
function Osi.PROC_GOB_DrowCommander_ClearFromRaid(a0) end

function Osi.PROC_GOB_DrowCommander_ClearMissingStandbyRaiders() end

function Osi.PROC_GOB_DrowCommander_EveryoneLeaves() end

function Osi.PROC_GOB_DrowCommander_Init() end

function Osi.PROC_GOB_DrowCommander_LearnedGroveLocation_JournalHook() end

---@param a0 string
function Osi.PROC_GOB_DrowCommander_Move(a0) end

function Osi.PROC_GOB_DrowCommander_MoveOut() end

function Osi.PROC_GOB_DrowCommander_RaidersForceLeave() end

function Osi.PROC_GOB_DrowCommander_RaidersLeft_JournalHook() end

function Osi.PROC_GOB_DrowCommander_RemoveRaiderDialogs() end

---@param a0 string
function Osi.PROC_GOB_DrowCommander_StartResponseOnce(a0) end

---@param a0 string
function Osi.PROC_GOB_DrowCommander_TryRaiderAD(a0) end

---@param a0 string
function Osi.PROC_GOB_DrowCommander_TryTalkOrMove(a0) end

function Osi.PROC_GOB_DrunkGoblin_AllFriends_LeaveCombat() end

function Osi.PROC_GOB_DrunkGoblin_ClearPreventPermaDefeatedAfterKnockOut() end

function Osi.PROC_GOB_DrunkGoblin_DrunkAndFriends_ClearBlockRegenAfterCombat() end

function Osi.PROC_GOB_DrunkGoblin_DrunkAndFriends_RemoveIgnoreAssault() end

function Osi.PROC_GOB_DrunkGoblin_DrunkAndFriends_SetBlockRegenAfterCombat() end

function Osi.PROC_GOB_DrunkGoblin_DrunkAndFriends_SetIgnoreAssault() end

---@param a0 integer
function Osi.PROC_GOB_DrunkGoblin_DrunkAndFriends_SetImmortal(a0) end

function Osi.PROC_GOB_DrunkGoblin_FestivitiesGoblins_BlockCowering() end

function Osi.PROC_GOB_DrunkGoblin_FestivitiesGoblins_RestoreCowering() end

function Osi.PROC_GOB_DrunkGoblin_FestivitiesGoblins_SaveCoweringState() end

---@param a0 CHARACTER
function Osi.PROC_GOB_DrunkGoblin_FriendMoveAway(a0) end

---@param a0 CHARACTER
function Osi.PROC_GOB_DrunkGoblin_Friend_LeaveCombat(a0) end

function Osi.PROC_GOB_DrunkGoblin_Friends_RestoreVariablesAfterCombat() end

---@param a0 GUIDSTRING
function Osi.PROC_GOB_DrunkGoblin_InterruptScene(a0) end

function Osi.PROC_GOB_DrunkGoblin_MoveToSecludedPlace() end

function Osi.PROC_GOB_DrunkGoblin_MoveToSecludedPlaceWithDelay() end

function Osi.PROC_GOB_DrunkGoblin_RemoveHarmfulStatuses() end

---@param a0 GUIDSTRING
function Osi.PROC_GOB_DrunkGoblin_RemoveHarmfulStatusesFromPlayers(a0) end

function Osi.PROC_GOB_DrunkGoblin_RestoreFaction() end

function Osi.PROC_GOB_DrunkGoblin_RestoreHitPointsToMinimum() end

---@param a0 CHARACTER
function Osi.PROC_GOB_DrunkGoblin_RestoreHitPointsToMinimum(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_GOB_DrunkGoblin_SelectAvailableForDialogFriends(a0) end

function Osi.PROC_GOB_DrunkGoblin_SetFactionForFistFight() end

function Osi.PROC_GOB_DrunkGoblin_SetPreventPermaDefeatedAfterKnockOut() end

function Osi.PROC_GOB_DrunkGoblin_Surrender() end

---@param a0 GUIDSTRING
---@param a1 GUIDSTRING
---@param a2 integer
function Osi.PROC_GOB_FestivSleepers_AttackBy(a0, a1, a2) end

---@param a0 CHARACTER
function Osi.PROC_GOB_FestivSleepers_CheckBooze(a0) end

function Osi.PROC_GOB_FestivSleepers_CompleteGoal() end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_GOB_FestivSleepers_FindNoiseMaker(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_GOB_FestivSleepers_GoBackToSleep(a0) end

---@param a0 CHARACTER
---@param a1 number
---@param a2 number
---@param a3 number
---@param a4 number
function Osi.PROC_GOB_FestivSleepers_NoiseEvent(a0, a1, a2, a3, a4) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_GOB_FestivSleepers_StartFight(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_GOB_FestivSleepers_WarnOrFight(a0, a1) end

function Osi.PROC_GOB_Festivities_CompleteGoal() end

---@param a0 string
---@param a1 CHARACTER
function Osi.PROC_GOB_Festivities_KidsSurrender(a0, a1) end

function Osi.PROC_GOB_Festivities_RemoveKids() end

function Osi.PROC_GOB_Festivities_RemoveKids_Internal() end

---@param a0 CHARACTER
---@param a1 string
---@param a2 TRIGGER
function Osi.PROC_GOB_Festivities_TeleportNPCToFestivities(a0, a1, a2) end

---@param a0 CHARACTER
function Osi.PROC_GOB_Festivities_TeleportNpcToCamp(a0) end

---@param a0 CHARACTER
function Osi.PROC_GOB_Festivities_TryTeleportNpcToCampIfPermitted(a0) end

function Osi.PROC_GOB_General_UnregisterHostilityVBTriggers() end

function Osi.PROC_GOB_GoblinHeretic_CheckPlayersInArea() end

function Osi.PROC_GOB_GoblinHeretic_ExplodeTrap() end

function Osi.PROC_GOB_GoblinHeretic_Explosions() end

function Osi.PROC_GOB_GoblinHeretic_Freed() end

function Osi.PROC_GOB_GoblinHeretic_StartSavedDialog() end

function Osi.PROC_GOB_GoblinHuntAftermath_Pacified() end

---@param a0 CHARACTER
function Osi.PROC_GOB_GoblinKing_SetupMindflayer(a0) end

---@param a0 CHARACTER
function Osi.PROC_GOB_GoblinPriest_ApplyChainedStatus(a0) end

---@param a0 CHARACTER
function Osi.PROC_GOB_GoblinPriest_FadeIn(a0) end

---@param a0 CHARACTER
function Osi.PROC_GOB_GoblinPriest_FadeOut(a0) end

---@param a0 CHARACTER
function Osi.PROC_GOB_GoblinPriest_FreeCharacter(a0) end

function Osi.PROC_GOB_GoblinPriest_TeleportPriest() end

---@param a0 CHARACTER
function Osi.PROC_GOB_GoblinThrone_Checkpoint_CapturedGoblinTalk(a0) end

function Osi.PROC_GOB_GoblinToast_ApplyPoisonedStatusBehindScenes() end

---@param a0 DIALOGRESOURCE
function Osi.PROC_GOB_GoblinToast_CommentOnPoison(a0) end

function Osi.PROC_GOB_GoblinToast_CommentOnStrangers() end

---@param a0 integer
function Osi.PROC_GOB_GoblinToast_CommentOnStrangersWithDelay(a0) end

function Osi.PROC_GOB_GoblinToast_DrinkAndDieWithoutPlayer() end

function Osi.PROC_GOB_GoblinToast_EndSceneWithoutPlayer() end

function Osi.PROC_GOB_GoblinToast_EndToast() end

---@param a0 CHARACTER
function Osi.PROC_GOB_GoblinToast_LookAtSpeaker(a0) end

function Osi.PROC_GOB_GoblinToast_MakeRandomGoblinCommentOnStrangers() end

---@param a0 CHARACTER
function Osi.PROC_GOB_GoblinToast_PoisonDieInstantly(a0) end

---@param a0 CHARACTER
function Osi.PROC_GOB_GoblinToast_PoisonDieStatus(a0) end

---@param a0 CHARACTER
function Osi.PROC_GOB_GoblinToast_PoisonPlayer(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_GOB_GoblinToast_PoisonTub(a0) end

function Osi.PROC_GOB_GoblinToast_PretendCombinePoison() end

function Osi.PROC_GOB_GoblinToast_RegisterPoisoning() end

function Osi.PROC_GOB_GoblinToast_SendGoblinToDestroyTub() end

---@param a0 GUIDSTRING
function Osi.PROC_GOB_GoblinToast_SetPoisonerFlag(a0) end

function Osi.PROC_GOB_GoblinToast_StartSpotting() end

---@param a0 FLAG
function Osi.PROC_GOB_GoblinToast_StateManager_ChangeCurrentState(a0) end

function Osi.PROC_GOB_GoblinToast_SuccessAftermath() end

function Osi.PROC_GOB_GoblinsTurnHostileToVolo() end

function Osi.PROC_GOB_MakeFestivitiesAreaHostile() end

function Osi.PROC_GOB_MakeRegionHostile() end

function Osi.PROC_GOB_Misc_MakeFestivitiesDead() end

function Osi.PROC_GOB_Misc_MakeFestivitiesPoisoned() end

---@param a0 DIALOGRESOURCE
function Osi.PROC_GOB_Orpheus_ClearVoiceDialogData(a0) end

function Osi.PROC_GOB_Orpheus_KillShadowheart() end

function Osi.PROC_GOB_Orpheus_OnShadowheartAppeared() end

function Osi.PROC_GOB_Orpheus_OnShadowheartReady() end

---@param a0 DIALOGRESOURCE
function Osi.PROC_GOB_Orpheus_OnVoiceDialogEnded(a0) end

---@param a0 DIALOGRESOURCE
function Osi.PROC_GOB_Orpheus_OnVoiceDialogFailed(a0) end

function Osi.PROC_GOB_Orpheus_OnVoiceDialogStarted() end

---@param a0 CHARACTER
---@param a1 TRIGGER
function Osi.PROC_GOB_Orpheus_PrepShadowheartRecruitment(a0, a1) end

---@param a0 DIALOGRESOURCE
function Osi.PROC_GOB_Orpheus_RetryVoiceDialog(a0) end

function Osi.PROC_GOB_Orpheus_StartFainting() end

---@param a0 CHARACTER
function Osi.PROC_GOB_Orpheus_StartVoiceDialog(a0) end

---@param a0 CHARACTER
---@param a1 TRIGGER
function Osi.PROC_GOB_Orpheus_StartVoiceDialog(a0, a1) end

---@param a0 CHARACTER
---@param a1 TRIGGER
function Osi.PROC_GOB_Orpheus_StartVoiceDialog_WithShadowheartRecruitment(a0, a1) end

function Osi.PROC_GOB_Orpheus_UnregisterVoiceTriggers() end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_GOB_PainPriest_ADIfDifferentUsers(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_GOB_PainPriest_AfterPenance(a0, a1) end

function Osi.PROC_GOB_PainPriest_CancelPenance() end

---@param a0 CHARACTER
function Osi.PROC_GOB_PainPriest_CheckArmor(a0) end

---@param a0 GUIDSTRING
---@param a1 number
function Osi.PROC_GOB_PainPriest_CheckHP(a0, a1) end

---@param a0 CHARACTER
---@param a1 integer
---@param a2 integer
function Osi.PROC_GOB_PainPriest_CheckPenitentHP(a0, a1, a2) end

function Osi.PROC_GOB_PainPriest_CheckSetNoReward() end

---@param a0 integer
function Osi.PROC_GOB_PainPriest_CheckSpikeProximity(a0) end

---@param a0 CHARACTER
function Osi.PROC_GOB_PainPriest_ClearPenitentStatus(a0) end

---@param a0 CHARACTER
function Osi.PROC_GOB_PainPriest_ClearVB(a0) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_GOB_PainPriest_DuringPenance(a0, a1) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_GOB_PainPriest_HelpPenitent(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_GOB_PainPriest_OverrideWithPenanceDialog(a0) end

---@param a0 CHARACTER
function Osi.PROC_GOB_PainPriest_ReactionVoiceBark(a0) end

function Osi.PROC_GOB_PainPriest_ResetPenance() end

---@param a0 CHARACTER
function Osi.PROC_GOB_PainPriest_SetPenitent(a0) end

---@param a0 CHARACTER
---@param a1 integer
---@param a2 CHARACTER
function Osi.PROC_GOB_PainPriest_StartPenitentDialog(a0, a1, a2) end

---@param a0 CHARACTER
function Osi.PROC_GOB_PainPriest_StartVoiceBark(a0) end

function Osi.PROC_GOB_PlayMovingAwayAD() end

function Osi.PROC_GOB_PostAoD_GoblinCampHostile_JournalHook() end

function Osi.PROC_GOB_PriestOfTheConqueringGodAggro() end

function Osi.PROC_GOB_PriestessLeavesCell() end

---@param a0 CHARACTER
function Osi.PROC_GOB_PrisonEscape_TryStartEscapeHoleDialog(a0) end

function Osi.PROC_GOB_RemoveAllGoblins() end

function Osi.PROC_GOB_RoastingDwarf_ClearStolenFlag() end

function Osi.PROC_GOB_RoastingDwarf_SetStolenFlag() end

---@param a0 string
function Osi.PROC_GOB_SetFactionGroupHostileToPlayers(a0) end

---@param a0 integer
function Osi.PROC_GOB_SpiderNest_CageLever(a0) end

function Osi.PROC_GOB_SpiderNest_ClearReadinessCheck() end

function Osi.PROC_GOB_SpiderNest_FreedCapturedGoblinJournalEntry() end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_GOB_SpiderNest_PlayAD(a0, a1) end

function Osi.PROC_GOB_SpiderNest_Prepare() end

---@param a0 CHARACTER
function Osi.PROC_GOB_SpiderNest_ProcessVictimFall(a0) end

---@param a0 CHARACTER
function Osi.PROC_GOB_SpiderNest_ProcessVictimLeft(a0) end

function Osi.PROC_GOB_SpiderNest_RestoreAllFactions() end

---@param a0 CHARACTER
function Osi.PROC_GOB_SpiderNest_RestoreFactions(a0) end

function Osi.PROC_GOB_SpiderNest_TryFreeCapturedGoblin() end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_GOB_SpiderNest_TryStartSpiderDialog(a0, a1) end

function Osi.PROC_GOB_TalkedWithUncagedVolo() end

function Osi.PROC_GOB_TempleAccess_DebugSolve() end

---@param a0 string
---@param a1 GUIDSTRING
---@param a2 string
---@param a3 integer
function Osi.PROC_GOB_TempleAccess_DebugText(a0, a1, a2, a3) end

---@param a0 integer
function Osi.PROC_GOB_TempleAccess_DisksCanUse(a0) end

---@param a0 ITEM
function Osi.PROC_GOB_TempleAccess_FinishedRotation(a0) end

function Osi.PROC_GOB_TempleAccess_InitialEffects() end

function Osi.PROC_GOB_TempleAccess_OpenDoor() end

---@param a0 ITEM
function Osi.PROC_GOB_TempleAccess_Rotate(a0) end

function Osi.PROC_GOB_TempleAccess_SolvedPuzzleSound() end

---@param a0 ITEM
function Osi.PROC_GOB_TempleAccess_SwitchEffectsTo(a0) end

---@param a0 CHARACTER
function Osi.PROC_GOB_TorturedAdventurer_AD_FlagSetup(a0) end

---@param a0 CHARACTER
function Osi.PROC_GOB_TorturedAdventurer_CheckLockpicks(a0) end

function Osi.PROC_GOB_TorturedAdventurer_DashOff() end

function Osi.PROC_GOB_TorturedAdventurer_RemoveFromDialog() end

function Osi.PROC_GOB_TorturersSawAdventurer() end

function Osi.PROC_GOB_Torturers_AfterLongRest() end

function Osi.PROC_GOB_Torturers_AfterLongRest_Internal() end

function Osi.PROC_GOB_Torturers_CheckKilled() end

---@param a0 integer
function Osi.PROC_GOB_Torturers_MoveOut(a0) end

function Osi.PROC_GOB_Torturers_ReplaceDialogs() end

---@param a0 CHARACTER
function Osi.PROC_GOB_VoloBallad_CageUnlocked(a0) end

function Osi.PROC_GOB_VoloBallad_Escape() end

function Osi.PROC_GOB_VoloBallad_Escape_Internal() end

function Osi.PROC_GOB_VoloBallad_LeaveEvent() end

---@param a0 DIALOGRESOURCE
function Osi.PROC_GOB_VoloBallad_MoveVoloToCamp(a0) end

function Osi.PROC_GOB_VoloBallad_SetupOnSceneFlags() end

function Osi.PROC_GOB_VoloBallad_StartEscort() end

function Osi.PROC_GOB_VoloBallad_StartMovingToCages() end

---@param a0 GUIDSTRING
function Osi.PROC_GOB_WolfPens_AfterCombat_ClearCombatDB(a0) end

function Osi.PROC_GOB_WolfPens_AfterCombat_PrepareAfterCombatDialog() end

---@param a0 CHARACTER
function Osi.PROC_GOB_WolfPens_CheckPrepareForAfterCombatDialog(a0) end

---@param a0 CHARACTER
---@param a1 FACTION
function Osi.PROC_GOB_WolfPens_CheckRestoreReinforcementFaction(a0, a1) end

function Osi.PROC_GOB_WolfPens_ClearWolfPens() end

function Osi.PROC_GOB_WolfPens_DestroyDoors() end

---@param a0 GUIDSTRING
---@param a1 GUIDSTRING
function Osi.PROC_GOB_WolfPens_ForceCombat(a0, a1) end

function Osi.PROC_GOB_WolfPens_GiveBearDialogue() end

function Osi.PROC_GOB_WolfPens_GiveHumanDialogue() end

function Osi.PROC_GOB_WolfPens_HalsinForceBreakout() end

function Osi.PROC_GOB_WolfPens_HalsinForceBreakoutAndLeaving() end

function Osi.PROC_GOB_WolfPens_HalsinForceLeaving() end

---@param a0 CHARACTER
function Osi.PROC_GOB_WolfPens_Halsin_RemoveFromParty(a0) end

---@param a0 CHARACTER
function Osi.PROC_GOB_WolfPens_Halsin_StartDialogAfterStoppingPlayer(a0) end

---@param a0 CHARACTER
function Osi.PROC_GOB_WolfPens_Imprison(a0) end

function Osi.PROC_GOB_WolfPens_Init() end

function Osi.PROC_GOB_WolfPens_PersuasionResult() end

---@param a0 GUIDSTRING
function Osi.PROC_GOB_WolfPens_PrepareForAfterCombatDialog(a0) end

---@param a0 CHARACTER
function Osi.PROC_GOB_WolfPens_RemoveHalsinFromPartyAndStopPlayer(a0) end

---@param a0 CHARACTER
function Osi.PROC_GOB_WolfPens_RestorePrisonerParams(a0) end

---@param a0 GUIDSTRING
---@param a1 GUIDSTRING
function Osi.PROC_GOB_WolfPens_SceneInterrupted(a0, a1) end

---@param a0 GUIDSTRING
function Osi.PROC_GOB_WolfPens_SceneInterrupted_ForceStopDialog(a0) end

function Osi.PROC_GOB_WolfPens_SceneInterrupted_StartFight() end

function Osi.PROC_GOB_WolfPens_SendReinforcement() end

function Osi.PROC_GOB_WolfPens_StartFight() end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_GOB_WolfPens_StartGroupDialogWithPrisoner(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_GOB_WolfPens_StartHalsinDialog(a0) end

function Osi.PROC_GOB_WolfPens_StopMainSpotting() end

function Osi.PROC_GOB_WolfPens_TeleportHalsin() end

function Osi.PROC_GOB_WolfPens_TryStartAfterReleaseDialog() end

function Osi.PROC_GOB_WolfPens_UpdatePrisonerToPlayerRelation() end

function Osi.PROC_GOB_WolfPens_UpdateWolfPensToPlayerRelation() end

function Osi.PROC_GOB_WolfPens_UpdateWolfPensToPrisonerRelation() end

---@param a0 CHARACTER
function Osi.PROC_GUS303917_TryClearDialogFlagFor(a0) end

---@param a0 CHARACTER
function Osi.PROC_GUS306804_RestoreAnubisConfig(a0) end

function Osi.PROC_GUS306804_RestoreAnubisConfigs() end

function Osi.PROC_GUS314216_DoFix() end

function Osi.PROC_GUS315508_MoveWyllToCamp() end

function Osi.PROC_GUS31884_ClearOffOutcome() end

function Osi.PROC_GUS31884_OverrideOutcomeDialogue() end

function Osi.PROC_GUS31884_StartOutcomeDialogue() end

---@param a0 ITEM
---@param a1 TRIGGER
function Osi.PROC_GUS_312395_CheckSkullUpdate(a0, a1) end

---@param a0 ITEM
---@param a1 ITEM
function Osi.PROC_GUS_SavegamePatches_GUS_295076_AddGemMapMarker(a0, a1) end

---@param a0 string
function Osi.PROC_GameEndWithMovie(a0) end

function Osi.PROC_GameOver_CheckGameOver() end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_GenTradeItems(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_GenerateTradeTreasure(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_GenericsClearBusyDialog(a0) end

---@param a0 CHARACTER
function Osi.PROC_GenericsSetBusyDialog(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_GetClosestAvailableCharacterTo_ClearFacts(a0) end

---@param a0 integer
---@param a1 integer
function Osi.PROC_GetInvolveNPC(a0, a1) end

---@param a0 integer
---@param a1 integer
function Osi.PROC_GetInvolvePlayer(a0, a1) end

---@param a0 integer
function Osi.PROC_GetInvolvedNPCs(a0) end

---@param a0 integer
function Osi.PROC_GetInvolvedPlayers(a0) end

---@param a0 string
---@param a1 integer
---@param a2 string
function Osi.PROC_GetRandom(a0, a1, a2) end

---@param a0 string
function Osi.PROC_GithChokepoint_Cancel(a0) end

---@param a0 number
function Osi.PROC_GithChokepoint_DragonFlyOver(a0) end

---@param a0 FLAG
function Osi.PROC_GlobalClearFlagAndCache(a0) end

---@param a0 FLAG
function Osi.PROC_GlobalFlagReactionAfterDialog(a0) end

---@param a0 FLAG
---@param a1 DIALOGRESOURCE
function Osi.PROC_GlobalFlagReactionAfterDialog(a0, a1) end

---@param a0 FLAG
---@param a1 DIALOGRESOURCE
---@param a2 integer
function Osi.PROC_GlobalFlagReactionAfterDialog(a0, a1, a2) end

---@param a0 FLAG
function Osi.PROC_GlobalSetFlagAndCache(a0) end

---@param a0 CHARACTER
function Osi.PROC_GoblinAmbush_StartCombat(a0) end

---@param a0 VOICEBARKRESOURCE
function Osi.PROC_GroupDiscussion_Cancel(a0) end

---@param a0 CHARACTER
function Osi.PROC_GroupDiscussion_CancelForPlayer(a0) end

---@param a0 VOICEBARKRESOURCE
function Osi.PROC_GroupDiscussion_CheckValidity(a0) end

---@param a0 CHARACTER
---@param a1 VOICEBARKRESOURCE
function Osi.PROC_GroupDiscussion_DelayedStart(a0, a1) end

---@param a0 CHARACTER
---@param a1 VOICEBARKRESOURCE
function Osi.PROC_GroupDiscussion_InstantStart(a0, a1) end

---@param a0 CHARACTER
---@param a1 VOICEBARKRESOURCE
function Osi.PROC_GroupDiscussion_RestorePlayerAfterCancel(a0, a1) end

---@param a0 CHARACTER
---@param a1 VOICEBARKRESOURCE
function Osi.PROC_GroupDiscussion_StartTracking(a0, a1) end

---@param a0 integer
---@param a1 CHARACTER
---@param a2 integer
function Osi.PROC_Guards_ReinforcementFinished(a0, a1, a2) end

function Osi.PROC_GurCamp_Init() end

---@param a0 CHARACTER
---@param a1 number
function Osi.PROC_HAG_ApplyDoublesStatus(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_HAG_Brother_CleanUp(a0) end

function Osi.PROC_HAG_BugFix_GUS_302278_GUS_305809() end

function Osi.PROC_HAG_CMB_ExitMayrinaIllusionState() end

---@param a0 CHARACTER
---@param a1 ITEM
function Osi.PROC_HAG_DoHagMaskDialog(a0, a1) end

---@param a0 CHARACTER
---@param a1 ITEM
---@param a2 DIALOGRESOURCE
---@param a3 integer
function Osi.PROC_HAG_DoHagMaskDialog(a0, a1, a2, a3) end

---@param a0 CHARACTER
function Osi.PROC_HAG_ForestIllusion_AnimalTransform(a0) end

function Osi.PROC_HAG_ForestIllusion_ClearFireplaceIllusion() end

function Osi.PROC_HAG_ForestIllusion_DoSwap() end

---@param a0 integer
---@param a1 CHARACTER
function Osi.PROC_HAG_ForestIllusion_StartAddSpeaker(a0, a1) end

function Osi.PROC_HAG_ForestIllusion_Swap() end

function Osi.PROC_HAG_GurHunter_RemoveBackpack() end

function Osi.PROC_HAG_HagAmbush_BrothersState_WaitingForOrders() end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_HAG_HagAmbush_HagDisappear(a0, a1) end

---@param a0 GUIDSTRING
---@param a1 GUIDSTRING
function Osi.PROC_HAG_HagAmbush_SelectDialogForBrother(a0, a1) end

function Osi.PROC_HAG_HagLair_Combat_Init() end

function Osi.PROC_HAG_HagLair_DoublesSpawnPoints_CleanUp() end

function Osi.PROC_HAG_HagLair_Doubles_CountRemaining() end

---@param a0 GUIDSTRING
function Osi.PROC_HAG_HagLair_Doubles_Removed(a0) end

function Osi.PROC_HAG_HagLair_MayrinaEventAccessable() end

function Osi.PROC_HAG_HagLair_SurrogateMotherLeaves() end

---@param a0 CHARACTER
---@param a1 string
---@param a2 ITEM
function Osi.PROC_HAG_HagMask_SwitchStatusTo(a0, a1, a2) end

function Osi.PROC_HAG_HagSpawn_HusbandResurrectedWithWand() end

function Osi.PROC_HAG_HagSpawn_JakeStartFollowMayrina() end

function Osi.PROC_HAG_HagSpawn_ResurrectionRestore() end

---@param a0 GUIDSTRING
function Osi.PROC_HAG_HagUnavailableDialog(a0) end

function Osi.PROC_HAG_Hag_SetUpForDialogSpotting() end

function Osi.PROC_HAG_Hag_StartSceneJournalUpdate() end

function Osi.PROC_HAG_Hagspawn_InitTeaScene() end

function Osi.PROC_HAG_Hagspawn_RestoreMayrinaDialog() end

function Osi.PROC_HAG_Hagspawn_ResurrectJake() end

---@param a0 string
function Osi.PROC_HAG_Hagspawn_TrackMayrinaAndHusbandDefeat(a0) end

---@param a0 CHARACTER
function Osi.PROC_HAG_MaskedServant_ResistHagsWill(a0) end

function Osi.PROC_HAG_MaskedVictimsNeutral() end

function Osi.PROC_HAG_MurderousFrog_RevealBag() end

---@param a0 CHARACTER
---@param a1 ITEM
---@param a2 ITEM
function Osi.PROC_HAG_PutOnMask(a0, a1, a2) end

---@param a0 GUIDSTRING
function Osi.PROC_HAG_RegisterCageKiller(a0) end

---@param a0 CHARACTER
function Osi.PROC_HAG_SetDoublesAttitudeToPlayers(a0) end

function Osi.PROC_HAG_SetupSurrogateMotherCage() end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_HAG_SpawnDoubles(a0, a1) end

---@param a0 CHARACTER
---@param a1 number
---@param a2 number
---@param a3 number
function Osi.PROC_HAG_SpawnDoubles_CasterTeleport(a0, a1, a2, a3) end

---@param a0 CHARACTER
function Osi.PROC_HAG_SpawnDoubles_GetAvailableSpawnPoints(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_HAG_SpawnDoubles_MayrinaAndHagPositionChange(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_HAG_SpawnDoubles_MayrinaIllusion(a0) end

---@param a0 CHARACTER
---@param a1 number
---@param a2 number
---@param a3 number
function Osi.PROC_HAG_SpawnDoubles_PlayVFX(a0, a1, a2, a3) end

---@param a0 CHARACTER
function Osi.PROC_HAG_SummonCutscene_AddToSlot(a0) end

---@param a0 CHARACTER
function Osi.PROC_HAG_Surrender_TeleportMayrina(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_HAG_SurrogateMotherThank(a0) end

function Osi.PROC_HAG_TeaSceneOver() end

---@param a0 CHARACTER
---@param a1 ITEM
function Osi.PROC_HAG_TeleportHagMaskADHelper(a0, a1) end

function Osi.PROC_HAG_TryMaskedVictimsNeutral() end

function Osi.PROC_HAV_DEBUG_SavingPrisoners_EveryoneEscapes() end

---@param a0 string
function Osi.PROC_HAV_DebugResetMolStateTo(a0) end

function Osi.PROC_HAV_EnteringHaven_Admitted() end

---@param a0 GUIDSTRING
function Osi.PROC_HAV_EnteringHaven_NonSpeakingEnter(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_HAV_EnteringHaven_TriggerDialog(a0, a1) end

function Osi.PROC_HAV_FiresOut() end

---@param a0 CHARACTER
function Osi.PROC_HAV_FlamingFistCorpse_Remove(a0) end

---@param a0 CHARACTER
function Osi.PROC_HAV_FlamingFistCorpse_TooHeavy(a0) end

function Osi.PROC_HAV_FlamingFistLeave() end

function Osi.PROC_HAV_FlamingFists_Init() end

function Osi.PROC_HAV_FlamingSpy_CaptureFailedToStart() end

---@param a0 GUIDSTRING
function Osi.PROC_HAV_FlamingSpy_NextTransformDialogWatcher(a0) end

function Osi.PROC_HAV_FlamingSpy_PutInGrave() end

function Osi.PROC_HAV_ForgingOfTheHeart_Init() end

function Osi.PROC_HAV_HavenOutcasts_FountainGuards_ReplaceDialogs() end

function Osi.PROC_HAV_Haven_SetupOtherHarpers() end

function Osi.PROC_HAV_Isobel_FinishRitual() end

function Osi.PROC_HAV_Isobel_MoveToEntrance() end

---@param a0 TRIGGER
function Osi.PROC_HAV_Isobel_StartFollowupSpotting(a0) end

function Osi.PROC_HAV_Isobel_StartRitual() end

---@param a0 TRIGGER
function Osi.PROC_HAV_Isobel_StopFollowupSpotting(a0) end

function Osi.PROC_HAV_Jaheira_AttentionAD_Cancel() end

---@param a0 integer
function Osi.PROC_HAV_LiftingTheCurse_CheckRound(a0) end

function Osi.PROC_HAV_LiftingTheCurse_DeathVB() end

---@param a0 integer
function Osi.PROC_HAV_LiftingTheCurse_DeclareRound(a0) end

function Osi.PROC_HAV_LiftingTheCurse_DestroyPortal() end

---@param a0 CHARACTER
function Osi.PROC_HAV_LiftingTheCurse_EmergeDialog(a0) end

---@param a0 integer
function Osi.PROC_HAV_LiftingTheCurse_EndTurn(a0) end

function Osi.PROC_HAV_LiftingTheCurse_RemoveShadows() end

function Osi.PROC_HAV_LiftingTheCurse_ShadowsInit() end

---@param a0 integer
function Osi.PROC_HAV_LiftingTheCurse_SpawnWave(a0) end

function Osi.PROC_HAV_MolsDeal_Init() end

function Osi.PROC_HAV_MolsDeal_MonitorAbort() end

function Osi.PROC_HAV_MolsDeal_MonitorLeaves() end

function Osi.PROC_HAV_MolsDeal_MonitorPoof() end

function Osi.PROC_HAV_MolsDeal_MonitorStagedOff() end

function Osi.PROC_HAV_MolsDeal_OnMonitorPoofed() end

function Osi.PROC_HAV_Prison_SwitchToAltCell() end

function Osi.PROC_HAV_ProdigyLament_RolanLeaves() end

function Osi.PROC_HAV_ProtectionFX_Off() end

function Osi.PROC_HAV_ProtectionFX_On() end

---@param a0 CHARACTER
function Osi.PROC_HAV_SavingPrisoners_ArrivedAtHavenPosition(a0) end

---@param a0 CHARACTER
function Osi.PROC_HAV_SavingPrisoners_CharacterGoesToHavenPosition(a0) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_HAV_SavingPrisoners_CharacterReturns(a0, a1) end

function Osi.PROC_HAV_SavingPrisoners_CheckInUpdate() end

---@param a0 DIALOGRESOURCE
function Osi.PROC_HAV_SavingPrisoners_ClearReward(a0) end

function Osi.PROC_HAV_SavingPrisoners_FoundPrisonersUpdate() end

function Osi.PROC_HAV_SavingPrisoners_Init() end

function Osi.PROC_HAV_SavingPrisoners_InspectionOver() end

---@param a0 string
---@param a1 integer
function Osi.PROC_HAV_SavingPrisoners_IntroJournalUpdate(a0, a1) end

---@param a0 string
---@param a1 string
function Osi.PROC_HAV_SavingPrisoners_JailbreakCompleteUpdate(a0, a1) end

function Osi.PROC_HAV_SavingPrisoners_JailbreakSkipForceClose() end

---@param a0 string
function Osi.PROC_HAV_SavingPrisoners_PrisonerPermaDefeated(a0) end

---@param a0 string
function Osi.PROC_HAV_SavingPrisoners_ProcessIntroUpdate(a0) end

function Osi.PROC_HAV_SavingPrisoners_ProdigySubCloseUpdate() end

function Osi.PROC_HAV_SavingPrisoners_RescueSuccessUpdate() end

function Osi.PROC_HAV_SavingPrisoners_ReturnPendingEscapees() end

---@param a0 string
---@param a1 string
function Osi.PROC_HAV_SavingPrisoners_ReturnUpdate(a0, a1) end

---@param a0 string
function Osi.PROC_HAV_SavingPrisoners_RewardUpdate(a0) end

function Osi.PROC_HAV_SavingPrisoners_StartArrivalDialog() end

function Osi.PROC_HAV_SetJaheiraAndHavenHostile() end

function Osi.PROC_HAV_SetupFactionsSpyAlly() end

function Osi.PROC_HAV_Siege_AfterIntro() end

function Osi.PROC_HAV_Siege_CheckTieflings() end

---@param a0 CHARACTER
function Osi.PROC_HAV_Siege_CustomNPCFate(a0) end

---@param a0 CHARACTER
function Osi.PROC_HAV_Siege_EnterCombatVB(a0) end

function Osi.PROC_HAV_Siege_FastForward() end

function Osi.PROC_HAV_Siege_FillDBsFromOtherGoals() end

function Osi.PROC_HAV_Siege_Intro_Started() end

function Osi.PROC_HAV_Siege_OutroDialogFailed() end

function Osi.PROC_HAV_Siege_PlayOutro() end

function Osi.PROC_HAV_Siege_PrepareForSiege() end

---@param a0 CHARACTER
function Osi.PROC_HAV_Siege_PrepareIterateCharacters(a0) end

---@param a0 CHARACTER
function Osi.PROC_HAV_Siege_PrepareNPCs_TPToYard(a0) end

---@param a0 CHARACTER
function Osi.PROC_HAV_Siege_PrepareTeleportIfHasSpot(a0) end

---@param a0 CHARACTER
function Osi.PROC_HAV_Siege_SetSwarmGroup(a0) end

---@param a0 integer
function Osi.PROC_HAV_Siege_SpawnWave(a0) end

---@param a0 CHARACTER
function Osi.PROC_HAV_Siege_StartSiegeCinematic(a0) end

function Osi.PROC_HAV_Siege_TeleportCinematicActors() end

function Osi.PROC_HAV_Siege_TentacleAppearedPAD() end

function Osi.PROC_HAV_TakingIsobel_AfterAbductionSetup() end

function Osi.PROC_HAV_TakingIsobel_CaptureCombatStarted() end

function Osi.PROC_HAV_TakingIsobel_CaptureSetup() end

---@param a0 integer
function Osi.PROC_HAV_TakingIsobel_CaptureSetup(a0) end

function Osi.PROC_HAV_TakingIsobel_CaptureStarting() end

function Osi.PROC_HAV_TakingIsobel_CaptureTeleport() end

function Osi.PROC_HAV_TakingIsobel_CheckForMarcusInRoom() end

function Osi.PROC_HAV_TakingIsobel_CheckInnAttackEnd() end

function Osi.PROC_HAV_TakingIsobel_FollowUpCleanup() end

function Osi.PROC_HAV_TakingIsobel_Followup_Betrayed_Setup() end

---@param a0 integer
function Osi.PROC_HAV_TakingIsobel_Followup_Betrayed_Setup(a0) end

function Osi.PROC_HAV_TakingIsobel_Followup_Saved_Setup() end

---@param a0 integer
function Osi.PROC_HAV_TakingIsobel_Followup_Saved_Setup(a0) end

function Osi.PROC_HAV_TakingIsobel_GhoulCombatSurprise() end

---@param a0 integer
function Osi.PROC_HAV_TakingIsobel_InitSpyCombat(a0) end

function Osi.PROC_HAV_TakingIsobel_InnAttackEnded() end

function Osi.PROC_HAV_TakingIsobel_KidnapMol() end

function Osi.PROC_HAV_TakingIsobel_PrepareCallToArm() end

function Osi.PROC_HAV_TakingIsobel_ReactToSaved() end

function Osi.PROC_HAV_TakingIsobel_ReactedToSaved() end

function Osi.PROC_HAV_TakingIsobel_SetGhoulsAlly() end

---@param a0 integer
function Osi.PROC_HAV_TakingIsobel_SetSpyOnStage(a0) end

function Osi.PROC_HAV_TakingIsobel_SetupFollowup() end

---@param a0 integer
function Osi.PROC_HAV_TakingIsobel_SpyCaptureStarted(a0) end

function Osi.PROC_HAV_TakingIsobel_SpyTransform() end

function Osi.PROC_HAV_TakingIsobel_TrySendingGuardToIsobel() end

---@param a0 integer
function Osi.PROC_HAV_TakingIsobel_TryStartCapture(a0) end

function Osi.PROC_HAV_TakingIsobel_TurnIsobelHostile() end

function Osi.PROC_HAV_TieflingSurvivors_DebugResurrect() end

---@param a0 CHARACTER
function Osi.PROC_HAV_TieflingSurvivors_DidNotSurvive(a0) end

function Osi.PROC_HAV_TieflingSurvivors_HandleRemainingTieflings() end

function Osi.PROC_HAV_TieflingSurvivors_Init() end

function Osi.PROC_HAV_TieflingSurvivors_MoveItemsFromLockboxToTieflings() end

function Osi.PROC_HAV_TieflingSurvivors_NotSavedSetup() end

---@param a0 string
function Osi.PROC_HAV_TieflingSurvivors_OnSetupDone(a0) end

function Osi.PROC_HAV_TieflingSurvivors_PreInit() end

function Osi.PROC_HAV_TieflingSurvivors_SavedAndRolanSetup() end

function Osi.PROC_HAV_TieflingSurvivors_SavedNoRolanSetup() end

---@param a0 string
function Osi.PROC_HAV_TieflingSurvivors_Setup(a0) end

function Osi.PROC_HAV_Torches_Off() end

function Osi.PROC_HAV_WrootRequest_BarcusToHaven() end

function Osi.PROC_Hag_BrothersDieAfterLongRest() end

---@param a0 CHARACTER
function Osi.PROC_Hagmasks_ClearNeutral(a0) end

---@param a0 CHARACTER
function Osi.PROC_Hagmasks_Neutral(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 CHARACTER
---@param a3 CHARACTER
---@param a4 CHARACTER
---@param a5 DIALOGRESOURCE
---@param a6 integer
---@param a7 integer
function Osi.PROC_HandleCrimeDialog(a0, a1, a2, a3, a4, a5, a6, a7) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_HandleFailedInterrogation(a0, a1) end

---@param a0 string
function Osi.PROC_Hardcore_Disable(a0) end

---@param a0 string
function Osi.PROC_Hardcore_Enable(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_Hardcore_LeaveGroupState(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_Hardcore_MimicGroupState(a0, a1) end

function Osi.PROC_Harvard_CheckRequirement() end

---@param a0 CHARACTER
function Osi.PROC_Harvard_Spawn(a0) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
function Osi.PROC_Helper_SafeTeleportTo(a0, a1) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
---@param a2 string
---@param a3 integer
function Osi.PROC_Helper_SafeTeleportTo(a0, a1, a2, a3) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
---@param a2 string
---@param a3 integer
---@param a4 integer
---@param a5 integer
function Osi.PROC_Helper_SafeTeleportTo(a0, a1, a2, a3, a4, a5) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 GUIDSTRING
function Osi.PROC_HiddenPerceptionCheckSucceeded(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_HideMarker(a0, a1) end

---@param a0 string
function Osi.PROC_HidePartyMarker(a0) end

---@param a0 string
function Osi.PROC_Hide_Activity(a0) end

---@param a0 string
function Osi.PROC_Hide_All_Activities(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_Hirelings_AddToParty(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_Hirelings_AssignAnubis(a0) end

---@param a0 CHARACTER
function Osi.PROC_Hirelings_AssignFaction(a0) end

---@param a0 CHARACTER
function Osi.PROC_Hirelings_CheckDecreaseInCampCounter(a0) end

---@param a0 CHARACTER
function Osi.PROC_Hirelings_ChooseCampPos(a0) end

---@param a0 CHARACTER
function Osi.PROC_Hirelings_CleanAfterDismiss(a0) end

---@param a0 FACTION
function Osi.PROC_Hirelings_CleanFactionRelations(a0) end

---@param a0 CHARACTER
function Osi.PROC_Hirelings_ClearEquipmentDB(a0) end

---@param a0 CHARACTER
function Osi.PROC_Hirelings_ClearInventory(a0) end

---@param a0 CHARACTER
function Osi.PROC_Hirelings_Dismiss(a0) end

---@param a0 CHARACTER
function Osi.PROC_Hirelings_HACK_ChangeVisuals(a0) end

function Osi.PROC_Hirelings_HACK_ChooseRandom() end

---@param a0 CHARACTER
function Osi.PROC_Hirelings_HACK_Hire(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_Hirelings_Hire(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_Hirelings_MoveInventory(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_Hirelings_Refund(a0) end

---@param a0 CHARACTER
function Osi.PROC_Hirelings_RestoreEquipment(a0) end

---@param a0 CHARACTER
function Osi.PROC_Hirelings_SaveEquipment(a0) end

---@param a0 CHARACTER
function Osi.PROC_Hirelings_SendToCamp(a0) end

---@param a0 CHARACTER
function Osi.PROC_Hirelings_SendToCampForStorage(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_Hirelings_TakeFromCamp(a0, a1) end

---@param a0 string
function Osi.PROC_HonorMode_Disable(a0) end

---@param a0 string
function Osi.PROC_HonorMode_Enable(a0) end

---@param a0 CHARACTER
---@param a1 FACTION
function Osi.PROC_HostileToPlayerGroupCancelFlag_TryCancel(a0, a1) end

---@param a0 CHARACTER
---@param a1 FACTION
---@param a2 integer
function Osi.PROC_HostileToPlayerGroupCancelFlag_TryCancel(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 ITEM
function Osi.PROC_HouseOfHope_CommentOnPortalDestination(a0, a1) end

function Osi.PROC_HouseOfHope_RaphaelArrived() end

function Osi.PROC_HouseOfHope_RestorationDevice_Activate() end

function Osi.PROC_HouseOfHope_SetRaphaelArrival() end

---@param a0 DIALOGRESOURCE
function Osi.PROC_INT_AssignDialogToIDs(a0) end

function Osi.PROC_INT_EmperorRevealed_CleanUp() end

---@param a0 CHARACTER
function Osi.PROC_INT_EmperorRevealed_EmperorKilled(a0) end

function Osi.PROC_INT_EmperorRevealed_PortalOn() end

function Osi.PROC_INT_EmperorRevealed_SpawnGish() end

---@param a0 CHARACTER
function Osi.PROC_INT_EmperorRevealed_StartCountDownStatus(a0) end

function Osi.PROC_INT_EmperorRevealed_StartGithCombat() end

function Osi.PROC_INT_EmperorRevealed_TransitionPlayersToAstralPlane() end

function Osi.PROC_INT_OrpheusSubduedInGameplay() end

function Osi.PROC_INT_RespawnOffStageCampCharacters() end

---@param a0 CHARACTER
function Osi.PROC_INT_StartPleaDialog(a0) end

---@param a0 CHARACTER
function Osi.PROC_IRN_AddFollower(a0) end

function Osi.PROC_IRN_CheckIfMizoraInterferes() end

function Osi.PROC_IRN_CheckNewTurn() end

---@param a0 integer
function Osi.PROC_IRN_CountdownTick(a0) end

function Osi.PROC_IRN_EnteredFinalCountdownStage() end

function Osi.PROC_IRN_IronThrone_Omeluum_SitOnTortureBed() end

function Osi.PROC_IRN_IronThrone_PlayAlarmSFX() end

---@param a0 integer
function Osi.PROC_IRN_IronThrone_Reinforcements_SpawnReinforcements(a0) end

function Osi.PROC_IRN_IronThrone_SetTotalTurns() end

function Osi.PROC_IRN_IronThrone_StartGlobalCountdown() end

function Osi.PROC_IRN_IronThrone_WyllTurnedHostile() end

function Osi.PROC_IRN_KillRavengard() end

function Osi.PROC_IRN_KillUnescapedCharacters() end

function Osi.PROC_IRN_MarkUnescapedCharacters() end

function Osi.PROC_IRN_MarkUnescapedCharacters_Finished() end

function Osi.PROC_IRN_MarkUnescapedCharacters_RecheckTagFinished() end

function Osi.PROC_IRN_MizoraCastsBuffsRavengard() end

function Osi.PROC_IRN_MizoraCombat() end

function Osi.PROC_IRN_MizoraHelps() end

function Osi.PROC_IRN_MizoraInterferes() end

function Osi.PROC_IRN_MizoraLeaves() end

function Osi.PROC_IRN_MizoraRescuesRavengard() end

function Osi.PROC_IRN_MizoraResurrectsRavengard() end

function Osi.PROC_IRN_MizoraSummons() end

function Osi.PROC_IRN_MizoraSummons_Backup() end

function Osi.PROC_IRN_MizoraSummons_Main() end

---@param a0 CHARACTER
function Osi.PROC_IRN_MizoraSummons_SpiderDisappear(a0) end

---@param a0 integer
function Osi.PROC_IRN_Mizora_EmergencyRescue(a0) end

---@param a0 CHARACTER
---@param a1 TRIGGER
function Osi.PROC_IRN_Mizora_SummonAtPos(a0, a1) end

---@param a0 CHARACTER
---@param a1 number
---@param a2 number
---@param a3 number
function Osi.PROC_IRN_Mizora_SummonAtPos(a0, a1, a2, a3) end

function Osi.PROC_IRN_Omeluum_SetupBag() end

---@param a0 DIALOGRESOURCE
function Osi.PROC_IRN_PlayOnDeathAD(a0) end

---@param a0 CHARACTER
function Osi.PROC_IRN_PlayersSeeRavengardAD(a0) end

---@param a0 integer
function Osi.PROC_IRN_PrisonerGroupFreed_Complete(a0) end

---@param a0 integer
function Osi.PROC_IRN_PrisonerGroupFreed_Instant(a0) end

---@param a0 integer
function Osi.PROC_IRN_PrisonerGroupFreed_Started(a0) end

function Osi.PROC_IRN_Ravengard_DestroyPreviousEquipment() end

function Osi.PROC_IRN_ReturnToCTY() end

---@param a0 DIALOGRESOURCE
function Osi.PROC_IRN_SetOnDeathSpeakers(a0) end

function Osi.PROC_IRN_SetupCharacters() end

function Osi.PROC_IRN_SetupMizora() end

function Osi.PROC_IRN_SetupOmeluum() end

function Osi.PROC_IRN_SetupRavengard() end

---@param a0 CHARACTER
function Osi.PROC_IRN_StartDialogs(a0) end

function Osi.PROC_IRN_TeleportPlayersOut() end

---@param a0 integer
function Osi.PROC_IRN_TurnStarted(a0) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 integer
---@param a3 string
function Osi.PROC_IfAliveDisappearOutOfSight(a0, a1, a2, a3) end

function Osi.PROC_Inclusion_AddRandomSpeaker_Recursive() end

function Osi.PROC_Inclusion_AddRandomSpeaker_Recursive_PlayersOnly() end

---@param a0 GUIDSTRING
function Osi.PROC_Inclusion_RemoveOrigin(a0) end

---@param a0 CHARACTER
function Osi.PROC_IncompleteMasterwork_UpdateJournalReward(a0) end

---@param a0 integer
function Osi.PROC_IncreaseCampQuality(a0) end

---@param a0 string
function Osi.PROC_IncreaseCounter(a0) end

---@param a0 string
---@param a1 integer
function Osi.PROC_IncreaseCounter(a0, a1) end

function Osi.PROC_IncreaseInternalCount() end

---@param a0 string
function Osi.PROC_Init_ClearItemOwners(a0) end

---@param a0 string
function Osi.PROC_Init_SetItemOwners(a0) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 FLAG
---@param a3 integer
function Osi.PROC_InternPlayerSpot_CheckNewFlag(a0, a1, a2, a3) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 TAG
---@param a3 integer
function Osi.PROC_InternPlayerSpot_CheckNewTag(a0, a1, a2, a3) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_InternPlayerSpot_IsAboutToFightBlock(a0, a1) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 CHARACTER
---@param a3 FLAG
---@param a4 integer
---@param a5 integer
function Osi.PROC_InternSpotPlayers_CheckObjectFlag(a0, a1, a2, a3, a4, a5) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 CHARACTER
---@param a3 TAG
---@param a4 integer
---@param a5 integer
function Osi.PROC_InternSpotPlayers_CheckTag(a0, a1, a2, a3, a4, a5) end

---@param a0 string
function Osi.PROC_InternSpotPlayers_CleanUp(a0) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 CHARACTER
function Osi.PROC_InternSpotPlayers_Spotted(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 CHARACTER
function Osi.PROC_InternSpotPlayers_Spotted_Delayed(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 CHARACTER
---@param a3 number
---@param a4 number
function Osi.PROC_InternSpotPlayers_UpdateInRange(a0, a1, a2, a3, a4) end

---@param a0 GUIDSTRING
---@param a1 DIALOGRESOURCE
function Osi.PROC_InternalCounterEntry(a0, a1) end

---@param a0 GUIDSTRING
---@param a1 GUIDSTRING
---@param a2 DIALOGRESOURCE
function Osi.PROC_InternalCounterEntry(a0, a1, a2) end

---@param a0 GUIDSTRING
---@param a1 GUIDSTRING
---@param a2 GUIDSTRING
---@param a3 DIALOGRESOURCE
function Osi.PROC_InternalCounterEntry(a0, a1, a2, a3) end

---@param a0 GUIDSTRING
---@param a1 GUIDSTRING
---@param a2 GUIDSTRING
---@param a3 GUIDSTRING
---@param a4 DIALOGRESOURCE
function Osi.PROC_InternalCounterEntry(a0, a1, a2, a3, a4) end

---@param a0 CHARACTER
function Osi.PROC_InternalMoveDisableInteractiveDialogs(a0) end

---@param a0 CHARACTER
function Osi.PROC_InternalMoveRestoreDialogState(a0) end

---@param a0 CHARACTER
function Osi.PROC_InternalMoveSaveDialogState(a0) end

function Osi.PROC_InvalidateLoopBeamEffects() end

function Osi.PROC_InvalidateLoopEffects() end

---@param a0 CHARACTER
---@param a1 ITEM
function Osi.PROC_InvestigationSkillCheckAD_TryStart(a0, a1) end

function Osi.PROC_IsobelNightsongReunion_Debug_FreedFromColony() end

function Osi.PROC_IsobelNightsongReunion_Debug_FreedFromShar() end

---@param a0 ITEM
---@param a1 string
function Osi.PROC_ItemCloseAndLock(a0, a1) end

---@param a0 CHARACTER
---@param a1 ITEM
function Osi.PROC_ItemDialog_ProcessItemUsed(a0, a1) end

---@param a0 ITEM
---@param a1 CHARACTER
function Osi.PROC_ItemDialog_TryStartADOrVB(a0, a1) end

---@param a0 integer
function Osi.PROC_ItemEventCheck(a0) end

---@param a0 integer
---@param a1 DIALOGRESOURCE
---@param a2 integer
---@param a3 integer
---@param a4 integer
function Osi.PROC_ItemEvents_DialogMoneyTransfer_New(a0, a1, a2, a3, a4) end

---@param a0 integer
---@param a1 DIALOGRESOURCE
---@param a2 GUIDSTRING
---@param a3 integer
---@param a4 integer
---@param a5 integer
function Osi.PROC_ItemEvents_ItemTemplateScriptFlag_New(a0, a1, a2, a3, a4, a5) end

---@param a0 ITEM
---@param a1 TRIGGER
---@param a2 FLAG
function Osi.PROC_ItemInRegionFlag_Register(a0, a1, a2) end

---@param a0 ITEM
---@param a1 TRIGGER
---@param a2 FLAG
function Osi.PROC_ItemInRegionFlag_Unregister(a0, a1, a2) end

---@param a0 TRIGGER
---@param a1 CHARACTER
function Osi.PROC_ItemOwnership_SetNewTriggerOwner(a0, a1) end

---@param a0 TRIGGER
---@param a1 CHARACTER
---@param a2 CHARACTER
function Osi.PROC_ItemOwnership_SetNewTriggerOwner(a0, a1, a2) end

---@param a0 TRIGGER
---@param a1 CHARACTER
function Osi.PROC_ItemOwnership_TrySetFallbackOwner(a0, a1) end

---@param a0 TRIGGER
function Osi.PROC_ItemShopTrigger_Delete(a0) end

---@param a0 CHARACTER
---@param a1 ITEM
function Osi.PROC_ItemThrownByPlayer(a0, a1) end

---@param a0 ITEM
function Osi.PROC_ItemUnlockAndOpen(a0) end

---@param a0 ITEM
---@param a1 integer
function Osi.PROC_ItemUnlockAndOpen(a0, a1) end

---@param a0 ITEM
function Osi.PROC_ItemUnlockAndOpen_Failed(a0) end

---@param a0 ITEM
function Osi.PROC_ItemUnlockAndOpen_Succeeded(a0) end

---@param a0 GUIDSTRING
---@param a1 DIALOGRESOURCE
function Osi.PROC_Jaheira_AddADs(a0, a1) end

---@param a0 GUIDSTRING
---@param a1 DIALOGRESOURCE
function Osi.PROC_Jaheira_ClearADs(a0, a1) end

function Osi.PROC_JaheirasHouse_CheckForJaheiraDeath() end

function Osi.PROC_JaheirasHouse_GlyphAndPillarDisable() end

---@param a0 string
function Osi.PROC_JaheirasHouse_JaheiraBark(a0) end

---@param a0 string
---@param a1 GUIDSTRING
function Osi.PROC_JaheirasHouse_MakeStatusPermanent(a0, a1) end

---@param a0 string
---@param a1 integer
function Osi.PROC_JaheirasHouse_OpenPuzzleItem(a0, a1) end

---@param a0 string
function Osi.PROC_JaheirasHouse_ProcessJaheiraDialogOption(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_JaheirasHouse_RemoveGlyphs(a0) end

---@param a0 string
function Osi.PROC_JaheirasHouse_TidyAdditionalShock(a0) end

function Osi.PROC_KickGenericPlayer() end

---@param a0 integer
function Osi.PROC_KidNecromancer_RaiseWave(a0) end

function Osi.PROC_KillDirectorGortash_SetUpSceneManagerInOffice() end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
function Osi.PROC_KnockedOut(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_KnockedOut_Ended(a0) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 GUIDSTRING
---@param a3 string
---@param a4 DIFFICULTYCLASS
function Osi.PROC_KnowledgeCheck(a0, a1, a2, a3, a4) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 GUIDSTRING
---@param a3 string
---@param a4 DIFFICULTYCLASS
---@param a5 DIALOGRESOURCE
---@param a6 FLAG
function Osi.PROC_KnowledgeCheck(a0, a1, a2, a3, a4, a5, a6) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 ITEMROOT
function Osi.PROC_KnowledgeCheckTemplate_PlayAD(a0, a1, a2) end

---@param a0 GUIDSTRING
function Osi.PROC_KnowledgeCheck_Clear(a0) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 GUIDSTRING
---@param a3 string
---@param a4 DIFFICULTYCLASS
---@param a5 DIALOGRESOURCE
---@param a6 FLAG
function Osi.PROC_KnowledgeCheck_Internal(a0, a1, a2, a3, a4, a5, a6) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 GUIDSTRING
---@param a3 string
---@param a4 DIFFICULTYCLASS
---@param a5 DIALOGRESOURCE
---@param a6 FLAG
function Osi.PROC_KnowledgeCheck_MP(a0, a1, a2, a3, a4, a5, a6) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 GUIDSTRING
---@param a3 integer
function Osi.PROC_KnowledgeCheck_Propagate(a0, a1, a2, a3) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 GUIDSTRING
---@param a3 integer
function Osi.PROC_KnowledgeCheck_Propagate_Internal(a0, a1, a2, a3) end

function Osi.PROC_KurwinCoffin_KoboldYell() end

function Osi.PROC_LOWAGraveyardHello_RevealParentsGraves() end

function Osi.PROC_LOW_AlfiraSetup() end

function Osi.PROC_LOW_ApplyMaddeningDarkness() end

function Osi.PROC_LOW_AvengeHagSurvivors_CompletionSetup_NeverGotBreakHexQuest() end

---@param a0 string
function Osi.PROC_LOW_AvengeHagSurvivors_QuestUpdate_NeverGotBreakHexQuest(a0) end

---@param a0 ITEM
---@param a1 ITEM
function Osi.PROC_LOW_BUGFIX_312085_CheckRamazithItems(a0, a1) end

---@param a0 ITEM
---@param a1 TRIGGER
---@param a2 ITEM
function Osi.PROC_LOW_BUGFIX_CheckRamazithItemsPos(a0, a1, a2) end

function Osi.PROC_LOW_BUGFIX_CheckZombiesAfterResurrection() end

function Osi.PROC_LOW_BUGFIX_CountingHouse_MediumSafe02_Key_RemoveStoryProperty() end

function Osi.PROC_LOW_BUGFIX_HagRetreatsToOrlop() end

function Osi.PROC_LOW_BUGFIX_ReassignSavingVanraDialogToHag() end

function Osi.PROC_LOW_BUGFIX_SavedVanraStuckInCellar() end

function Osi.PROC_LOW_BUGFIX_SetPermaDefeatedHagSpyOnStage() end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
---@param a2 DIALOGRESOURCE
function Osi.PROC_LOW_BUGFIX_SorcerousSundries_ResetSiblings(a0, a1, a2) end

function Osi.PROC_LOW_BUGFIX_UndeadHusbandClearDefeatedFlag() end

function Osi.PROC_LOW_BaldursGate_CleanWarnings() end

function Osi.PROC_LOW_BaldursGate_WarningEventsSetup() end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_LOW_BaldursMouth_AttitudeChange(a0, a1) end

---@param a0 ITEM
---@param a1 string
function Osi.PROC_LOW_BaldursMouth_MakeCustomBookEntry(a0, a1) end

function Osi.PROC_LOW_BaldursMouth_ResetSecurity() end

function Osi.PROC_LOW_BaldursMouth_SetUpSteelWatchers() end

function Osi.PROC_LOW_BaneitesEquipSwitches() end

function Osi.PROC_LOW_BasiliskGate_FlorrickExecutionInitializePosters() end

function Osi.PROC_LOW_BellyOfTheBeast_BeastmasterBoardsSubmersible() end

function Osi.PROC_LOW_BellyOfTheBeast_SetupWaveservants() end

function Osi.PROC_LOW_BellyOfTheBeast_SetupWaveservants_Ambush() end

function Osi.PROC_LOW_BhaalApproach_CheatOtherTraps() end

---@param a0 TRIGGER
function Osi.PROC_LOW_BhaalApproach_SniperSetup(a0) end

function Osi.PROC_LOW_BhaalTemple_AbducteeAwaken_AD_StartDialog() end

function Osi.PROC_LOW_BhaalTemple_AbducteeAwaken_GoCamp() end

function Osi.PROC_LOW_BhaalTemple_AbducteeAwaken_GoCampOnLongRest() end

function Osi.PROC_LOW_BhaalTemple_AbducteeAwaken_Joins() end

function Osi.PROC_LOW_BhaalTemple_AbducteeAwaken_LeavesParty() end

function Osi.PROC_LOW_BhaalTemple_AbducteeAwaken_Setup() end

function Osi.PROC_LOW_BhaalTemple_AbducteeAwaken_Standby() end

function Osi.PROC_LOW_BhaalTemple_AbducteeAwaken_TeleportToPos() end

function Osi.PROC_LOW_BhaalTemple_Abductee_Abandoned() end

function Osi.PROC_LOW_BhaalTemple_Abductee_Awakened() end

function Osi.PROC_LOW_BhaalTemple_Abductee_Unlock() end

function Osi.PROC_LOW_BhaalTemple_Abductee_WakeUp() end

function Osi.PROC_LOW_BhaalTemple_AchievementHook() end

function Osi.PROC_LOW_BhaalTemple_AdmireKill_Disable() end

function Osi.PROC_LOW_BhaalTemple_Altar_Disable() end

function Osi.PROC_LOW_BhaalTemple_Altar_Enable() end

---@param a0 CHARACTER
function Osi.PROC_LOW_BhaalTemple_ArenaCamera_Start(a0) end

function Osi.PROC_LOW_BhaalTemple_ArenaIndicator_Disable() end

function Osi.PROC_LOW_BhaalTemple_ArenaIndicator_Enable() end

function Osi.PROC_LOW_BhaalTemple_BTCheckStateDB() end

function Osi.PROC_LOW_BhaalTemple_BhaalAvatar_RemoveFromTemple() end

function Osi.PROC_LOW_BhaalTemple_BhaalAvatar_Setup() end

function Osi.PROC_LOW_BhaalTemple_BhaalAvatar_SetupInTemple() end

function Osi.PROC_LOW_BhaalTemple_Books_Init() end

function Osi.PROC_LOW_BhaalTemple_ButlerSpotting_Started() end

function Osi.PROC_LOW_BhaalTemple_Butler_DisappointedCampNight_Enable() end

function Osi.PROC_LOW_BhaalTemple_Butler_FinalState() end

function Osi.PROC_LOW_BhaalTemple_Butler_ResurrectInTemple() end

function Osi.PROC_LOW_BhaalTemple_Butler_SendToCampAndHide() end

function Osi.PROC_LOW_BhaalTemple_Butler_Setup() end

---@param a0 CHARACTER
function Osi.PROC_LOW_BhaalTemple_Butler_StartDialog(a0) end

function Osi.PROC_LOW_BhaalTemple_CastMarkedForMurder() end

function Osi.PROC_LOW_BhaalTemple_CastRitualSpell() end

function Osi.PROC_LOW_BhaalTemple_CheckAbductionPossibleAreaDB() end

function Osi.PROC_LOW_BhaalTemple_CheckAllies_DuelPosDB() end

function Osi.PROC_LOW_BhaalTemple_CheckAvatarsDB() end

function Osi.PROC_LOW_BhaalTemple_CheckBTCheckAbducteeFlagDB() end

function Osi.PROC_LOW_BhaalTemple_CheckBTCheckAbducteeRescuer() end

function Osi.PROC_LOW_BhaalTemple_CheckChosenInWorldAbductionAreaDB() end

function Osi.PROC_LOW_BhaalTemple_CheckDarkUrgeInSlayerForm() end

function Osi.PROC_LOW_BhaalTemple_CheckIfAbductionCanOccur() end

function Osi.PROC_LOW_BhaalTemple_CheckVictimsOnAltarDB() end

function Osi.PROC_LOW_BhaalTemple_ClearDB_Allies_DuelPos() end

function Osi.PROC_LOW_BhaalTemple_ClearDB_ChosenInWorldAbductionPos() end

function Osi.PROC_LOW_BhaalTemple_ClearDB_VictimSpotFound() end

function Osi.PROC_LOW_BhaalTemple_CloseDoor() end

function Osi.PROC_LOW_BhaalTemple_CombatStartedPrematurely_StartAD() end

function Osi.PROC_LOW_BhaalTemple_Confrontation_Allies_Setup() end

function Osi.PROC_LOW_BhaalTemple_Confrontation_Harper_Setup() end

function Osi.PROC_LOW_BhaalTemple_Confrontation_Init() end

function Osi.PROC_LOW_BhaalTemple_Confrontation_Jaheira_Setup() end

function Osi.PROC_LOW_BhaalTemple_Confrontation_Minsc_Setup() end

function Osi.PROC_LOW_BhaalTemple_Confrontation_Setup() end

function Osi.PROC_LOW_BhaalTemple_Confrontation_SpottingTrigger_Remove() end

function Osi.PROC_LOW_BhaalTemple_Confrontation_SpottingTrigger_Setup() end

function Osi.PROC_LOW_BhaalTemple_Confrontation_Spotting_Harper_Remove() end

function Osi.PROC_LOW_BhaalTemple_Confrontation_Spotting_Remove() end

function Osi.PROC_LOW_BhaalTemple_Confrontation_Spotting_Setup() end

---@param a0 CHARACTER
function Osi.PROC_LOW_BhaalTemple_Confrontation_StartCombat(a0) end

---@param a0 CHARACTER
function Osi.PROC_LOW_BhaalTemple_Confrontation_StartDialogCaptain(a0) end

---@param a0 CHARACTER
function Osi.PROC_LOW_BhaalTemple_Confrontation_StartDialogDU(a0) end

---@param a0 CHARACTER
function Osi.PROC_LOW_BhaalTemple_Confrontation_StartDialogNonDU(a0) end

function Osi.PROC_LOW_BhaalTemple_DarkUrgeAcceptance_JaheiraMinscInParty() end

function Osi.PROC_LOW_BhaalTemple_DarkUrgeAcceptance_PreConfrontation_SelectDialogFlow() end

function Osi.PROC_LOW_BhaalTemple_DarkUrgeClone_Setup() end

function Osi.PROC_LOW_BhaalTemple_DarkUrgeDefeated_Setup() end

function Osi.PROC_LOW_BhaalTemple_DarkUrgeDefeated_StartDialog() end

function Osi.PROC_LOW_BhaalTemple_DarkUrgeResisted_StartDialog() end

function Osi.PROC_LOW_BhaalTemple_DarkUrge_DropSlayerform() end

function Osi.PROC_LOW_BhaalTemple_DarkUrge_IsPresent_PostCombat() end

function Osi.PROC_LOW_BhaalTemple_DarkUrge_IsPresent_PreCombat() end

function Osi.PROC_LOW_BhaalTemple_DarkUrge_MoveToAltar() end

function Osi.PROC_LOW_BhaalTemple_DarkUrge_Setup() end

function Osi.PROC_LOW_BhaalTemple_Debug_DUGivenSlayerForm() end

function Osi.PROC_LOW_BhaalTemple_Debug_EnableWithers() end

function Osi.PROC_LOW_BhaalTemple_Debug_GiveAltarKey() end

function Osi.PROC_LOW_BhaalTemple_Debug_GiveBhaalAmulet() end

function Osi.PROC_LOW_BhaalTemple_Debug_GoInWorldAbduction1() end

function Osi.PROC_LOW_BhaalTemple_Debug_GoInWorldAbduction2() end

function Osi.PROC_LOW_BhaalTemple_Debug_GoInWorldAbduction3() end

function Osi.PROC_LOW_BhaalTemple_Debug_GoInWorldAbduction4() end

function Osi.PROC_LOW_BhaalTemple_Debug_RemoveOrinSlayerForm() end

function Osi.PROC_LOW_BhaalTemple_Debug_SetKilledSarevok() end

function Osi.PROC_LOW_BhaalTemple_Debug_SetUnholyAssassin() end

function Osi.PROC_LOW_BhaalTemple_Debug_SetWarnedOrin() end

function Osi.PROC_LOW_BhaalTemple_Debug_StartDefault() end

function Osi.PROC_LOW_BhaalTemple_Denizens_Combat_AddToCounter() end

function Osi.PROC_LOW_BhaalTemple_Denizens_Combat_Setup() end

function Osi.PROC_LOW_BhaalTemple_Denizens_Dialogs_Setup() end

function Osi.PROC_LOW_BhaalTemple_Denizens_IgnoreShapeshiftReactions() end

function Osi.PROC_LOW_BhaalTemple_Denizens_PostBattleDU_Resistance_Dialog_Setup() end

---@param a0 CHARACTER
function Osi.PROC_LOW_BhaalTemple_DialogCombat_Start(a0) end

---@param a0 CHARACTER
function Osi.PROC_LOW_BhaalTemple_DropInvisibility(a0) end

function Osi.PROC_LOW_BhaalTemple_Duel_Allies_RemoveStatus() end

function Osi.PROC_LOW_BhaalTemple_Duel_Allies_Setup() end

---@param a0 CHARACTER
function Osi.PROC_LOW_BhaalTemple_Duel_Ally_BlockOrinsHitReaction_Apply(a0) end

---@param a0 CHARACTER
function Osi.PROC_LOW_BhaalTemple_Duel_Ally_BlockOrinsHitReaction_Restore(a0) end

---@param a0 CHARACTER
---@param a1 TRIGGER
function Osi.PROC_LOW_BhaalTemple_Duel_Ally_Setup(a0, a1) end

function Osi.PROC_LOW_BhaalTemple_Duel_Arena_Remove() end

function Osi.PROC_LOW_BhaalTemple_Duel_Arena_Setup() end

function Osi.PROC_LOW_BhaalTemple_Duel_DarkUrgeBlockFearMovement_Apply() end

function Osi.PROC_LOW_BhaalTemple_Duel_DarkUrgeBlockFearMovement_Remove() end

function Osi.PROC_LOW_BhaalTemple_Duel_DarkUrgeFaction_Apply() end

function Osi.PROC_LOW_BhaalTemple_Duel_DarkUrgeFaction_RemoveStatus() end

function Osi.PROC_LOW_BhaalTemple_Duel_DarkUrge_Setup() end

function Osi.PROC_LOW_BhaalTemple_Duel_End() end

function Osi.PROC_LOW_BhaalTemple_Duel_NonCombat_Remove() end

function Osi.PROC_LOW_BhaalTemple_Duel_NonCombat_Setup() end

function Osi.PROC_LOW_BhaalTemple_Duel_Orin_RemoveStatus() end

function Osi.PROC_LOW_BhaalTemple_Duel_Orin_Setup() end

function Osi.PROC_LOW_BhaalTemple_Duel_Start() end

---@param a0 CHARACTER
function Osi.PROC_LOW_BhaalTemple_Duel_StartFailFallback(a0) end

function Osi.PROC_LOW_BhaalTemple_Duel_TurnsHostileCultists() end

function Osi.PROC_LOW_BhaalTemple_ForceUpdateAltarArea_Start() end

function Osi.PROC_LOW_BhaalTemple_ForceUpdateAltarArea_Stop() end

function Osi.PROC_LOW_BhaalTemple_GetOrinsVictims() end

function Osi.PROC_LOW_BhaalTemple_InWorldAbductionTriggers_Init() end

function Osi.PROC_LOW_BhaalTemple_InWorldAbductionTriggers_Remove() end

function Osi.PROC_LOW_BhaalTemple_InWorldAbduction_AbductCompanion() end

function Osi.PROC_LOW_BhaalTemple_InWorldAbduction_Completed() end

function Osi.PROC_LOW_BhaalTemple_InWorldAbduction_FindBest() end

---@param a0 string
function Osi.PROC_LOW_BhaalTemple_InWorldAbduction_OrinRunsToPlayers(a0) end

function Osi.PROC_LOW_BhaalTemple_InWorldAbduction_SetupBest() end

function Osi.PROC_LOW_BhaalTemple_InWorldAbduction_SetupOrin() end

function Osi.PROC_LOW_BhaalTemple_InWorldAbduction_SetupPos() end

function Osi.PROC_LOW_BhaalTemple_InWorldAbduction_UnlockDoor() end

function Osi.PROC_LOW_BhaalTemple_InWorldAbduction_WaitForPlayersFallback() end

function Osi.PROC_LOW_BhaalTemple_InWorldAbductions_Disable() end

function Osi.PROC_LOW_BhaalTemple_Lieutenant_Init() end

function Osi.PROC_LOW_BhaalTemple_MainDoor_Init() end

---@param a0 CHARACTER
function Osi.PROC_LOW_BhaalTemple_MainDoor_StartDialog(a0) end

function Osi.PROC_LOW_BhaalTemple_NarrativeItems_Setup() end

---@param a0 string
function Osi.PROC_LOW_BhaalTemple_NonDuelPos_Setup(a0) end

function Osi.PROC_LOW_BhaalTemple_ObservationSpot_Combat() end

function Osi.PROC_LOW_BhaalTemple_ObservationSpot_NonCombat() end

function Osi.PROC_LOW_BhaalTemple_OpenDoor() end

function Osi.PROC_LOW_BhaalTemple_OrinBattle_BeginRitual() end

function Osi.PROC_LOW_BhaalTemple_OrinBattle_Check_RitualOver() end

function Osi.PROC_LOW_BhaalTemple_OrinBattle_RitualEnd() end

function Osi.PROC_LOW_BhaalTemple_OrinDarkUrgeDummy_Setup() end

function Osi.PROC_LOW_BhaalTemple_OrinDuel_Start() end

function Osi.PROC_LOW_BhaalTemple_OrinNonDuel_Start() end

function Osi.PROC_LOW_BhaalTemple_OrinNonDuel_StartPrematurely() end

function Osi.PROC_LOW_BhaalTemple_OrinSpotting_Started() end

function Osi.PROC_LOW_BhaalTemple_OrinSpotting_Stopped() end

function Osi.PROC_LOW_BhaalTemple_OrinTransformIntoSlayer() end

function Osi.PROC_LOW_BhaalTemple_Orin_CombatAD_Setup() end

---@param a0 integer
function Osi.PROC_LOW_BhaalTemple_Orin_Difficulty_Hardmode(a0) end

function Osi.PROC_LOW_BhaalTemple_Orin_Difficulty_Setup() end

function Osi.PROC_LOW_BhaalTemple_Orin_Init() end

function Osi.PROC_LOW_BhaalTemple_Orin_Inventory_Restore() end

function Osi.PROC_LOW_BhaalTemple_Orin_Inventory_Save() end

function Osi.PROC_LOW_BhaalTemple_Orin_Inventory_Setup() end

function Osi.PROC_LOW_BhaalTemple_Orin_PreDialogSetup() end

function Osi.PROC_LOW_BhaalTemple_Orin_SeeInvisibility_Apply() end

---@param a0 CHARACTER
function Osi.PROC_LOW_BhaalTemple_Orin_StartDialog(a0) end

function Osi.PROC_LOW_BhaalTemple_OrinsMother_ApplyStatus() end

function Osi.PROC_LOW_BhaalTemple_OrinsMother_Enable() end

function Osi.PROC_LOW_BhaalTemple_OrinsMother_Kill() end

function Osi.PROC_LOW_BhaalTemple_OrinsMother_PlayDeadAnim() end

function Osi.PROC_LOW_BhaalTemple_OrinsMother_Resurrect() end

function Osi.PROC_LOW_BhaalTemple_OrinsMother_TeleportBed() end

function Osi.PROC_LOW_BhaalTemple_OrinsMother_UseBed() end

function Osi.PROC_LOW_BhaalTemple_OrinsRoom_ClearNPC() end

---@param a0 integer
function Osi.PROC_LOW_BhaalTemple_PlaceVictimsOnAltar(a0) end

function Osi.PROC_LOW_BhaalTemple_PlayerTransformIntoSlayer() end

function Osi.PROC_LOW_BhaalTemple_PostBattleDarkUrge_AttachToParty() end

function Osi.PROC_LOW_BhaalTemple_PostBattleDarkUrge_StartDialog() end

---@param a0 CHARACTER
function Osi.PROC_LOW_BhaalTemple_PostBattle_DarkUrgeGetStoneFirst_StartDialog(a0) end

---@param a0 CHARACTER
function Osi.PROC_LOW_BhaalTemple_PostBattle_StartDialog(a0) end

function Osi.PROC_LOW_BhaalTemple_RemoveDefaultVictim() end

function Osi.PROC_LOW_BhaalTemple_RestoreAbducteeRelationshipDialogs() end

function Osi.PROC_LOW_BhaalTemple_RitualHelper_VfxActivate() end

function Osi.PROC_LOW_BhaalTemple_SetupDefaultVictim() end

function Osi.PROC_LOW_BhaalTemple_SetupOrinInTemple() end

function Osi.PROC_LOW_BhaalTemple_SetupOrinsVictimsOnAltar() end

---@param a0 CHARACTER
function Osi.PROC_LOW_BhaalTemple_StoreAbducteeRelationshipDialogs(a0) end

function Osi.PROC_LOW_BhaalTemple_TurnsHostileCultists() end

function Osi.PROC_LOW_BhaalTemple_TurnsHostileOrin() end

function Osi.PROC_LOW_BhaalTemple_TurnsHostileOrinDuel() end

function Osi.PROC_LOW_BhaalTemple_Withers_AwakensAbductee() end

function Osi.PROC_LOW_BhaalTemple_Withers_ResurrectsPlayers() end

function Osi.PROC_LOW_BhaalTemple_Withers_ReturnToCamp_StartTimer() end

function Osi.PROC_LOW_BloodMerchant_CheckBite() end

function Osi.PROC_LOW_BloodMerchant_CleanGeneralDatabases() end

function Osi.PROC_LOW_BloodMerchant_CleanTriggers() end

function Osi.PROC_LOW_BloodMerchant_NoArajSituation() end

function Osi.PROC_LOW_BlushingMermaid_OwnershipTriggerCleanup() end

---@param a0 GUIDSTRING
function Osi.PROC_LOW_BlushingMermaid_OwnershipTriggerSertup(a0) end

---@param a0 CHARACTER
function Osi.PROC_LOW_Bonecloak_DebugClearShopOwner(a0) end

function Osi.PROC_LOW_Bonecloak_Setup() end

---@param a0 CHARACTER
function Osi.PROC_LOW_Bonecloak_SetupShopOwner(a0) end

---@param a0 CHARACTER
function Osi.PROC_LOW_Bonecloak_Setup_SurvivedSpouse(a0) end

---@param a0 CHARACTER
function Osi.PROC_LOW_CazadorsPalace_Bedrooms_DamagedByDeadGirl(a0) end

function Osi.PROC_LOW_CazadorsPalace_CheckAstarionAndProceed() end

---@param a0 TRIGGER
function Osi.PROC_LOW_CazadorsPalace_CheckPentagram(a0) end

function Osi.PROC_LOW_CazadorsPalace_DestroyChamberlainCoffin() end

---@param a0 CHARACTER
function Osi.PROC_LOW_CazadorsPalace_Dungeon_CazadorsBedUsed(a0) end

---@param a0 ITEM
function Osi.PROC_LOW_CazadorsPalace_Dungeon_OpenDoor(a0) end

function Osi.PROC_LOW_CazadorsPalace_Kennel_AstarionArrived() end

function Osi.PROC_LOW_CazadorsPalace_Kennel_AstarionTeleported() end

---@param a0 CHARACTER
function Osi.PROC_LOW_CazadorsPalace_Kennel_FoundRing(a0) end

function Osi.PROC_LOW_CazadorsPalace_Kennel_GotRingIllegally() end

function Osi.PROC_LOW_CazadorsPalace_Kennel_InitiateFight() end

function Osi.PROC_LOW_CazadorsPalace_Kennel_KidnapAstarion() end

function Osi.PROC_LOW_CazadorsPalace_Kennel_ReleaseKidnappedAstarion() end

function Osi.PROC_LOW_CazadorsPalace_Kennel_RevealIllusion() end

function Osi.PROC_LOW_CazadorsPalace_Kennel_SetCustomDefeatedState() end

function Osi.PROC_LOW_CazadorsPalace_MakeBallroomHostile() end

function Osi.PROC_LOW_CazadorsPalace_MakeSafe() end

function Osi.PROC_LOW_CazadorsPalace_PlayerEnteredDungeon() end

function Osi.PROC_LOW_CazadorsPalace_PrepareGur() end

function Osi.PROC_LOW_CazadorsPalace_RemoveOldTrap() end

---@param a0 TRIGGER
function Osi.PROC_LOW_CazadorsPalace_RitualRoom_ActivateBuffToCazadorVFX(a0) end

---@param a0 TRIGGER
function Osi.PROC_LOW_CazadorsPalace_RitualRoom_ActivateBuffToPlayerVFX(a0) end

---@param a0 CHARACTER
function Osi.PROC_LOW_CazadorsPalace_RitualRoom_AstarionReactsToSpawnDeath(a0) end

function Osi.PROC_LOW_CazadorsPalace_RitualRoom_AstarionSacrificed() end

function Osi.PROC_LOW_CazadorsPalace_RitualRoom_BeginRitual() end

function Osi.PROC_LOW_CazadorsPalace_RitualRoom_CaptureAstarion() end

function Osi.PROC_LOW_CazadorsPalace_RitualRoom_CazadorInCoffin() end

---@param a0 CHARACTER
function Osi.PROC_LOW_CazadorsPalace_RitualRoom_CazadorReactsToSpawnDeath(a0) end

---@param a0 CHARACTER
function Osi.PROC_LOW_CazadorsPalace_RitualRoom_CheckEnableAllCrimesAfterDialog(a0) end

function Osi.PROC_LOW_CazadorsPalace_RitualRoom_CheckEndCombat() end

function Osi.PROC_LOW_CazadorsPalace_RitualRoom_ClearBeamFromSarcophagus() end

function Osi.PROC_LOW_CazadorsPalace_RitualRoom_ClearBuffCounterDB() end

---@param a0 CHARACTER
function Osi.PROC_LOW_CazadorsPalace_RitualRoom_ClearExtraBuffs(a0) end

---@param a0 CHARACTER
function Osi.PROC_LOW_CazadorsPalace_RitualRoom_ClearMainBuffs(a0) end

---@param a0 CHARACTER
function Osi.PROC_LOW_CazadorsPalace_RitualRoom_CompleteRitual(a0) end

---@param a0 TRIGGER
function Osi.PROC_LOW_CazadorsPalace_RitualRoom_DeactivateBuffToCazadorVFX(a0) end

---@param a0 TRIGGER
function Osi.PROC_LOW_CazadorsPalace_RitualRoom_DeactivateBuffToPlayerVFX(a0) end

---@param a0 CHARACTER
function Osi.PROC_LOW_CazadorsPalace_RitualRoom_DisableBeam(a0) end

---@param a0 CHARACTER
function Osi.PROC_LOW_CazadorsPalace_RitualRoom_EnableBeam(a0) end

function Osi.PROC_LOW_CazadorsPalace_RitualRoom_EndCombat() end

function Osi.PROC_LOW_CazadorsPalace_RitualRoom_KillPrisoners() end

---@param a0 CHARACTER
function Osi.PROC_LOW_CazadorsPalace_RitualRoom_KillSpawns(a0) end

function Osi.PROC_LOW_CazadorsPalace_RitualRoom_MakeRitualRoomHostile() end

function Osi.PROC_LOW_CazadorsPalace_RitualRoom_ReapplyBuffs() end

function Osi.PROC_LOW_CazadorsPalace_RitualRoom_ReapplyExtraBuffs() end

function Osi.PROC_LOW_CazadorsPalace_RitualRoom_ReapplyMainBuffs() end

function Osi.PROC_LOW_CazadorsPalace_RitualRoom_ReleasePrisoners() end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_LOW_CazadorsPalace_RitualRoom_SpawnKilledDuringRitual(a0, a1) end

function Osi.PROC_LOW_CazadorsPalace_RitualRoom_SpawnsLeave() end

---@param a0 CHARACTER
function Osi.PROC_LOW_CazadorsPalace_RitualRoom_StartDialogWithCoffin(a0) end

function Osi.PROC_LOW_CazadorsPalace_RitualRoom_StartSpottingAstarion() end

function Osi.PROC_LOW_CazadorsPalace_RitualRoom_StopRitual() end

function Osi.PROC_LOW_CazadorsPalace_RitualRoom_TryAstarionBanter() end

function Osi.PROC_LOW_CazadorsPalace_SendCazadorToCoffin() end

function Osi.PROC_LOW_CazadorsPalace_UnlockEntranceFromSewers() end

function Osi.PROC_LOW_CheckMissionTriggered() end

function Osi.PROC_LOW_ClearMayrinaPresentHagReadables() end

---@param a0 ITEMROOT
---@param a1 GUIDSTRING
---@param a2 ITEMROOT
function Osi.PROC_LOW_ClearMayrinaPresentHagReadables_Internal(a0, a1, a2) end

---@param a0 FLAG
---@param a1 GUIDSTRING
---@param a2 TAG
function Osi.PROC_LOW_CountingHouseAlarmTriggered(a0, a1, a2) end

---@param a0 GUIDSTRING
---@param a1 FLAG
---@param a2 GUIDSTRING
---@param a3 TAG
function Osi.PROC_LOW_CountingHouseAlarmTriggered(a0, a1, a2, a3) end

function Osi.PROC_LOW_CountingHouse_AllGuardsHostileOnLongRest() end

---@param a0 integer
function Osi.PROC_LOW_CountingHouse_ForceUpdateDocksGuards(a0) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
function Osi.PROC_LOW_CountingHouse_GuardSawGuardInCombat(a0, a1) end

---@param a0 GUIDSTRING
---@param a1 GUIDSTRING
function Osi.PROC_LOW_CountingHouse_GuardSawPartyMemberInCombat(a0, a1) end

function Osi.PROC_LOW_CountingHouse_PanickedClerksSetOffstage() end

---@param a0 FLAG
function Osi.PROC_LOW_CountingHouse_ResetAlarmTrigger(a0) end

function Osi.PROC_LOW_CountingHouse_RetrievedStolenGold_QuestUpdate() end

---@param a0 GUIDSTRING
---@param a1 DIALOGRESOURCE
function Osi.PROC_LOW_CountingHouse_TadpoledGuardsAggro(a0, a1) end

---@param a0 integer
---@param a1 CHARACTER
function Osi.PROC_LOW_CrimeAddCriminalsToWandererGreetingAD(a0, a1) end

function Osi.PROC_LOW_DebugKillHagShrooms() end

function Osi.PROC_LOW_DebugRemoveDialogs_MissingKidsMotherNPCs() end

function Osi.PROC_LOW_DebugTrullyKillHagSetup() end

function Osi.PROC_LOW_DevilsFee_AddButlerHat() end

function Osi.PROC_LOW_DevilsFee_CloseStore() end

function Osi.PROC_LOW_DevilsFee_DisableTrapByOwner() end

function Osi.PROC_LOW_DevilsFee_PatchPortalStatus() end

function Osi.PROC_LOW_DiabolistTrapTrigger() end

---@param a0 ITEM
---@param a1 string
---@param a2 CHARACTER
function Osi.PROC_LOW_DisarmSwitch(a0, a1, a2) end

function Osi.PROC_LOW_DisguisedRecaps_HostileAfterHagRetreat() end

---@param a0 CHARACTER
function Osi.PROC_LOW_DjinniTrapNewVictim(a0) end

---@param a0 CHARACTER
function Osi.PROC_LOW_DjinniTrapTeleport(a0) end

function Osi.PROC_LOW_DockWarehouse_DropBeastmasterResignationLetter() end

function Osi.PROC_LOW_Dockwarehouse_MakeIRNInaccessible() end

function Osi.PROC_LOW_DolorHaveCoraHand() end

function Osi.PROC_LOW_EastwayFoodCrisis_RemoveChicken() end

function Osi.PROC_LOW_Elfsong_BasementDoors_Remove() end

function Osi.PROC_LOW_Elfsong_CheckNumberOfPortals() end

function Osi.PROC_LOW_Elfsong_CleanElfsongTemplate() end

function Osi.PROC_LOW_Elfsong_DevellaDownstairs() end

function Osi.PROC_LOW_Elfsong_GUS301675() end

function Osi.PROC_LOW_Elfsong_GithFirstWave() end

---@param a0 integer
function Osi.PROC_LOW_Elfsong_GithPortalsShow(a0) end

---@param a0 CHARACTER
function Osi.PROC_LOW_Elfsong_KillAllRats(a0) end

function Osi.PROC_LOW_Elfsong_KotS_CheckGithGone() end

---@param a0 CHARACTER
function Osi.PROC_LOW_Elfsong_KotS_PeacefulResolution(a0) end

function Osi.PROC_LOW_Elfsong_RegisterGithSceneTriggers() end

function Osi.PROC_LOW_Elfsong_Undercity_EmperorAD_Unregister() end

function Osi.PROC_LOW_Elfsong_UnregisterGithSceneTriggers() end

---@param a0 string
function Osi.PROC_LOW_FigarosSetup_NotLongRest(a0) end

function Osi.PROC_LOW_FireworksHouse_Debug_ClearSpotting() end

---@param a0 GUIDSTRING
---@param a1 TRIGGER
function Osi.PROC_LOW_FishAndGrime_BarrelMoved(a0, a1) end

function Osi.PROC_LOW_FlorrickConfrontation_Cleanup() end

---@param a0 integer
function Osi.PROC_LOW_FlorrickConfrontation_Cleanup(a0) end

---@param a0 string
function Osi.PROC_LOW_FlorrickConfrontation_SetChars(a0) end

---@param a0 string
function Osi.PROC_LOW_FlorrickConfrontation_SetupAmbush(a0) end

function Osi.PROC_LOW_ForgingOfTheHeart_SettingUpDammon() end

---@param a0 ITEM
function Osi.PROC_LOW_GUS310271(a0) end

function Osi.PROC_LOW_Gale_DoSetupElminster() end

function Osi.PROC_LOW_GondianCollarsGoOff() end

function Osi.PROC_LOW_GortashFamilyHome_TryAD() end

function Osi.PROC_LOW_GuildSmugglers_RemoveSmugglewareOwnership() end

function Osi.PROC_LOW_GuildhallEntrance_PeacefulResolution() end

---@param a0 GUIDSTRING
function Osi.PROC_LOW_GuildhallEntrance_StartTusgrontAmbush(a0) end

---@param a0 ITEM
---@param a1 CHARACTER
function Osi.PROC_LOW_Guildhall_BoulderFalls(a0, a1) end

function Osi.PROC_LOW_Guildhall_CoupResolved() end

---@param a0 CHARACTER
function Osi.PROC_LOW_Guildhall_DuringCoup_PlayerSidesWithGuild(a0) end

---@param a0 CHARACTER
function Osi.PROC_LOW_Guildhall_DuringCoup_PlayerSidesWithZhent(a0) end

function Osi.PROC_LOW_Guildhall_InitBursar() end

function Osi.PROC_LOW_Guildhall_InitMol() end

function Osi.PROC_LOW_Guildhall_InitZhentLeader() end

function Osi.PROC_LOW_Guildhall_InitZhentLeaderBackup() end

function Osi.PROC_LOW_Guildhall_MolNotHere() end

function Osi.PROC_LOW_Guildhall_MoveToFinalPositions() end

function Osi.PROC_LOW_Guildhall_PlayerTakeoverResponse() end

function Osi.PROC_LOW_Guildhall_SetupMol() end

function Osi.PROC_LOW_Guildhall_SetupOskar() end

function Osi.PROC_LOW_Guildhall_SetupRugan() end

function Osi.PROC_LOW_Guildhall_SetupZhentLeader() end

function Osi.PROC_LOW_Guildhall_SetupZhentLeaderBackup() end

function Osi.PROC_LOW_Guildhall_StartCoupCombat_Cleanup() end

function Osi.PROC_LOW_Guildhall_SwapOskar() end

function Osi.PROC_LOW_Guildhall_ZhentCoupFightPosition() end

function Osi.PROC_LOW_Guildhall_ZhentEasyTakeover() end

---@param a0 CHARACTER
---@param a1 integer
---@param a2 integer
function Osi.PROC_LOW_Guildhall_ZhentLeaderAssesSituation(a0, a1, a2) end

function Osi.PROC_LOW_Guildhall_ZhentLeaderFlees() end

---@param a0 CHARACTER
function Osi.PROC_LOW_GurFollowUp_CheckKillHostileNPC(a0) end

function Osi.PROC_LOW_GurFollowUp_GurTribeLeftDungeon() end

function Osi.PROC_LOW_GurFollowUp_KillHostileNPCs() end

function Osi.PROC_LOW_GurFollowUp_QueueGurTribeRemovalFromDungeon() end

function Osi.PROC_LOW_GurFollowUp_RemoveGurTribeFromDungeon() end

function Osi.PROC_LOW_GurFollowUp_SendGurFamilyToSewers() end

function Osi.PROC_LOW_GurFollowUp_UnlockDoors() end

function Osi.PROC_LOW_HagBossFightStateProgressed() end

function Osi.PROC_LOW_HagCellarBossFightStarted() end

function Osi.PROC_LOW_HagCellarRetreatPAD() end

function Osi.PROC_LOW_HagEscapesOnBuggedHPRestored() end

function Osi.PROC_LOW_HagKilled_SpawnDeadVanra() end

function Osi.PROC_LOW_HagResurrectedFoop() end

function Osi.PROC_LOW_HagRetreatsToOrlop() end

function Osi.PROC_LOW_HagShroomsHeal() end

function Osi.PROC_LOW_HagSpyAggro() end

function Osi.PROC_LOW_HagSpyAggro_Internal() end

function Osi.PROC_LOW_HagSpyDropsDisguise() end

function Osi.PROC_LOW_HagSpyReactsToMayrinaLosingCurseStatus() end

function Osi.PROC_LOW_HagSurvivors_HagSpy_PermaHostility() end

function Osi.PROC_LOW_HagSurvivors_SurvivorsRelationsOnDroppedDisguise() end

function Osi.PROC_LOW_HagVomitsKid_GrenadeThrown() end

function Osi.PROC_LOW_HideOnlyDoppelgangers() end

function Osi.PROC_LOW_HideStuffOnGortashDead() end

function Osi.PROC_LOW_HighberrysHouse_NotMurderer_BothAlive() end

function Osi.PROC_LOW_HighberrysHouse_PerformRitual() end

function Osi.PROC_LOW_HighberrysHouse_SetHighberrys() end

---@param a0 integer
function Osi.PROC_LOW_HighberrysHouse_ShowRitualItems(a0) end

function Osi.PROC_LOW_HouseOfGrief_AttackedIllusion() end

function Osi.PROC_LOW_HouseOfGrief_OpenDoor() end

function Osi.PROC_LOW_HouseOfGrief_StartCounters() end

---@param a0 CHARACTER
function Osi.PROC_LOW_HouseOfGrief_StartInterruptDialog(a0) end

---@param a0 CHARACTER
function Osi.PROC_LOW_HouseOfGrief_StartMapping(a0) end

---@param a0 CHARACTER
function Osi.PROC_LOW_HouseOfGrief_ViconiaAppear(a0) end

---@param a0 integer
function Osi.PROC_LOW_HouseOfHope_ActivateHopeGuidance(a0) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
---@param a2 GUIDSTRING
---@param a3 string
function Osi.PROC_LOW_HouseOfHope_BoudoirImpAppear(a0, a1, a2, a3) end

function Osi.PROC_LOW_HouseOfHope_BoudoirKeyLeftover() end

---@param a0 GUIDSTRING
---@param a1 GUIDSTRING
function Osi.PROC_LOW_HouseOfHope_BreakChain(a0, a1) end

function Osi.PROC_LOW_HouseOfHope_ChangePortrait() end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
function Osi.PROC_LOW_HouseOfHope_DestroyDebtorsAttire(a0, a1) end

function Osi.PROC_LOW_HouseOfHope_DisableDebtorCrimes() end

---@param a0 CHARACTER
function Osi.PROC_LOW_HouseOfHope_EquipDebtorClothesBack(a0) end

function Osi.PROC_LOW_HouseOfHope_FixIncubusDialogue() end

---@param a0 GUIDSTRING
function Osi.PROC_LOW_HouseOfHope_FoopHope(a0) end

function Osi.PROC_LOW_HouseOfHope_GUS310212_DecideRaphaelsFate() end

---@param a0 CHARACTER
function Osi.PROC_LOW_HouseOfHope_GetNaked(a0) end

function Osi.PROC_LOW_HouseOfHope_HoldRaphaelCombatAD() end

function Osi.PROC_LOW_HouseOfHope_IncubusCallingForHelp() end

---@param a0 CHARACTER
function Osi.PROC_LOW_HouseOfHope_IncubusFollowup(a0) end

function Osi.PROC_LOW_HouseOfHope_KorrillaLeavesAfterAD() end

function Osi.PROC_LOW_HouseOfHope_KorrillaLeavesForGood() end

function Osi.PROC_LOW_HouseOfHope_LaunchInferno() end

---@param a0 integer
function Osi.PROC_LOW_HouseOfHope_LaunchInferno(a0) end

function Osi.PROC_LOW_HouseOfHope_OrthonDecidesToHelp() end

---@param a0 CHARACTER
function Osi.PROC_LOW_HouseOfHope_PlayDisguiseWarning(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_LOW_HouseOfHope_PlaySpiritAD(a0, a1) end

---@param a0 GUIDSTRING
function Osi.PROC_LOW_HouseOfHope_PoofHope(a0) end

function Osi.PROC_LOW_HouseOfHope_Postmortem() end

function Osi.PROC_LOW_HouseOfHope_PostmortemDialogueHandling() end

function Osi.PROC_LOW_HouseOfHope_RaphaelGoesHostile() end

function Osi.PROC_LOW_HouseOfHope_RemoveBoudoirField() end

function Osi.PROC_LOW_HouseOfHope_ResumeRaphaelCombatAD() end

function Osi.PROC_LOW_HouseOfHope_SetAlarm() end

function Osi.PROC_LOW_HouseOfHope_SetAmbush() end

function Osi.PROC_LOW_HouseOfHope_SetHopeFree() end

function Osi.PROC_LOW_HouseOfHope_SetIncubusAlarm() end

function Osi.PROC_LOW_HouseOfHope_SetIncubusHostile() end

function Osi.PROC_LOW_HouseOfHope_SetUpTreasures() end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_LOW_HouseOfHope_SpiritSoulTriggered(a0, a1) end

function Osi.PROC_LOW_HouseOfHope_StartHopeDialogue() end

---@param a0 GUIDSTRING
function Osi.PROC_LOW_HouseOfHope_TurnIntoDemon(a0) end

function Osi.PROC_LOW_HouseOfHope_UnregisterIncubusFollowup() end

function Osi.PROC_LOW_InitializeBloodMerchant() end

function Osi.PROC_LOW_InitializeWineFestival() end

function Osi.PROC_LOW_IronThrone_AllHostagesLeftSubmersible() end

function Osi.PROC_LOW_IronThrone_CheckRemainingHostages() end

function Osi.PROC_LOW_IronThrone_CleanUpAfterIRN() end

---@param a0 CHARACTER
function Osi.PROC_LOW_IronThrone_HostageStartsLeave(a0) end

function Osi.PROC_LOW_IronThrone_HostagesLeave() end

function Osi.PROC_LOW_IronThrone_LadderLowered() end

function Osi.PROC_LOW_IronThrone_MoveRavengardToCamp() end

function Osi.PROC_LOW_IronThrone_TeleportDeadBodiesToShore() end

function Osi.PROC_LOW_JaheiraConfrontsAboutKids() end

function Osi.PROC_LOW_Jaheira_RemoveJaheiraFromCamp() end

function Osi.PROC_LOW_Jaheira_SetUpJaheiraLeaving() end

---@param a0 integer
function Osi.PROC_LOW_JaheirasHouse_AddFamilySpeakers(a0) end

function Osi.PROC_LOW_JaheirasHouse_FamilyLeaves() end

function Osi.PROC_LOW_JaheirasHouse_FightersLeave() end

---@param a0 CHARACTER
function Osi.PROC_LOW_JaheirasHouse_JaheiraAndOrMinscAD(a0) end

---@param a0 CHARACTER
function Osi.PROC_LOW_JaheirasHouse_JaheiraAndOrMinscReact(a0) end

---@param a0 string
function Osi.PROC_LOW_JaheirasHouse_JaheiraTryAD(a0) end

---@param a0 GUIDSTRING
---@param a1 DIALOGRESOURCE
function Osi.PROC_LOW_JaheirasHouse_LaunchJaheiraDialog(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_LOW_JaheirasHouse_SetupJaheiraAndOrMinscHostile(a0) end

function Osi.PROC_LOW_JaheirasHouse_TateDropsPin() end

function Osi.PROC_LOW_KotS_CheckGateMastersDefeated() end

function Osi.PROC_LOW_KotS_RestartIfNeeded() end

function Osi.PROC_LOW_KurwinCoffin_BuriedManAppears() end

function Osi.PROC_LOW_KurwinCoffin_ExplodeBody() end

function Osi.PROC_LOW_KurwinCoffin_KoboldGang_PatchUpdate() end

function Osi.PROC_LOW_KurwinCoffin_KoboldLooterSpawns() end

function Osi.PROC_LOW_KurwinCoffin_KoboldsLeave() end

function Osi.PROC_LOW_KurwinCoffin_MoveBodiesAndBooks() end

function Osi.PROC_LOW_KurwinCoffin_PeacefulKoboldEXP() end

function Osi.PROC_LOW_KurwinCoffin_PeacefulNecromancyEXP() end

---@param a0 CHARACTER
function Osi.PROC_LOW_KurwinCoffin_RetreatEast(a0) end

---@param a0 CHARACTER
function Osi.PROC_LOW_KurwinCoffin_RetreatWest(a0) end

---@param a0 ITEM
function Osi.PROC_LOW_KurwinCoffin_SetupGhosts(a0) end

function Osi.PROC_LOW_LakrissaSetup() end

function Osi.PROC_LOW_Lodge_SetupBlurgAndOmeluum() end

function Osi.PROC_LOW_LooseCollarsDestroy() end

---@param a0 CHARACTER
function Osi.PROC_LOW_MaskedVictimSetup(a0) end

function Osi.PROC_LOW_MaskedVictimsNeutral() end

---@param a0 TRIGGER
function Osi.PROC_LOW_MindflayerOutburst_CiviliansRunAway(a0) end

---@param a0 TRIGGER
function Osi.PROC_LOW_MindflayerOutburst_CombatSurprise(a0) end

---@param a0 TRIGGER
---@param a1 CHARACTER
---@param a2 string
function Osi.PROC_LOW_MindflayerOutrburstTriggered(a0, a1, a2) end

function Osi.PROC_LOW_MinscHideout_BooComesToMinscCorpse() end

function Osi.PROC_LOW_MinscHideout_CheckIfWallsAlreadyDestroyed() end

function Osi.PROC_LOW_MinscHideout_CleanupEvilMinscCombatADs() end

function Osi.PROC_LOW_MinscHideout_DelayedSetupZhentBribe() end

function Osi.PROC_LOW_MinscHideout_FightStarts() end

function Osi.PROC_LOW_MinscHideout_InitSluiceGatePuzzle() end

function Osi.PROC_LOW_MinscHideout_InitSluiceGates() end

function Osi.PROC_LOW_MinscHideout_InitValves() end

function Osi.PROC_LOW_MinscHideout_LockSluiceGate() end

function Osi.PROC_LOW_MinscHideout_MinscFightStarted() end

---@param a0 ITEM
---@param a1 integer
function Osi.PROC_LOW_MinscHideout_SetValveIndicator(a0, a1) end

function Osi.PROC_LOW_MinscHideout_SetupMinscForRecruitment() end

function Osi.PROC_LOW_MinscHideout_SetupMinscNaheira() end

function Osi.PROC_LOW_MinscHideout_SetupZhentBribe() end

---@param a0 CHARACTER
function Osi.PROC_LOW_MinscHideout_TeleportCharacter(a0) end

function Osi.PROC_LOW_MinscHideout_TeleportMinscNaheira() end

function Osi.PROC_LOW_MinscHideout_UnlockSluiceGate() end

---@param a0 ITEM
function Osi.PROC_LOW_MinscHideout_ValveOverloaded(a0) end

function Osi.PROC_LOW_MinscHideout_ZhentLeaderEscaping() end

function Osi.PROC_LOW_MissingKidsMotherTurnsPermaHostile() end

---@param a0 integer
function Osi.PROC_LOW_MurderTribunal_DEBUG_DoDolorConfrontation(a0) end

---@param a0 CHARACTER
function Osi.PROC_LOW_MurderTribunal_DEBUG_GetRandomHand(a0) end

---@param a0 CHARACTER
function Osi.PROC_LOW_MurderTribunal_DEBUG_GoToStart(a0) end

---@param a0 CHARACTER
function Osi.PROC_LOW_MurderTribunal_DEBUG_JahinscSacrifice(a0) end

---@param a0 CHARACTER
function Osi.PROC_LOW_MurderTribunal_DEBUG_StartBaptism(a0) end

---@param a0 CHARACTER
function Osi.PROC_LOW_MurderTribunal_DEBUG_StartBaptism_Dead(a0) end

function Osi.PROC_LOW_MurderTribunal_DoCultistCombatChant() end

---@param a0 integer
function Osi.PROC_LOW_MurderTribunal_DoDolorConfrontation(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_LOW_MurderTribunal_EvaluateCultistChantCooldown(a0) end

---@param a0 GUIDSTRING
---@param a1 integer
---@param a2 string
function Osi.PROC_LOW_MurderTribunal_FadeCultist(a0, a1, a2) end

---@param a0 CHARACTER
function Osi.PROC_LOW_MurderTribunal_InitJahinscFight(a0) end

function Osi.PROC_LOW_MurderTribunal_InitialBaptismDialog() end

---@param a0 CHARACTER
function Osi.PROC_LOW_MurderTribunal_InvalidTrialCharacter_TriggerHostility(a0) end

function Osi.PROC_LOW_MurderTribunal_PrepareBaptism() end

---@param a0 integer
function Osi.PROC_LOW_MurderTribunal_PrepareValeria(a0) end

---@param a0 integer
function Osi.PROC_LOW_MurderTribunal_SetValeriaChained(a0) end

---@param a0 CHARACTER
function Osi.PROC_LOW_MurderTribunal_TryDeathKnightDialog(a0) end

---@param a0 CHARACTER
function Osi.PROC_LOW_MurderTribunal_TryTrialDialog(a0) end

function Osi.PROC_LOW_MurderTribunal_UpdateGhostAppearance() end

function Osi.PROC_LOW_MurderTribunal_ValeriaAttackedChained() end

---@param a0 CHARACTER
function Osi.PROC_LOW_OrinRitual_DeathTarget_TriggerTurnEndDelay(a0) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_LOW_OskarsBeloved_CheckCombatInRoom(a0, a1) end

function Osi.PROC_LOW_OskarsBeloved_CheckFreedKerri() end

---@param a0 TRIGGER
---@param a1 string
function Osi.PROC_LOW_OskarsBeloved_CheckStartRoomTimer(a0, a1) end

function Osi.PROC_LOW_OskarsBeloved_CheckStateBooks() end

---@param a0 TRIGGER
---@param a1 string
function Osi.PROC_LOW_OskarsBeloved_CheckStopRoomTimer(a0, a1) end

function Osi.PROC_LOW_OskarsBeloved_DebugReadyState() end

---@param a0 CHARACTER
function Osi.PROC_LOW_OskarsBeloved_HandleDuelSceneInterruption(a0) end

function Osi.PROC_LOW_OskarsBeloved_HandleKerriLeaves() end

function Osi.PROC_LOW_OskarsBeloved_HandleOskarDisabled() end

function Osi.PROC_LOW_OskarsBeloved_HandleRevealingPortrait() end

function Osi.PROC_LOW_OskarsBeloved_HideBedroomPoltergeists() end

function Osi.PROC_LOW_OskarsBeloved_InitEnemiesFinalConfrontation() end

function Osi.PROC_LOW_OskarsBeloved_InitRandomTargetDB() end

function Osi.PROC_LOW_OskarsBeloved_JannathReactToOskarFate() end

function Osi.PROC_LOW_OskarsBeloved_JannathRunToOskarDead() end

---@param a0 GUIDSTRING
function Osi.PROC_LOW_OskarsBeloved_KerriAppearNextToPortrait(a0) end

---@param a0 CHARACTER
function Osi.PROC_LOW_OskarsBeloved_KerriDialogOrTeleport(a0) end

---@param a0 CHARACTER
---@param a1 TRIGGER
---@param a2 string
function Osi.PROC_LOW_OskarsBeloved_LeftTriggerCheckCombat(a0, a1, a2) end

function Osi.PROC_LOW_OskarsBeloved_PlaceBedroomPoltergeists() end

function Osi.PROC_LOW_OskarsBeloved_PlayersFledFinalConfrontation() end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_LOW_OskarsBeloved_PoltergeistChooseThrowTarget(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 string
function Osi.PROC_LOW_OskarsBeloved_PoltergeistThrow(a0, a1, a2) end

---@param a0 CHARACTER
function Osi.PROC_LOW_OskarsBeloved_ReadyState(a0) end

function Osi.PROC_LOW_OskarsBeloved_RegisterAtelierTriggerZombies() end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_LOW_OskarsBeloved_RoomTargetAdd(a0, a1) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_LOW_OskarsBeloved_RoomTargetRemove(a0, a1) end

---@param a0 string
---@param a1 string
function Osi.PROC_LOW_OskarsBeloved_RoomThrow(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_LOW_OskarsBeloved_SendKerriToBedroom(a0) end

function Osi.PROC_LOW_OskarsBeloved_SetHauntedBooks() end

function Osi.PROC_LOW_OskarsBeloved_SetNotHauntedBooks() end

---@param a0 GUIDSTRING
function Osi.PROC_LOW_OskarsBeloved_SetupFinalConfrontation(a0) end

function Osi.PROC_LOW_OskarsBeloved_StartDuel() end

function Osi.PROC_LOW_OskarsBeloved_StartFinalCombat() end

function Osi.PROC_LOW_OskarsBeloved_StartHauntingCombat() end

function Osi.PROC_LOW_OskarsBeloved_StopPossession() end

function Osi.PROC_LOW_OskasBeloved_SetJannathEstate() end

---@param a0 GUIDSTRING
function Osi.PROC_LOW_Park_AddCiviliansToCombat(a0) end

function Osi.PROC_LOW_Park_EquipWeapon() end

function Osi.PROC_LOW_Park_EvaluateCultistTargets() end

function Osi.PROC_LOW_Park_FixGUS296599() end

---@param a0 string
function Osi.PROC_LOW_Park_GroupLeaves(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_LOW_Park_HideCultists(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_LOW_Park_MurderTargets(a0) end

function Osi.PROC_LOW_Park_OffstageCivilians() end

function Osi.PROC_LOW_Park_OnstageReplacements() end

function Osi.PROC_LOW_Park_SetCiviliansCultistEnemy() end

function Osi.PROC_LOW_PhilgravesMansion_AlertTrigger() end

---@param a0 CHARACTER
function Osi.PROC_LOW_PhilgravesMansion_ApplyCurseCheckImmunity(a0) end

function Osi.PROC_LOW_PhilgravesMansion_BeggarTakeover() end

function Osi.PROC_LOW_PhilgravesMansion_CarrionResurrection() end

function Osi.PROC_LOW_PhilgravesMansion_ChangeFactionUndeads() end

function Osi.PROC_LOW_PhilgravesMansion_EndLumbarVignette() end

function Osi.PROC_LOW_PhilgravesMansion_EnemiesDetectingAlarm() end

function Osi.PROC_LOW_PhilgravesMansion_ExplodeCoffins() end

function Osi.PROC_LOW_PhilgravesMansion_InitCoffinMinions() end

function Osi.PROC_LOW_PhilgravesMansion_InitJars() end

function Osi.PROC_LOW_PhilgravesMansion_KillThrumboInHouse() end

---@param a0 GUIDSTRING
function Osi.PROC_LOW_PhilgravesMansion_LumbarReactToPlayerPunch(a0) end

---@param a0 CHARACTER
function Osi.PROC_LOW_PhilgravesMansion_PlayCarrionReaction(a0) end

---@param a0 CHARACTER
function Osi.PROC_LOW_PhilgravesMansion_ProcessLairDisturbance(a0) end

function Osi.PROC_LOW_PhilgravesMansion_PunchLumbar() end

function Osi.PROC_LOW_PhilgravesMansion_RemoveAllBeggars() end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_LOW_PhilgravesMansion_RemoveCharacter(a0, a1) end

function Osi.PROC_LOW_PhilgravesMansion_SendAllJarsToBasement() end

function Osi.PROC_LOW_PhilgravesMansion_SendZombiesToBasement() end

function Osi.PROC_LOW_PhilgravesMansion_SetAlarm() end

function Osi.PROC_LOW_PhilgravesMansion_SetOneShots() end

function Osi.PROC_LOW_PhilgravesMansion_StartBeating() end

function Osi.PROC_LOW_PhilgravesMansion_WakeUpLairMinions() end

function Osi.PROC_LOW_PhilgravesMansion_ZombiesGoToHouse() end

---@param a0 ITEM
---@param a1 ITEM
function Osi.PROC_LOW_Philgraves_OpenOrCloseDoor(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_LOW_PlagueShip_ApplyPlague(a0) end

function Osi.PROC_LOW_PlagueShip_RemovePlague() end

function Osi.PROC_LOW_PlagueShip_SpawnImp() end

---@param a0 integer
---@param a1 GUIDSTRING
function Osi.PROC_LOW_QuestGrenadeThrownAtHag(a0, a1) end

function Osi.PROC_LOW_RemoveVoloAlcoholTrail() end

function Osi.PROC_LOW_ReproduceWineFestivalChatter() end

function Osi.PROC_LOW_ResetJarsPosition() end

function Osi.PROC_LOW_SWS_AtWall_DisperseCivs() end

function Osi.PROC_LOW_SWS_BaldursMouth_DisperseCivs() end

function Osi.PROC_LOW_SWS_BasiliskGate_DisperseCivs() end

function Osi.PROC_LOW_SWS_Bonecloak_DisperseCivs() end

function Osi.PROC_LOW_SWS_Disabled() end

function Osi.PROC_LOW_SWS_DocksRoad_DisperseCivs() end

function Osi.PROC_LOW_SWS_InitPatrols() end

function Osi.PROC_LOW_SWS_NearMermaid_ClearTraders() end

function Osi.PROC_LOW_SWS_Transition() end

---@param a0 GUIDSTRING
function Osi.PROC_LOW_SahuaginAttack_QueuePAD(a0) end

---@param a0 CHARACTER
function Osi.PROC_LOW_SahuaginAttack_TryPAD(a0) end

function Osi.PROC_LOW_SerialKiller_AddFigarosCharactersToCombatGroup() end

function Osi.PROC_LOW_SerialKiller_AddFigarosCharactersToCombatGroupButDolor() end

function Osi.PROC_LOW_SerialKiller_CharactersToWineFestival() end

function Osi.PROC_LOW_SerialKiller_CloseFigaroDoors() end

---@param a0 integer
function Osi.PROC_LOW_SerialKiller_CrimeScene(a0) end

function Osi.PROC_LOW_SerialKiller_DevellaToBasilisk() end

---@param a0 string
function Osi.PROC_LOW_SerialKiller_DolorTryToEscape(a0) end

function Osi.PROC_LOW_SerialKiller_DolorUseSpellGoAway() end

function Osi.PROC_LOW_SerialKiller_DoppelgangersAsDolor() end

function Osi.PROC_LOW_SerialKiller_FigarosSetupCommon() end

---@param a0 CHARACTER
function Osi.PROC_LOW_SerialKiller_HostilityAtFigaro(a0) end

function Osi.PROC_LOW_SerialKiller_MoveDolorAndDoppelgangersToFigaro() end

function Osi.PROC_LOW_SerialKiller_PerformRitualAndSClearFlags() end

function Osi.PROC_LOW_SerialKiller_SettingUpScene() end

function Osi.PROC_LOW_SerialKiller_SetupDevellaAtFigaros() end

function Osi.PROC_LOW_SerialKiller_TryStartChatter() end

function Osi.PROC_LOW_SerialKiller_WineFestivalAttendantsRunAway() end

---@param a0 GUIDSTRING
function Osi.PROC_LOW_SerialKiller_WineFestivalAttendantsRunAway(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_LOW_SerialKiller_WineFestivalCrowds_RuneAwaySavegamePatching(a0) end

---@param a0 CHARACTER
function Osi.PROC_LOW_SetHagDoubleCombatState(a0) end

function Osi.PROC_LOW_SetNewHagDoublesSpawnPoints() end

---@param a0 integer
function Osi.PROC_LOW_SetOnStage_Redcaps(a0) end

function Osi.PROC_LOW_SetRitualCharactersInPosition() end

---@param a0 integer
function Osi.PROC_LOW_SetRitualWalls(a0) end

function Osi.PROC_LOW_SetShroomDifficulty() end

function Osi.PROC_LOW_SetVoodooDollPotentialDestinations() end

function Osi.PROC_LOW_SetupHagCellarCombatSpotting() end

function Osi.PROC_LOW_SetupHagRelatedReadables() end

function Osi.PROC_LOW_SetupJatloInstaDiedSpotting() end

function Osi.PROC_LOW_SetupLodgeGithKidMassacre() end

function Osi.PROC_LOW_SetupLoraVanraHomeScene() end

function Osi.PROC_LOW_SetupMindflayerOutbursts() end

function Osi.PROC_LOW_Sewers_ArabellaSetup() end

---@param a0 CHARACTER
function Osi.PROC_LOW_Sewers_MakeGhostFollow(a0) end

function Osi.PROC_LOW_Sewers_ResolveCultists() end

function Osi.PROC_LOW_Sewers_SelectRandomADSpeaker() end

function Osi.PROC_LOW_Sewers_StopGhostFollow() end

function Osi.PROC_LOW_SharGrotto_Admitted() end

---@param a0 ITEM
---@param a1 integer
function Osi.PROC_LOW_SharGrotto_CheckValue(a0, a1) end

function Osi.PROC_LOW_SharGrotto_CultistsHostile() end

function Osi.PROC_LOW_SharGrotto_FightPlayerAD() end

function Osi.PROC_LOW_SharGrotto_LossAltarInit() end

function Osi.PROC_LOW_SharGrotto_MemoryCheck() end

---@param a0 integer
function Osi.PROC_LOW_SharGrotto_MoveAltar(a0) end

---@param a0 number
function Osi.PROC_LOW_SharGrotto_MoveTrigger(a0) end

function Osi.PROC_LOW_SharGrotto_NoSummonBy_Patching() end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_LOW_SharGrotto_ParentAssault(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_LOW_SharGrotto_ParentAssault_NoKiller(a0) end

---@param a0 CHARACTER
function Osi.PROC_LOW_SharGrotto_ParentLeave(a0) end

function Osi.PROC_LOW_SharGrotto_ParentsFate() end

---@param a0 integer
function Osi.PROC_LOW_SharGrotto_PrepareAltarMove(a0) end

---@param a0 CHARACTER
function Osi.PROC_LOW_SharGrotto_TriggerDialog(a0) end

---@param a0 string
function Osi.PROC_LOW_SharGrotto_ViconiaConfrontation_DefineExtraSpeakers(a0) end

function Osi.PROC_LOW_SharGrotto_ViconiaConfrontation_SetUp() end

---@param a0 integer
function Osi.PROC_LOW_ShowAttendantsWineFestival(a0) end

---@param a0 integer
function Osi.PROC_LOW_ShowDolorAndDoppelgangers(a0) end

function Osi.PROC_LOW_ShroomDestroyedBeforeHagRetreat() end

function Osi.PROC_LOW_SorcerousSundries_ActivateBasementRoute() end

function Osi.PROC_LOW_SorcerousSundries_ActivatePuzzlePortals() end

function Osi.PROC_LOW_SorcerousSundries_AradinLeaveShop() end

---@param a0 CHARACTER
function Osi.PROC_LOW_SorcerousSundries_AradinSetup(a0) end

function Osi.PROC_LOW_SorcerousSundries_AssignConclusionDialogs() end

function Osi.PROC_LOW_SorcerousSundries_CTYPatchJournal() end

---@param a0 CHARACTER
function Osi.PROC_LOW_SorcerousSundries_ChangeOwnershipClerk(a0) end

function Osi.PROC_LOW_SorcerousSundries_CheckIsobelInBGO() end

function Osi.PROC_LOW_SorcerousSundries_CheckIsobelInCTY() end

function Osi.PROC_LOW_SorcerousSundries_CheckRolanBackToShop() end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
---@param a2 DIALOGRESOURCE
function Osi.PROC_LOW_SorcerousSundries_CheckSibling(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
function Osi.PROC_LOW_SorcerousSundries_CheckSiblingKilledInRamaziths(a0, a1) end

function Osi.PROC_LOW_SorcerousSundries_ChooseNightsongRewardStep() end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_LOW_SorcerousSundries_ClerkWarnsBannedPlayers(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_LOW_SorcerousSundries_EnabledUsedTeleporter(a0) end

function Osi.PROC_LOW_SorcerousSundries_FreeNightsong() end

function Osi.PROC_LOW_SorcerousSundries_HandleNightsongVictory() end

---@param a0 CHARACTER
function Osi.PROC_LOW_SorcerousSundries_InitShop(a0) end

function Osi.PROC_LOW_SorcerousSundries_InitThugs() end

---@param a0 CHARACTER
function Osi.PROC_LOW_SorcerousSundries_KlankAttackedByPlayer(a0) end

function Osi.PROC_LOW_SorcerousSundries_LongRestAfterConfrontation() end

---@param a0 CHARACTER
---@param a1 ITEM
function Osi.PROC_LOW_SorcerousSundries_MistyStepCharacterToDestination(a0, a1) end

function Osi.PROC_LOW_SorcerousSundries_MoveIsobelToCTY() end

function Osi.PROC_LOW_SorcerousSundries_MovingNightsongToPlayer() end

---@param a0 CHARACTER
function Osi.PROC_LOW_SorcerousSundries_NightsongSetup(a0) end

function Osi.PROC_LOW_SorcerousSundries_PatchCagedState() end

function Osi.PROC_LOW_SorcerousSundries_PatchNSBack() end

function Osi.PROC_LOW_SorcerousSundries_PlaceRolanJournal() end

---@param a0 CHARACTER
function Osi.PROC_LOW_SorcerousSundries_ProceedWithClerkReplacement(a0) end

function Osi.PROC_LOW_SorcerousSundries_RemovePortals() end

---@param a0 CHARACTER
function Osi.PROC_LOW_SorcerousSundries_ReplaceMainClerk(a0) end

function Osi.PROC_LOW_SorcerousSundries_ResetKlankResurrect() end

function Osi.PROC_LOW_SorcerousSundries_ResetRolanAsClerk() end

function Osi.PROC_LOW_SorcerousSundries_ResetRolanTakeover() end

---@param a0 CHARACTER
function Osi.PROC_LOW_SorcerousSundries_RolanSetup(a0) end

function Osi.PROC_LOW_SorcerousSundries_RolanTakeover() end

---@param a0 CHARACTER
function Osi.PROC_LOW_SorcerousSundries_RolanTeleportToRamazith(a0) end

---@param a0 CHARACTER
function Osi.PROC_LOW_SorcerousSundries_RolanTryTeleportToRamazith(a0) end

function Osi.PROC_LOW_SorcerousSundries_SCLPatchJournal() end

---@param a0 CHARACTER
function Osi.PROC_LOW_SorcerousSundries_SendRolanToLOW(a0) end

function Osi.PROC_LOW_SorcerousSundries_SetIsobelNSCampPostRamazith() end

function Osi.PROC_LOW_SorcerousSundries_SetLorroakanEnemy() end

---@param a0 CHARACTER
function Osi.PROC_LOW_SorcerousSundries_SetMainClerkSpotting(a0) end

function Osi.PROC_LOW_SorcerousSundries_SetNightsongEnemy() end

---@param a0 CHARACTER
function Osi.PROC_LOW_SorcerousSundries_SetSpottingAndCombatants(a0) end

function Osi.PROC_LOW_SorcerousSundries_SetupAradinAttack() end

---@param a0 GUIDSTRING
function Osi.PROC_LOW_SorcerousSundries_SetupConclusion(a0) end

---@param a0 CHARACTER
function Osi.PROC_LOW_SorcerousSundries_StartDialogConfrontation(a0) end

---@param a0 DIALOGRESOURCE
function Osi.PROC_LOW_SorcerousSundries_StartRepeatedAD(a0) end

function Osi.PROC_LOW_SorcerousSundries_TeleportIsobelAsylum() end

---@param a0 integer
function Osi.PROC_LOW_SorcerousSundries_TeleportIsobelAsylum(a0) end

function Osi.PROC_LOW_SorcerousSundries_TeleportNightsongToCamp() end

function Osi.PROC_LOW_SorcerousSundries_TeleportNightsongToRamazith() end

---@param a0 GUIDSTRING
---@param a1 integer
function Osi.PROC_LOW_SorcerousSundries_ToggleBlacklisted(a0, a1) end

function Osi.PROC_LOW_SorcerousSundries_UpdateNoResolution() end

function Osi.PROC_LOW_StartGithKidCombat() end

---@param a0 CHARACTER
---@param a1 ITEM
---@param a2 string
---@param a3 CHARACTER
function Osi.PROC_LOW_SteelWatchFoundry_ActivateKillSwitch(a0, a1, a2, a3) end

---@param a0 CHARACTER
function Osi.PROC_LOW_SteelWatchFoundry_CheckAllNetherstonesReceived(a0) end

function Osi.PROC_LOW_SteelWatchFoundry_DeactivateAllSwitches() end

---@param a0 GUIDSTRING
function Osi.PROC_LOW_SteelWatchFoundry_DestroyCollar(a0) end

function Osi.PROC_LOW_SteelWatchFoundry_DestroyIronThrone() end

function Osi.PROC_LOW_SteelWatchFoundry_DetermineWulbrenInvolvement() end

---@param a0 TRIGGER
function Osi.PROC_LOW_SteelWatchFoundry_Elevator_TeleportCharactersTo(a0) end

function Osi.PROC_LOW_SteelWatchFoundry_FailedRevolution() end

function Osi.PROC_LOW_SteelWatchFoundry_FundangoReturn() end

function Osi.PROC_LOW_SteelWatchFoundry_GiveBomb() end

function Osi.PROC_LOW_SteelWatchFoundry_GondiansWalkOff() end

function Osi.PROC_LOW_SteelWatchFoundry_IronHandsWalkOff() end

function Osi.PROC_LOW_SteelWatchFoundry_KillAllBaneites() end

function Osi.PROC_LOW_SteelWatchFoundry_KillAllGondians() end

function Osi.PROC_LOW_SteelWatchFoundry_KillSwitchKill() end

function Osi.PROC_LOW_SteelWatchFoundry_LoadDestroyedFoundry() end

---@param a0 CHARACTER
---@param a1 ITEM
function Osi.PROC_LOW_SteelWatchFoundry_LooterEscape(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_LOW_SteelWatchFoundry_NetherstonesCollectedEmperorAD(a0) end

function Osi.PROC_LOW_SteelWatchFoundry_PostOutcome_SetUpBarcus() end

function Osi.PROC_LOW_SteelWatchFoundry_PostOutcome_SetUpToobin() end

function Osi.PROC_LOW_SteelWatchFoundry_PostOutcome_SetUpWulbrenHappy() end

function Osi.PROC_LOW_SteelWatchFoundry_ReadyLooters() end

function Osi.PROC_LOW_SteelWatchFoundry_RemoveGondianDialogs() end

function Osi.PROC_LOW_SteelWatchFoundry_SetAllBaneitesFullHostile() end

function Osi.PROC_LOW_SteelWatchFoundry_SetAllBaneitesNeutral() end

function Osi.PROC_LOW_SteelWatchFoundry_SetUpAfterIRN() end

function Osi.PROC_LOW_SteelWatchFoundry_SetUpAllPrisonersDead() end

function Osi.PROC_LOW_SteelWatchFoundry_SetUpAllPrisonersSaved() end

function Osi.PROC_LOW_SteelWatchFoundry_SetUpMajorityPrisonersDead() end

function Osi.PROC_LOW_SteelWatchFoundry_SetUpMajorityPrisonersSaved() end

function Osi.PROC_LOW_SteelWatchFoundry_SmallCargoElevator_MoveDown() end

function Osi.PROC_LOW_SteelWatchFoundry_SmallCargoElevator_MoveUp() end

function Osi.PROC_LOW_SteelWatchFoundry_StartExplodeCinematic() end

---@param a0 CHARACTER
function Osi.PROC_LOW_SteelWatchFoundry_StartExplodeCinematicOnPlayer(a0) end

function Osi.PROC_LOW_SteelWatchFoundry_StartIRNDestructionCinematic() end

function Osi.PROC_LOW_SteelWatchFoundry_StartOutcomeDialog() end

function Osi.PROC_LOW_SteelWatchFoundry_TeleportOutcomeParticipants() end

function Osi.PROC_LOW_SteelWatchFoundry_TryStartFundangoLostHope() end

function Osi.PROC_LOW_SteelWatchFoundry_UnLoadDestroyedFoundry() end

function Osi.PROC_LOW_SteelWatchFoundry_WorkroomElevatorDown() end

function Osi.PROC_LOW_SteelWatchFoundry_WorkroomElevatorUp() end

function Osi.PROC_LOW_SteelWatchFoundry_WulbrenLeaves() end

function Osi.PROC_LOW_SteelWatchFoundy_Outcome_AutoResolve() end

function Osi.PROC_LOW_StormshoreTabernacle_TurnOffCandles() end

function Osi.PROC_LOW_StormshoreTabernacle_TurnOnCandles() end

---@param a0 CHARACTER
function Osi.PROC_LOW_SurrogateMotherSetup(a0) end

function Osi.PROC_LOW_TadpoleTransport_GetTadpoles() end

function Osi.PROC_LOW_TadpoleTransport_PatchRevision() end

function Osi.PROC_LOW_TadpoleTransport_RevealIllusion() end

function Osi.PROC_LOW_TeleportVoodooDoll() end

function Osi.PROC_LOW_TheLodge_CheckIfPlayersGaveOwlbearEgg() end

function Osi.PROC_LOW_TressymTrade_DebugSetup() end

function Osi.PROC_LOW_TressymTrade_Init() end

function Osi.PROC_LOW_TressymTrade_NextPhase() end

function Osi.PROC_LOW_TressymTrade_RemoveTradedItems() end

function Osi.PROC_LOW_TressymTrade_TressymInit() end

function Osi.PROC_LOW_UndeadHusbandSetup() end

function Osi.PROC_LOW_UndercellarEntrance_HostileDoorOpened() end

function Osi.PROC_LOW_UndercellarEntrance_TusgrontDoorActions() end

function Osi.PROC_LOW_UndercityRuins_AddEntrancedStatusToAmbushers() end

---@param a0 CHARACTER
function Osi.PROC_LOW_UndercityRuins_AmbusherOffstage(a0) end

function Osi.PROC_LOW_UndercityRuins_BhaalDoorOpens() end

function Osi.PROC_LOW_UndercityRuins_BlockExitDoor() end

---@param a0 GUIDSTRING
function Osi.PROC_LOW_UndercityRuins_StatueADChecker(a0) end

function Osi.PROC_LOW_UndercityRuins_TidyCombat() end

function Osi.PROC_LOW_UndercityRuins_TidyTriggers() end

function Osi.PROC_LOW_UndercityRuins_TryToOffstage() end

function Osi.PROC_LOW_UndercityRuins_UpdateSnipingStatus() end

function Osi.PROC_LOW_Unlock_Slayer_DeathGrowl() end

function Osi.PROC_LOW_VampireAmbush_AmbushCombatEnded() end

---@param a0 CHARACTER
function Osi.PROC_LOW_VampireAmbush_SpawnEscaped(a0) end

function Osi.PROC_LOW_VampireAmbush_Spawns_Init() end

---@param a0 CHARACTER
function Osi.PROC_LOW_VampireAmbush_StartPostCombatDialog(a0) end

function Osi.PROC_LOW_VampireAmbush_TeleportNPCs() end

function Osi.PROC_LOW_VampireAmbush_TeleportPlayers() end

function Osi.PROC_LOW_VanraRunsAwayAfterVomitInCellar() end

function Osi.PROC_LOW_VanraSavedDialog() end

function Osi.PROC_LOW_VoloExecution_SpotSetup() end

function Osi.PROC_LOW_VoloExplodedByAgitator() end

function Osi.PROC_LOW_VoloFateResolved() end

function Osi.PROC_LOW_VoloFate_ExecutionSceneOver() end

function Osi.PROC_LOW_VoloFate_Setup() end

function Osi.PROC_LOW_VoloFate_ThugsAggro() end

function Osi.PROC_LOW_VoodooDollToDefaultSpot() end

function Osi.PROC_LOW_VossSewers_LeavesForEndgame() end

function Osi.PROC_LOW_VossSewers_SetupDragonborn() end

function Osi.PROC_LOW_VossSewers_SetupVoss() end

function Osi.PROC_LOW_WaterQueensHouse_ApplyPatchForWaveservantsReturn() end

---@param a0 CHARACTER
function Osi.PROC_LOW_WaterQueensHouse_BlessPlayer(a0) end

function Osi.PROC_LOW_WaterQueensHouse_CallSahuagins() end

---@param a0 CHARACTER
function Osi.PROC_LOW_WaterQueensHouse_CursePlayer(a0) end

function Osi.PROC_LOW_WaterQueensHouse_EndFuneral() end

function Osi.PROC_LOW_WaterQueensHouse_ReturnFromIronThrone() end

function Osi.PROC_LOW_WaterQueensHouse_ShouldReturnFromIronThrone() end

function Osi.PROC_LOW_WaterQueensHouse_UmberleeSpell() end

function Osi.PROC_LOW_WindmillMindflayerFollowupFamilyRunsAway() end

function Osi.PROC_LOW_WindmillMindflayerFollowup_Setup() end

---@param a0 FLAG
function Osi.PROC_LOW_ZhentLeaderPermaDefeated_CheckStolenGold(a0) end

---@param a0 TRIGGER
---@param a1 CHARACTER
function Osi.PROC_LaunchAmbush(a0, a1) end

---@param a0 TRIGGER
---@param a1 CHARACTER
function Osi.PROC_LaunchAmbushOnce(a0, a1) end

---@param a0 CHARACTER
---@param a1 ITEM
function Osi.PROC_LaunchInvestigationSkillCheckAD(a0, a1) end

---@param a0 CHARACTER
---@param a1 ITEM
function Osi.PROC_LaunchPerceptionSkillCheckAD(a0, a1) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_LaunchRespec(a0, a1) end

function Osi.PROC_LaunchTestCompanionQueueTimer() end

---@param a0 GUIDSTRING
---@param a1 GUIDSTRING
function Osi.PROC_LeftCombat(a0, a1) end

---@param a0 string
function Osi.PROC_LevelBecameUnreachable(a0) end

---@param a0 string
function Osi.PROC_LevelGameplayLoadedOnce(a0) end

---@param a0 string
function Osi.PROC_LevelLoadedOnce(a0) end

---@param a0 string
---@param a1 GUIDSTRING
function Osi.PROC_LevelObjectRegistered(a0, a1) end

---@param a0 string
---@param a1 GUIDSTRING
function Osi.PROC_LevelObjectUnregistered(a0, a1) end

---@param a0 string
function Osi.PROC_LevelUnloading(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_LevelUp(a0) end

---@param a0 GUIDSTRING
---@param a1 integer
function Osi.PROC_LevelUpBy(a0, a1) end

---@param a0 GUIDSTRING
function Osi.PROC_LocalBecameUnreachable(a0) end

---@param a0 string
function Osi.PROC_LockAllGroupWaypoints(a0) end

function Osi.PROC_LockAllUnlockedWaypoints() end

---@param a0 string
---@param a1 CHARACTER
function Osi.PROC_LockWaypoint(a0, a1) end

---@param a0 string
function Osi.PROC_LockWaypointForAll(a0) end

---@param a0 string
---@param a1 CHARACTER
function Osi.PROC_LockWaypoint_DBRecord(a0, a1) end

function Osi.PROC_LongRest() end

---@param a0 string
function Osi.PROC_LongRestOrLevelUnloading(a0) end

---@param a0 string
function Osi.PROC_LongRest_InLevel(a0) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_LongRest_Player(a0, a1) end

---@param a0 EFFECTRESOURCE
---@param a1 GUIDSTRING
---@param a2 GUIDSTRING
---@param a3 string
---@param a4 string
---@param a5 string
---@param a6 string
function Osi.PROC_LoopBeamEffect(a0, a1, a2, a3, a4, a5, a6) end

---@param a0 EFFECTRESOURCE
---@param a1 GUIDSTRING
---@param a2 GUIDSTRING
---@param a3 string
---@param a4 string
---@param a5 string
---@param a6 string
function Osi.PROC_LoopBeamEffect_Intern(a0, a1, a2, a3, a4, a5, a6) end

---@param a0 EFFECTRESOURCE
---@param a1 GUIDSTRING
---@param a2 string
---@param a3 string
---@param a4 string
function Osi.PROC_LoopEffect(a0, a1, a2, a3, a4) end

---@param a0 EFFECTRESOURCE
---@param a1 GUIDSTRING
---@param a2 string
---@param a3 string
---@param a4 string
---@param a5 number
function Osi.PROC_LoopEffect(a0, a1, a2, a3, a4, a5) end

---@param a0 EFFECTRESOURCE
---@param a1 GUIDSTRING
---@param a2 string
---@param a3 number
---@param a4 number
---@param a5 number
---@param a6 string
function Osi.PROC_LoopEffectAtPosition(a0, a1, a2, a3, a4, a5, a6) end

---@param a0 EFFECTRESOURCE
---@param a1 GUIDSTRING
---@param a2 string
---@param a3 string
---@param a4 number
function Osi.PROC_LoopEffectAtPositionAndRotation(a0, a1, a2, a3, a4) end

---@param a0 EFFECTRESOURCE
---@param a1 GUIDSTRING
---@param a2 string
---@param a3 string
---@param a4 number
---@param a5 number
---@param a6 number
---@param a7 number
---@param a8 number
---@param a9 number
---@param a10 number
function Osi.PROC_LoopEffectAtPositionAndRotation(a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10) end

---@param a0 EFFECTRESOURCE
---@param a1 GUIDSTRING
---@param a2 string
---@param a3 string
---@param a4 string
---@param a5 number
function Osi.PROC_LoopEffect_Intern(a0, a1, a2, a3, a4, a5) end

function Osi.PROC_LoopEffect_Queued() end

---@param a0 string
---@param a1 ITEM
---@param a2 ITEM
---@param a3 integer
---@param a4 integer
function Osi.PROC_LootDistribution_Consumable(a0, a1, a2, a3, a4) end

---@param a0 string
---@param a1 CHARACTER
function Osi.PROC_LootDistribution_SelectBestWeaponForNPC(a0, a1) end

function Osi.PROC_LootDistribution_Trigger() end

function Osi.PROC_Low_SharGrotto_OpenDoor() end

function Osi.PROC_Low_SharGrotto_RemoveOfferedItems() end

---@param a0 CHARACTER
function Osi.PROC_MF_GoesHunting(a0) end

function Osi.PROC_MOO_AllPlayersLeftMOO() end

function Osi.PROC_MOO_Assault_ActiveTowerCheck() end

function Osi.PROC_MOO_Assault_AddDriderCaravan() end

function Osi.PROC_MOO_Assault_AddJaheriaToAssault() end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_MOO_Assault_AddToDefeatCounter(a0, a1) end

function Osi.PROC_MOO_Assault_AllyGnollsLeave() end

---@param a0 CHARACTER
---@param a1 TRIGGER
function Osi.PROC_MOO_Assault_AllyMoveToCombatReady(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_MOO_Assault_AssignHarperConfig(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_MOO_Assault_BazaarJoinThroneRoom(a0) end

---@param a0 CHARACTER
function Osi.PROC_MOO_Assault_BazaarTurnIncrease(a0) end

function Osi.PROC_MOO_Assault_BossFightDialogFailed() end

function Osi.PROC_MOO_Assault_BossFightInit() end

function Osi.PROC_MOO_Assault_ButlerLeaves() end

function Osi.PROC_MOO_Assault_ChangeDeathsToRadiant() end

---@param a0 CHARACTER
function Osi.PROC_MOO_Assault_CharTeleported(a0) end

function Osi.PROC_MOO_Assault_CheckForRoofNarrativeCombatEnd() end

function Osi.PROC_MOO_Assault_CheckSetupFlamingFist() end

function Osi.PROC_MOO_Assault_CheckSetupJaheira() end

function Osi.PROC_MOO_Assault_CheckSetupZrell() end

function Osi.PROC_MOO_Assault_CleanUpDeadBodies() end

function Osi.PROC_MOO_Assault_ClearDarkUrgeButlerTriggers() end

function Osi.PROC_MOO_Assault_ClearJaheriaFromAssault() end

function Osi.PROC_MOO_Assault_ClearPartyDialogSuppression() end

function Osi.PROC_MOO_Assault_ClearSkeletons() end

function Osi.PROC_MOO_Assault_DEBUG_InitAssault() end

---@param a0 CHARACTER
function Osi.PROC_MOO_Assault_FollowKethericPAD_Interrupt(a0) end

---@param a0 CHARACTER
function Osi.PROC_MOO_Assault_ForceAllyJoinCombat(a0) end

function Osi.PROC_MOO_Assault_ForceResolveFlamingSpy() end

function Osi.PROC_MOO_Assault_GoalInit() end

function Osi.PROC_MOO_Assault_IncreaseKethericRoundCount() end

function Osi.PROC_MOO_Assault_JaheiraFollowerDialog() end

function Osi.PROC_MOO_Assault_JaheiraNPCDialog() end

function Osi.PROC_MOO_Assault_KethericLeaves() end

function Osi.PROC_MOO_Assault_KethericLeavingDialogFailed() end

function Osi.PROC_MOO_Assault_KillAdditionalEnemies() end

---@param a0 CHARACTER
---@param a1 DEATHTYPE
function Osi.PROC_MOO_Assault_KillCharacter(a0, a1) end

function Osi.PROC_MOO_Assault_KillHarpers() end

function Osi.PROC_MOO_Assault_MoveCharactersIntoTower() end

function Osi.PROC_MOO_Assault_MoveThroneEnemiesToBazaar() end

function Osi.PROC_MOO_Assault_MoveToDefendPrison() end

function Osi.PROC_MOO_Assault_Over() end

function Osi.PROC_MOO_Assault_PATCH_FixSwappedCharacters() end

---@param a0 CHARACTER
function Osi.PROC_MOO_Assault_PrepareBossFightDialog(a0) end

function Osi.PROC_MOO_Assault_PrisonEnemies_AllowDeathBloomSpell() end

function Osi.PROC_MOO_Assault_PrisonEnemies_BlockDeathBloomSpell() end

function Osi.PROC_MOO_Assault_PrisonEnemies_SummonedNecromites_CounterUpdate() end

function Osi.PROC_MOO_Assault_PurgePrison() end

---@param a0 CHARACTER
---@param a1 TRIGGER
---@param a2 string
---@param a3 string
---@param a4 integer
function Osi.PROC_MOO_Assault_QueueMoveTo(a0, a1, a2, a3, a4) end

function Osi.PROC_MOO_Assault_ReadyDarkUrgeButler() end

function Osi.PROC_MOO_Assault_ReadyPrisonSkeletons() end

function Osi.PROC_MOO_Assault_RemoveDeadFlamingFist() end

function Osi.PROC_MOO_Assault_RemoveDeadHarpers() end

function Osi.PROC_MOO_Assault_RemoveFlamingFist() end

function Osi.PROC_MOO_Assault_RemoveHAVAllies() end

---@param a0 ITEM
function Osi.PROC_MOO_Assault_RemoveItem(a0) end

function Osi.PROC_MOO_Assault_RemoveJaheiraFromParty() end

function Osi.PROC_MOO_Assault_SetBazaarHostile() end

---@param a0 ITEM
---@param a1 ITEM
function Osi.PROC_MOO_Assault_SetDynamicObject(a0, a1) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_MOO_Assault_SetFactions(a0, a1) end

function Osi.PROC_MOO_Assault_SetGnollsAssaultAllies() end

function Osi.PROC_MOO_Assault_SetGnollsAssaultOffStage() end

function Osi.PROC_MOO_Assault_SetOffStageDynamicItems() end

function Osi.PROC_MOO_Assault_SetPartyDialogSuppression() end

function Osi.PROC_MOO_Assault_SetTotalBazaarTurnCount() end

function Osi.PROC_MOO_Assault_SetUpFlamingFist() end

function Osi.PROC_MOO_Assault_SetUpHarpers() end

function Osi.PROC_MOO_Assault_SetUpZrellScene() end

function Osi.PROC_MOO_Assault_SetupMoonrise() end

function Osi.PROC_MOO_Assault_StartBossFight() end

function Osi.PROC_MOO_Assault_StartKethericLeaving() end

---@param a0 GUIDSTRING
function Osi.PROC_MOO_Assault_StartKethericLeaving(a0) end

---@param a0 string
function Osi.PROC_MOO_Assault_SwitchToHostileGroup(a0) end

---@param a0 CHARACTER
function Osi.PROC_MOO_Assault_TryCorpseCleanUp(a0) end

function Osi.PROC_MOO_Assault_TryGetGnollAsAllies() end

function Osi.PROC_MOO_Assault_TryMainFloorClearedPositions() end

function Osi.PROC_MOO_Assault_TrySetBazaarHostile() end

---@param a0 CHARACTER
---@param a1 TRIGGER
---@param a2 string
function Osi.PROC_MOO_Assault_TrySetupChar(a0, a1, a2) end

---@param a0 CHARACTER
function Osi.PROC_MOO_Assault_TryStartZrellDialog(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_MOO_Assault_TrySwapCharacter(a0, a1) end

function Osi.PROC_MOO_Assault_TryThroneRoomJoinBazaar() end

---@param a0 CHARACTER
function Osi.PROC_MOO_Assault_TryToAddJaheiraToParty(a0) end

---@param a0 CHARACTER
function Osi.PROC_MOO_Assault_TryToRemoveJaheiraFromParty(a0) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_MOO_Assault_UpdateBazaarTurnCount(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_MOO_Assault_UpdateEnemyParticipantDB(a0) end

---@param a0 CHARACTER
---@param a1 TRIGGER
function Osi.PROC_MOO_Assault_UpdateIdlePoint(a0, a1) end

---@param a0 string
function Osi.PROC_MOO_Assault_VerifySwarmCount(a0) end

function Osi.PROC_MOO_Audience_Cancelled() end

function Osi.PROC_MOO_Audience_ChangeToSoloDialog() end

function Osi.PROC_MOO_Audience_DEBUG_InitState() end

---@param a0 string
function Osi.PROC_MOO_Audience_Ended(a0) end

function Osi.PROC_MOO_Audience_RoofTransgressionSetup() end

function Osi.PROC_MOO_Audience_SetUpKethericDialog() end

function Osi.PROC_MOO_Audience_SetupRoofCultist() end

---@param a0 string
function Osi.PROC_MOO_Audience_SetupSceneManager(a0) end

function Osi.PROC_MOO_Audience_SetupWinePilgrim() end

---@param a0 CHARACTER
function Osi.PROC_MOO_Audience_StartAudience(a0) end

---@param a0 CHARACTER
function Osi.PROC_MOO_Backgrounds_CriminalCheckEnteredRooms(a0) end

function Osi.PROC_MOO_BalthazarsSecrets_AllowDoors() end

---@param a0 CHARACTER
---@param a1 ITEM
---@param a2 integer
function Osi.PROC_MOO_BalthazarsSecrets_HiddenCheckAllBooks(a0, a1, a2) end

function Osi.PROC_MOO_Bazaar_CheckPilgrimAvailability() end

function Osi.PROC_MOO_Bazaar_TryToSetPilgrimsToColony() end

---@param a0 CHARACTER
function Osi.PROC_MOO_Bazaar_UnregisterPilgrimTrigger(a0) end

function Osi.PROC_MOO_BloodMerchant_ClearOriginMoment() end

---@param a0 CHARACTER
function Osi.PROC_MOO_BludgeoningTracking_Recheck(a0) end

---@param a0 CHARACTER
function Osi.PROC_MOO_BludgeoningTracking_SetFlag(a0) end

function Osi.PROC_MOO_BossFight_NightsongReturnedToRoof() end

---@param a0 TRIGGER
function Osi.PROC_MOO_BossFight_ReturnNightsongToRoof(a0) end

---@param a0 integer
function Osi.PROC_MOO_BossFight_TryAddNightsongToDialog(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_MOO_BugBearVendor_CombatAD(a0) end

---@param a0 CHARACTER
---@param a1 TRIGGER
function Osi.PROC_MOO_Crimes_AssignFloor(a0, a1) end

function Osi.PROC_MOO_Crimes_EndIntruderCrimes() end

function Osi.PROC_MOO_Docks_SpawnTadpoles() end

function Osi.PROC_MOO_EntranceCheckpoint_CloseGoalCleanup() end

---@param a0 integer
function Osi.PROC_MOO_Execution_AdvanceADQueue(a0) end

---@param a0 DIALOGRESOURCE
function Osi.PROC_MOO_Execution_AdvanceADQueue_AfterAD(a0) end

function Osi.PROC_MOO_Execution_CleanUp() end

---@param a0 integer
function Osi.PROC_MOO_Execution_DaisyAD(a0) end

function Osi.PROC_MOO_Execution_DebugResolve() end

function Osi.PROC_MOO_Execution_Debug_RemoveMinthara() end

function Osi.PROC_MOO_Execution_DetermineADQueue() end

function Osi.PROC_MOO_Execution_DrowInit() end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_MOO_Execution_FallbackCombatInterruptionDialog(a0, a1) end

function Osi.PROC_MOO_Execution_ForceClearSpeakers() end

function Osi.PROC_MOO_Execution_ForceKillGoblins() end

function Osi.PROC_MOO_Execution_ForceResolve() end

function Osi.PROC_MOO_Execution_ForceResolveCleanUp() end

---@param a0 integer
function Osi.PROC_MOO_Execution_IgnoreGoblinCrimes(a0) end

function Osi.PROC_MOO_Execution_MintharaEscort() end

---@param a0 string
function Osi.PROC_MOO_Execution_QueueAD(a0) end

function Osi.PROC_MOO_Execution_SetupFinished() end

function Osi.PROC_MOO_Execution_SetupRecurringGoblins() end

function Osi.PROC_MOO_Execution_StartFallbackExecutionCombat() end

---@param a0 GUIDSTRING
function Osi.PROC_MOO_Execution_StartGoblinsInCombatAD(a0) end

---@param a0 CHARACTER
function Osi.PROC_MOO_Executioner_GiveKey(a0) end

---@param a0 CHARACTER
function Osi.PROC_MOO_FlyingGhouls_ClearGhoul(a0) end

function Osi.PROC_MOO_FlyingGhouls_LeaveTower() end

---@param a0 CHARACTER
function Osi.PROC_MOO_FlyingGhouls_StartTakeOff(a0) end

function Osi.PROC_MOO_GnomeRescue_BarcusRewardUpdate() end

function Osi.PROC_MOO_GnomeRescue_ForceClose() end

function Osi.PROC_MOO_GnomeRescue_HavBarcusUpdate() end

function Osi.PROC_MOO_GnomeRescue_PrisonerFoundUpdate() end

function Osi.PROC_MOO_GnomeRescue_SCEReward() end

function Osi.PROC_MOO_HiddenTreasure_PurgeDBs() end

function Osi.PROC_MOO_Hound_CheckDoor() end

function Osi.PROC_MOO_InfernalVendor_Escape() end

---@param a0 integer
function Osi.PROC_MOO_Jailbreak_AddExtrasToBoatDialog(a0) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_MOO_Jailbreak_AddToPrison(a0, a1) end

function Osi.PROC_MOO_Jailbreak_BoatBringsNearbyPlayers() end

function Osi.PROC_MOO_Jailbreak_BoatLeaderTurn() end

function Osi.PROC_MOO_Jailbreak_BoatLeaves() end

function Osi.PROC_MOO_Jailbreak_BrokeOutFoundUpdate() end

function Osi.PROC_MOO_Jailbreak_CheckBoatDeparture() end

function Osi.PROC_MOO_Jailbreak_CheckBoatReady() end

function Osi.PROC_MOO_Jailbreak_CheckEnd() end

function Osi.PROC_MOO_Jailbreak_CheckForOtherToolOnGround() end

---@param a0 ITEM
function Osi.PROC_MOO_Jailbreak_CheckValidTool(a0) end

---@param a0 ITEM
function Osi.PROC_MOO_Jailbreak_ClearChain(a0) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 integer
function Osi.PROC_MOO_Jailbreak_ClearPrisoner(a0, a1, a2) end

---@param a0 CHARACTER
function Osi.PROC_MOO_Jailbreak_DisarmPrisoner(a0) end

function Osi.PROC_MOO_Jailbreak_EmergencyLeverUsed() end

function Osi.PROC_MOO_Jailbreak_End() end

---@param a0 CHARACTER
---@param a1 FLAG
function Osi.PROC_MOO_Jailbreak_EscapeMove(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_MOO_Jailbreak_Escaped(a0) end

function Osi.PROC_MOO_Jailbreak_FindBoatLeader() end

---@param a0 CHARACTER
---@param a1 ITEM
---@param a2 FLAG
function Osi.PROC_MOO_Jailbreak_FindInvestigatingGuard(a0, a1, a2) end

function Osi.PROC_MOO_Jailbreak_FixProdigiesDesync() end

---@param a0 CHARACTER
function Osi.PROC_MOO_Jailbreak_ForceBoatLeader(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_MOO_Jailbreak_ForceCharacterToCombatGuard(a0, a1) end

---@param a0 TRIGGER
function Osi.PROC_MOO_Jailbreak_GetAccompanyingInvestigators(a0) end

function Osi.PROC_MOO_Jailbreak_GnomesToTieflingsUpdate() end

---@param a0 CHARACTER
---@param a1 ITEM
function Osi.PROC_MOO_Jailbreak_GoInvestigateBoat(a0, a1) end

function Osi.PROC_MOO_Jailbreak_Init() end

function Osi.PROC_MOO_Jailbreak_KillRemainingPrisoners() end

function Osi.PROC_MOO_Jailbreak_LeftPrisonersBehind() end

---@param a0 CHARACTER
---@param a1 ITEM
---@param a2 FLAG
function Osi.PROC_MOO_Jailbreak_LookForPrisoners(a0, a1, a2) end

function Osi.PROC_MOO_Jailbreak_PlayerHostility() end

function Osi.PROC_MOO_Jailbreak_PrisonerHostility() end

function Osi.PROC_MOO_Jailbreak_ResumeCombats() end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_MOO_Jailbreak_RoadEscape(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_MOO_Jailbreak_SendEyeToInvestigate(a0) end

---@param a0 CHARACTER
---@param a1 FLAG
function Osi.PROC_MOO_Jailbreak_SetEscapeRoute(a0, a1) end

function Osi.PROC_MOO_Jailbreak_SetupTieflings() end

function Osi.PROC_MOO_Jailbreak_StartBoatCombatDialog() end

---@param a0 CHARACTER
function Osi.PROC_MOO_Jailbreak_StartBoatDialogForPlayer(a0) end

---@param a0 CHARACTER
function Osi.PROC_MOO_Jailbreak_TryAddWardenToInvestigation(a0) end

---@param a0 CHARACTER
function Osi.PROC_MOO_Jailbreak_TryFindWeapon(a0) end

---@param a0 CHARACTER
function Osi.PROC_MOO_Jailbreak_TryForceUpdateGuard(a0) end

---@param a0 CHARACTER
function Osi.PROC_MOO_Jailbreak_TryLeaveAD(a0) end

function Osi.PROC_MOO_Jailbreak_TryWrongItemAD() end

function Osi.PROC_MOO_Journal_KethericToldPlayerToKneelAtAltar() end

---@param a0 string
function Osi.PROC_MOO_Journal_UpdateIsobelReportQuest(a0) end

function Osi.PROC_MOO_KitchenFight_DEBUG_SetGnollFree() end

function Osi.PROC_MOO_KitchenFight_GnollConfrontTimer() end

function Osi.PROC_MOO_KitchenFight_GnollsFrenzy() end

function Osi.PROC_MOO_KitchenFight_TryConfrontDialog() end

---@param a0 CHARACTER
function Osi.PROC_MOO_MintharaFate_Checkpoint(a0) end

function Osi.PROC_MOO_MintharaFate_ForceCloseUpdate() end

function Osi.PROC_MOO_MintharaFate_Init() end

function Osi.PROC_MOO_MintharaFate_IntroUpdate() end

---@param a0 CHARACTER
function Osi.PROC_MOO_MintharaFate_MintharaSpotted(a0) end

---@param a0 CHARACTER
function Osi.PROC_MOO_MintharaFate_MintharaStopsPlayer(a0) end

function Osi.PROC_MOO_MintharaFate_PatchClotheMinthara() end

function Osi.PROC_MOO_MintharaFate_SetupMintharaTorture() end

---@param a0 CHARACTER
function Osi.PROC_MOO_MintharaFate_StartEscapeDialog(a0) end

function Osi.PROC_MOO_MintharaFate_TalkToMintharaUpdate() end

function Osi.PROC_MOO_MintharaFate_TryTalkToPlayer() end

function Osi.PROC_MOO_NightsongDeath_AddDriderCaravan() end

function Osi.PROC_MOO_NightsongDeath_CheckSetupZrell() end

function Osi.PROC_MOO_NightsongDeath_DEBUG_Setup() end

function Osi.PROC_MOO_NightsongDeath_SetGnollsNeutral() end

---@param a0 CHARACTER
---@param a1 TRIGGER
function Osi.PROC_MOO_NightsongDeath_SetPositions(a0, a1) end

function Osi.PROC_MOO_NightsongDeath_SetRoofTop() end

function Osi.PROC_MOO_NightsongDeath_SetTower() end

---@param a0 CHARACTER
function Osi.PROC_MOO_NightsongDeath_SetZrellGroup(a0) end

---@param a0 CHARACTER
---@param a1 TRIGGER
function Osi.PROC_MOO_NightsongDeath_UpdateIdlePoint(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_MOO_Oubliette_Entry_CueDialog(a0) end

---@param a0 CHARACTER
function Osi.PROC_MOO_Oubliette_Start_HorrorScreech(a0) end

---@param a0 CHARACTER
---@param a1 TRIGGER
function Osi.PROC_MOO_Oubliette_TeleportDown(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_MOO_PlayerEnteredMOO(a0) end

---@param a0 CHARACTER
function Osi.PROC_MOO_PlayerLeftMOO(a0) end

function Osi.PROC_MOO_Prison_CheckOpenPlayerCell() end

---@param a0 integer
---@param a1 ITEM
---@param a2 ITEM
function Osi.PROC_MOO_Prison_OpenOrCloseCell(a0, a1, a2) end

---@param a0 CHARACTER
function Osi.PROC_MOO_ProdigyLament_CheckReunion(a0) end

function Osi.PROC_MOO_Roof_SendPlayersToColony() end

---@param a0 CHARACTER
function Osi.PROC_MOO_Roof_TryTeleportDialog(a0) end

function Osi.PROC_MOO_WallTentacle_ClearMarker() end

---@param a0 integer
function Osi.PROC_MOO_WallTentacle_UpdateID(a0) end

function Osi.PROC_MOO_ZhentVendor_CloseGoal() end

---@param a0 GUIDSTRING
---@param a1 integer
function Osi.PROC_MOO_ZhentVendor_DebugSwap(a0, a1) end

function Osi.PROC_MOO_ZhentVendor_InitItems() end

function Osi.PROC_MOO_ZhentVendor_ReadyChar() end

function Osi.PROC_MOO_ZrellBriefing_CheckFlamingSpyTrigger() end

function Osi.PROC_MOO_ZrellBriefing_SetupFlamingSpy() end

function Osi.PROC_MOO_ZrellBriefing_StopOgreInclusion() end

---@param a0 CHARACTER
---@param a1 string
---@param a2 ITEM
---@param a3 string
---@param a4 DIFFICULTYCLASS
---@param a5 string
function Osi.PROC_MakeFallibleItemCheck(a0, a1, a2, a3, a4, a5) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_MakeNPCHostile(a0, a1) end

---@param a0 GUIDSTRING
function Osi.PROC_MakeSurprised(a0) end

---@param a0 GUIDSTRING
---@param a1 integer
---@param a2 integer
function Osi.PROC_MakeSurprised(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_Mimic_SetTransformCause(a0, a1) end

function Osi.PROC_Minsc_QueueSaveFromAbsoluteDialog() end

function Osi.PROC_Minsc_SaveFromAbsoluteDialogFallback() end

function Osi.PROC_Minsc_StartSaveFromAbsoluteDialog() end

function Osi.PROC_Minsc_StoneLordDisabled() end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
---@param a2 string
---@param a3 string
---@param a4 integer
function Osi.PROC_MoveIfNotInCombat(a0, a1, a2, a3, a4) end

---@param a0 CHARACTER
---@param a1 number
---@param a2 number
---@param a3 number
---@param a4 string
---@param a5 string
---@param a6 integer
function Osi.PROC_MoveIfNotInCombat(a0, a1, a2, a3, a4, a5, a6) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 string
function Osi.PROC_MovePartyToStart(a0, a1, a2) end

---@param a0 string
function Osi.PROC_MusicPlayGeneral(a0) end

function Osi.PROC_MusicPlayGeneral_Clear() end

---@param a0 CHARACTER
function Osi.PROC_Music_Trigger_AllyDeadEvent(a0) end

---@param a0 CHARACTER
function Osi.PROC_Music_Trigger_DownedEvent(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 ITEMROOT
---@param a3 FLAG
---@param a4 integer
function Osi.PROC_NPCGivesItemFromTemplate(a0, a1, a2, a3, a4) end

function Osi.PROC_NightsongPrison_FreeNightsong() end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_NotifyWhenReadyToMoveOn(a0, a1) end

---@param a0 DIALOGRESOURCE
---@param a1 GUIDSTRING
function Osi.PROC_OM_TempDisableTrade(a0, a1) end

---@param a0 DIALOGRESOURCE
---@param a1 integer
---@param a2 integer
function Osi.PROC_OM_TryTempDisableTrade(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 DIALOGRESOURCE
function Osi.PROC_ORI_Astarion_BiteWitnessed(a0, a1) end

---@param a0 CHARACTER
---@param a1 DIALOGRESOURCE
function Osi.PROC_ORI_Astarion_BiteWitnessed_Intern(a0, a1) end

function Osi.PROC_ORI_Astarion_Boars_HideUndiscoveredBoars() end

---@param a0 CHARACTER
function Osi.PROC_ORI_Astarion_CheckSetUpForcedPartyDiscussionAfterPAD(a0) end

function Osi.PROC_ORI_Astarion_CheckShowBoars() end

function Osi.PROC_ORI_Astarion_CleanUpForcedDiscussion() end

function Osi.PROC_ORI_Astarion_ClearForcedDiscussionFlags() end

function Osi.PROC_ORI_Astarion_DUFirstDiscussion() end

function Osi.PROC_ORI_Astarion_DisableForbiddanceTriggers() end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_ORI_Astarion_SetUpForcedPartyDiscussion(a0, a1) end

function Osi.PROC_ORI_Astarion_ShowBoars() end

---@param a0 CHARACTER
function Osi.PROC_ORI_Astarion_StoreLastRecruiter(a0) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_ORI_Astarion_VampireBiteFinished(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_ORI_ClearPartnersIfAvatar(a0) end

---@param a0 CHARACTER
function Osi.PROC_ORI_ClearPartnersIfCompanion(a0) end

---@param a0 integer
---@param a1 CHARACTER
function Osi.PROC_ORI_ClearUserControlledFlags(a0, a1) end

function Osi.PROC_ORI_CoolingDownForYou_Clear() end

---@param a0 CHARACTER
function Osi.PROC_ORI_CoolingDownForYou_Dialog(a0) end

---@param a0 CHARACTER
function Osi.PROC_ORI_CoolingDownForYou_Dialog_Internal(a0) end

---@param a0 CHARACTER
function Osi.PROC_ORI_CoolingDownForYou_RemoveResistance(a0) end

---@param a0 CHARACTER
function Osi.PROC_ORI_DarkUrgeCheckSlayerForm(a0) end

function Osi.PROC_ORI_DarkUrge_AlfiraMurderVictimWaitingFor_Retry() end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_ORI_DarkUrge_BecameHostileAfterMurder(a0, a1) end

function Osi.PROC_ORI_DarkUrge_CheckMultipleMurderJudgers() end

function Osi.PROC_ORI_DarkUrge_CreateGiblets() end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_ORI_DarkUrge_DarkUrgeKilled(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_ORI_DarkUrge_DeathRitualCircle(a0) end

---@param a0 CHARACTER
function Osi.PROC_ORI_DarkUrge_Debug_InviteButler(a0) end

function Osi.PROC_ORI_DarkUrge_DoCreateGiblets() end

function Osi.PROC_ORI_DarkUrge_FindNewDarkUrgeFavouriteCharacter() end

function Osi.PROC_ORI_DarkUrge_FindNewDarkUrgeLeastFavouriteCharacter() end

function Osi.PROC_ORI_DarkUrge_RecheckFavourite() end

function Osi.PROC_ORI_DarkUrge_RestoreButlerPosition() end

function Osi.PROC_ORI_DarkUrge_SetupMurderOfAlfira() end

function Osi.PROC_ORI_DarkUrge_TeleportAlfiraVictim() end

---@param a0 string
function Osi.PROC_ORI_DateCommands_FillDumpString(a0) end

---@param a0 CHARACTER
function Osi.PROC_ORI_DebugBook_SetCampOnBookClose(a0) end

---@param a0 CHARACTER
function Osi.PROC_ORI_Debug_MizoraRomance(a0) end

function Osi.PROC_ORI_Debug_MizorasPact() end

---@param a0 CHARACTER
function Osi.PROC_ORI_Debug_WyllRomance_Act3(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_ORI_FriendlyFire(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_ORI_FriendlyFire_React(a0, a1) end

function Osi.PROC_ORI_Gale_Act2Setup() end

function Osi.PROC_ORI_Gale_ApplyPermanentBombDebuff() end

function Osi.PROC_ORI_Gale_AvatarCriticalDie() end

function Osi.PROC_ORI_Gale_Avatar_UpdateNeedFlag() end

function Osi.PROC_ORI_Gale_Avatar_UpdateState() end

function Osi.PROC_ORI_Gale_BalthazarLab_CheckIngredients() end

function Osi.PROC_ORI_Gale_ConsumedMagicItem() end

---@param a0 CHARACTER
function Osi.PROC_ORI_Gale_DeathVoice_BringInFTBSpeakers(a0) end

function Osi.PROC_ORI_Gale_DisableDeathEffect() end

function Osi.PROC_ORI_Gale_DoINTSetup() end

---@param a0 GUIDSTRING
function Osi.PROC_ORI_Gale_ElminsterCOM_GaleAbsent(a0) end

function Osi.PROC_ORI_Gale_ElminsterSetupDebugOption() end

function Osi.PROC_ORI_Gale_Elminster_SetupBackupMorningCFM() end

---@param a0 string
function Osi.PROC_ORI_Gale_EndGameJournalUpdate(a0) end

function Osi.PROC_ORI_Gale_Explosion() end

function Osi.PROC_ORI_Gale_INTSetup() end

function Osi.PROC_ORI_Gale_IncreaseRegionsVisited() end

---@param a0 string
function Osi.PROC_ORI_Gale_JournalUpdate(a0) end

function Osi.PROC_ORI_Gale_ManualScrollDestruction() end

---@param a0 CHARACTER
---@param a1 string
---@param a2 string
function Osi.PROC_ORI_Gale_MystraUpdate(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 DIALOGRESOURCE
function Osi.PROC_ORI_Gale_PlayDeathvoiceDialog(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_ORI_Gale_PlayerSetup(a0) end

---@param a0 FLAG
function Osi.PROC_ORI_Gale_QueueAteMagicItemIPRDs(a0) end

function Osi.PROC_ORI_Gale_ReactTaraDeath() end

function Osi.PROC_ORI_Gale_RecheckMagicItemApprovalIPRD() end

function Osi.PROC_ORI_Gale_Rejoin() end

---@param a0 CHARACTER
function Osi.PROC_ORI_Gale_Rejoin_TryTeleport(a0) end

function Osi.PROC_ORI_Gale_RelaunchComplainADTimer() end

---@param a0 string
function Osi.PROC_ORI_Gale_RemoveTrackedRegion(a0) end

function Osi.PROC_ORI_Gale_ResetVisitedRegions() end

---@param a0 CHARACTER
---@param a1 ITEM
---@param a2 string
function Osi.PROC_ORI_Gale_ReturnToGale(a0, a1, a2) end

function Osi.PROC_ORI_Gale_SetupDeathvoice() end

function Osi.PROC_ORI_Gale_SetupEndGameJournal() end

function Osi.PROC_ORI_Gale_SetupForLastNightAlive() end

function Osi.PROC_ORI_Gale_Tara_CheckPlayersInCamp() end

function Osi.PROC_ORI_Gale_TriggerBeMyGodIPRD() end

---@param a0 integer
---@param a1 CHARACTER
function Osi.PROC_ORI_Gale_TrustMoment_GiveApproval(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_ORI_Gale_TryDeathVoice(a0) end

function Osi.PROC_ORI_Gale_TryQueueLastNightAliveIPRD() end

function Osi.PROC_ORI_Gale_TrySetupDeathvoice() end

---@param a0 string
function Osi.PROC_ORI_Gale_VisitedTrackedRegion(a0) end

function Osi.PROC_ORI_GortashConfrontation_DecideKarlachsFate() end

function Osi.PROC_ORI_Jaheira_PatchLeavingIfMinscUnrecruitable() end

function Osi.PROC_ORI_Jaheira_WildshapeSetup() end

function Osi.PROC_ORI_KarlachDate_TryReplaceBartender() end

function Osi.PROC_ORI_Karlach_AvatarOverdriveDialog() end

function Osi.PROC_ORI_Karlach_BackAtHomeNight() end

function Osi.PROC_ORI_Karlach_CloseForgingOfTheHeartQuest() end

function Osi.PROC_ORI_Karlach_CloseMainQuest() end

function Osi.PROC_ORI_Karlach_EngineProblemsNight() end

function Osi.PROC_ORI_Karlach_PrepareInfernalMetalMarkers() end

function Osi.PROC_ORI_Karlach_SaveTheCityJournalUpdate() end

---@param a0 FLAG
function Osi.PROC_ORI_Karlach_SetAfterWyllConfrontationDialog(a0) end

function Osi.PROC_ORI_Karlach_StartSawGortashAvatarDialog() end

---@param a0 CHARACTER
function Osi.PROC_ORI_Karlach_TryConfrontPlayerAboutMizoraRomance(a0) end

---@param a0 CHARACTER
function Osi.PROC_ORI_Karlach_TryStartGortashCorpseDialog(a0) end

---@param a0 CHARACTER
function Osi.PROC_ORI_Karlach_TryUnlockGoblinPriestBranch(a0) end

function Osi.PROC_ORI_Karlach_UnlockHasMetJaheiraBranch() end

function Osi.PROC_ORI_Karlach_UnlockWyllsDeathBranch() end

---@param a0 string
function Osi.PROC_ORI_Karlach_UpdateForgingOfTheHeartJournal(a0) end

---@param a0 string
function Osi.PROC_ORI_Karlach_UpdateJournal(a0) end

function Osi.PROC_ORI_KissTrackerRestore() end

function Osi.PROC_ORI_Laezel_CheckVossAttackedApprovalDrop() end

---@param a0 CHARACTER
---@param a1 string
---@param a2 string
function Osi.PROC_ORI_Laezel_QuestUpdate_RespectPriority(a0, a1, a2) end

---@param a0 CHARACTER
function Osi.PROC_ORI_Laezel_Romance2Fight_Start(a0) end

function Osi.PROC_ORI_Laezel_Romance2_FallbackCleanup() end

function Osi.PROC_ORI_Laezel_SetupCrecheRecruitment() end

function Osi.PROC_ORI_Laezel_StopCaringAboutZorru() end

function Osi.PROC_ORI_Laezel_TryToStartMarkingsDialog() end

function Osi.PROC_ORI_Laezel_TurnsIntoShadowcursedCreature() end

function Osi.PROC_ORI_Laezel_VossCampConfrontation_ApplyPatch_GUS_297080() end

function Osi.PROC_ORI_Laezel_VossCampConfrontation_RestedTick() end

function Osi.PROC_ORI_Minthara_CheckMintharaStoryPath() end

function Osi.PROC_ORI_Minthara_ClearWeaponActionBlock() end

---@param a0 CHARACTER
function Osi.PROC_ORI_Minthara_DiscussedTeam(a0) end

function Osi.PROC_ORI_Minthara_PresentTeamMembers() end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_ORI_PartneredInDialog_RecheckFlag(a0, a1) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_ORI_Partnered_Clear_DatingFlag(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_ORI_Partnered_Clear_PartneredFlag(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_ORI_ResetStableRelationshipCounter(a0) end

---@param a0 CHARACTER
---@param a1 integer
---@param a2 string
---@param a3 CHARACTER
function Osi.PROC_ORI_SendToCampAfterDialog(a0, a1, a2, a3) end

---@param a0 integer
---@param a1 CHARACTER
function Osi.PROC_ORI_SetUserControlledFlags(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_ORI_SetupCamp(a0) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_ORI_SetupCamp(a0, a1) end

function Osi.PROC_ORI_ShadowheartResurrection_ClearFlags() end

function Osi.PROC_ORI_Shadowheart_COM_Init() end

---@param a0 string
function Osi.PROC_ORI_Shadowheart_IncurableWound_QueueAutomatedFlareUp(a0) end

function Osi.PROC_ORI_Shadowheart_IncurableWound_TryAutomatedFlareUp() end

function Osi.PROC_ORI_Shadowheart_NobleStalkUse() end

function Osi.PROC_ORI_Shadowheart_PrepareNightsongDummy() end

---@param a0 DIALOGRESOURCE
function Osi.PROC_ORI_Shadowheart_SeluneReactivity(a0) end

function Osi.PROC_ORI_Shadowheart_TryJusticiarShare() end

function Osi.PROC_ORI_Shadowheart_TryNightsongPointsInvite() end

function Osi.PROC_ORI_Shadowheart_TryParentPointsInvite() end

function Osi.PROC_ORI_Shadowheart_TryWolfDreamInvite() end

function Osi.PROC_ORI_Shadowheart_TryWolfPointsInvite() end

---@param a0 CHARACTER
function Osi.PROC_ORI_UpdateCharacterControlledFlags(a0) end

function Osi.PROC_ORI_WyllConfrontation_SetUpCampFight() end

function Osi.PROC_ORI_Wyll_LeaveDen() end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_ORI_Wyll_WyllLeavesTeam_MoveLettersToNewCamp(a0, a1) end

function Osi.PROC_ORI_Wyll_WyllLeavesTeam_TeleportLetterOnShield() end

---@param a0 CHARACTER
function Osi.PROC_ORI_Wyll_WyllLeavesTeam_TeleportToAsylum(a0) end

---@param a0 CHARACTER
function Osi.PROC_ORI_Wyll_WyllLeftTeam_DropLetter(a0) end

---@param a0 GUIDSTRING
---@param a1 string
function Osi.PROC_ObjectCountHelper(a0, a1) end

---@param a0 GUIDSTRING
---@param a1 string
---@param a2 integer
function Osi.PROC_ObjectCountHelper(a0, a1, a2) end

---@param a0 GUIDSTRING
---@param a1 string
function Osi.PROC_ObjectCountHelperReset(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_OnDialogAttackRequested(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_OnDialogAttack_GoingHostile(a0, a1) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 number
function Osi.PROC_OncePerUserAndNearbyPlayers_Set(a0, a1, a2) end

---@param a0 TRIGGER
function Osi.PROC_OneShotADCleanup(a0) end

---@param a0 CHARACTER
---@param a1 TRIGGER
function Osi.PROC_OneShotTriggerEntered(a0, a1) end

---@param a0 CHARACTER
---@param a1 TRIGGER
---@param a2 VOICEBARKRESOURCE
---@param a3 string
---@param a4 TRIGGER
function Osi.PROC_OneShot_VoiceBarkStartGlobal(a0, a1, a2, a3, a4) end

---@param a0 FLAG
function Osi.PROC_OneTimeEventFlag(a0) end

---@param a0 GUIDSTRING
---@param a1 FLAG
function Osi.PROC_OneTimeEventFlag(a0, a1) end

---@param a0 GUIDSTRING
---@param a1 FLAG
---@param a2 integer
function Osi.PROC_OneTimeEventFlag(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 ITEM
function Osi.PROC_OpenWaypointUI(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_OriginWarningBlockRemoval(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_Origins_CompanionLeavePermanently(a0) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_Origins_CompanionLeavePermanently(a0, a1) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_Origins_CompanionLeaveTemporarily(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_Origins_ForceLowApprovalLeavingDialog(a0) end

---@param a0 CHARACTER
function Osi.PROC_Origins_ForceLowApprovalLeavingDialog_Internal(a0) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_Origins_RemoveFromTeam(a0, a1) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_Origins_TransferCompanionInventory(a0, a1) end

function Osi.PROC_OskarsBeloved_ConcludeDuel() end

---@param a0 GUIDSTRING
function Osi.PROC_OskarsBeloved_FreeKerri(a0) end

---@param a0 string
---@param a1 CHARACTER
function Osi.PROC_OskarsBeloved_SetForceTurnBased(a0, a1) end

function Osi.PROC_OskarsBeloved_SetHauntState() end

---@param a0 GUIDSTRING
function Osi.PROC_OskarsBeloved_SpawnAllyPortrait(a0) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_OverrideAnubisConfig_Internal(a0, a1) end

function Osi.PROC_PLA_AddFlamingFistSpeaker() end

---@param a0 ITEM
function Osi.PROC_PLA_BanditCave_ActivateTrap(a0) end

---@param a0 ITEM
function Osi.PROC_PLA_BanditCave_BoulderTrap_BreakBarricade(a0) end

---@param a0 ITEM
function Osi.PROC_PLA_BanditCave_BoulderTrap_IncrMoveToIndex(a0) end

---@param a0 ITEM
function Osi.PROC_PLA_BanditCave_BoulderTrap_MoveToNext(a0) end

---@param a0 ITEM
function Osi.PROC_PLA_BanditCave_BoulderTrap_StartMoving(a0) end

---@param a0 ITEM
function Osi.PROC_PLA_BanditCave_BoulderTrap_StopBoulder(a0) end

function Osi.PROC_PLA_BurnDownTavern() end

function Osi.PROC_PLA_ConfclitedFlind_ClearPeaceReturn() end

function Osi.PROC_PLA_ConflctedFlind_UnregisterHowling() end

function Osi.PROC_PLA_ConflictedFlind_AfterAbandoningZhents() end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_PLA_ConflictedFlind_ApplyLaughingStatus(a0, a1) end

---@param a0 integer
function Osi.PROC_PLA_ConflictedFlind_ChangeGnollsRelationToPlayers(a0) end

---@param a0 FLAG
function Osi.PROC_PLA_ConflictedFlind_ChangeState(a0) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 number
function Osi.PROC_PLA_ConflictedFlind_CharacterMoveToAndTalk(a0, a1, a2) end

function Osi.PROC_PLA_ConflictedFlind_ClearSurfaces() end

---@param a0 GUIDSTRING
---@param a1 CHARACTER
function Osi.PROC_PLA_ConflictedFlind_FlindDialogFallback(a0, a1) end

function Osi.PROC_PLA_ConflictedFlind_FlindFailedToMoveAfterKillingGnolls() end

function Osi.PROC_PLA_ConflictedFlind_FlindMovesAfterKillingGnolls() end

---@param a0 GUIDSTRING
function Osi.PROC_PLA_ConflictedFlind_FlindPlaysAngryAnimation(a0) end

function Osi.PROC_PLA_ConflictedFlind_GnollJoke_CheckEnd() end

---@param a0 CHARACTER
function Osi.PROC_PLA_ConflictedFlind_GnollJoke_Start(a0) end

function Osi.PROC_PLA_ConflictedFlind_GnollJoke_Start_End() end

function Osi.PROC_PLA_ConflictedFlind_GnollsReactOnFlindBetrayal() end

function Osi.PROC_PLA_ConflictedFlind_Leave() end

---@param a0 CHARACTER
function Osi.PROC_PLA_ConflictedFlind_MakeGnollsLaugh(a0) end

---@param a0 integer
function Osi.PROC_PLA_ConflictedFlind_OnInstigateStarted(a0) end

function Osi.PROC_PLA_ConflictedFlind_OnSpotGnollsPack() end

---@param a0 CHARACTER
function Osi.PROC_PLA_ConflictedFlind_OnSpotGnollsPack(a0) end

function Osi.PROC_PLA_ConflictedFlind_RushAtZhents() end

function Osi.PROC_PLA_ConflictedFlind_SetPeacefulResolutionXP() end

---@param a0 CHARACTER
function Osi.PROC_PLA_ConflictedFlind_StartFlindDialog(a0) end

---@param a0 integer
function Osi.PROC_PLA_ConflictedFlind_StartInstigate(a0) end

function Osi.PROC_PLA_ConflictedFlind_StartInstigateAlliedWithGnolls() end

function Osi.PROC_PLA_ConflictedFlind_UnregisterBloodSymbolAreas() end

---@param a0 integer
function Osi.PROC_PLA_DyingHyena_ADManager_DialogEnded(a0) end

function Osi.PROC_PLA_DyingHyena_ADManager_Unblock() end

---@param a0 CHARACTER
function Osi.PROC_PLA_DyingHyena_CallForGnolls(a0) end

---@param a0 CHARACTER
---@param a1 TRIGGER
function Osi.PROC_PLA_DyingHyena_EndRun(a0, a1) end

function Osi.PROC_PLA_DyingHyena_HyenasStartMassHunger() end

---@param a0 CHARACTER
---@param a1 TRIGGER
function Osi.PROC_PLA_DyingHyena_StartRun(a0, a1) end

function Osi.PROC_PLA_DyingHyena_StopSpotting() end

function Osi.PROC_PLA_EscapingZhentarim_FlagBarrelTargets() end

function Osi.PROC_PLA_EscaplingZhentarim_CleanupSpot() end

---@param a0 GUIDSTRING
---@param a1 GUIDSTRING
function Osi.PROC_PLA_FlamingFists_OutsideDialog(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_PLA_GithChokepoint_AddCorpse(a0) end

---@param a0 CHARACTER
function Osi.PROC_PLA_GithChokepoint_ApplyFrightened(a0) end

function Osi.PROC_PLA_GithChokepoint_Cancel() end

function Osi.PROC_PLA_GithChokepoint_CancelConfrontation() end

function Osi.PROC_PLA_GithChokepoint_CheckLaezelSide() end

function Osi.PROC_PLA_GithChokepoint_CheckPresenceOfNonGith() end

function Osi.PROC_PLA_GithChokepoint_CheckReactToPlayerBetrayal() end

function Osi.PROC_PLA_GithChokepoint_CheckResolveScout() end

function Osi.PROC_PLA_GithChokepoint_CheckStartDragonLeaveCine() end

---@param a0 CHARACTER
function Osi.PROC_PLA_GithChokepoint_CheckStartDragonScene(a0) end

function Osi.PROC_PLA_GithChokepoint_CheckStartWRD() end

function Osi.PROC_PLA_GithChokepoint_CleanUp() end

---@param a0 DIALOGRESOURCE
---@param a1 integer
function Osi.PROC_PLA_GithChokepoint_ContinueFromLaezel(a0, a1) end

function Osi.PROC_PLA_GithChokepoint_Debug_CheckSpeed() end

---@param a0 CHARACTER
function Osi.PROC_PLA_GithChokepoint_Debug_MoveShadow(a0) end

---@param a0 CHARACTER
function Osi.PROC_PLA_GithChokepoint_DoFrightenedSavingThrow(a0) end

function Osi.PROC_PLA_GithChokepoint_DragonEvent_FinishDragonLeaving() end

function Osi.PROC_PLA_GithChokepoint_DragonSceneEnded() end

function Osi.PROC_PLA_GithChokepoint_DragonSceneEnded_NotifyScout() end

function Osi.PROC_PLA_GithChokepoint_DragonSceneFailed() end

function Osi.PROC_PLA_GithChokepoint_DragonSceneStarted() end

function Osi.PROC_PLA_GithChokepoint_Ended_JournalHook() end

function Osi.PROC_PLA_GithChokepoint_Init() end

---@param a0 CHARACTER
function Osi.PROC_PLA_GithChokepoint_InitFrightenedSavingThrow(a0) end

function Osi.PROC_PLA_GithChokepoint_InterruptScene() end

function Osi.PROC_PLA_GithChokepoint_KillFodderAndBridge() end

---@param a0 CHARACTER
function Osi.PROC_PLA_GithChokepoint_LaezelRunToKnight(a0) end

function Osi.PROC_PLA_GithChokepoint_LaezelSidesWithGith() end

---@param a0 integer
function Osi.PROC_PLA_GithChokepoint_MakeDragonLeave(a0) end

function Osi.PROC_PLA_GithChokepoint_MakeKnightAndDragonMortals() end

function Osi.PROC_PLA_GithChokepoint_PrepareLaezelBetrayalAD() end

---@param a0 CHARACTER
function Osi.PROC_PLA_GithChokepoint_RemoveCorpse(a0) end

function Osi.PROC_PLA_GithChokepoint_ScoutTryLeaveCombat() end

function Osi.PROC_PLA_GithChokepoint_SetCombatGroupsAndEnterCombat() end

---@param a0 integer
function Osi.PROC_PLA_GithChokepoint_SetKeyCharImmortal(a0) end

function Osi.PROC_PLA_GithChokepoint_SetPeacefulResolutionXP() end

function Osi.PROC_PLA_GithChokepoint_SetRaidersHostile() end

function Osi.PROC_PLA_GithChokepoint_SetScoutHostile() end

---@param a0 CHARACTER
function Osi.PROC_PLA_GithChokepoint_StartConfrontation(a0) end

---@param a0 CHARACTER
function Osi.PROC_PLA_GithChokepoint_StartDragonScene(a0) end

function Osi.PROC_PLA_GithChokepoint_StopLookingForCorpses() end

---@param a0 CHARACTER
function Osi.PROC_PLA_GithChokepoint_TriggeredScene(a0) end

function Osi.PROC_PLA_GithChokepoint_VossAndDragonLeaveInGameplay() end

---@param a0 integer
function Osi.PROC_PLA_HuntCoward_DoOpenWardrobe(a0) end

---@param a0 integer
function Osi.PROC_PLA_HuntCoward_OpenWardrobe(a0) end

function Osi.PROC_PLA_KarlachRecruitmentTollhouse_DealWithDead() end

---@param a0 ITEM
function Osi.PROC_PLA_KarlachRecruitmentTollhouse_PlatePressed(a0) end

---@param a0 CHARACTER
function Osi.PROC_PLA_KarlachRecruitment_CheckCharacter(a0) end

function Osi.PROC_PLA_KarlachRecruitment_FindAlternative() end

---@param a0 CHARACTER
function Osi.PROC_PLA_KarlachRecruitment_HealedAD(a0) end

function Osi.PROC_PLA_KarlachRecruitment_KarlachStateCheck() end

---@param a0 CHARACTER
function Osi.PROC_PLA_KarlachRecruitment_StartConfrontation(a0) end

function Osi.PROC_PLA_LaezelRecruit_CheckPrepSecondRecruitment() end

function Osi.PROC_PLA_LaezelRecruit_CheckStartEscortAD() end

function Osi.PROC_PLA_LaezelRecruit_CheckStartReaction() end

function Osi.PROC_PLA_LaezelRecruit_DragonSceneStarted() end

function Osi.PROC_PLA_LaezelRecruit_GiveNewEquipment() end

function Osi.PROC_PLA_LaezelRecruit_MergeIntoPLAVersion() end

function Osi.PROC_PLA_LaezelRecruit_PrepSecondRecruitment() end

---@param a0 CHARACTER
function Osi.PROC_PLA_LaezelRecruit_ReAddFailed(a0) end

function Osi.PROC_PLA_LaezelRecruit_ReactionEnded() end

function Osi.PROC_PLA_LaezelRecruit_SetSecondRecruitmentDialog() end

---@param a0 CHARACTER
function Osi.PROC_PLA_Orpheus_GithChokepoint_StartRDTimer(a0) end

---@param a0 integer
function Osi.PROC_PLA_Orpheus_GithChokepoint_TryDefineRD(a0) end

function Osi.PROC_PLA_PaladinsOfTyr_KarlachsRage() end

function Osi.PROC_PLA_PaladinsOfTyr_Resolve() end

function Osi.PROC_PLA_PaladinsOfTyr_StartKarlachsRageDialog() end

function Osi.PROC_PLA_PaladinsOfTyr_TryKarlachsRage() end

function Osi.PROC_PLA_RemoveFlamingFistSpeaker() end

---@param a0 CHARACTER
function Osi.PROC_PLA_StuckHalfElfRubble_OutOfDialogFallback(a0) end

function Osi.PROC_PLA_StuckHalfElf_AddToParty() end

function Osi.PROC_PLA_TavernInvestigation_DousePersistentFlames() end

function Osi.PROC_PLA_Tavern_CheckDrowArmourIdentification() end

function Osi.PROC_PLA_Tavern_StartCollapse() end

function Osi.PROC_PLA_TryBurnDownTavern() end

function Osi.PROC_PLA_ZhentDungeon_ActivateFallbackMines() end

---@param a0 CHARACTER
function Osi.PROC_PLA_ZhentDungeon_AddZhent(a0) end

---@param a0 DIALOGRESOURCE
function Osi.PROC_PLA_ZhentDungeon_ChaseDialogEnded(a0) end

function Osi.PROC_PLA_ZhentDungeon_ExplosivesTriggered() end

function Osi.PROC_PLA_ZhentDungeon_GnollAgentsToDungeon() end

function Osi.PROC_PLA_ZhentDungeon_InitFuseSize() end

function Osi.PROC_PLA_ZhentDungeon_ObstructHiddenEntrance() end

function Osi.PROC_PLA_ZhentDungeon_SendChestAway() end

---@param a0 GUIDSTRING
---@param a1 DIALOGRESOURCE
function Osi.PROC_PLA_ZhentDungeon_StartChaseDialog(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_PLA_ZhentDungeon_TryEnablingFallbackMines(a0) end

---@param a0 GUIDSTRING
---@param a1 CHARACTER
function Osi.PROC_PLA_ZhentDungeon_TryFallBackToShadows(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_PLA_ZhentDungeon_ZhentsHostileAfterAgentFreed(a0) end

function Osi.PROC_PLA_ZhentDungeon_ZhentsLeave() end

---@param a0 CHARACTER
function Osi.PROC_PLA_ZhentShipment_AgentLeaveCave(a0) end

function Osi.PROC_PLA_ZhentShipment_AgentsStopSpotting() end

---@param a0 integer
function Osi.PROC_PLA_ZhentShipment_ChangeRelationToFlind(a0) end

function Osi.PROC_PLA_ZhentShipment_ClearFlaskOwnership() end

function Osi.PROC_PLA_ZhentShipment_ClearItemsOwnershipFromTrigger() end

function Osi.PROC_PLA_ZhentShipment_CoverPositions() end

function Osi.PROC_PLA_ZhentShipment_DefendPositions() end

function Osi.PROC_PLA_ZhentShipment_DisableCrimesOnGnolls() end

function Osi.PROC_PLA_ZhentShipment_EnterCombatWithFlindToPlayAD() end

function Osi.PROC_PLA_ZhentShipment_GnollsInstigatingAfterOutOfFlasks() end

function Osi.PROC_PLA_ZhentShipment_Journal_NoticingZhents() end

function Osi.PROC_PLA_ZhentShipment_Journal_UpdateFallback() end

function Osi.PROC_PLA_ZhentShipment_LeftAct() end

function Osi.PROC_PLA_ZhentShipment_LootSecondAgent() end

function Osi.PROC_PLA_ZhentShipment_MakeZhentsAndGnollsHostile() end

function Osi.PROC_PLA_ZhentShipment_MakeZhentsAndPlayersAllies() end

function Osi.PROC_PLA_ZhentShipment_MakeZhentsAndPlayersHostile() end

---@param a0 CHARACTER
function Osi.PROC_PLA_ZhentShipment_OllyCommentsChestTouching(a0) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
function Osi.PROC_PLA_ZhentShipment_OnAgentEnteredCombat(a0, a1) end

function Osi.PROC_PLA_ZhentShipment_OnChestMoved() end

---@param a0 GUIDSTRING
function Osi.PROC_PLA_ZhentShipment_OnEnteredCombat(a0) end

function Osi.PROC_PLA_ZhentShipment_OnGnollsHostileToZhents() end

function Osi.PROC_PLA_ZhentShipment_OnOutOfFlasks() end

---@param a0 CHARACTER
function Osi.PROC_PLA_ZhentShipment_OnReadNinefingersOrders(a0) end

function Osi.PROC_PLA_ZhentShipment_OnZhentsArrivedOnDefensePos() end

---@param a0 CHARACTER
function Osi.PROC_PLA_ZhentShipment_PickupFlaskIfNoLeftInInventory(a0) end

---@param a0 CHARACTER
function Osi.PROC_PLA_ZhentShipment_PlayCargoVB(a0) end

function Osi.PROC_PLA_ZhentShipment_RegisterGnollsBorder() end

function Osi.PROC_PLA_ZhentShipment_RemoveAgentsFromTheCave() end

---@param a0 ITEM
function Osi.PROC_PLA_ZhentShipment_RemoveItemFromCave(a0) end

function Osi.PROC_PLA_ZhentShipment_RunAwayAfterAttackingGnolls() end

---@param a0 CHARACTER
---@param a1 string
---@param a2 ITEM
---@param a3 integer
---@param a4 integer
function Osi.PROC_PLA_ZhentShipment_SetCustomWarning(a0, a1, a2, a3, a4) end

function Osi.PROC_PLA_ZhentShipment_StartMoveToDefendPositions() end

function Osi.PROC_PLA_ZhentShipment_StartPreclusiveThrowingTimer() end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_PLA_ZhentShipment_StartSpotDialog(a0, a1) end

function Osi.PROC_PLA_ZhentShipment_StopThrowingAlchFire() end

function Osi.PROC_PLA_ZhentShipment_StopThrowingIfNoFlasksLeft() end

function Osi.PROC_PLA_ZhentShipment_SwitchDialogToSecondPhase() end

function Osi.PROC_PLA_ZhentShipment_TryProvokeGnolls() end

function Osi.PROC_PLA_ZhentShipment_TrySetSeenDeadAgentsFlag() end

function Osi.PROC_PLA_ZhentShipment_TrySetStateDeadAgentsFlag() end

function Osi.PROC_PLA_ZhentShipment_UnregisterGnollsBorder() end

function Osi.PROC_PROC_ApplySavegamePatches_GUS_312586() end

---@param a0 CHARACTER
function Osi.PROC_PartyDialogSuppressed_CheckStop(a0) end

---@param a0 CHARACTER
function Osi.PROC_PartyDialogSuppressed_Start(a0) end

---@param a0 CHARACTER
function Osi.PROC_PartyDialogSuppressed_Stop(a0) end

function Osi.PROC_PartyDialogSuppression_SafetyCheck() end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_PartyFollower_AddAction(a0, a1) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 integer
function Osi.PROC_PartyFollower_AddDefaultActions(a0, a1, a2) end

---@param a0 CHARACTER
function Osi.PROC_PartyFollowers_RemoveSpells(a0) end

---@param a0 integer
function Osi.PROC_PartyMemberKickFromPartyFlags_Update(a0) end

---@param a0 integer
---@param a1 CHARACTER
---@param a2 FLAG
function Osi.PROC_PartyMemberKickFromPartyFlags_Update(a0, a1, a2) end

function Osi.PROC_PartyPreset_SetupOrigins() end

---@param a0 CHARACTER
function Osi.PROC_PeacefulResolve(a0) end

---@param a0 CHARACTER
---@param a1 ITEM
function Osi.PROC_PerceptionSkillCheckAD_TryStart(a0, a1) end

function Osi.PROC_PhilgravesMansion_CarrionReactToDroppedCorpse() end

function Osi.PROC_PhilgravesMansion_RevealStartCombatLower() end

function Osi.PROC_PhilgravesMansion_RevealStartCombatUpper() end

---@param a0 ITEM
function Osi.PROC_PhilgravesMansion_SendJarToBasement(a0) end

function Osi.PROC_PhilgravesMansion_SendJarsFromHeartContainer() end

function Osi.PROC_PhilgravesMansion_StopBeatingLumbar() end

---@param a0 CHARACTER
function Osi.PROC_PlayCantUseItemAD(a0) end

---@param a0 GUIDSTRING
---@param a1 ANIMATION
---@param a2 ANIMATION
---@param a3 ANIMATION
function Osi.PROC_PlayLoopingAnimation(a0, a1, a2, a3) end

---@param a0 GUIDSTRING
---@param a1 string
function Osi.PROC_PlayPerceptionRevealEffect(a0, a1) end

---@param a0 GUIDSTRING
---@param a1 string
---@param a2 integer
function Osi.PROC_PlayPerceptionRevealEffect(a0, a1, a2) end

---@param a0 GUIDSTRING
---@param a1 string
---@param a2 integer
---@param a3 string
function Osi.PROC_PlayPerceptionRevealEffect(a0, a1, a2, a3) end

---@param a0 GUIDSTRING
---@param a1 string
---@param a2 integer
---@param a3 string
---@param a4 string
function Osi.PROC_PlayPerceptionRevealEffect(a0, a1, a2, a3, a4) end

---@param a0 GUIDSTRING
---@param a1 string
---@param a2 integer
---@param a3 string
---@param a4 string
---@param a5 number
function Osi.PROC_PlayPerceptionRevealEffect(a0, a1, a2, a3, a4, a5) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_PlayRemoveStatusGroupSound(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 ITEMROOT
---@param a3 FLAG
---@param a4 integer
function Osi.PROC_PlayerGivesItemFromTemplate(a0, a1, a2, a3, a4) end

function Osi.PROC_PlayerSlot_Free() end

function Osi.PROC_PlayerSlot_Reserve() end

---@param a0 string
function Osi.PROC_PlayersSelected(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_Poof(a0) end

---@param a0 GUIDSTRING
---@param a1 EFFECTRESOURCE
function Osi.PROC_Poof(a0, a1) end

function Osi.PROC_Posthouse_Init_MissingLetters() end

function Osi.PROC_Posthouse_Reset_MissingLetters() end

---@param a0 CHARACTER
---@param a1 ITEM
---@param a2 ITEM
---@param a3 ITEM
---@param a4 ITEM
---@param a5 ITEM
---@param a6 integer
function Osi.PROC_ProcessCombineItem(a0, a1, a2, a3, a4, a5, a6) end

---@param a0 CHARACTER
---@param a1 ITEM
---@param a2 integer
function Osi.PROC_ProcessCombineItem_CheckRegisterUseForbiddenItem_NonNull(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 ITEM
---@param a2 ITEM
---@param a3 ITEM
---@param a4 ITEM
---@param a5 ITEM
---@param a6 integer
function Osi.PROC_ProcessCustomCombineResponse(a0, a1, a2, a3, a4, a5, a6) end

---@param a0 CHARACTER
---@param a1 ITEM
---@param a2 integer
function Osi.PROC_ProcessDisarmTrap(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 ITEM
---@param a2 integer
function Osi.PROC_ProcessLockpickItem(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_ProcessLootCorpse(a0, a1) end

---@param a0 CHARACTER
---@param a1 ITEM
---@param a2 integer
function Osi.PROC_ProcessMoveOfItem(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 integer
function Osi.PROC_ProcessPickupOfCharacter(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 ITEM
---@param a2 integer
function Osi.PROC_ProcessPickupOfItem(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 ITEM
---@param a2 DIALOGRESOURCE
function Osi.PROC_ProcessUseItemWithDialog(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
---@param a2 GUIDSTRING
---@param a3 DIALOGRESOURCE
function Osi.PROC_ProcessUseItemWithDialog(a0, a1, a2, a3) end

---@param a0 DIALOGRESOURCE
---@param a1 ITEM
---@param a2 CHARACTER
function Osi.PROC_ProcessUseItemWithDialog_Muted(a0, a1, a2) end

---@param a0 DIALOGRESOURCE
---@param a1 GUIDSTRING
---@param a2 GUIDSTRING
---@param a3 CHARACTER
function Osi.PROC_ProcessUseItemWithDialog_Muted(a0, a1, a2, a3) end

---@param a0 CHARACTER
---@param a1 ITEM
---@param a2 integer
function Osi.PROC_ProcessUseOfItem(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 ITEM
function Osi.PROC_ProcessUseOfItemWithStatus(a0, a1) end

---@param a0 FLAG
function Osi.PROC_PurgeLevelPartyFlag(a0) end

---@param a0 CHARACTER
function Osi.PROC_Purge_CancelMovement(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 integer
function Osi.PROC_QRYRTN_GetBestAvatarForCompanion_EvaluateNewCandidate(a0, a1, a2) end

function Osi.PROC_QRY_DoNTimesInit() end

---@param a0 integer
function Osi.PROC_QRY_DoNTimesInitNext(a0) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 string
function Osi.PROC_QuestDef_QuestUpdate(a0, a1, a2) end

---@param a0 integer
---@param a1 CHARACTER
function Osi.PROC_RandomInclusion_RestoreSoftLock(a0, a1) end

---@param a0 integer
---@param a1 CHARACTER
function Osi.PROC_RandomInclusion_StoreSoftLock(a0, a1) end

function Osi.PROC_RaphaelTango_DebugResetAllVossAlive() end

function Osi.PROC_RaphaelTango_DebugResetAllVossDead() end

function Osi.PROC_RaphaelTango_DebugResetTangoScene() end

---@param a0 integer
function Osi.PROC_RaphaelTango_DebugResetTangoScene(a0) end

function Osi.PROC_RaphaelTango_DebugResetWarlock() end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_ReadyToMoveOn(a0, a1) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_ReadyToMoveOn_Failed(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_RecruitableNpcHardCoreStatus_Add(a0) end

---@param a0 CHARACTER
function Osi.PROC_RecruitableNpcHardCoreStatus_Remove(a0) end

---@param a0 integer
---@param a1 integer
function Osi.PROC_RefreshInvolvedNPC(a0, a1) end

---@param a0 integer
function Osi.PROC_RefreshInvolvedNPCs(a0) end

---@param a0 integer
---@param a1 integer
function Osi.PROC_RefreshInvolvedPlayer(a0, a1) end

---@param a0 integer
function Osi.PROC_RefreshInvolvedPlayers(a0) end

---@param a0 integer
function Osi.PROC_RefreshInvolvedSpeakers(a0) end

function Osi.PROC_RefugeeCamp_StartManipInterrogationSpotting() end

function Osi.PROC_RefugeeCamp_StopManipInterrogation() end

---@param a0 GUIDSTRING
---@param a1 string
---@param a2 integer
function Osi.PROC_RegionSwapReadyCheck(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_RegionSwapReadyCheckFailed(a0, a1) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_RegionSwapReadyCheckPassed(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 string
---@param a3 integer
---@param a4 number
---@param a5 number
---@param a6 number
---@param a7 integer
function Osi.PROC_RegisterAssault_Incapacitated(a0, a1, a2, a3, a4, a5, a6, a7) end

---@param a0 string
---@param a1 GUIDSTRING
function Osi.PROC_RegisterLevelObject(a0, a1) end

---@param a0 string
function Osi.PROC_RegisterObjectsForRegion(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 GUIDSTRING
function Osi.PROC_RegisterPickPocketFailed(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_RegisterTemporaryHostileRequest(a0, a1) end

---@param a0 TRIGGER
function Osi.PROC_RegisterWorldGossipTrigger(a0) end

function Osi.PROC_Reinforcements_CharactersCanFight() end

---@param a0 CHARACTER
---@param a1 DIALOGRESOURCE
---@param a2 GUIDSTRING
function Osi.PROC_RelationshipDialog(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 DIALOGRESOURCE
---@param a2 FLAG
---@param a3 GUIDSTRING
---@param a4 integer
function Osi.PROC_RelationshipDialog(a0, a1, a2, a3, a4) end

---@param a0 CHARACTER
---@param a1 DIALOGRESOURCE
---@param a2 FLAG
---@param a3 GUIDSTRING
---@param a4 integer
---@param a5 integer
function Osi.PROC_RelationshipDialog(a0, a1, a2, a3, a4, a5) end

---@param a0 CHARACTER
---@param a1 DIALOGRESOURCE
---@param a2 FLAG
---@param a3 CHARACTER
---@param a4 integer
---@param a5 integer
function Osi.PROC_RelationshipDialog_CheckAvatarAvailabilityAndStartDialog(a0, a1, a2, a3, a4, a5) end

---@param a0 CHARACTER
---@param a1 DIALOGRESOURCE
---@param a2 FLAG
---@param a3 integer
---@param a4 integer
function Osi.PROC_RelationshipDialog_FindBestAvatarForDialog(a0, a1, a2, a3, a4) end

---@param a0 GUIDSTRING
function Osi.PROC_RemoveAllDialogEntriesForSpeaker(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_RemoveAllPolymorphs(a0) end

---@param a0 TRIGGER
function Osi.PROC_RemoveAmbushTriggers(a0) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_RemoveAnubisConfigOverride(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_RemoveCCDummy(a0) end

---@param a0 string
function Osi.PROC_RemoveCounter(a0) end

---@param a0 TRIGGER
function Osi.PROC_RemoveDBTrespassTrigger(a0) end

---@param a0 TRIGGER
---@param a1 TRIGGER
function Osi.PROC_RemoveDBTrespassTrigger(a0, a1) end

---@param a0 TRIGGER
---@param a1 TRIGGER
---@param a2 CHARACTER
function Osi.PROC_RemoveDBTrespassTrigger(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 DIALOGRESOURCE
function Osi.PROC_RemoveDaisyAD(a0, a1) end

---@param a0 GUIDSTRING
function Osi.PROC_RemoveDialog(a0) end

---@param a0 GUIDSTRING
---@param a1 DIALOGRESOURCE
function Osi.PROC_RemoveDialogEntryForSpeaker(a0, a1) end

---@param a0 GUIDSTRING
---@param a1 DIALOGRESOURCE
---@param a2 integer
function Osi.PROC_RemoveExternalDialogEntry(a0, a1, a2) end

---@param a0 CHARACTER
function Osi.PROC_RemoveFromTrackedSoundEntity(a0) end

---@param a0 DIALOGRESOURCE
---@param a1 integer
function Osi.PROC_RemoveInternalDialogEntries(a0, a1) end

---@param a0 CHARACTER
---@param a1 ITEMROOT
---@param a2 FLAG
---@param a3 integer
function Osi.PROC_RemoveItemFromTemplate(a0, a1, a2, a3) end

---@param a0 CHARACTER
---@param a1 FLAG
---@param a2 FLAG
function Osi.PROC_RemoveItemFromTemplateContinueIfFailed(a0, a1, a2) end

---@param a0 GUIDSTRING
function Osi.PROC_RemoveMutingPolymorphs(a0) end

---@param a0 DIALOGRESOURCE
---@param a1 GUIDSTRING
function Osi.PROC_RemoveMutingStatusesWithRestore(a0, a1) end

---@param a0 DIALOGRESOURCE
---@param a1 GUIDSTRING
function Osi.PROC_RemoveMutingStatusesWithRestore_Intern(a0, a1) end

---@param a0 GUIDSTRING
function Osi.PROC_RemoveMutingStatusses(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_RemoveNPCADs(a0) end

---@param a0 GUIDSTRING
---@param a1 DIALOGRESOURCE
function Osi.PROC_RemoveNPCADs(a0, a1) end

---@param a0 TRIGGER
function Osi.PROC_RemoveOneShotAD(a0) end

---@param a0 TRIGGER
function Osi.PROC_RemoveOneShotTrigger(a0) end

---@param a0 TRIGGER
---@param a1 VOICEBARKRESOURCE
function Osi.PROC_RemoveOneShotVoiceBarkTrigger(a0, a1) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_RemoveStatusGroupPlaySound(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_RemoveStatusGroupPlaySound_Internal(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 CHARACTER
---@param a3 GUIDSTRING
function Osi.PROC_ReportKiller(a0, a1, a2, a3) end

---@param a0 TRIGGER
---@param a1 CHARACTER
function Osi.PROC_RequestLaunchAmbush(a0, a1) end

---@param a0 TRIGGER
---@param a1 CHARACTER
---@param a2 GUIDSTRING
---@param a3 integer
function Osi.PROC_RequestLaunchAmbush(a0, a1, a2, a3) end

---@param a0 CHARACTER
function Osi.PROC_RequestLongRest(a0) end

---@param a0 TRIGGER
---@param a1 CHARACTER
function Osi.PROC_RequestRevealAmbush(a0, a1) end

---@param a0 TRIGGER
---@param a1 CHARACTER
---@param a2 GUIDSTRING
---@param a3 integer
function Osi.PROC_RequestRevealAmbush(a0, a1, a2, a3) end

---@param a0 CHARACTER
---@param a1 DIALOGRESOURCE
function Osi.PROC_ResetEmperorAD(a0, a1) end

function Osi.PROC_ResetPlayerFactionRelationToParentFaction() end

---@param a0 FACTION
---@param a1 FACTION
function Osi.PROC_ResetRelationMutual(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_Respec_Refund(a0) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_RestoreAttitudeToPartyIfLower(a0, a1) end

function Osi.PROC_RestoreEmperor() end

---@param a0 GUIDSTRING
function Osi.PROC_RestoreMutingStatuses(a0) end

---@param a0 CHARACTER
function Osi.PROC_RestoreNearbyAvailableParty(a0) end

---@param a0 CHARACTER
---@param a1 number
function Osi.PROC_RestoreNearbyAvailableParty(a0, a1) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_RestoreWeaponUnsheathedIfNoCombat(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_ResumeDisappearOutOfSight(a0) end

---@param a0 CHARACTER
function Osi.PROC_ResumeStoryMoving(a0) end

function Osi.PROC_ResurrectDolor() end

---@param a0 CHARACTER
function Osi.PROC_RetestPartyBanterTrigger(a0) end

---@param a0 TRIGGER
function Osi.PROC_RevealAmbush(a0) end

---@param a0 TRIGGER
---@param a1 CHARACTER
function Osi.PROC_RevealAmbush(a0, a1) end

---@param a0 TRIGGER
---@param a1 CHARACTER
function Osi.PROC_RevealAmbushOnce(a0, a1) end

---@param a0 string
---@param a1 CHARACTER
---@param a2 GUIDSTRING
---@param a3 integer
function Osi.PROC_RollResult(a0, a1, a2, a3) end

---@param a0 CHARACTER
function Osi.PROC_SCE_CharacterInEpilogueHook(a0) end

function Osi.PROC_SCE_DEBUG_SituationSpecificFlagSet() end

function Osi.PROC_SCE_DebriefStarts() end

function Osi.PROC_SCE_DebugClearMOO() end

function Osi.PROC_SCE_Debug_SetupDebrief() end

---@param a0 integer
function Osi.PROC_SCE_GnomeFollowUp_AdvanceADQueue(a0) end

function Osi.PROC_SCE_GnomeFollowUp_DetermineADQueue() end

function Osi.PROC_SCE_HandleMOOItems() end

---@param a0 CHARACTER
---@param a1 TRIGGER
---@param a2 integer
function Osi.PROC_SCE_MoveOrTeleportToDebrief(a0, a1, a2) end

function Osi.PROC_SCE_NightsongIsobelReunion_MoveIsobelToCamp() end

function Osi.PROC_SCE_NightsongIsobelReunion_MoveNightsongToCamp() end

---@param a0 CHARACTER
function Osi.PROC_SCE_SendCharacterToDebrief(a0) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_SCE_SendCharacterToDebrief(a0, a1) end

function Osi.PROC_SCE_SetUpFinale() end

function Osi.PROC_SCE_SetupDebrief() end

function Osi.PROC_SCE_StartSetupDebrief() end

---@param a0 integer
function Osi.PROC_SCE_TieflingFollowUp_AdvanceADQueue(a0) end

function Osi.PROC_SCE_TieflingFollowUp_CompletePerformance() end

function Osi.PROC_SCE_TieflingFollowUp_DetermineADQueue() end

function Osi.PROC_SCE_UpdateBehaviours() end

---@param a0 string
function Osi.PROC_SCL_DriderCombat_CancelRelatedADs(a0) end

---@param a0 string
function Osi.PROC_SCL_DriderCombat_RemoveAD(a0) end

---@param a0 string
function Osi.PROC_SCL_DriderCombat_TriggerAD(a0) end

function Osi.PROC_SCL_Drider_ApplyOintmentToHarpers() end

function Osi.PROC_SCL_Drider_BlockCaravanQuestPath() end

function Osi.PROC_SCL_Drider_BlockHarpersQuestPath() end

function Osi.PROC_SCL_Drider_CaravanArrivesToTower() end

function Osi.PROC_SCL_Drider_CaravanWins() end

function Osi.PROC_SCL_Drider_CheckHarpersAtPositions() end

function Osi.PROC_SCL_Drider_CheckHarpersAtPositions_Internal() end

function Osi.PROC_SCL_Drider_CheckWinner() end

---@param a0 TRIGGER
function Osi.PROC_SCL_Drider_ClearHarpersBanterTrigger(a0) end

function Osi.PROC_SCL_Drider_ClearHarpersSpottingDialogues() end

---@param a0 integer
function Osi.PROC_SCL_Drider_CustomAmbushDialogOutcomes(a0) end

---@param a0 integer
function Osi.PROC_SCL_Drider_CustomAmbushDialogOutcomes_Internal(a0) end

function Osi.PROC_SCL_Drider_DebugSendToChapel() end

function Osi.PROC_SCL_Drider_DebugSendToMOOCheckpoint() end

---@param a0 CHARACTER
function Osi.PROC_SCL_Drider_DisableForceUpdate(a0) end

---@param a0 CHARACTER
function Osi.PROC_SCL_Drider_EnableForceUpdate(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_SCL_Drider_EndAmbushCombat(a0) end

function Osi.PROC_SCL_Drider_EndCaravanEscort() end

function Osi.PROC_SCL_Drider_EndEscortBehaviour() end

---@param a0 FACTION
---@param a1 CHARACTER
function Osi.PROC_SCL_Drider_EnterCombatWithGroup(a0, a1) end

function Osi.PROC_SCL_Drider_EquipMoonlantern() end

function Osi.PROC_SCL_Drider_EveryoneFromCaravanLeft() end

---@param a0 CHARACTER
function Osi.PROC_SCL_Drider_HarperIsBusy(a0) end

---@param a0 CHARACTER
function Osi.PROC_SCL_Drider_HarperNotBusy(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_SCL_Drider_HarperTalksToPlayerAfterCombat(a0, a1) end

function Osi.PROC_SCL_Drider_HarpersReturnToInn() end

function Osi.PROC_SCL_Drider_HarpersReturnToInn_Internal() end

function Osi.PROC_SCL_Drider_HarpersWin() end

function Osi.PROC_SCL_Drider_HarpersWin_Internal() end

function Osi.PROC_SCL_Drider_HarpersWin_SidedWithCaravan() end

function Osi.PROC_SCL_Drider_HarpersWin_SidedWithHarpers() end

function Osi.PROC_SCL_Drider_InitAmbushScene() end

function Osi.PROC_SCL_Drider_InitAmbushScene_Internal() end

function Osi.PROC_SCL_Drider_InitEscortParty() end

function Osi.PROC_SCL_Drider_InitSwD() end

function Osi.PROC_SCL_Drider_LaunchAmbushWithHarpers() end

---@param a0 CHARACTER
function Osi.PROC_SCL_Drider_LitTorch(a0) end

function Osi.PROC_SCL_Drider_MoveCaravanToTWNAndCurse() end

function Osi.PROC_SCL_Drider_MoveHarpersToCombatPositions() end

function Osi.PROC_SCL_Drider_MoveHarpersToTheBridge() end

---@param a0 CHARACTER
function Osi.PROC_SCL_Drider_MoveToAmbushPos(a0) end

function Osi.PROC_SCL_Drider_RegisterADTriggers() end

---@param a0 CHARACTER
function Osi.PROC_SCL_Drider_RemoveFromCaravanGroup(a0) end

---@param a0 CHARACTER
function Osi.PROC_SCL_Drider_RemoveFromEscortBehaviour(a0) end

function Osi.PROC_SCL_Drider_RemovePlayersFromEscort() end

---@param a0 CHARACTER
---@param a1 DIALOGRESOURCE
function Osi.PROC_SCL_Drider_ReplaceCharacterDialogWith(a0, a1) end

function Osi.PROC_SCL_Drider_ScatterCaravan() end

function Osi.PROC_SCL_Drider_SetFactionRelationsToPlayers() end

---@param a0 CHARACTER
function Osi.PROC_SCL_Drider_SetHarperBackAtInnDialog(a0) end

function Osi.PROC_SCL_Drider_SetHarpersRelationToPlayers() end

function Osi.PROC_SCL_Drider_StartAmbushCombat() end

function Osi.PROC_SCL_Drider_StartAmbushWithOnlyPlayers() end

function Osi.PROC_SCL_Drider_StartCaravanEscort() end

---@param a0 integer
function Osi.PROC_SCL_Drider_StartCaravanEscort_Internal(a0) end

function Osi.PROC_SCL_Drider_StartCaravanEscort_NoTeleport() end

---@param a0 CHARACTER
function Osi.PROC_SCL_Drider_StartCombat(a0) end

function Osi.PROC_SCL_Drider_StartEscortNoPlayers() end

function Osi.PROC_SCL_Drider_StartHarpersAmbush() end

function Osi.PROC_SCL_Drider_StartHarpersSpottingBeforeAmbush() end

function Osi.PROC_SCL_Drider_StartPixieCall() end

function Osi.PROC_SCL_Drider_StartsMovingTowardsTower() end

---@param a0 CHARACTER
function Osi.PROC_SCL_Drider_TeleportAndCurse(a0) end

function Osi.PROC_SCL_Drider_TeleportCaravanToAmbush() end

function Osi.PROC_SCL_Drider_TeleportCaravanToAmbush_Internal() end

---@param a0 CHARACTER
function Osi.PROC_SCL_Drider_TryGiveLanternToHarper(a0) end

function Osi.PROC_SCL_Drider_TryReturnToInn() end

function Osi.PROC_SCL_Drider_TrySetUpTowerCheckpointScene() end

function Osi.PROC_SCL_Drider_TryStartHarpersAndPlayersAmbushDialog() end

---@param a0 CHARACTER
function Osi.PROC_SCL_Drider_TryStartHarpersAndPlayersAmbushDialog(a0) end

---@param a0 CHARACTER
function Osi.PROC_SCL_Drider_TryStartHarpersAndPlayersAmbushDialog_Internal(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_SCL_Drider_TryStartPixieAD(a0) end

---@param a0 CHARACTER
function Osi.PROC_SCL_Drider_UnlitTorch(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_SCL_EntryPoint_DEBUG_Reset(a0) end

function Osi.PROC_SCL_EntryPoint_HyenaFlees() end

function Osi.PROC_SCL_EntryPoints_UnregisterEntryTriggers() end

function Osi.PROC_SCL_FixBanterSpots() end

function Osi.PROC_SCL_General_BlockReturnToAct1() end

function Osi.PROC_SCL_HarperScouts_End() end

function Osi.PROC_SCL_HarperScouts_HarpersDepartAlone() end

function Osi.PROC_SCL_HarperScouts_Init() end

function Osi.PROC_SCL_HarperScouts_RemoveLassandraFromAmbush() end

function Osi.PROC_SCL_HarperScouts_StartSpotting() end

function Osi.PROC_SCL_HarperScouts_StopAllForceUpdate() end

---@param a0 CHARACTER
function Osi.PROC_SCL_HarperScouts_StopForceUpdate(a0) end

function Osi.PROC_SCL_HarperScouts_Update() end

function Osi.PROC_SCL_Karlach_RemoveComplainTriggers() end

function Osi.PROC_SCL_LiftingTheCurse_ChangeState_RetreatToTown() end

function Osi.PROC_SCL_MastiffPoachers_TorchesCheck() end

function Osi.PROC_SCL_MastiffsAppear() end

function Osi.PROC_SCL_Misc_CheckKuotoaFight_Hardcore() end

---@param a0 number
function Osi.PROC_SCL_OliveFight_CheckOliverReactivity(a0) end

function Osi.PROC_SCL_OliveFight_CheckSpawnPlushConditions() end

---@param a0 GUIDSTRING
function Osi.PROC_SCL_OliveFight_UpdateCurrentPlush(a0) end

function Osi.PROC_SCL_OliverConfrontation_ActivateNightdome() end

---@param a0 integer
---@param a1 GUIDSTRING
function Osi.PROC_SCL_OliverFight_DamageNightdome(a0, a1) end

function Osi.PROC_SCL_OliverFight_DefineFirstPlushSpawnPosition() end

function Osi.PROC_SCL_OliverFight_KillOliversMinions() end

function Osi.PROC_SCL_OliverFight_SpawnPlush() end

function Osi.PROC_SCL_OliverFight_SpawnShadows() end

function Osi.PROC_SCL_OliverFight_TeleportOliverToPlaza() end

---@param a0 CHARACTER
function Osi.PROC_SCL_Oliver_Poof(a0) end

function Osi.PROC_SCL_OliversDiary_FoundOliverWithDamage() end

function Osi.PROC_SCL_OliversFamily_Appear() end

function Osi.PROC_SCL_OliversFamily_Poof() end

function Osi.PROC_SCL_Pixie_ScreamTimer() end

function Osi.PROC_SCL_PlunderedCaravan_Init() end

function Osi.PROC_SCL_PlunderedCaravan_Init_Internal() end

function Osi.PROC_SCL_ProdigyLament_ShadowsEncounter() end

function Osi.PROC_SCL_ProdigyLament_ShadowsEncounter_Internal() end

---@param a0 CHARACTER
function Osi.PROC_SCL_ServantOfTheRaven_SelectPetPalSpeaker(a0) end

---@param a0 CHARACTER
function Osi.PROC_SCL_ServantOfTheRaven_SummonServant(a0) end

function Osi.PROC_SCL_Servant_PlaneShift() end

---@param a0 CHARACTER
function Osi.PROC_SCL_ShadowCurse_ADChecker(a0) end

---@param a0 GUIDSTRING
---@param a1 TRIGGER
function Osi.PROC_SCL_ShadowCurse_LeftCurseArea(a0, a1) end

---@param a0 GUIDSTRING
function Osi.PROC_SCL_ShadowCurse_LightRemoved(a0) end

---@param a0 GUIDSTRING
---@param a1 GUIDSTRING
function Osi.PROC_SCL_ShadowCurse_LightRemoved_Internal(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_SCL_ShadowCurse_MakeCurseSubject(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_SCL_ShadowCurse_ObjectLeftBlightedArea(a0) end

function Osi.PROC_SCL_ShadowCurse_Off() end

---@param a0 DIALOGRESOURCE
---@param a1 string
function Osi.PROC_SCL_ShadowCurse_PlayPAD(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_SCL_ShadowCurse_Remove(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_SCL_Shadowcurse_Exclude(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_SCL_Shadowcurse_HideLightIndicator(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_SCL_Shadowcurse_Include(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_SCL_Shadowcurse_ShowLightIndicator(a0) end

---@param a0 CHARACTER
function Osi.PROC_SCL_ShamblingMound_TryResurrectCorpse(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_SCL_SurpriseNearbyHarpers(a0) end

---@param a0 CHARACTER
function Osi.PROC_SCL_ThrallOfTheAbsolute_Act1ReturnAttemptDialog(a0) end

---@param a0 CHARACTER
---@param a1 TRIGGER
function Osi.PROC_SCL_TwigAmbush_Reveal(a0, a1) end

function Osi.PROC_SHA_AFamiliarFace_InitScene() end

---@param a0 ITEM
function Osi.PROC_SHA_Crypt_BrazierSound(a0) end

---@param a0 string
function Osi.PROC_SHA_Crypt_CheckRingInDarkness(a0) end

function Osi.PROC_SHA_Crypt_DisableRings() end

function Osi.PROC_SHA_Crypt_EndTrap() end

function Osi.PROC_SHA_Crypt_FloodWithFire() end

function Osi.PROC_SHA_Crypt_LockDoors() end

---@param a0 CHARACTER
---@param a1 TRIGGER
function Osi.PROC_SHA_Crypt_ReactToPushBack(a0, a1) end

function Osi.PROC_SHA_Crypt_RestoreDoorsState() end

---@param a0 string
---@param a1 integer
function Osi.PROC_SHA_Crypt_SetVisible(a0, a1) end

---@param a0 GUIDSTRING
function Osi.PROC_SHA_Crypt_TriggerTrap(a0) end

---@param a0 ITEM
function Osi.PROC_SHA_Disc_ActivateStone(a0) end

---@param a0 ITEM
function Osi.PROC_SHA_Disc_DeactivateStone(a0) end

---@param a0 TRIGGER
function Osi.PROC_SHA_Disc_LockDestination(a0) end

---@param a0 TRIGGER
function Osi.PROC_SHA_Disc_MoveTo(a0) end

---@param a0 ITEM
function Osi.PROC_SHA_Disc_PrepStonesForMovement(a0) end

function Osi.PROC_SHA_Disc_SleepStones() end

---@param a0 TRIGGER
---@param a1 TRIGGER
---@param a2 string
function Osi.PROC_SHA_Disc_StartMovingTo(a0, a1, a2) end

---@param a0 TRIGGER
function Osi.PROC_SHA_Disc_UnlockDestination(a0) end

function Osi.PROC_SHA_Disc_WakeUpStones() end

function Osi.PROC_SHA_LastJusticiar_CheckWaveThreshold() end

---@param a0 ITEM
function Osi.PROC_SHA_LastJusticiar_DeterminePackSize(a0) end

function Osi.PROC_SHA_LastJusticiar_RatDeath() end

function Osi.PROC_SHA_LastJusticiar_RatRetreat() end

function Osi.PROC_SHA_LastJusticiar_RevealJusticiar() end

function Osi.PROC_SHA_LastJusticiar_SpawnUltimatumWave() end

---@param a0 ITEM
---@param a1 integer
function Osi.PROC_SHA_LastJusticiar_TryPackRatAppear(a0, a1) end

function Osi.PROC_SHA_Mausoleum_ActivateTrap() end

function Osi.PROC_SHA_Mausoleum_DeactivateTrap() end

function Osi.PROC_SHA_Mausoleum_OpenSecretDoors() end

---@param a0 ITEM
function Osi.PROC_SHA_Mausoleum_ResolvePuzzle(a0) end

---@param a0 ITEM
function Osi.PROC_SHA_Mausoleum_UpdateCurrentStep(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_SHA_MeetingNecromancer_StartBarricadeDialog(a0, a1) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_SHA_MirrorEncounter_ApplyClassStatus(a0, a1) end

function Osi.PROC_SHA_Necromancer_FleshGolemLeaves() end

function Osi.PROC_SHA_Necromancer_MoveToPrison() end

function Osi.PROC_SHA_Necromancer_NereCheck() end

---@param a0 GUIDSTRING
---@param a1 integer
function Osi.PROC_SHA_Necromancer_SpawnShadowQuake(a0, a1) end

function Osi.PROC_SHA_Necromancer_StartShadowquakeCombat() end

function Osi.PROC_SHA_Necromancer_ZombifieNere() end

function Osi.PROC_SHA_NightsongChamberDoor_SwitchState() end

function Osi.PROC_SHA_NightsongPrison_BalthazarSummonSkellies() end

---@param a0 CHARACTER
function Osi.PROC_SHA_NightsongPrison_Entrance(a0) end

function Osi.PROC_SHA_NightsongPrison_NightSongFateReaction() end

function Osi.PROC_SHA_NightsongPrison_NightsongToMoonrise() end

function Osi.PROC_SHA_NightsongPrison_ResurrectNightsong() end

---@param a0 CHARACTER
function Osi.PROC_SHA_NightsongPrison_TeleportEffect(a0) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
function Osi.PROC_SHA_NightsongPrison_TeleportPlayerWithFade(a0, a1) end

---@param a0 integer
function Osi.PROC_SHA_NightsongPrison_TryTeleport(a0) end

function Osi.PROC_SHA_Nightsong_HavenDestruction() end

---@param a0 CHARACTER
function Osi.PROC_SHA_Nightsong_PermaKill(a0) end

---@param a0 DIALOGRESOURCE
---@param a1 number
function Osi.PROC_SHA_OrthonLair_CombatAD(a0, a1) end

function Osi.PROC_SHA_OrthonLair_EndAmbushHostile() end

function Osi.PROC_SHA_OrthonLair_EndAmbushNeutral() end

function Osi.PROC_SHA_OrthonLair_MakeOrthonPartyHostile() end

function Osi.PROC_SHA_OrthonLair_OrthonAndHisPartyDisappear() end

function Osi.PROC_SHA_OrthonLair_SendDisplacerToAmbush() end

function Osi.PROC_SHA_OrthonLair_TeleportRaphaelToOrthon() end

---@param a0 FLAG
function Osi.PROC_SHA_OrthonLair_UpdateDisplacerBaitFlags(a0) end

function Osi.PROC_SHA_Orthon_Phase2_Start() end

function Osi.PROC_SHA_RelicJournal_GemUpdate() end

---@param a0 ITEM
function Osi.PROC_SHA_RelicJournal_GemUpdateCheck(a0) end

function Osi.PROC_SHA_ShadowheartConfrontCheck() end

function Osi.PROC_SHA_Shadowheart_RegisterNightsongPrisonOM() end

function Osi.PROC_SHA_Shadowheart_SharWrath_ReturnOutside() end

function Osi.PROC_SHA_Shadowheart_SharWrath_Start() end

function Osi.PROC_SHA_SilentLibraryDisarmArmedButtons() end

---@param a0 ITEM
---@param a1 integer
function Osi.PROC_SHA_SilentLibrary_MoveBook(a0, a1) end

function Osi.PROC_SHA_StartShadowquakeShakes() end

function Osi.PROC_SHA_StopShadowquakeShakes() end

---@param a0 GUIDSTRING
---@param a1 integer
function Osi.PROC_SHA_TadpoledSkeletons_JusticiarAppears(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_SHA_TadpoledSkeletons_StartBackupAD(a0) end

---@param a0 ITEM
function Osi.PROC_SHA_Trials_ActivateTeleportStone(a0) end

---@param a0 ITEM
function Osi.PROC_SHA_Trials_AddGem(a0) end

---@param a0 ITEM
---@param a1 ITEM
function Osi.PROC_SHA_Trials_AddGemToSocket(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_SHA_Trials_ApplyClassTags(a0, a1) end

---@param a0 ITEM
---@param a1 TRIGGER
---@param a2 CHARACTER
function Osi.PROC_SHA_Trials_CharacterEnteredDeathTrigger(a0, a1, a2) end

---@param a0 ITEM
---@param a1 TRIGGER
---@param a2 CHARACTER
function Osi.PROC_SHA_Trials_CharacterEnteredDeathTrigger_Hook(a0, a1, a2) end

---@param a0 ITEM
function Osi.PROC_SHA_Trials_CheckAnyPlayerInTrial(a0) end

---@param a0 ITEM
---@param a1 integer
function Osi.PROC_SHA_Trials_CheckTrialProgression(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_SHA_Trials_ClearClassTags(a0) end

---@param a0 string
---@param a1 FLAG
function Osi.PROC_SHA_Trials_ClearDefeatCounter(a0, a1) end

---@param a0 GUIDSTRING
function Osi.PROC_SHA_Trials_CustomTrialOutcome(a0) end

---@param a0 CHARACTER
function Osi.PROC_SHA_Trials_DeathTriggerTeleport(a0) end

function Osi.PROC_SHA_Trials_InitGems() end

function Osi.PROC_SHA_Trials_InitMirrorCharacters() end

function Osi.PROC_SHA_Trials_LockAndCloseLighTrialDoors() end

---@param a0 ITEM
function Osi.PROC_SHA_Trials_LockAndCloseTrialDoors(a0) end

function Osi.PROC_SHA_Trials_LockDisc() end

---@param a0 GUIDSTRING
---@param a1 GUIDSTRING
---@param a2 GUIDSTRING
function Osi.PROC_SHA_Trials_MagicTeleport(a0, a1, a2) end

function Osi.PROC_SHA_Trials_MirrorCharactersAppear() end

---@param a0 GUIDSTRING
function Osi.PROC_SHA_Trials_MoveElevatorTo(a0) end

---@param a0 CHARACTER
---@param a1 ITEM
function Osi.PROC_SHA_Trials_PlayHint(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_SHA_Trials_RemoveDoubleStatuses(a0) end

---@param a0 CHARACTER
function Osi.PROC_SHA_Trials_ResetCharacter(a0) end

---@param a0 string
function Osi.PROC_SHA_Trials_ResolveTrialsThroughGems(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_SHA_Trials_RestartTrial(a0) end

---@param a0 ITEM
function Osi.PROC_SHA_Trials_SetAtmosphere(a0) end

---@param a0 ITEM
function Osi.PROC_SHA_Trials_SetDefaultAtmosphere(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_SHA_Trials_ShadowSpotsPlayer(a0, a1) end

---@param a0 CHARACTER
---@param a1 ITEM
function Osi.PROC_SHA_Trials_StartTrial(a0, a1) end

function Osi.PROC_SHA_Trials_SwitchSecretRoomDoorsInLightTrialState() end

---@param a0 ITEM
function Osi.PROC_SHA_Trials_TakeGem(a0) end

---@param a0 ITEM
function Osi.PROC_SHA_Trials_TrialFailed(a0) end

---@param a0 ITEM
function Osi.PROC_SHA_Trials_TrialPassed(a0) end

---@param a0 CHARACTER
function Osi.PROC_SHA_Trials_TryStartDiscAD(a0) end

---@param a0 ITEM
function Osi.PROC_SHA_Trials_TurnOnLight(a0) end

function Osi.PROC_SHA_Trials_UnlockAndOpenLighTrialDoors() end

---@param a0 ITEM
function Osi.PROC_SHA_Trials_UnlockAndOpenTrialDoors(a0) end

function Osi.PROC_SHA_Trials_UnlockDisc() end

function Osi.PROC_SHA_Trials_UpdateInvisiblePlatformsCandles() end

function Osi.PROC_SHA_Trials_UpdateInvisiblePlatformsTries() end

---@param a0 CHARACTER
function Osi.PROC_SHA_Trials_UpdateLastCloneToBeDefeated(a0) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_SafeRomance_DebugPrintState(a0, a1) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_SafeRomance_SetFlag(a0, a1) end

---@param a0 GUIDSTRING
function Osi.PROC_SafeRomance_SetFlagForSpeaker(a0) end

---@param a0 integer
---@param a1 integer
function Osi.PROC_SafeRomance_UpdateState(a0, a1) end

function Osi.PROC_SaveGamePatch_GUS300074() end

function Osi.PROC_SaveGamePatch_GUS300074_ResetMinscDialog() end

function Osi.PROC_SaveGamePatch_GUS_303921_CheckPlayerProgressToAstralPlane() end

function Osi.PROC_SaveGamePatch_GUS_303921_RestoreEmperor() end

---@param a0 GUIDSTRING
function Osi.PROC_SaveGamePatch_GUS_312440_RestoreIfKarlach(a0) end

---@param a0 integer
function Osi.PROC_SaveNumActors(a0) end

---@param a0 GUIDSTRING
---@param a1 string
---@param a2 GUIDSTRING
---@param a3 string
function Osi.PROC_SavegamePatch_ClearStuckWaitingForDroppedMutingStatus(a0, a1, a2, a3) end

function Osi.PROC_SavegamePatch_GUS298057_FixZhentMines() end

---@param a0 ITEM
---@param a1 number
---@param a2 number
---@param a3 number
function Osi.PROC_SavegamePatch_GUS302508_FixBrokenChest(a0, a1, a2, a3) end

---@param a0 ITEM
---@param a1 number
---@param a2 number
---@param a3 number
function Osi.PROC_SavegamePatch_GUS302508_FixBrokenMound(a0, a1, a2, a3) end

function Osi.PROC_SavegamePatch_GUS302508_FixBrokenMounds() end

function Osi.PROC_SavegamePatch_GUS303733_BringPaladinsBack() end

function Osi.PROC_SavegamePatch_GUS304291() end

function Osi.PROC_SavegamePatch_GUS304501_GiveMissingRewards() end

function Osi.PROC_SavegamePatch_GUS305058_ResetNight() end

function Osi.PROC_SavegamePatch_GUS305192() end

function Osi.PROC_SavegamePatch_GUS305256_CheckFixGrove() end

function Osi.PROC_SavegamePatch_GUS308150() end

function Osi.PROC_SavegamePatch_GUS314213_ClearCurse() end

function Osi.PROC_SavegamePatch_GUS_302552() end

function Osi.PROC_SavegamePatches_CleanUpDBs() end

function Osi.PROC_SavegamePatches_CleanUpLavaBubbles() end

function Osi.PROC_SavegamePatches_CleanUpSummons() end

function Osi.PROC_SavegamePatches_CleanUpSummonsTemplatesDB() end

function Osi.PROC_SavegamePatches_GUS_315783() end

---@param a0 string
---@param a1 CHARACTER
---@param a2 TRIGGER
function Osi.PROC_SceneDialogOnly(a0, a1, a2) end

---@param a0 GUIDSTRING
---@param a1 CHARACTER
---@param a2 string
---@param a3 string
function Osi.PROC_SceneInterrupted(a0, a1, a2, a3) end

---@param a0 integer
---@param a1 CHARACTER
function Osi.PROC_SceneManager_HandleInvestigation(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 string
---@param a3 string
---@param a4 integer
function Osi.PROC_SceneManager_HandleViolence(a0, a1, a2, a3, a4) end

---@param a0 ITEM
---@param a1 GUIDSTRING
---@param a2 string
function Osi.PROC_SceneManager_ItemLeftTrigger(a0, a1, a2) end

---@param a0 string
---@param a1 integer
function Osi.PROC_SceneManager_MaybeHandledAttack(a0, a1) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_SceneManager_RemoveFromScene(a0, a1) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_SceneManager_TryBlockDialog(a0, a1) end

---@param a0 string
function Osi.PROC_SceneOver(a0) end

function Osi.PROC_SchoolOgreDebtCollection_LookAtPlayers() end

function Osi.PROC_SchoolOgreDebtCollection_SpawnNextOgre() end

function Osi.PROC_SchoolOgreDebtCollection_SpawnOgres() end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 CHARACTER
---@param a3 CHARACTER
---@param a4 CHARACTER
function Osi.PROC_SchoolOgres_CFM_DebtCollection_Dialog(a0, a1, a2, a3, a4) end

---@param a0 string
---@param a1 integer
---@param a2 integer
function Osi.PROC_SeedFairRand(a0, a1, a2) end

---@param a0 CHARACTER
function Osi.PROC_SelectDebugAVATAR(a0) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_SelectMove(a0, a1) end

function Osi.PROC_SelectRandomStartOrigin() end

---@param a0 CHARACTER
function Osi.PROC_SelfHealing_Casted(a0) end

---@param a0 CHARACTER
function Osi.PROC_SelfHealing_Check(a0) end

---@param a0 CHARACTER
function Osi.PROC_SelfHealing_Disable(a0) end

---@param a0 CHARACTER
function Osi.PROC_SelfHealing_Enable(a0) end

function Osi.PROC_SerialKiller_DisableMarkers() end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_SetAnubisConfig(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_SetAnubisConfig_ClearTracking(a0) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_SetAnubisConfig_Internal(a0, a1) end

---@param a0 CHARACTER
---@param a1 ARMOURSET
function Osi.PROC_SetArmourSet(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_SetAsStartOrigin(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 integer
function Osi.PROC_SetAttitude(a0, a1, a2) end

---@param a0 CHARACTER
function Osi.PROC_SetAvatarDismissable(a0) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_SetBlockDismiss(a0, a1) end

---@param a0 GUIDSTRING
---@param a1 integer
function Osi.PROC_SetCanFight(a0, a1) end

---@param a0 FLAG
---@param a1 integer
function Osi.PROC_SetConditionalGlobalFlag(a0, a1) end

---@param a0 GUIDSTRING
---@param a1 FLAG
---@param a2 integer
function Osi.PROC_SetConditionalObjectFlag(a0, a1, a2) end

---@param a0 GUIDSTRING
---@param a1 TAG
---@param a2 integer
function Osi.PROC_SetConditionalTag(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_SetCorpseOwner(a0, a1) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_SetCustomTradeTreasure(a0, a1) end

---@param a0 DIALOGRESOURCE
---@param a1 integer
function Osi.PROC_SetDialogGoldCheckAmount(a0, a1) end

---@param a0 DIALOGRESOURCE
function Osi.PROC_SetDialogItemTemplateCheckAmount(a0) end

---@param a0 GUIDSTRING
---@param a1 integer
function Osi.PROC_SetHasDialogIfChar(a0, a1) end

---@param a0 GUIDSTRING
---@param a1 integer
function Osi.PROC_SetHitpointsMinimum(a0, a1) end

---@param a0 GUIDSTRING
---@param a1 number
function Osi.PROC_SetHitpointsPercentageMinimum(a0, a1) end

---@param a0 CHARACTER
---@param a1 number
function Osi.PROC_SetHitpointsPercentage_BlockSelfHealing(a0, a1) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_SetHitpoints_BlockSelfHealing(a0, a1) end

---@param a0 FACTION
---@param a1 CHARACTER
function Osi.PROC_SetHostileToIndivPlayerFaction(a0, a1) end

---@param a0 GUIDSTRING
---@param a1 FACTION
---@param a2 integer
---@param a3 string
---@param a4 integer
function Osi.PROC_SetIndividualRelation(a0, a1, a2, a3, a4) end

---@param a0 GUIDSTRING
---@param a1 integer
function Osi.PROC_SetInvulnerable(a0, a1) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
---@param a2 integer
function Osi.PROC_SetMagicPocketsItemTemplatecount(a0, a1, a2) end

---@param a0 GUIDSTRING
---@param a1 FLAG
function Osi.PROC_SetMagicPocketsOwnershipFlag(a0, a1) end

---@param a0 GUIDSTRING
---@param a1 FLAG
---@param a2 integer
function Osi.PROC_SetMagicPocketsOwnershipFlag(a0, a1, a2) end

---@param a0 integer
function Osi.PROC_SetNumberOfInvolvedActors(a0) end

---@param a0 GUIDSTRING
---@param a1 integer
function Osi.PROC_SetOnStage(a0, a1) end

---@param a0 FACTION
---@param a1 FACTION
---@param a2 integer
function Osi.PROC_SetRelation(a0, a1, a2) end

---@param a0 FACTION
---@param a1 FACTION
---@param a2 integer
function Osi.PROC_SetRelationMutual(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_SetRelationTemporaryHostile(a0, a1) end

---@param a0 FACTION
---@param a1 integer
function Osi.PROC_SetRelationToPlayers(a0, a1) end

---@param a0 FACTION
function Osi.PROC_SetRelationToPlayers_ClearHostileToPlayerGroup(a0) end

---@param a0 FACTION
function Osi.PROC_SetRelationToPlayers_ClearIndivPlayerRelations(a0) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
function Osi.PROC_SetSurrendered(a0, a1) end

function Osi.PROC_SetupDebugParty() end

function Osi.PROC_SetupDebugParty_ApprovalRating() end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 integer
function Osi.PROC_SetupDebugParty_ReplaceApprovalRating(a0, a1, a2) end

---@param a0 integer
function Osi.PROC_Sewer_Raft_GoToStation(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_ShadowCurse_LeftSafeZone(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_ShadowCurse_RemoveLightStatuses(a0) end

---@param a0 TRIGGER
function Osi.PROC_ShadowCurse_RemoveShadowblightTrigger(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_ShadowCurse_TrackLight(a0) end

---@param a0 CHARACTER
---@param a1 integer
---@param a2 EFFECTRESOURCE
function Osi.PROC_ShakeCameraForTime(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 integer
---@param a2 EFFECTRESOURCE
---@param a3 integer
function Osi.PROC_ShakeCameraForTime(a0, a1, a2, a3) end

---@param a0 CHARACTER
---@param a1 integer
---@param a2 integer
function Osi.PROC_ShakeCameraForTime_StartTimer(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_Shapeshifting_UpdateInconspicuousTagExpr(a0, a1) end

function Osi.PROC_Shared_CharacterCreationFinished() end

function Osi.PROC_Shared_CharacterCreation_Init() end

---@param a0 CHARACTER
---@param a1 ITEM
---@param a2 ITEM
function Osi.PROC_Shovel_CheckDialog(a0, a1, a2) end

---@param a0 ITEM
function Osi.PROC_Shovel_CleanupMound(a0) end

---@param a0 ITEM
function Osi.PROC_Shovel_CleanupMoundFallback(a0) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_Shovel_HandleDialogSuccess(a0, a1) end

---@param a0 ITEM
---@param a1 CHARACTER
function Osi.PROC_Shovel_RevealRemoteMound(a0, a1) end

---@param a0 DIALOGRESOURCE
---@param a1 GUIDSTRING
---@param a2 GUIDSTRING
---@param a3 CHARACTER
function Osi.PROC_Shovel_StartBehaviourDialog(a0, a1, a2, a3) end

---@param a0 CHARACTER
---@param a1 UNIFIEDTUTORIAL
function Osi.PROC_ShowEndTheDayTutorial(a0, a1) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_ShowMarker(a0, a1) end

---@param a0 CHARACTER
---@param a1 UNIFIEDTUTORIAL
function Osi.PROC_ShowUnifiedTutorialForPlayer(a0, a1) end

---@param a0 string
function Osi.PROC_Show_Activity(a0) end

---@param a0 string
function Osi.PROC_Show_All_Activities(a0) end

function Osi.PROC_SkippedCC() end

function Osi.PROC_SocietyOfBrilliance_Scholar_DialogEndedOrNested() end

---@param a0 GUIDSTRING
---@param a1 string
function Osi.PROC_Sound_Scripted_Music_FightStart(a0, a1) end

---@param a0 GUIDSTRING
---@param a1 string
function Osi.PROC_Sound_Scripted_Music_FightStop(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_SpeakWithDead_SetCustomKiller(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_Spell_ClearIgnoreAssaultIfNoStatusesLeft(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 CHARACTER
function Osi.PROC_Spell_DominateBeast_AddToParty(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 string
---@param a3 string
---@param a4 string
---@param a5 string
---@param a6 integer
function Osi.PROC_Spells_CrimeReactTo_Status(a0, a1, a2, a3, a4, a5, a6) end

---@param a0 string
function Osi.PROC_SpotPlayers_CleanupSpotting(a0) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_SpotPlayers_ClearSpotTrigger(a0, a1) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_SpotPlayers_RestartSpotting(a0, a1) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 CHARACTER
function Osi.PROC_SpotPlayers_Spotted(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 CHARACTER
---@param a3 string
function Osi.PROC_SpotPlayers_Spotted(a0, a1, a2, a3) end

---@param a0 string
function Osi.PROC_SpotPlayers_StopSpotting(a0) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_SpotPlayers_StopSpotting(a0, a1) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 CHARACTER
function Osi.PROC_SpotPlayers_Unspotted(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 CHARACTER
---@param a3 string
function Osi.PROC_SpotPlayers_Unspotted(a0, a1, a2, a3) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 CHARACTER
function Osi.PROC_SpotPlayers_Unspotted_Intern(a0, a1, a2) end

---@param a0 string
---@param a1 GUIDSTRING
function Osi.PROC_Stack_AddFirst(a0, a1) end

---@param a0 string
---@param a1 GUIDSTRING
function Osi.PROC_Stack_AddLast(a0, a1) end

function Osi.PROC_Stack_Internal_ClearExtractFirst() end

function Osi.PROC_Stack_Internal_ClearExtractLast() end

---@param a0 string
---@param a1 GUIDSTRING
function Osi.PROC_Stack_RestackOldValues(a0, a1) end

---@param a0 TRIGGER
---@param a1 CHARACTER
function Osi.PROC_StartAmbushRevealAD(a0, a1) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_StartArrest(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_StartArrestDialog(a0) end

---@param a0 CHARACTER
---@param a1 integer
---@param a2 CHARACTER
---@param a3 CHARACTER
---@param a4 CHARACTER
---@param a5 CHARACTER
---@param a6 DIALOGRESOURCE
function Osi.PROC_StartArrestDialog(a0, a1, a2, a3, a4, a5, a6) end

---@param a0 integer
---@param a1 DIALOGRESOURCE
---@param a2 integer
---@param a3 CHARACTER
---@param a4 CHARACTER
---@param a5 CHARACTER
---@param a6 CHARACTER
---@param a7 CHARACTER
function Osi.PROC_StartCrimeDialog(a0, a1, a2, a3, a4, a5, a6, a7) end

---@param a0 DIALOGRESOURCE
---@param a1 integer
function Osi.PROC_StartDialog_AddExtraSpeakers(a0, a1) end

---@param a0 DIALOGRESOURCE
---@param a1 integer
function Osi.PROC_StartDialog_AddInclusionSpeakers(a0, a1) end

---@param a0 DIALOGRESOURCE
---@param a1 integer
function Osi.PROC_StartDialog_AddNearbySpeakersToDialog(a0, a1) end

---@param a0 DIALOGRESOURCE
---@param a1 GUIDSTRING
---@param a2 GUIDSTRING
---@param a3 GUIDSTRING
---@param a4 GUIDSTRING
---@param a5 GUIDSTRING
---@param a6 GUIDSTRING
---@param a7 integer
function Osi.PROC_StartDialog_AfterDroppedMutingStatusses(a0, a1, a2, a3, a4, a5, a6, a7) end

---@param a0 DIALOGRESOURCE
---@param a1 integer
function Osi.PROC_StartDialog_ChangeClothing(a0, a1) end

---@param a0 DIALOGRESOURCE
function Osi.PROC_StartDialog_CheckMakeOriginActive(a0) end

---@param a0 DIALOGRESOURCE
---@param a1 integer
---@param a2 integer
---@param a3 GUIDSTRING
---@param a4 GUIDSTRING
---@param a5 GUIDSTRING
---@param a6 GUIDSTRING
---@param a7 GUIDSTRING
---@param a8 GUIDSTRING
function Osi.PROC_StartDialog_PreDialogStarted(a0, a1, a2, a3, a4, a5, a6, a7, a8) end

---@param a0 DIALOGRESOURCE
---@param a1 GUIDSTRING
function Osi.PROC_StartDialog_SaveControlledPlayer(a0, a1) end

---@param a0 DIALOGRESOURCE
---@param a1 integer
function Osi.PROC_StartDialog_StuckTimelineLoad_Detector(a0, a1) end

---@param a0 integer
---@param a1 CHARACTER
function Osi.PROC_StartDialog_TryAddDaisyOrEmperor(a0, a1) end

---@param a0 string
function Osi.PROC_StartEffectsForRegion(a0) end

---@param a0 CHARACTER
function Osi.PROC_StartHenchmen(a0) end

---@param a0 integer
---@param a1 CHARACTER
---@param a2 CHARACTER
---@param a3 CHARACTER
---@param a4 CHARACTER
---@param a5 CHARACTER
---@param a6 DIALOGRESOURCE
function Osi.PROC_StartInterrogationDialog(a0, a1, a2, a3, a4, a5, a6) end

---@param a0 string
function Osi.PROC_StartLoopBeamEffectsForRegion(a0) end

---@param a0 string
function Osi.PROC_StartLoopEffectsForRegion(a0) end

---@param a0 string
function Osi.PROC_StartMovie(a0) end

---@param a0 CHARACTER
function Osi.PROC_StartNPCSightEvents(a0) end

---@param a0 CHARACTER
---@param a1 DIALOGRESOURCE
function Osi.PROC_StartPartyOriginMoment(a0, a1) end

---@param a0 CHARACTER
---@param a1 DIALOGRESOURCE
---@param a2 DIALOGRESOURCE
---@param a3 DIALOGRESOURCE
---@param a4 DIALOGRESOURCE
function Osi.PROC_StartPartyOriginMoment(a0, a1, a2, a3, a4) end

---@param a0 CHARACTER
---@param a1 DIALOGRESOURCE
function Osi.PROC_StartPartyOriginMoment_ACM(a0, a1) end

---@param a0 CHARACTER
---@param a1 DIALOGRESOURCE
function Osi.PROC_StartPartyOriginMoment_AOM(a0, a1) end

---@param a0 CHARACTER
---@param a1 DIALOGRESOURCE
function Osi.PROC_StartPartyOriginMoment_COM(a0, a1) end

---@param a0 CHARACTER
---@param a1 DIALOGRESOURCE
function Osi.PROC_StartPartyOriginMoment_OOM(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_StartTrade(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 TRADEMODE
function Osi.PROC_StartTrade(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 TRADEMODE
---@param a3 string
function Osi.PROC_StartTrade(a0, a1, a2, a3) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 TRADEMODE
---@param a3 GUIDSTRING
---@param a4 string
function Osi.PROC_StartTrade(a0, a1, a2, a3, a4) end

---@param a0 CHARACTER
function Osi.PROC_StartWorldGossip(a0) end

---@param a0 string
function Osi.PROC_Start_Activity(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_StateCleared_CantAct(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_StateCleared_CantMove(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_StateCleared_CantMove_IgnoreDialog(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_StateCleared_CantTalk(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_StateCleared_CantTalk_IgnoreCombat(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_StateCleared_CantTalk_IgnoreCombatDead(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_StateCleared_CantTalk_IgnoreDead(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_StateCleared_CantTalk_IgnoreDialogs(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_StateCleared_CantTalk_IgnoreDialogsCombat(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_StateCleared_CantTalk_IgnoreDialogsCombatDead(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_StateCleared_CantTalk_IgnoreDialogsCombatStatusesDead(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_StateCleared_CantTalk_IgnoreStatuses(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_StateCleared_CantTalk_IgnoreStatusesCombat(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_StateCleared_CantTalk_IgnoreStatusesCombatDead(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_StateCleared_CantTalk_IgnoreStatusesDead(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_StateCleared_Defeated(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_StateCleared_Dominated(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_StateSet_CantAct(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_StateSet_CantMove(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_StateSet_CantMove_IgnoreDialog(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_StateSet_CantTalk(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_StateSet_CantTalk_IgnoreCombat(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_StateSet_CantTalk_IgnoreCombatDead(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_StateSet_CantTalk_IgnoreDead(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_StateSet_CantTalk_IgnoreDialogs(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_StateSet_CantTalk_IgnoreDialogsCombat(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_StateSet_CantTalk_IgnoreDialogsCombatDead(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_StateSet_CantTalk_IgnoreDialogsCombatStatusesDead(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_StateSet_CantTalk_IgnoreStatuses(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_StateSet_CantTalk_IgnoreStatusesCombat(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_StateSet_CantTalk_IgnoreStatusesCombatDead(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_StateSet_Defeated(a0) end

---@param a0 ITEM
function Osi.PROC_StateSet_Destroyed(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_StateSet_Dominated(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_StateSet_PermaDefeated(a0) end

---@param a0 GUIDSTRING
---@param a1 string
---@param a2 string
function Osi.PROC_State_Changed(a0, a1, a2) end

---@param a0 GUIDSTRING
---@param a1 string
---@param a2 string
---@param a3 string
function Osi.PROC_State_Changed(a0, a1, a2, a3) end

---@param a0 GUIDSTRING
---@param a1 string
---@param a2 string
---@param a3 string
---@param a4 FLAG
function Osi.PROC_State_Changed(a0, a1, a2, a3, a4) end

---@param a0 GUIDSTRING
---@param a1 string
---@param a2 string
---@param a3 string
function Osi.PROC_State_IfCurrentProgress(a0, a1, a2, a3) end

---@param a0 GUIDSTRING
---@param a1 string
---@param a2 string
---@param a3 string
---@param a4 string
function Osi.PROC_State_IfCurrentProgressElse(a0, a1, a2, a3, a4) end

---@param a0 GUIDSTRING
---@param a1 string
---@param a2 string
function Osi.PROC_State_Progress(a0, a1, a2) end

---@param a0 GUIDSTRING
---@param a1 string
function Osi.PROC_State_Remove(a0, a1) end

---@param a0 GUIDSTRING
---@param a1 string
---@param a2 integer
function Osi.PROC_State_Remove(a0, a1, a2) end

function Osi.PROC_SteelWatchFoundry_AntechamberBaneitesLeave() end

function Osi.PROC_SteelWatchFoundry_CastHellfireAtAllTargetsWithDelay() end

function Osi.PROC_SteelWatchFoundry_OutsideWatchersLeave() end

---@param a0 CHARACTER
function Osi.PROC_SteelWatchFoundry_TriggerAlarmOn(a0) end

---@param a0 GUIDSTRING
---@param a1 DIALOGRESOURCE
---@param a2 integer
function Osi.PROC_StopDialogIfStarted(a0, a1, a2) end

---@param a0 string
function Osi.PROC_StopEffectsForRegion(a0) end

---@param a0 CHARACTER
function Osi.PROC_StopFollow(a0) end

---@param a0 integer
---@param a1 CHARACTER
---@param a2 CHARACTER
---@param a3 CHARACTER
---@param a4 CHARACTER
---@param a5 CHARACTER
function Osi.PROC_StopInterrogation(a0, a1, a2, a3, a4, a5) end

---@param a0 GUIDSTRING
---@param a1 string
function Osi.PROC_StopLoopBeamEffect(a0, a1) end

---@param a0 string
function Osi.PROC_StopLoopBeamEffectsForRegion(a0) end

---@param a0 INTEGER64
function Osi.PROC_StopLoopEffect(a0) end

---@param a0 GUIDSTRING
---@param a1 string
function Osi.PROC_StopLoopEffect(a0, a1) end

---@param a0 string
function Osi.PROC_StopLoopEffectsForRegion(a0) end

---@param a0 CHARACTER
function Osi.PROC_StopNPCSightEvents(a0) end

---@param a0 CHARACTER
---@param a1 TRIGGER
function Osi.PROC_Subregion_Entered(a0, a1) end

---@param a0 TRIGGER
---@param a1 string
function Osi.PROC_Subregion_Rename(a0, a1) end

---@param a0 TRIGGER
---@param a1 string
---@param a2 string
function Osi.PROC_Subregion_Rename(a0, a1, a2) end

---@param a0 string
---@param a1 string
function Osi.PROC_Subregion_UpdateMarker(a0, a1) end

---@param a0 TRIGGER
---@param a1 string
function Osi.PROC_Subregion_UpdateName(a0, a1) end

---@param a0 GUIDSTRING
function Osi.PROC_Summons_ClearDBs_Execute(a0) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
function Osi.PROC_Surrender(a0, a1) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
---@param a2 DIALOGRESOURCE
function Osi.PROC_Surrender(a0, a1, a2) end

---@param a0 CHARACTER
function Osi.PROC_Surrender_Fled(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 GUIDSTRING
function Osi.PROC_Surrender_FoundSurrenderTarget(a0, a1, a2) end

---@param a0 CHARACTER
function Osi.PROC_Surrender_MaybeSetSurrenderCause(a0) end

---@param a0 CHARACTER
function Osi.PROC_Surrender_Restore(a0) end

---@param a0 CHARACTER
function Osi.PROC_Surrender_Restored(a0) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
function Osi.PROC_Surrendered(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_Surrendered_Removed(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_TEMP_RequestStopDialog(a0) end

---@param a0 integer
function Osi.PROC_TUT_CharacterCreation_ShowTutorialForUser(a0) end

function Osi.PROC_TUT_Helm_CheckBetrayal() end

function Osi.PROC_TUT_Helm_CheckCambionAndMindFlayerAreDead() end

---@param a0 CHARACTER
function Osi.PROC_TUT_Helm_CheckNPCReachedHelm(a0) end

function Osi.PROC_TUT_Helm_EndTutorial() end

function Osi.PROC_TUT_Helm_EndTutorialCleanUp() end

---@param a0 CHARACTER
function Osi.PROC_TUT_Helm_EnterHelm(a0) end

function Osi.PROC_TUT_Helm_GameOver() end

---@param a0 CHARACTER
function Osi.PROC_TUT_Helm_GetClosestPlayerToGuideAndTriggerDragon(a0) end

function Osi.PROC_TUT_Helm_HandleNarrativeCombat() end

function Osi.PROC_TUT_Helm_Init() end

function Osi.PROC_TUT_Helm_InitiateEndTutorial() end

---@param a0 CHARACTER
function Osi.PROC_TUT_Helm_PlayLastReminder(a0) end

---@param a0 CHARACTER
function Osi.PROC_TUT_Helm_RetryTransponder(a0) end

---@param a0 integer
function Osi.PROC_TUT_Helm_RoundEvent(a0) end

function Osi.PROC_TUT_Helm_RubbleFall() end

function Osi.PROC_TUT_Helm_SpawnCambionBackUp() end

---@param a0 CHARACTER
function Osi.PROC_TUT_Helm_StartCallDialog(a0) end

---@param a0 CHARACTER
function Osi.PROC_TUT_Helm_StartDragonCinematic(a0) end

function Osi.PROC_TUT_Helm_StartFinalCombat() end

function Osi.PROC_TUT_Helm_StartWarningFires() end

function Osi.PROC_TUT_Helm_Teleport() end

---@param a0 CHARACTER
function Osi.PROC_TUT_Helm_Transponder(a0) end

---@param a0 CHARACTER
function Osi.PROC_TUT_Helm_TryTransponder(a0) end

function Osi.PROC_TUT_JournalStart() end

---@param a0 ITEM
---@param a1 CHARACTER
function Osi.PROC_TUT_Lab_BrainjarAD(a0, a1) end

function Osi.PROC_TUT_Lab_Callout() end

function Osi.PROC_TUT_Lab_SetUp() end

function Osi.PROC_TUT_Lab_TempRemoveBrain() end

function Osi.PROC_TUT_Laboratory_DebugAngerUs() end

function Osi.PROC_TUT_Laboratory_DebugRecruitUs() end

function Osi.PROC_TUT_Laboratory_KillVictim() end

function Osi.PROC_TUT_Laboratory_StartUsEscape() end

function Osi.PROC_TUT_LowerDeck_CheckCharNeedTeleport() end

function Osi.PROC_TUT_LowerDeck_Debug_StartGuideDialog() end

---@param a0 CHARACTER
function Osi.PROC_TUT_LowerDeck_FindDialogueSpeaker(a0) end

---@param a0 CHARACTER
function Osi.PROC_TUT_LowerDeck_GuideDialogue(a0) end

---@param a0 CHARACTER
function Osi.PROC_TUT_LowerDeck_StartDialogue(a0) end

---@param a0 CHARACTER
function Osi.PROC_TUT_LowerDeck_TeleportCharToImpRoom(a0) end

---@param a0 CHARACTER
function Osi.PROC_TUT_Misc_CheckCustomRecruitAltGith(a0) end

function Osi.PROC_TUT_Misc_ElevatorInit() end

---@param a0 LEVELTEMPLATE
---@param a1 number
---@param a2 number
---@param a3 number
function Osi.PROC_TUT_Misc_ElevatorMove(a0, a1, a2, a3) end

---@param a0 LEVELTEMPLATE
---@param a1 TRIGGER
function Osi.PROC_TUT_Misc_FindDestination(a0, a1) end

---@param a0 VOICEBARKRESOURCE
---@param a1 DIALOGRESOURCE
---@param a2 CHARACTER
function Osi.PROC_TUT_Misc_GuideComment(a0, a1, a2) end

function Osi.PROC_TUT_Misc_IncreasePartySize() end

---@param a0 CHARACTER
---@param a1 ITEM
function Osi.PROC_TUT_Misc_MindflayerPodView(a0, a1) end

function Osi.PROC_TUT_Misc_RegisterRumbleRooms() end

---@param a0 ITEM
---@param a1 TRIGGER
---@param a2 integer
function Osi.PROC_TUT_Misc_RumbleStart(a0, a1, a2) end

function Osi.PROC_TUT_Misc_TentacleStart() end

---@param a0 CHARACTER
function Osi.PROC_TUT_Misc_TryPlayBacktrackAD(a0) end

---@param a0 CHARACTER
function Osi.PROC_TUT_Misc_TutorialCompanion_RecruitBrain(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_TUT_Misc_TutorialCompanion_Recruitment(a0, a1) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 string
function Osi.PROC_TUT_Misc_TutorialCompanion_RemoveCompanion(a0, a1, a2) end

---@param a0 string
function Osi.PROC_TUT_Misc_UpdateHelmMarkerPosition(a0) end

---@param a0 TRIGGER
---@param a1 CHARACTER
function Osi.PROC_TUT_Misc_UpdateProgress(a0, a1) end

---@param a0 TRIGGER
function Osi.PROC_TUT_Misc_UpdateProgress_Internal(a0) end

function Osi.PROC_TUT_Misc_UsHostile() end

---@param a0 CHARACTER
function Osi.PROC_TUT_Start_AssignPods(a0) end

---@param a0 CHARACTER
function Osi.PROC_TUT_Start_BrinepoolBurst(a0) end

function Osi.PROC_TUT_Start_BrinepoolExplode() end

---@param a0 CHARACTER
---@param a1 ITEM
function Osi.PROC_TUT_Start_EquipRangedWeapon(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_TUT_Start_MoveStarterWeapon(a0) end

---@param a0 CHARACTER
function Osi.PROC_TUT_Start_StartIntro(a0) end

---@param a0 CHARACTER
function Osi.PROC_TUT_Start_Voicebark(a0) end

function Osi.PROC_TUT_TransformChamber_BrainMachineInit() end

function Osi.PROC_TUT_TransformChamber_Callout() end

function Osi.PROC_TUT_TransformChamber_FreeShadowheart() end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_TUT_TransformChamber_Freed(a0, a1) end

---@param a0 ITEM
function Osi.PROC_TUT_TransformChamber_KillSlaves(a0) end

---@param a0 ITEM
---@param a1 CHARACTER
function Osi.PROC_TUT_TransformChamber_MachineActivate(a0, a1) end

function Osi.PROC_TUT_TransformChamber_MachineSetHostile() end

---@param a0 CHARACTER
---@param a1 ITEM
function Osi.PROC_TUT_TransformChamber_NegativeOutcome(a0, a1) end

function Osi.PROC_TUT_TransformChamber_RemoveChairHack() end

function Osi.PROC_TUT_TransformChamber_ShadowheartFreed() end

function Osi.PROC_TUT_TransformChamber_ShadowheartParty() end

function Osi.PROC_TUT_TransformChamber_ShadowheartWasFreed() end

function Osi.PROC_TUT_TransformChamber_SpotPlayer() end

function Osi.PROC_TWN_ArabellasPowers_Init() end

function Osi.PROC_TWN_ArabellasPowers_InitArabella() end

function Osi.PROC_TWN_ArabellasPowers_InitGoblin() end

function Osi.PROC_TWN_ArabellasPowers_PreInit() end

---@param a0 integer
---@param a1 CHARACTER
function Osi.PROC_TWN_CentralSquare_CheckIfRightSequence(a0, a1) end

---@param a0 ITEM
---@param a1 CHARACTER
function Osi.PROC_TWN_CentralSquare_HandleUsingPlaque(a0, a1) end

function Osi.PROC_TWN_CentralSquare_LockExit() end

function Osi.PROC_TWN_CentralSquare_RevealAltar() end

function Osi.PROC_TWN_CentralSquare_RevealGuardians() end

function Osi.PROC_TWN_CentralSquare_RevealGuardians_Internal() end

function Osi.PROC_TWN_CentralSquare_SlideWallDown() end

function Osi.PROC_TWN_CentralSquare_SlideWallUp() end

---@param a0 CHARACTER
function Osi.PROC_TWN_CentralSquare_StartAltarDialog(a0) end

function Osi.PROC_TWN_CentralSquare_UnlockExit() end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_TWN_CheckUnlockOneRoundBossKillGoal(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_TWN_Finale_Act2ExitUsed(a0) end

---@param a0 CHARACTER
---@param a1 DIALOGRESOURCE
function Osi.PROC_TWN_Finale_BlockAct2DaisyDialog(a0, a1) end

function Osi.PROC_TWN_Finale_ReadyCheck_Passed() end

---@param a0 CHARACTER
function Osi.PROC_TWN_Finale_StartCheck(a0) end

function Osi.PROC_TWN_Hospital_CheckUnlockNurseWeaponsBackgroundGoal() end

function Osi.PROC_TWN_Hospital_ReleasePatient() end

function Osi.PROC_TWN_Hospital_SceneCancelled() end

function Osi.PROC_TWN_MarchingArmy_ArmyLeft() end

function Osi.PROC_TWN_MarchingArmy_ClearCrowds() end

---@param a0 CHARACTER
function Osi.PROC_TWN_MarchingArmy_PrepareCriminals(a0) end

function Osi.PROC_TWN_MarchingArmy_RemoveArmyArrest() end

---@param a0 CHARACTER
function Osi.PROC_TWN_MarchingArmy_StartArrestDialog(a0) end

---@param a0 CHARACTER
function Osi.PROC_TWN_MarchingArmy_TeleportAllCriminalsToPrison(a0) end

---@param a0 CHARACTER
function Osi.PROC_TWN_MarchingArmy_TeleportCriminalToPrison(a0) end

---@param a0 CHARACTER
function Osi.PROC_TWN_MarchingArmy_TeleportCriminalsAway(a0) end

function Osi.PROC_TWN_MasonsGuild_ActivateOuterSlidingWall() end

---@param a0 CHARACTER
function Osi.PROC_TWN_MasonsGuild_BaitTrap_Activate(a0) end

function Osi.PROC_TWN_MasonsGuild_BaitTrap_ActivateDamageDealers() end

function Osi.PROC_TWN_MasonsGuild_BaitTrap_ActivateGratings() end

function Osi.PROC_TWN_MasonsGuild_BaitTrap_Deactivate() end

function Osi.PROC_TWN_MasonsGuild_BaitTrap_DeactiveDamageDealers() end

---@param a0 TRIGGER
function Osi.PROC_TWN_MasonsGuild_CheckMoveObjectsOut(a0) end

---@param a0 GUIDSTRING
---@param a1 number
---@param a2 number
---@param a3 number
function Osi.PROC_TWN_MasonsGuild_MoveStuckObjectOut(a0, a1, a2, a3) end

---@param a0 ITEM
function Osi.PROC_TWN_MasonsGuild_OpenCloseSlidingWall(a0) end

function Osi.PROC_TWN_Reception_ClearTrespass() end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_TWN_RemoveBoss(a0, a1) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_TWN_RemoveMinions(a0, a1) end

---@param a0 TRIGGER
---@param a1 CHARACTER
function Osi.PROC_TWN_TeleportKorrillaAndWatch(a0, a1) end

function Osi.PROC_TWN_TollCollectorBoss_RemoveNextBuff() end

---@param a0 CHARACTER
function Osi.PROC_TWN_Tollhouse_AddSurprisedImmunity(a0) end

---@param a0 integer
function Osi.PROC_TWN_Tollhouse_CheckTollPaid(a0) end

function Osi.PROC_TWN_Tollhouse_GiveBuffToTollhouseMaster() end

function Osi.PROC_TWN_Tollhouse_InitiateCombat() end

function Osi.PROC_TWN_Tollhouse_MoveBookcases() end

---@param a0 ANIMATION
function Osi.PROC_TWN_TryPlayHitAnimationOnTollCollector(a0) end

function Osi.PROC_TWN_VlaakithAttack_Init() end

---@param a0 CHARACTER
function Osi.PROC_Tadpole_Create(a0) end

---@param a0 GUIDSTRING
---@param a1 string
function Osi.PROC_Tadpole_NonTadpoledDialog_SetFlags(a0, a1) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
function Osi.PROC_Tadpole_PingTadpole(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 DIALOGRESOURCE
---@param a3 integer
function Osi.PROC_Tadpole_PrepStealPotential(a0, a1, a2, a3) end

---@param a0 CHARACTER
function Osi.PROC_Tadpole_ShowCorpseADToPlayers(a0) end

---@param a0 CHARACTER
---@param a1 ITEM
function Osi.PROC_Tadpole_TadpoleInJarAD(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_Tadpole_TadpoleOnCorpseAD(a0) end

---@param a0 CHARACTER
function Osi.PROC_Tadpole_TadpoledDied(a0) end

---@param a0 TRIGGER
---@param a1 string
function Osi.PROC_TeleportPartiesTo(a0, a1) end

---@param a0 GUIDSTRING
function Osi.PROC_TeleportSmoke(a0) end

---@param a0 CHARACTER
function Osi.PROC_TeleportToFromCamp(a0) end

---@param a0 CHARACTER
---@param a1 number
---@param a2 number
---@param a3 number
function Osi.PROC_TeleportToSafePosition(a0, a1, a2, a3) end

---@param a0 CHARACTER
---@param a1 number
---@param a2 number
---@param a3 number
---@param a4 string
---@param a5 integer
---@param a6 integer
---@param a7 integer
---@param a8 integer
---@param a9 integer
function Osi.PROC_TeleportToSafePosition(a0, a1, a2, a3, a4, a5, a6, a7, a8, a9) end

---@param a0 CHARACTER
---@param a1 number
---@param a2 number
---@param a3 number
function Osi.PROC_TeleportToSafePositionAndRestoreLinks(a0, a1, a2, a3) end

function Osi.PROC_Test_RelationshipDialog_Queue() end

---@param a0 CHARACTER
function Osi.PROC_Test_SaveOrigFaction(a0) end

function Osi.PROC_Thieflings_PickpocketDialogEndProcess() end

---@param a0 integer
---@param a1 CHARACTER
---@param a2 CHARACTER
function Osi.PROC_ThrowCrimeSawCriminalInCombat(a0, a1, a2) end

function Osi.PROC_TopicalGreeting_ClearOldTopic() end

---@param a0 FLAG
function Osi.PROC_TopicalGreeting_SetNewTopic(a0) end

---@param a0 FLAG
function Osi.PROC_TopicalGreeting_UnlockTopic(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_TradeResetInsults(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 integer
function Osi.PROC_Trade_SetAttitudeAdjustment(a0, a1, a2) end

---@param a0 integer
---@param a1 integer
---@param a2 CHARACTER
---@param a3 integer
function Osi.PROC_TransferMoneyInDialog(a0, a1, a2, a3) end

---@param a0 string
function Osi.PROC_TriggerMovieEndFadeIn(a0) end

---@param a0 TRIGGER
function Osi.PROC_TriggerRegisterForParty(a0) end

---@param a0 TRIGGER
function Osi.PROC_TriggerRegisterForPlayers(a0) end

---@param a0 string
function Osi.PROC_TriggerRegisterTriggerSetForParty(a0) end

---@param a0 string
function Osi.PROC_TriggerRegisterTriggerSetForPlayers(a0) end

---@param a0 TRIGGER
function Osi.PROC_TriggerUnregisterForParty(a0) end

---@param a0 TRIGGER
function Osi.PROC_TriggerUnregisterForPlayers(a0) end

---@param a0 string
function Osi.PROC_TriggerUnregisterTriggerSetForParty(a0) end

---@param a0 string
function Osi.PROC_TriggerUnregisterTriggerSetForPlayers(a0) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
---@param a2 string
---@param a3 DIFFICULTYCLASS
---@param a4 string
function Osi.PROC_TryAbilityCheck(a0, a1, a2, a3, a4) end

---@param a0 integer
---@param a1 GUIDSTRING
---@param a2 integer
function Osi.PROC_TryAddInclusionActor(a0, a1, a2) end

---@param a0 integer
---@param a1 CHARACTER
---@param a2 integer
---@param a3 integer
function Osi.PROC_TryAddSpeakingActorFromTriggerToDialog(a0, a1, a2, a3) end

---@param a0 CHARACTER
function Osi.PROC_TryClearAvatarTag(a0) end

---@param a0 CHARACTER
function Osi.PROC_TryClearMuted(a0) end

---@param a0 integer
---@param a1 string
---@param a2 CHARACTER
function Osi.PROC_TryCreatePickUpEvidenceCrime(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_TryLaunchRespec(a0, a1) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
---@param a2 string
---@param a3 DIFFICULTYCLASS
---@param a4 string
---@param a5 integer
function Osi.PROC_TryModifiedAbilityCheck_Internal(a0, a1, a2, a3, a4, a5) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
---@param a2 string
---@param a3 DIFFICULTYCLASS
---@param a4 string
---@param a5 string
---@param a6 integer
function Osi.PROC_TryModifiedSkillCheck_Internal(a0, a1, a2, a3, a4, a5, a6) end

---@param a0 CHARACTER
function Osi.PROC_TryRelaunchRespec(a0) end

---@param a0 GUIDSTRING
---@param a1 integer
function Osi.PROC_TryRequestStopDialog(a0, a1) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
---@param a2 string
---@param a3 DIFFICULTYCLASS
---@param a4 string
function Osi.PROC_TrySkillCheck(a0, a1, a2, a3, a4) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
---@param a2 string
---@param a3 DIFFICULTYCLASS
---@param a4 string
---@param a5 string
function Osi.PROC_TrySkillCheck(a0, a1, a2, a3, a4, a5) end

---@param a0 DIALOGRESOURCE
---@param a1 GUIDSTRING
function Osi.PROC_TryStartAD(a0, a1) end

---@param a0 DIALOGRESOURCE
---@param a1 GUIDSTRING
---@param a2 GUIDSTRING
function Osi.PROC_TryStartAD(a0, a1, a2) end

---@param a0 DIALOGRESOURCE
---@param a1 GUIDSTRING
---@param a2 GUIDSTRING
---@param a3 GUIDSTRING
function Osi.PROC_TryStartAD(a0, a1, a2, a3) end

---@param a0 DIALOGRESOURCE
---@param a1 GUIDSTRING
---@param a2 GUIDSTRING
---@param a3 GUIDSTRING
---@param a4 GUIDSTRING
function Osi.PROC_TryStartAD(a0, a1, a2, a3, a4) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_TryStartNPCAttackAD(a0, a1) end

---@param a0 DIALOGRESOURCE
---@param a1 GUIDSTRING
function Osi.PROC_TryStartSpellVocalAD(a0, a1) end

---@param a0 DIALOGRESOURCE
---@param a1 GUIDSTRING
---@param a2 GUIDSTRING
function Osi.PROC_TryStartSpellVocalAD(a0, a1, a2) end

---@param a0 CHARACTER
function Osi.PROC_TryStopDialogFor(a0) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_Try_CampRelationshipDialog(a0, a1) end

function Osi.PROC_Tutorial_Start() end

---@param a0 CHARACTER
function Osi.PROC_Tutorials_EndGameAlliesSpellAdded(a0) end

---@param a0 CHARACTER
---@param a1 ITEM
function Osi.PROC_UND_AdamantineForgeStartOpen(a0, a1) end

---@param a0 string
function Osi.PROC_UND_AdamantineForge_Debug_Down(a0) end

function Osi.PROC_UND_AdamantineForge_FixMouldLocation() end

function Osi.PROC_UND_AdamantineForge_ForceCombatJoin() end

function Osi.PROC_UND_AdamantineForge_HammerComeDown() end

function Osi.PROC_UND_AdamantineForge_HammerFailAD() end

function Osi.PROC_UND_AdamantineForge_HammerHitAD() end

---@param a0 CHARACTER
function Osi.PROC_UND_AdamantineForge_LeavePotentialLava(a0) end

---@param a0 integer
function Osi.PROC_UND_AdamantineForge_MovementAnimations(a0) end

---@param a0 CHARACTER
function Osi.PROC_UND_AdamantineForge_PrepareHammerStrike(a0) end

function Osi.PROC_UND_AdamantineForge_ProcessHit() end

---@param a0 string
function Osi.PROC_UND_AdamantineForge_ResetState(a0) end

---@param a0 GUIDSTRING
---@param a1 integer
function Osi.PROC_UND_AdamantineForge_SpawnAtMold(a0, a1) end

---@param a0 CHARACTER
---@param a1 ITEM
function Osi.PROC_UND_AdamantineForge_SpawnCraftedItem(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_UND_AdamantineForge_SpawnEnemies(a0) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_UND_AdamantineForge_SpawnEnemies(a0, a1) end

function Osi.PROC_UND_AdamantineForge_SpawnLava() end

function Osi.PROC_UND_AdamantinteGolem_SpawnMephits() end

---@param a0 CHARACTER
---@param a1 ITEM
function Osi.PROC_UND_ArcaneTeleportSkillCheck(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_UND_ArcaneTower_GiveReward(a0) end

---@param a0 ITEM
function Osi.PROC_UND_ArcaneTower_HideSecretButton(a0) end

function Osi.PROC_UND_ArcaneTower_PetButton_Feed() end

function Osi.PROC_UND_ArcaneTower_PetButton_FindCommentator() end

---@param a0 ITEM
---@param a1 CHARACTER
function Osi.PROC_UND_ArcaneTower_RevealSecretButton(a0, a1) end

function Osi.PROC_UND_ArcaneTower_SoundOff() end

function Osi.PROC_UND_ArcaneTower_SoundOn() end

---@param a0 string
function Osi.PROC_UND_Automaton_ChangeFX(a0) end

function Osi.PROC_UND_Automaton_ClearCurrentFX() end

function Osi.PROC_UND_Automaton_SelectFX() end

---@param a0 GUIDSTRING
function Osi.PROC_UND_Automaton_SetHostile(a0) end

---@param a0 CHARACTER
function Osi.PROC_UND_BroodingSovereign_AfterCamp_Teleport(a0) end

---@param a0 CHARACTER
function Osi.PROC_UND_BroodingSovereign_GoHome(a0) end

---@param a0 CHARACTER
function Osi.PROC_UND_BroodingSovereign_Join(a0) end

---@param a0 DIALOGRESOURCE
---@param a1 CHARACTER
---@param a2 CHARACTER
function Osi.PROC_UND_BroodingSovereign_LeaveDialog(a0, a1, a2) end

---@param a0 CHARACTER
function Osi.PROC_UND_BroodingSovereign_QuestUpdate_LeftUND(a0) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_UND_BroodingSovereign_Triggers(a0, a1) end

function Osi.PROC_UND_Bulette_BlockIntroCinematic() end

function Osi.PROC_UND_Bulette_ClearActiveCombatArena() end

---@param a0 integer
function Osi.PROC_UND_Bulette_EndBurrowTrail(a0) end

function Osi.PROC_UND_Bulette_EndIntro() end

function Osi.PROC_UND_Bulette_PrepareDespawn() end

---@param a0 FLAG
function Osi.PROC_UND_Bulette_RemoveEncounter(a0) end

---@param a0 FLAG
function Osi.PROC_UND_Bulette_RemoveSaveTriggers(a0) end

---@param a0 FLAG
function Osi.PROC_UND_Bulette_SetEncounterFlag(a0) end

---@param a0 CHARACTER
function Osi.PROC_UND_Bulette_SpawnBulette_PlaySpawn(a0) end

---@param a0 GUIDSTRING
---@param a1 CHARACTER
function Osi.PROC_UND_Bulette_SpawnBullete(a0, a1) end

---@param a0 GUIDSTRING
---@param a1 CHARACTER
function Osi.PROC_UND_Bulette_SpawnBullete_Internal(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_UND_Bulette_SpawnBullete_Intro(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_UND_Bulette_SpawnBullete_NoIntro(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_UND_Bulette_SpawnBullete_NoIntro_Internal(a0, a1) end

---@param a0 TRIGGER
function Osi.PROC_UND_Bulette_UpdateSpawnAndJumpTo(a0) end

---@param a0 CHARACTER
function Osi.PROC_UND_CaveIn_FoundExplosives_ProcessQuestUpdate(a0) end

function Osi.PROC_UND_CheckDuergarCampLeave() end

function Osi.PROC_UND_ChestOfMundane_Init() end

function Osi.PROC_UND_ChestOfMundane_ItemTransformed() end

function Osi.PROC_UND_ChestOfMundane_ItemTransformedLootingAD() end

function Osi.PROC_UND_ChestOfMundane_ItemTransformedPuttingAD() end

---@param a0 ITEMROOT
---@param a1 ITEM
function Osi.PROC_UND_ChestOfMundane_OnTemplateAdded(a0, a1) end

---@param a0 TRIGGER
function Osi.PROC_UND_ConfusionMushrooms_CheckIfAnyLeft(a0) end

---@param a0 ITEM
function Osi.PROC_UND_ConfusionMushrooms_PickedForMushroom(a0) end

function Osi.PROC_UND_DEBUG_UnfortunateGnome_Setup() end

function Osi.PROC_UND_DarkLake_AfterCombatResolution() end

function Osi.PROC_UND_DarkLake_MakeJump() end

function Osi.PROC_UND_DarkLake_MoveToCampAfterLakeEncounter() end

function Osi.PROC_UND_DarkLake_OnDialogFailedToStart() end

function Osi.PROC_UND_DarkLake_SendDuergarCrewToPatrol() end

function Osi.PROC_UND_DarkLake_SendDuergarSquadToShore() end

function Osi.PROC_UND_DarkLake_SendNewDuergarSquadToShore() end

function Osi.PROC_UND_DarkLake_SendPlayerBodiesToShore() end

function Osi.PROC_UND_DarkLake_SetCaveRaftAsCurrentRaft() end

function Osi.PROC_UND_DarkLake_StartRaftDialog() end

function Osi.PROC_UND_DeadInTheWater_EndShovingScene() end

function Osi.PROC_UND_DrowResupply_OnChestOpened() end

function Osi.PROC_UND_DuergarCamp_BattleEnded() end

function Osi.PROC_UND_DuergarCamp_BattleEnded_RemoveFearfulRotheGuards() end

---@param a0 CHARACTER
function Osi.PROC_UND_DuergarCamp_CheckAndRemoveHostiles(a0) end

function Osi.PROC_UND_DuergarCamp_CheckLastExplosives() end

---@param a0 CHARACTER
function Osi.PROC_UND_DuergarCamp_CheckSuffocating(a0) end

---@param a0 CHARACTER
function Osi.PROC_UND_DuergarCamp_Confrontation_CheckAlive(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 CHARACTER
function Osi.PROC_UND_DuergarCamp_Confrontation_SetSpeakers(a0, a1, a2) end

function Osi.PROC_UND_DuergarCamp_Deserted() end

---@param a0 CHARACTER
function Osi.PROC_UND_DuergarCamp_Mutineers_PostNereCombatSpotting(a0) end

function Osi.PROC_UND_DuergarCamp_Mutineers_PostNereCombat_CheckPermaDefeated() end

---@param a0 CHARACTER
function Osi.PROC_UND_DuergarCamp_OnEnteredDesertedTrigger(a0) end

function Osi.PROC_UND_DuergarCamp_PostCombat_CheckNerePermaDefeated() end

---@param a0 CHARACTER
function Osi.PROC_UND_DuergarCamp_PostCombat_SetupSpotting(a0) end

---@param a0 CHARACTER
---@param a1 integer
function Osi.PROC_UND_DuergarCamp_RebelReinforcementsAD(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_UND_DuergarCamp_RemoveNeutral(a0) end

function Osi.PROC_UND_DuergarCamp_RemoveNeutralNPCs() end

---@param a0 ITEM
function Osi.PROC_UND_DuergarCamp_SetPoisonedBeerOwnership(a0) end

function Osi.PROC_UND_DuergarMutineers_Leave() end

---@param a0 CHARACTER
function Osi.PROC_UND_EbonLake_BlockReadyCheckForGlutOwner(a0) end

---@param a0 FLAG
function Osi.PROC_UND_EbonLake_DisembarkCrew(a0) end

---@param a0 CHARACTER
---@param a1 number
function Osi.PROC_UND_EbonLake_Fading_FadeIn(a0, a1) end

---@param a0 CHARACTER
---@param a1 number
function Osi.PROC_UND_EbonLake_Fading_FadeOut(a0, a1) end

---@param a0 TRIGGER
function Osi.PROC_UND_EbonLake_ImitatePassageOfTime(a0) end

function Osi.PROC_UND_EbonLake_MakeDocksHostile() end

---@param a0 ITEM
---@param a1 CHARACTER
---@param a2 FLAG
function Osi.PROC_UND_EbonLake_PrepareAndMoveRaft(a0, a1, a2) end

---@param a0 ITEM
---@param a1 TRIGGER
---@param a2 FLAG
function Osi.PROC_UND_EbonLake_PrepareAndMoveRaftFromTrigger(a0, a1, a2) end

---@param a0 ITEM
---@param a1 CHARACTER
---@param a2 FLAG
function Osi.PROC_UND_EbonLake_PrepareAndMoveRaft_Internal(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 ITEM
function Osi.PROC_UND_EbonLake_ProcessUseOfRaft(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_UND_EbonLake_RaftUsedReadyCheck(a0) end

---@param a0 FLAG
function Osi.PROC_UND_EbonLake_Raft_Arrived_Hook(a0) end

function Osi.PROC_UND_EbonLake_Raft_ChainParty() end

function Osi.PROC_UND_EbonLake_Raft_ClearLocation() end

---@param a0 CHARACTER
function Osi.PROC_UND_EbonLake_Raft_ComposeCrew(a0) end

---@param a0 TRIGGER
function Osi.PROC_UND_EbonLake_Raft_ComposeCrewFrom(a0) end

---@param a0 FLAG
function Osi.PROC_UND_EbonLake_Raft_Disembark(a0) end

---@param a0 ITEM
function Osi.PROC_UND_EbonLake_Raft_Hide(a0) end

---@param a0 FLAG
function Osi.PROC_UND_EbonLake_Raft_Move(a0) end

function Osi.PROC_UND_EbonLake_Raft_MoveCrewIn() end

---@param a0 FLAG
function Osi.PROC_UND_EbonLake_Raft_Show(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 CHARACTER
---@param a3 CHARACTER
function Osi.PROC_UND_EbonLake_ReadyCheckSpecific(a0, a1, a2, a3) end

---@param a0 CHARACTER
function Osi.PROC_UND_EbonLake_SendDeadCharacterToShore(a0) end

function Osi.PROC_UND_ElevatorGuards_ClearDialogEvent() end

---@param a0 CHARACTER
function Osi.PROC_UND_FairyRings_ActivateBottomRing(a0) end

---@param a0 CHARACTER
function Osi.PROC_UND_FairyRings_ActivateBottomRing_Internal(a0) end

function Osi.PROC_UND_FairyRings_ActivateHagSystem() end

---@param a0 CHARACTER
---@param a1 ITEM
function Osi.PROC_UND_FairyRings_ProcessArrival(a0, a1) end

---@param a0 CHARACTER
---@param a1 ITEM
---@param a2 string
function Osi.PROC_UND_FarmMushroom(a0, a1, a2) end

function Osi.PROC_UND_FearfulRothe_DestroyedRubbleOrSpottedBehindIt() end

function Osi.PROC_UND_FearfulRothe_DisableBehindRubbleSpotting() end

function Osi.PROC_UND_FearfulRothe_DisableSelfHealingForGuards() end

function Osi.PROC_UND_FearfulRothe_EnableSelfHealing() end

function Osi.PROC_UND_FearfulRothe_MakeRotheHostileToEveryone() end

function Osi.PROC_UND_FearfulRothe_ResolveHostility() end

function Osi.PROC_UND_FearfulRothe_RotheAndPlayerVersusDuergar() end

function Osi.PROC_UND_FearfulRothe_RotheVersusDuergarAndPlayer() end

function Osi.PROC_UND_FearfulRothe_StartSpottingForHostility() end

---@param a0 ITEM
function Osi.PROC_UND_FurnaceSearch_ApplyDisguise(a0) end

---@param a0 GUIDSTRING
---@param a1 GUIDSTRING
function Osi.PROC_UND_FurnaceSearch_ItemTransformed(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_UND_FurnaceSearch_OnDisguisedJournalAdded(a0) end

function Osi.PROC_UND_FurnaceSearch_OnDisguisedJournalFound() end

---@param a0 CHARACTER
---@param a1 string
---@param a2 integer
function Osi.PROC_UND_FurnaceSearch_OnLearningAboutFurnace(a0, a1, a2) end

---@param a0 VOICEBARKRESOURCE
---@param a1 CHARACTER
---@param a2 string
function Osi.PROC_UND_FurnaceSearch_PlayLearningAboutFurnaceVB(a0, a1, a2) end

---@param a0 ITEM
function Osi.PROC_UND_FurnaceSearch_RemoveDisguise(a0) end

---@param a0 CHARACTER
function Osi.PROC_UND_FurnaceSearch_StartMadRecordsCheck(a0) end

function Osi.PROC_UND_General_PlaySkeletonVB() end

---@param a0 CHARACTER
---@param a1 DIALOGRESOURCE
function Osi.PROC_UND_GnomeWorkersToPatch(a0, a1) end

function Osi.PROC_UND_GnomeWorkers_Leave() end

function Osi.PROC_UND_GnomeWorkers_TryAppear() end

function Osi.PROC_UND_HarperSpy_InteractedWithSecretChest() end

function Osi.PROC_UND_HookHorrors_CheckLastAlive() end

---@param a0 CHARACTER
function Osi.PROC_UND_InjuredGnome_CheckIfHasCureAlready(a0) end

function Osi.PROC_UND_InjuredGnome_FindSovereignAndRiseGnome() end

function Osi.PROC_UND_InjuredGnome_ProgressPoison() end

---@param a0 CHARACTER
function Osi.PROC_UND_InjuredGnome_SetupSporeServant(a0) end

function Osi.PROC_UND_InjuredGnome_UnequipCurrentWeapon() end

function Osi.PROC_UND_InjuredGnome_UpdateDelirious() end

function Osi.PROC_UND_InjuredGnome_UpdateWeakened() end

function Osi.PROC_UND_KethericCity_CaveIn_SetupScene() end

---@param a0 GUIDSTRING
---@param a1 integer
---@param a2 integer
---@param a3 integer
function Osi.PROC_UND_KethericCity_Hazards_MovePlatform(a0, a1, a2, a3) end

function Osi.PROC_UND_KuoToaGod_BOOOALAppears() end

---@param a0 CHARACTER
function Osi.PROC_UND_KuoToaGod_CheckUpdateStatusDuration(a0) end

function Osi.PROC_UND_KuoToaGod_GiveBlessing() end

function Osi.PROC_UND_KuoToaGod_PlayBlessingGoneAD() end

function Osi.PROC_UND_KuoToaGod_PlayWeaponMagicGoneAD() end

function Osi.PROC_UND_KuoToaGod_RemoveBlessing() end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
function Osi.PROC_UND_KuoToaGod_TeleportPlayerWithFade(a0, a1) end

function Osi.PROC_UND_KuoToaGod_TransformSickle() end

---@param a0 number
function Osi.PROC_UND_KuoToaGod_UpdateStatus(a0) end

---@param a0 CHARACTER
function Osi.PROC_UND_LoneDuergar_CheckGiveKilledGnome(a0) end

---@param a0 CHARACTER
---@param a1 ITEM
function Osi.PROC_UND_MerregonMask_StartADReaction(a0, a1) end

---@param a0 CHARACTER
---@param a1 number
---@param a2 number
---@param a3 number
function Osi.PROC_UND_MessageInBottle_TryReadLetter(a0, a1, a2, a3) end

function Osi.PROC_UND_MonkAmulet_ChooseBubbleLocations() end

function Osi.PROC_UND_MonkAmulet_GatherBubbleCandidates() end

function Osi.PROC_UND_MonkAmulet_RefreshBubbleCooldowns() end

function Osi.PROC_UND_MushroomHunter_CheckInventory() end

function Osi.PROC_UND_MushroomHunter_CommentOnGettingScroll() end

function Osi.PROC_UND_MushroomHunter_EscapeViaRunning() end

function Osi.PROC_UND_MushroomHunter_EscapeViaSpell() end

function Osi.PROC_UND_MushroomHunter_FixTorchVFX() end

function Osi.PROC_UND_MushroomHunter_Saved() end

function Osi.PROC_UND_MushroomHunter_SendHunterToVillage() end

function Osi.PROC_UND_MushroomHunter_StopClearingsSpotting() end

function Osi.PROC_UND_MushroomHunter_StopReporting() end

---@param a0 CHARACTER
function Osi.PROC_UND_MyconidCircle_EndPeaceBringerCrime(a0) end

function Osi.PROC_UND_MyconidCircle_OpenTreasureDoor() end

function Osi.PROC_UND_MyconidCircle_SporesAreas_Unregister() end

---@param a0 CHARACTER
function Osi.PROC_UND_MyconidCircle_StartSporesDialogues(a0) end

function Osi.PROC_UND_PanicRoom_Clear() end

function Osi.PROC_UND_PanicRoom_GnomeSuicide() end

function Osi.PROC_UND_PanicRoom_HiddenGnomeCheckLeave() end

function Osi.PROC_UND_PanicRoom_HiddenGnomeLeave() end

function Osi.PROC_UND_PanicRoom_HiddenGnomeLeave_Immediately() end

function Osi.PROC_UND_PanicRoom_HiddenGnomeStartLeaving() end

function Osi.PROC_UND_PanicRoom_ReactTespassing() end

function Osi.PROC_UND_PanicRoom_RemoveSatchelMarkers() end

function Osi.PROC_UND_PanicRoom_TryExplodeAfterTreaspass() end

---@param a0 GUIDSTRING
function Osi.PROC_UND_PetrifiedDrow_CheckProximity(a0) end

---@param a0 CHARACTER
function Osi.PROC_UND_PetrifiedDrow_LaunchCinematic(a0) end

function Osi.PROC_UND_PetrifiedDrow_MakeSpectatorHostile() end

function Osi.PROC_UND_PetrifiedDrow_RemoveAllAliveDrow() end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_UND_PetrifiedDrow_RevealSpectator(a0, a1) end

---@param a0 CHARACTER
---@param a1 DIALOGRESOURCE
function Osi.PROC_UND_PetrifiedDrow_SetDialog(a0, a1) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_UND_PetrifiedDrow_SetDisplayName(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_UND_PetrifiedDrow_SetSomeOtherDrowAliveFlag(a0) end

---@param a0 CHARACTER
function Osi.PROC_UND_PetrifiedDrow_SetSomeOtherDrowPetrifiedFlag(a0) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_UND_PetrifiedDrow_SetTitle(a0, a1) end

function Osi.PROC_UND_ResetNeutralRelationsForSoB() end

function Osi.PROC_UND_SharFort_ActivateTurrets() end

function Osi.PROC_UND_SharFort_DeactivateTurrets() end

function Osi.PROC_UND_SharFort_EnableMinotaurCombatFull() end

function Osi.PROC_UND_SharFort_RatStartsMoving() end

function Osi.PROC_UND_SharFort_TryStartTrapsVB() end

function Osi.PROC_UND_SharFort_TryTurnBeamsOff() end

function Osi.PROC_UND_SharFort_TryTurnBeamsOn() end

function Osi.PROC_UND_SharFort_TurretVBStartTimer() end

function Osi.PROC_UND_SocietyOfBrilliance_LeftAct() end

function Osi.PROC_UND_SocietyOfBrilliance_SummonMF() end

function Osi.PROC_UND_SocietyOfBrilliance_TeleportMFIn() end

---@param a0 CHARACTER
function Osi.PROC_UND_SocietyOfBrilliance_Teleportation(a0) end

function Osi.PROC_UND_SussurTree_Clean() end

function Osi.PROC_UND_SussurTree_PlayersLeft() end

function Osi.PROC_UND_SussurTree_Setup() end

---@param a0 CHARACTER
function Osi.PROC_UND_SwordInStone_StartSwordDialog(a0) end

---@param a0 ITEM
function Osi.PROC_UND_SwordInStone_UnlockBySurface(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_UND_TeaserTrailer_AddPlayer(a0, a1) end

---@param a0 TRIGGER
---@param a1 TRIGGER
function Osi.PROC_UND_Teleporter_Pass(a0, a1) end

function Osi.PROC_UND_TheDrowNere_Leave() end

function Osi.PROC_UND_ToxicWall_MyconidsDeactivate() end

---@param a0 CHARACTER
---@param a1 ITEM
function Osi.PROC_UND_ToxicWall_Off(a0, a1) end

---@param a0 CHARACTER
---@param a1 ITEM
function Osi.PROC_UND_ToxicWall_On(a0, a1) end

---@param a0 CHARACTER
---@param a1 ITEM
function Osi.PROC_UND_ToxicWall_Switch(a0, a1) end

---@param a0 GUIDSTRING
function Osi.PROC_UND_TransitionCinematic_PassingTo(a0) end

---@param a0 CHARACTER
---@param a1 GUIDSTRING
function Osi.PROC_UND_Tremor(a0, a1) end

---@param a0 TRIGGER
---@param a1 TRIGGER
function Osi.PROC_UND_UpdateCinematicTriggerExit(a0, a1) end

function Osi.PROC_UND_ZhentPort_UnregisterRecognizeAreas() end

---@param a0 CHARACTER
---@param a1 DIALOGRESOURCE
function Osi.PROC_UnSurrender(a0, a1) end

---@param a0 integer
function Osi.PROC_UndercityRuins_ActivateBraziers(a0) end

---@param a0 integer
function Osi.PROC_UndercityRuins_ActivateStatues(a0) end

---@param a0 string
function Osi.PROC_UndercityRuins_AmbushersDropCombat(a0) end

---@param a0 integer
function Osi.PROC_UnfortunateGnome_Slowdown_WithGoblins_SetFlag(a0) end

---@param a0 string
function Osi.PROC_UnlockAllGroupWaypoints(a0) end

---@param a0 string
function Osi.PROC_UnlockPartyMarker(a0) end

---@param a0 string
---@param a1 TRIGGER
function Osi.PROC_UnlockPartyMarker(a0, a1) end

---@param a0 string
---@param a1 CHARACTER
function Osi.PROC_UnlockWaypoint(a0, a1) end

---@param a0 string
function Osi.PROC_UnlockWaypointForAll(a0) end

---@param a0 string
---@param a1 CHARACTER
function Osi.PROC_UnlockWaypoint_Notification(a0, a1) end

---@param a0 string
---@param a1 CHARACTER
function Osi.PROC_UnlockWaypoint_RecordDB(a0, a1) end

---@param a0 string
---@param a1 string
---@param a2 GUIDSTRING
---@param a3 integer
---@param a4 GUIDSTRING
function Osi.PROC_UnpackDB(a0, a1, a2, a3, a4) end

---@param a0 string
---@param a1 GUIDSTRING
---@param a2 GUIDSTRING
function Osi.PROC_UnpackDB_Callback(a0, a1, a2) end

---@param a0 string
---@param a1 GUIDSTRING
---@param a2 GUIDSTRING
---@param a3 GUIDSTRING
function Osi.PROC_UnpackDB_Callback(a0, a1, a2, a3) end

---@param a0 string
---@param a1 GUIDSTRING
---@param a2 GUIDSTRING
---@param a3 GUIDSTRING
---@param a4 GUIDSTRING
function Osi.PROC_UnpackDB_Callback(a0, a1, a2, a3, a4) end

---@param a0 string
---@param a1 GUIDSTRING
---@param a2 GUIDSTRING
---@param a3 GUIDSTRING
---@param a4 GUIDSTRING
---@param a5 GUIDSTRING
function Osi.PROC_UnpackDB_Callback(a0, a1, a2, a3, a4, a5) end

---@param a0 string
---@param a1 GUIDSTRING
---@param a2 GUIDSTRING
---@param a3 GUIDSTRING
---@param a4 GUIDSTRING
---@param a5 GUIDSTRING
---@param a6 GUIDSTRING
function Osi.PROC_UnpackDB_Callback(a0, a1, a2, a3, a4, a5, a6) end

---@param a0 string
---@param a1 GUIDSTRING
---@param a2 GUIDSTRING
---@param a3 GUIDSTRING
---@param a4 GUIDSTRING
---@param a5 GUIDSTRING
---@param a6 GUIDSTRING
---@param a7 GUIDSTRING
function Osi.PROC_UnpackDB_Callback(a0, a1, a2, a3, a4, a5, a6, a7) end

---@param a0 string
---@param a1 string
---@param a2 GUIDSTRING
---@param a3 integer
---@param a4 GUIDSTRING
---@param a5 integer
function Osi.PROC_UnpackDB_Init(a0, a1, a2, a3, a4, a5) end

---@param a0 string
---@param a1 GUIDSTRING
---@param a2 integer
function Osi.PROC_UnpackDB_PerformCallback(a0, a1, a2) end

---@param a0 string
---@param a1 integer
---@param a2 GUIDSTRING
---@param a3 integer
function Osi.PROC_UnpackDB_Recursive(a0, a1, a2, a3) end

---@param a0 string
---@param a1 GUIDSTRING
function Osi.PROC_UnregisterLevelObject(a0, a1) end

---@param a0 string
function Osi.PROC_UnregisterObjectsForRegion(a0) end

---@param a0 TRIGGER
function Osi.PROC_UnregisterWorldGossipTrigger(a0) end

function Osi.PROC_UpdateAllDismissableAvatars() end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 integer
function Osi.PROC_UpdateDBSees(a0, a1, a2) end

---@param a0 integer
---@param a1 integer
---@param a2 GUIDSTRING
---@param a3 GUIDSTRING
function Osi.PROC_UpdateInvolvedNPC(a0, a1, a2, a3) end

---@param a0 integer
---@param a1 integer
---@param a2 GUIDSTRING
---@param a3 GUIDSTRING
function Osi.PROC_UpdateInvolvedPlayer(a0, a1, a2, a3) end

---@param a0 CHARACTER
function Osi.PROC_UserSwapToActiveDialog(a0) end

function Osi.PROC_VerifyDebugAvatar() end

function Osi.PROC_WLD_FOR_UnfortunateGnomeSkillCheckPassed() end

function Osi.PROC_WYR_Axe_Clear() end

function Osi.PROC_WYR_Axe_DisableNearShopPAD() end

function Osi.PROC_WYR_Axe_HarperRunAway() end

function Osi.PROC_WYR_Axe_MakeAssassinsHostile() end

function Osi.PROC_WYR_Axe_StartAmbushScene() end

---@param a0 CHARACTER
function Osi.PROC_WYR_Axe_StartDanthelonDialogByJaheira(a0) end

---@param a0 CHARACTER
function Osi.PROC_WYR_Axe_StartDanthelonDialogByPlayer(a0) end

---@param a0 CHARACTER
function Osi.PROC_WYR_Axe_StartHarpersDialogByJaheira(a0) end

function Osi.PROC_WYR_BUGFIX_RemoveOffstageCharsFromInventories() end

---@param a0 CHARACTER
function Osi.PROC_WYR_BUGFIX_RemoveOffstageCharsFromInventories_Internal(a0) end

function Osi.PROC_WYR_BUGFIX_SmugglersCaveLongRestCleanup() end

---@param a0 CHARACTER
---@param a1 ITEM
function Osi.PROC_WYR_BigBarn_OnItemDonated(a0, a1) end

function Osi.PROC_WYR_BoastingCrooks_Clear() end

---@param a0 TRIGGER
function Osi.PROC_WYR_Brainquakes_BlockChainedEventTrigger(a0) end

---@param a0 CHARACTER
---@param a1 TRIGGER
function Osi.PROC_WYR_Brainquakes_ProcessEnterTrigger(a0, a1) end

function Osi.PROC_WYR_Brainquakes_UnregisterAllEventTriggers() end

function Osi.PROC_WYR_CazadorPalaceJournal_GurSteps() end

function Osi.PROC_WYR_Chess_AIMove() end

---@param a0 ITEM
function Osi.PROC_WYR_Chess_AfterMove(a0) end

---@param a0 ITEM
function Osi.PROC_WYR_Chess_Captured(a0) end

---@param a0 ITEM
---@param a1 ITEM
---@param a2 ITEM
---@param a3 string
function Osi.PROC_WYR_Chess_DoMoveTo(a0, a1, a2, a3) end

function Osi.PROC_WYR_Chess_FinishSetup() end

---@param a0 integer
---@param a1 integer
---@param a2 ITEM
---@param a3 integer
---@param a4 integer
---@param a5 integer
function Osi.PROC_WYR_Chess_KnightUpdate(a0, a1, a2, a3, a4, a5) end

---@param a0 integer
---@param a1 integer
---@param a2 ITEM
---@param a3 integer
---@param a4 integer
---@param a5 integer
function Osi.PROC_WYR_Chess_LineUpdate(a0, a1, a2, a3, a4, a5) end

---@param a0 integer
---@param a1 integer
---@param a2 ITEM
---@param a3 integer
---@param a4 integer
---@param a5 integer
function Osi.PROC_WYR_Chess_LineUpdateCheck(a0, a1, a2, a3, a4, a5) end

function Osi.PROC_WYR_Chess_MoveComplete() end

---@param a0 ITEM
---@param a1 ITEM
function Osi.PROC_WYR_Chess_MoveTo(a0, a1) end

function Osi.PROC_WYR_Chess_NextMoveSuggestion() end

---@param a0 ITEM
---@param a1 ITEM
function Osi.PROC_WYR_Chess_PawnUpdate(a0, a1) end

function Osi.PROC_WYR_Chess_RightMove() end

function Osi.PROC_WYR_Chess_Setup() end

---@param a0 integer
function Osi.PROC_WYR_Chess_Setup(a0) end

---@param a0 integer
---@param a1 integer
---@param a2 ITEM
---@param a3 integer
function Osi.PROC_WYR_Chess_SingleStepUpdate(a0, a1, a2, a3) end

function Osi.PROC_WYR_Chess_TryNextMoveSuggestion() end

---@param a0 ITEM
function Osi.PROC_WYR_Chess_Update(a0) end

---@param a0 integer
---@param a1 integer
---@param a2 ITEM
---@param a3 integer
---@param a4 string
function Osi.PROC_WYR_Chess_Update(a0, a1, a2, a3, a4) end

---@param a0 ITEM
---@param a1 TAG
---@param a2 integer
function Osi.PROC_WYR_Chess_UpdateTag(a0, a1, a2) end

---@param a0 ITEM
---@param a1 ITEM
---@param a2 string
function Osi.PROC_WYR_Chess_VFXMoveTo(a0, a1, a2) end

function Osi.PROC_WYR_Chess_WrongMove() end

---@param a0 ITEMROOT
---@param a1 ITEM
function Osi.PROC_WYR_Circus_BagOfMoldingTransform(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_WYR_Circus_BeastAttacks(a0) end

function Osi.PROC_WYR_Circus_BorrowClown() end

---@param a0 ITEM
function Osi.PROC_WYR_Circus_CheckCageReleased(a0) end

function Osi.PROC_WYR_Circus_CheckHasPrizes() end

---@param a0 CHARACTER
function Osi.PROC_WYR_Circus_CreateStatueCopy(a0) end

function Osi.PROC_WYR_Circus_Debug_GetAllCTYParts() end

function Osi.PROC_WYR_Circus_Debug_GetAllWYRParts() end

function Osi.PROC_WYR_Circus_FlamingFistsAppear() end

---@param a0 CHARACTER
function Osi.PROC_WYR_Circus_GroupScene_ForceEndForCharacter(a0) end

function Osi.PROC_WYR_Circus_InitShowScene() end

function Osi.PROC_WYR_Circus_KillAllAbsolutists() end

---@param a0 CHARACTER
function Osi.PROC_WYR_Circus_KillBeastAndOpenCage(a0) end

function Osi.PROC_WYR_Circus_KillPatrons() end

function Osi.PROC_WYR_Circus_LeftCombat_AbsolutistsWon() end

function Osi.PROC_WYR_Circus_LeftCombat_CircusWon() end

---@param a0 CHARACTER
function Osi.PROC_WYR_Circus_LoveQuestionWrong(a0) end

function Osi.PROC_WYR_Circus_MakeCircusDisappear() end

---@param a0 CHARACTER
function Osi.PROC_WYR_Circus_OnBeastReleased(a0) end

---@param a0 ITEM
function Osi.PROC_WYR_Circus_OnCageReleased(a0) end

function Osi.PROC_WYR_Circus_OnCombatStarted() end

---@param a0 CHARACTER
function Osi.PROC_WYR_Circus_PrepareBeastForCombat(a0) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_WYR_Circus_ProcessGroupSceneInterrupted(a0, a1) end

function Osi.PROC_WYR_Circus_RemoveCrowd() end

---@param a0 CHARACTER
function Osi.PROC_WYR_Circus_SendStatueToCamp(a0) end

---@param a0 CHARACTER
function Osi.PROC_WYR_Circus_SendToJungle(a0) end

function Osi.PROC_WYR_Circus_StartCombat() end

---@param a0 CHARACTER
---@param a1 ITEM
function Osi.PROC_WYR_Circus_StartFoundClownCorpseVB(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_WYR_Circus_UnPacifyBeast(a0) end

---@param a0 DIALOGRESOURCE
function Osi.PROC_WYR_Circus_UnblockCombatBarks(a0) end

function Osi.PROC_WYR_Circus_Warlock_OnLeaving() end

---@param a0 CHARACTER
function Osi.PROC_WYR_Circus_WheelWorkerTransform(a0) end

function Osi.PROC_WYR_CourageTrial_Cleanup() end

function Osi.PROC_WYR_CourageTrial_Setup() end

---@param a0 CHARACTER
function Osi.PROC_WYR_CourageTrial_Step(a0) end

---@param a0 CHARACTER
function Osi.PROC_WYR_CourageTrial_TryStep(a0) end

function Osi.PROC_WYR_Danthelon_JaheiraCheckLeave() end

function Osi.PROC_WYR_Danthelon_JaheiraLeave() end

function Osi.PROC_WYR_Danthelon_JaheiraLeft() end

function Osi.PROC_WYR_DapperDroow_FastForwardMoving() end

function Osi.PROC_WYR_DapperDrow_ClearItnimacyEventFlags() end

---@param a0 CHARACTER
---@param a1 FLAG
function Osi.PROC_WYR_DapperDrow_Hire(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_WYR_DapperDrow_MakePlayerNaked(a0) end

---@param a0 CHARACTER
---@param a1 FLAG
function Osi.PROC_WYR_DapperDrow_ReturnMoney(a0, a1) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 string
function Osi.PROC_WYR_DapperDrow_StateChanged(a0, a1, a2) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_WYR_DapperDrow_StateProgress(a0, a1) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_WYR_DapperDrow_StateUpdateFlag(a0, a1) end

function Osi.PROC_WYR_DapperDrow_Stop() end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_WYR_FigaroSister_CheckVisualClothing(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_WYR_FigaroSister_DEBUG_NaaberChasm(a0) end

function Osi.PROC_WYR_FigaroSister_Naaber_StartDefaultAD() end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_WYR_FigaroSister_Naaber_StartFollow(a0, a1) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_WYR_FigaroSister_TryAD(a0, a1) end

function Osi.PROC_WYR_Flophouse_UnlockDolorsRoom() end

function Osi.PROC_WYR_Gortash_SummonRandomBodyguardToAudienceHall() end

function Osi.PROC_WYR_Init() end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_WYR_InsightPuzzle_Bird_Catch(a0, a1) end

function Osi.PROC_WYR_InsightPuzzle_BookRead() end

function Osi.PROC_WYR_InsightPuzzle_CleanupWyllVB() end

function Osi.PROC_WYR_InsightPuzzle_Setup() end

function Osi.PROC_WYR_Ironhand_AllGnomesLeave() end

---@param a0 CHARACTER
function Osi.PROC_WYR_Ironhand_ExtraExtra_PutInPlace(a0) end

function Osi.PROC_WYR_Ironhand_Footprint_ChooseOne() end

---@param a0 CHARACTER
function Osi.PROC_WYR_Ironhand_FootprintsCheck(a0) end

---@param a0 CHARACTER
function Osi.PROC_WYR_Ironhand_FromEntranceToWulbren(a0) end

function Osi.PROC_WYR_Ironhand_GnomesAddedToAct() end

---@param a0 CHARACTER
function Osi.PROC_WYR_Ironhand_GnomesIntervent(a0) end

---@param a0 CHARACTER
function Osi.PROC_WYR_Ironhand_GnomesLeavesBasement(a0) end

function Osi.PROC_WYR_Ironhand_GnomesRun() end

function Osi.PROC_WYR_Ironhand_GnomesToBasePos() end

function Osi.PROC_WYR_Ironhand_Journal_ClearFollowMarker() end

function Osi.PROC_WYR_Ironhand_NoGnomesInAct() end

---@param a0 CHARACTER
function Osi.PROC_WYR_Ironhand_PlayerTookBomb(a0) end

function Osi.PROC_WYR_Ironhand_ReturnedAndRunAway() end

---@param a0 CHARACTER
function Osi.PROC_WYR_Ironhand_RunGnomeRun(a0) end

function Osi.PROC_WYR_Ironhand_SetupCheckpointScene() end

---@param a0 integer
function Osi.PROC_WYR_Ironhand_SetupSceneGnome(a0) end

function Osi.PROC_WYR_Ironhand_SkipScene() end

function Osi.PROC_WYR_Ironhand_TrespassOff() end

function Osi.PROC_WYR_Ironhand_TrespassOn() end

function Osi.PROC_WYR_Ironhand_WelcomeDialogOn() end

function Osi.PROC_WYR_KillDirectorGortash_CalmSteelWatch() end

function Osi.PROC_WYR_KillDirectorGortash_CeremonyAftermath() end

---@param a0 CHARACTER
function Osi.PROC_WYR_KillDirectorGortash_CheckNotifyWhenReadyToMoveOn(a0) end

function Osi.PROC_WYR_KillDirectorGortash_EndCeremony() end

function Osi.PROC_WYR_KillDirectorGortash_KillPatriars() end

---@param a0 CHARACTER
function Osi.PROC_WYR_KillDirectorGortash_LaunchMindmeldDialog(a0) end

function Osi.PROC_WYR_KillDirectorGortash_MakeOfficeHostile() end

function Osi.PROC_WYR_KillDirectorGortash_MoveGortashToHisOffice() end

---@param a0 CHARACTER
function Osi.PROC_WYR_KillDirectorGortash_RavengardKilledDuringCeremony(a0) end

function Osi.PROC_WYR_KillDirectorGortash_RavengardReadyToDisappear() end

function Osi.PROC_WYR_KillDirectorGortash_RemovePatriarCrowds() end

function Osi.PROC_WYR_KillDirectorGortash_RemovePatriarsFromAudienceHall() end

function Osi.PROC_WYR_KillDirectorGortash_RemoveRavengardFromAudienceHall() end

function Osi.PROC_WYR_KillDirectorGortash_RemoveRavengardFromAudienceHall_Intern() end

function Osi.PROC_WYR_KillDirectorGortash_RemoveServantsFromAudienceHall() end

function Osi.PROC_WYR_KillDirectorGortash_ReplaceBodyguardsInOffice() end

function Osi.PROC_WYR_KillDirectorGortash_ReplaceFlamingFistsInAudienceHall() end

function Osi.PROC_WYR_KillDirectorGortash_ReplaceSteelWatcher() end

function Osi.PROC_WYR_KillDirectorGortash_SendPatriarsAway() end

function Osi.PROC_WYR_KillDirectorGortash_SendPatriarsHome() end

function Osi.PROC_WYR_KillDirectorGortash_SendServantsAway() end

function Osi.PROC_WYR_KillDirectorGortash_SpawnBlood() end

function Osi.PROC_WYR_KillDirectorGortash_TeleportGortashToOffice() end

function Osi.PROC_WYR_KillDirectorGortash_UpdateFactionsInGortashsOffice() end

function Osi.PROC_WYR_KillDirectorGortash_UpdateRoofSteelWatchersFaction() end

---@param a0 CHARACTER
function Osi.PROC_WYR_MakeSurprised_ExceptJaheira(a0) end

function Osi.PROC_WYR_MeetingMizora_SentToCamp() end

---@param a0 integer
function Osi.PROC_WYR_MerchantsHouse_Conflict_DialogEndedWithChoice(a0) end

function Osi.PROC_WYR_MerchantsHouse_DebugKnowsBasement() end

function Osi.PROC_WYR_MerchantsHouse_EndConflictScene() end

---@param a0 TRIGGER
function Osi.PROC_WYR_MerchantsHouse_MoveMerchantToDestination(a0) end

function Osi.PROC_WYR_MerchantsHouse_Progress() end

function Osi.PROC_WYR_MerchantsHouse_RefugeesRunScared() end

function Osi.PROC_WYR_MerchantsHouse_RefugeesWalkChased() end

function Osi.PROC_WYR_MerchantsHouse_SetupConflictScene() end

---@param a0 CHARACTER
function Osi.PROC_WYR_MerchantsHouse_StartThugsConfrontationSpotting(a0) end

---@param a0 CHARACTER
function Osi.PROC_WYR_MerchantsHouse_StartThugsConfrontationSpotting_Internal(a0) end

function Osi.PROC_WYR_MerchantsHouse_ThugsLeave() end

function Osi.PROC_WYR_MerchantsHouse_ThugsLeaveImmediately() end

---@param a0 TRIGGER
function Osi.PROC_WYR_MerchantsHouse_TryMoveMerchantToDestination(a0) end

function Osi.PROC_WYR_MerhcantsHouse_ChaseOutImmediately() end

function Osi.PROC_WYR_Mizora_MeetingFallback() end

function Osi.PROC_WYR_Mizora_MeetingSetup() end

function Osi.PROC_WYR_MonsterRevealed_Reaction() end

function Osi.PROC_WYR_OpenHand_FinishEvaluation() end

function Osi.PROC_WYR_OpenHand_OpenCloseSecretDoor() end

function Osi.PROC_WYR_OpenHand_SendDetectiveToTavern() end

---@param a0 CHARACTER
function Osi.PROC_WYR_OrinsImpersonation_Anvil_ForceStopWorldBehavior(a0) end

---@param a0 CHARACTER
function Osi.PROC_WYR_OrinsImpersonation_Anvil_StartWorldBehavior(a0) end

function Osi.PROC_WYR_OrinsImpersonation_Apply_DyingEffect() end

function Osi.PROC_WYR_OrinsImpersonation_CheckCampDB() end

function Osi.PROC_WYR_OrinsImpersonation_CheckDefeatedDB() end

function Osi.PROC_WYR_OrinsImpersonation_Check_OrinCurrentImpersonation() end

function Osi.PROC_WYR_OrinsImpersonation_CircusClosed_ResetDryad() end

function Osi.PROC_WYR_OrinsImpersonation_ClearDB_ChosenImpersonation() end

function Osi.PROC_WYR_OrinsImpersonation_ClearDB_OrinCurrentImpersonation() end

function Osi.PROC_WYR_OrinsImpersonation_DisableAllImpersonations() end

function Osi.PROC_WYR_OrinsImpersonation_EndCurImpersonation() end

---@param a0 string
function Osi.PROC_WYR_OrinsImpersonation_EndImpersonation(a0) end

function Osi.PROC_WYR_OrinsImpersonation_EndImpersonationByAttack() end

---@param a0 string
function Osi.PROC_WYR_OrinsImpersonation_FinaliseImpersonatedPostOrin(a0) end

function Osi.PROC_WYR_OrinsImpersonation_FlamingFist_ApplyFaction() end

function Osi.PROC_WYR_OrinsImpersonation_FlamingFist_ClearInventory() end

function Osi.PROC_WYR_OrinsImpersonation_FlamingFist_RemoveFaction() end

function Osi.PROC_WYR_OrinsImpersonation_FlamingFist_ResetAndDisable() end

function Osi.PROC_WYR_OrinsImpersonation_GetNextImpersonation() end

function Osi.PROC_WYR_OrinsImpersonation_InitApproachTriggers() end

function Osi.PROC_WYR_OrinsImpersonation_InitOrin() end

function Osi.PROC_WYR_OrinsImpersonation_InitWorldImpersonations() end

---@param a0 CHARACTER
function Osi.PROC_WYR_OrinsImpersonation_KnockedOut_Apply(a0) end

---@param a0 CHARACTER
function Osi.PROC_WYR_OrinsImpersonation_KnockedOut_Remove(a0) end

---@param a0 string
function Osi.PROC_WYR_OrinsImpersonation_OrinImpersonates(a0) end

---@param a0 DIALOGRESOURCE
function Osi.PROC_WYR_OrinsImpersonation_OrinImpersonatesCommon(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_WYR_OrinsImpersonation_OrinJournalist_LoopTimer_Start(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_WYR_OrinsImpersonation_OrinJournalist_LoopTimer_Stop(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_WYR_OrinsImpersonation_OrinJournalist_PlayAnimationAD(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_WYR_OrinsImpersonation_OrinJournalist_Spotting_Setup(a0) end

---@param a0 CHARACTER
function Osi.PROC_WYR_OrinsImpersonation_OrinJournalist_Spotting_Stop(a0) end

function Osi.PROC_WYR_OrinsImpersonation_OrinTeleportOut() end

function Osi.PROC_WYR_OrinsImpersonation_PostImpersonation_TryStartPAD() end

function Osi.PROC_WYR_OrinsImpersonation_RemoveAllApproachTrigger() end

---@param a0 string
---@param a1 TRIGGER
function Osi.PROC_WYR_OrinsImpersonation_RemoveApproachTrigger(a0, a1) end

function Osi.PROC_WYR_OrinsImpersonation_Remove_DyingEffect() end

function Osi.PROC_WYR_OrinsImpersonation_ResetAllImpersonations() end

---@param a0 string
function Osi.PROC_WYR_OrinsImpersonation_ResetCurImpersonation(a0) end

---@param a0 string
function Osi.PROC_WYR_OrinsImpersonation_ResetImpersonated(a0) end

---@param a0 string
function Osi.PROC_WYR_OrinsImpersonation_SetNextImpersonation(a0) end

---@param a0 string
function Osi.PROC_WYR_OrinsImpersonation_SetupImpersonated(a0) end

function Osi.PROC_WYR_OrinsImpersonation_SetupNextImpersonation() end

function Osi.PROC_WYR_OrinsImpersonation_SetupOrin() end

function Osi.PROC_WYR_OrinsImpersonation_SmithAwakens() end

function Osi.PROC_WYR_OrinsImpersonation_SmithSpottingStarted() end

function Osi.PROC_WYR_OrinsImpersonation_SmithSpottingStopped() end

---@param a0 CHARACTER
function Osi.PROC_WYR_OrinsImpersonation_Smith_DecideWhoToAccuse(a0) end

---@param a0 CHARACTER
function Osi.PROC_WYR_OrinsImpersonation_Smith_PlaceOrinNote(a0) end

function Osi.PROC_WYR_OrinsImpersonation_Smith_PostOrinPAD_Enable() end

---@param a0 CHARACTER
function Osi.PROC_WYR_OrinsImpersonation_Smith_StartDialog(a0) end

function Osi.PROC_WYR_OrinsImpersonation_Smith_UseAnvil() end

---@param a0 CHARACTER
function Osi.PROC_WYR_OrinsImpersonation_StandAndDrink_StartWorldBehavior(a0) end

---@param a0 ITEM
---@param a1 ITEM
function Osi.PROC_WYR_PaintingPuzzle_PaintingSolveAttempt(a0, a1) end

function Osi.PROC_WYR_Posthouse_ClearTressymOwnership() end

---@param a0 CHARACTER
function Osi.PROC_WYR_Posthouse_DogDecidesWhatToDo(a0) end

---@param a0 CHARACTER
function Osi.PROC_WYR_Posthouse_DogFlees(a0) end

---@param a0 CHARACTER
function Osi.PROC_WYR_Posthouse_DogFreed(a0) end

---@param a0 CHARACTER
function Osi.PROC_WYR_Posthouse_EquerryGroom_SetMainSpeaker(a0) end

function Osi.PROC_WYR_Posthouse_GroomFlees() end

function Osi.PROC_WYR_Posthouse_InitTressym() end

function Osi.PROC_WYR_Posthouse_InitTressymQuest() end

function Osi.PROC_WYR_Posthouse_InitTressym_NoticeTressym() end

---@param a0 CHARACTER
---@param a1 ITEM
---@param a2 ITEM
function Osi.PROC_WYR_Posthouse_OpenEnvelope(a0, a1, a2) end

---@param a0 CHARACTER
function Osi.PROC_WYR_Posthouse_PlayerCallsScratch(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_WYR_Posthouse_PlayerCallsScratch(a0, a1) end

function Osi.PROC_WYR_Posthouse_ScratchBackToCamp() end

function Osi.PROC_WYR_Posthouse_ScratchReleased() end

function Osi.PROC_WYR_Posthouse_SetTressymOwnership() end

function Osi.PROC_WYR_Posthouse_Tara_FliesAway() end

---@param a0 CHARACTER
function Osi.PROC_WYR_Posthouse_TeleportTressym(a0) end

function Osi.PROC_WYR_RaphaelTango_EndSoloScene() end

function Osi.PROC_WYR_RaphaelTango_RaphaelHandledAssault() end

function Osi.PROC_WYR_RaphaelTango_Retreat() end

function Osi.PROC_WYR_RaphaelTango_RetreatAD() end

function Osi.PROC_WYR_RaphaelTango_TeleportPlayersOutOfRoom() end

function Osi.PROC_WYR_RaphaelTango_TryPlayAssaultAD() end

function Osi.PROC_WYR_RaphaelTango_Voss_DebugStateReset() end

function Osi.PROC_WYR_RefugeeCamp_CheckProtestersGone() end

---@param a0 CHARACTER
function Osi.PROC_WYR_RefugeeCamp_DUThrows(a0) end

---@param a0 CHARACTER
function Osi.PROC_WYR_RefugeeCamp_SetupTieflingsOwnership(a0) end

function Osi.PROC_WYR_RefugeeCamp_SwitchToInsideTrespass() end

function Osi.PROC_WYR_RefugeeCamp_ToysAleartGuards() end

---@param a0 integer
function Osi.PROC_WYR_SentientAmulet_DEBUG_GetAmulet(a0) end

function Osi.PROC_WYR_SentientAmulet_DEBUG_StartCombat() end

---@param a0 CHARACTER
function Osi.PROC_WYR_SentientAmulet_IdentifyCorpse(a0) end

---@param a0 GUIDSTRING
function Osi.PROC_WYR_SentientAmulet_MonkAppearAfterCombat(a0) end

---@param a0 ITEM
function Osi.PROC_WYR_SentientAmulet_OpenTomb(a0) end

function Osi.PROC_WYR_SentientAmulet_PrepareCombat() end

---@param a0 CHARACTER
function Osi.PROC_WYR_SentientAmulet_TryStartShirraPossession(a0) end

---@param a0 DIALOGRESOURCE
---@param a1 CHARACTER
function Osi.PROC_WYR_SerialKiller_PlayKeyPAD(a0, a1) end

function Osi.PROC_WYR_SharessCaress_NymphRoomTransform() end

---@param a0 CHARACTER
function Osi.PROC_WYR_SkeletalDragon_DoAirAttackAD(a0) end

---@param a0 CHARACTER
function Osi.PROC_WYR_SkeletalDragon_FindSteerToTargetCandidate(a0) end

function Osi.PROC_WYR_SkeletalDragon_NovaCam() end

---@param a0 CHARACTER
function Osi.PROC_WYR_SkeletalDragon_RemoveHidden(a0) end

function Osi.PROC_WYR_SkeletalDragon_RemoveImmortality() end

function Osi.PROC_WYR_SmugglersCave_Attackers_Setup() end

function Osi.PROC_WYR_SmugglersCave_BeforeFightSpotting_Setup() end

function Osi.PROC_WYR_SmugglersCave_BeforeFightSpotting_Stop() end

function Osi.PROC_WYR_SmugglersCave_ClearCave_Attackers() end

function Osi.PROC_WYR_SmugglersCave_ClearCave_Smugglers() end

function Osi.PROC_WYR_SmugglersCave_DuringFightSpotting_Setup() end

function Osi.PROC_WYR_SmugglersCave_GuildTurnAllyToPlayer() end

---@param a0 CHARACTER
function Osi.PROC_WYR_SmugglersCave_GuildTurnHostileToPlayer(a0) end

function Osi.PROC_WYR_SmugglersCave_SmugglersTurnHostileToGuild() end

---@param a0 CHARACTER
function Osi.PROC_WYR_SmugglersCave_SmugglersTurnHostileToPlayer(a0) end

function Osi.PROC_WYR_SmugglersCave_Smugglers_Setup() end

---@param a0 CHARACTER
function Osi.PROC_WYR_SmugglersCave_StartDialogBeforeCombat(a0) end

function Osi.PROC_WYR_SmugglersCave_StartDialogBeforeCombat_Delayed() end

function Osi.PROC_WYR_Smugglers_ClearCave() end

function Osi.PROC_WYR_Smugglers_FillCave() end

function Osi.PROC_WYR_South_CheckGoldStash() end

function Osi.PROC_WYR_South_GuardsPanic() end

function Osi.PROC_WYR_South_RefugeesDisappear() end

function Osi.PROC_WYR_South_RefugeesRemove() end

---@param a0 CHARACTER
function Osi.PROC_WYR_TriedPickupCursedPainting(a0) end

---@param a0 CHARACTER
function Osi.PROC_WYR_TriedTakeHelmet(a0) end

---@param a0 CHARACTER
function Osi.PROC_WYR_TryStart_DaisyEmperorBalduran(a0) end

---@param a0 ITEM
---@param a1 ITEM
---@param a2 string
function Osi.PROC_WYR_VFXMoveTo_ArrivalStart(a0, a1, a2) end

function Osi.PROC_WYR_VampireSpawns_SendToCazador() end

function Osi.PROC_WYR_VampireSpawns_SendToCazador_Intern() end

---@param a0 CHARACTER
function Osi.PROC_WYR_Windmill_CivilianFlees(a0) end

function Osi.PROC_WYR_Windmill_MF_Awakened() end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_WYR_Windmill_MF_EatBody(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_WYR_Windmill_MF_KillCivilian(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_WYR_Windmill_MF_RudelyAwakened(a0) end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_WYR_Windmill_PlayersTemporaryHostileToOtherCombatants(a0, a1) end

function Osi.PROC_WYR_Windmill_ResetHuntableCivilian() end

---@param a0 CHARACTER
function Osi.PROC_WYR_Windmill_Scream(a0) end

function Osi.PROC_WYR_WyrmRockPrison_ActivateTalkingSkull() end

---@param a0 CHARACTER
function Osi.PROC_WYR_WyrmRockPrison_AddFlorrickToParty(a0) end

---@param a0 CHARACTER
---@param a1 string
---@param a2 number
function Osi.PROC_WYR_WyrmRockPrison_ApplyStatusToChainedCharacters(a0, a1, a2) end

function Osi.PROC_WYR_WyrmRockPrison_FlorrickEscapedPeacefully() end

function Osi.PROC_WYR_WyrmRockPrison_FlorrickLeftFortress() end

function Osi.PROC_WYR_WyrmRockPrison_RemoveFlorrickWeapon() end

function Osi.PROC_WYR_WyrmRockPrison_ReturnFlorrickWeapon() end

---@param a0 CHARACTER
function Osi.PROC_WYR_WyrmRockPrison_StopPlayer(a0) end

function Osi.PROC_WYR_WyrmRock_CancelGortashInvitation() end

function Osi.PROC_WYR_WyrmRock_CheckBlockWaypoint() end

function Osi.PROC_WYR_WyrmRock_DisableAllSpotting() end

function Osi.PROC_WYR_WyrmRock_FFThief_RemoveIllusion() end

function Osi.PROC_WYR_WyrmRock_FlamingFistThief_DisappearAfterLongRest() end

function Osi.PROC_WYR_WyrmRock_GiveAccessToRoof() end

---@param a0 string
function Osi.PROC_WYR_WyrmRock_GoToAlertState(a0) end

function Osi.PROC_WYR_WyrmRock_InitSouthBridge() end

---@param a0 ITEM
function Osi.PROC_WYR_WyrmRock_LowerBridge(a0) end

function Osi.PROC_WYR_WyrmRock_LowerBridges() end

function Osi.PROC_WYR_WyrmRock_MakeNpcsHostile() end

---@param a0 ITEM
function Osi.PROC_WYR_WyrmRock_RaiseBridge(a0) end

---@param a0 ITEM
function Osi.PROC_WYR_WyrmRock_RaiseBridge_Intern(a0) end

function Osi.PROC_WYR_WyrmRock_RaiseBridge_TeleportItemsAndCharacters() end

function Osi.PROC_WYR_WyrmRock_RaiseBridges() end

---@param a0 CHARACTER
function Osi.PROC_WYR_WyrmRock_RemoveCivilian(a0) end

function Osi.PROC_WYR_WyrmRock_TransitionAudienceHallToAlertState() end

function Osi.PROC_WYR_WyrmRock_TransitionBarracksToAlertState() end

function Osi.PROC_WYR_WyrmRock_TransitionNorthBridgeToAlertState() end

function Osi.PROC_WYR_WyrmRock_TransitionPrisonToAlertState() end

---@param a0 string
function Osi.PROC_WYR_WyrmRock_WentToAlertState(a0) end

function Osi.PROC_WYR_Wyrmway_CleanupPaintingPuzzle() end

---@param a0 ITEM
function Osi.PROC_WYR_Wyrmway_DestroyStatue(a0) end

---@param a0 ITEM
function Osi.PROC_WYR_Wyrmway_DoDestroyStatue(a0) end

function Osi.PROC_WYR_Wyrmway_DoDestroyStatues() end

---@param a0 ITEM
function Osi.PROC_WYR_Wyrmway_PuzzleSolved(a0) end

function Osi.PROC_WYR_YennaVisitCamp() end

---@param a0 GUIDSTRING
---@param a1 integer
function Osi.PROC_WaitAndEndTurn(a0, a1) end

---@param a0 CHARACTER
---@param a1 DIALOGRESOURCE
function Osi.PROC_WaitForEndOfCrimeAD(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 GUIDSTRING
function Osi.PROC_WarnPlayerOfAttack(a0, a1, a2) end

function Osi.PROC_WaterQueensHouse_UmberleeFollowersFlee() end

---@param a0 CHARACTER
---@param a1 CHARACTER
function Osi.PROC_WayPoints_ShareWayPointState(a0, a1) end

---@param a0 CHARACTER
---@param a1 TRIGGER
function Osi.PROC_WaypointTeleportTo(a0, a1) end

---@param a0 CHARACTER
---@param a1 TRIGGER
function Osi.PROC_WaypointTeleport_TeleportLinkedPlayers(a0, a1) end

---@param a0 CHARACTER
---@param a1 TRIGGER
function Osi.PROC_WaypointTeleported(a0, a1) end

---@param a0 CHARACTER
function Osi.PROC_WildMagic_Guarantee(a0) end

---@param a0 CHARACTER
function Osi.PROC_WildMagic_Normal(a0) end

---@param a0 CHARACTER
function Osi.PROC_WildMagic_Supress(a0) end

---@param a0 CHARACTER
---@param a1 string
function Osi.PROC_WildMagic_TryAD(a0, a1) end

---@param a0 CHARACTER
---@param a1 CHARACTER
---@param a2 string
---@param a3 string
---@param a4 CHARACTER
function Osi.PROC_WitnessedKiller(a0, a1, a2, a3, a4) end

---@param a0 CHARACTER
function Osi.PROC_WitnessedKiller_CleanUpAfterTheFact(a0) end

---@param a0 DIALOGRESOURCE
function Osi.PROC_WorldGossip_Cleanup(a0) end

---@param a0 DIALOGRESOURCE
---@param a1 integer
function Osi.PROC_WorldGossip_FetchSpeaker(a0, a1) end

---@param a0 DIALOGRESOURCE
function Osi.PROC_WorldGossip_StartGossip(a0) end

function Osi.PROC_WyrmRock_RemoveCivilians() end

---@param a0 TRIGGER
function Osi.PROC_WyrmRock_RemoveCrowd(a0) end

function Osi.PROC_WyrmRock_RemoveCrowds() end

---@param a0 string
---@param a1 integer
---@param a2 integer
function Osi.PROC_Z_Shared_GameModeStarted(a0, a1, a2) end

---@param a0 CHARACTER
function Osi.PROC_ZhentDungeon_ExpedientEscape(a0) end

function Osi.PROC_ZhentDungeon_Zhent01_AttackBarrel() end

---@param a0 GUIDSTRING
---@param a1 number
---@param a2 string
---@param a3 integer
function Osi.SetHitpointsPercentage(a0, a1, a2, a3) end
