.class public final Lcom/android/server/am/DynamicHiddenApp;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final BORA_POLICY_ENABLE:Z

.field public static DEBUG:Z

.field public static final IS_HIGH_CAPACITY_RAM:Z

.field public static final LMKD_REENTRY_MODE_ENABLE:Z

.field public static LMK_CUSTOM_SW_LIMIT:I

.field public static LMK_CUSTOM_TM_LIMIT:I

.field public static final LMK_ENABLE_REENTRY_LMK:Z

.field public static LMK_ENABLE_UPGRADE_CRIADJ:Z

.field public static final LMK_ENABLE_USERSPACE_LMK:Z

.field public static LMK_FREELIMIT_ENABLE:Z

.field public static LMK_FREELIMIT_VAL:I

.field public static final LMK_LOW_MEM_KEEP_ENABLE:Z

.field public static LMK_PSI_CRITICAL_TH:I

.field public static LMK_PSI_MEDIUM_TH:I

.field public static LMK_UPGRADE_PRESSURE:I

.field public static LMK_USE_MINFREE_LEVELS:Z

.field public static final MAX_NEVERKILLEDAPP_NUM:I

.field public static PICKED_ADJ_ENABLE:Z

.field public static final alliedProtectedProcList:Ljava/util/ArrayList;

.field public static lastStartTime:J

.field public static lastTime:J

.field public static mLMKArray:Ljava/lang/String;

.field public static mLMKScale:F

.field public static final mTotalMemMb:J

.field public static reentryCount:I

.field public static final reentryMap:Ljava/util/HashMap;

.field public static sHH_AMSExceptionEnable:Z

.field public static final sPkgDecoder:Ljava/util/Base64$Decoder;


# instance fields
.field public ActiveLaunchCount:I

.field public final ActiveLaunchLimit:I

.field public ActiveLaunchSlot:Ljava/util/ArrayList;

.field public HomeHubState:Z

.field public MlLaunchSlot:Ljava/util/ArrayList;

.field public isReentryMode:Z

.field public mAm:Lcom/android/server/am/ActivityManagerService;

.field public final mBGProtectManager:Lcom/android/server/am/BGProtectManager;

.field public final mBGSlotManager:Lcom/android/server/bgslotmanager/BGSlotManager;

.field public mBgAppPropManager:Lcom/android/server/bgslotmanager/BgAppPropManager;

.field public mCameraKillModeManager:Lcom/android/server/bgslotmanager/CameraKillModeManager;

.field public mConstants:Lcom/android/server/am/ActivityManagerConstants;

.field public mContext:Landroid/content/Context;

.field public final mCustomEFKManager:Lcom/android/server/bgslotmanager/CustomEFKManager;

.field public final mInfo:Lcom/android/server/bgslotmanager/MemInfoGetter;

.field public mProcessList:Lcom/android/server/am/ProcessList;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    const-string/jumbo v0, "dha_lmk_scale"

    .line 4
    const-string v1, "-1"

    .line 6
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 13
    move-result v0

    .line 14
    sput v0, Lcom/android/server/am/DynamicHiddenApp;->mLMKScale:F

    .line 16
    const-string/jumbo v0, "dha_lmk_array"

    .line 19
    const-string/jumbo v1, "none"

    .line 22
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->mLMKArray:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, "enable_picked_adj"

    .line 31
    const-string/jumbo v1, "true"

    .line 34
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    .line 37
    move-result v0

    .line 38
    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->PICKED_ADJ_ENABLE:Z

    .line 40
    const-string/jumbo v0, "bora_policy_enable"

    .line 43
    const-string/jumbo v2, "false"

    .line 46
    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    .line 49
    move-result v0

    .line 50
    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->BORA_POLICY_ENABLE:Z

    .line 52
    const-string/jumbo v0, "hh_ams_exception"

    .line 55
    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    .line 58
    move-result v0

    .line 59
    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->sHH_AMSExceptionEnable:Z

    .line 61
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->sPkgDecoder:Ljava/util/Base64$Decoder;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    .line 69
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->alliedProtectedProcList:Ljava/util/ArrayList;

    .line 74
    const-string/jumbo v0, "neverkill_num_lowram"

    .line 77
    const-string v3, "0"

    .line 79
    invoke-static {v0, v3}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    move-result v0

    .line 83
    const-string/jumbo v4, "neverkill_num_8G"

    .line 86
    const-string v5, "1"

    .line 88
    invoke-static {v4, v5}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    move-result v4

    .line 92
    const-string/jumbo v5, "neverkill_num_12G"

    .line 95
    const-string v6, "3"

    .line 97
    invoke-static {v5, v6}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    move-result v5

    .line 101
    const-string/jumbo v6, "neverkill_num_16G"

    .line 104
    const-string v7, "5"

    .line 106
    invoke-static {v6, v7}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    move-result v6

    .line 110
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    .line 113
    move-result-wide v7

    .line 114
    const-wide/32 v9, 0x100000

    .line 117
    div-long/2addr v7, v9

    .line 118
    sput-wide v7, Lcom/android/server/am/DynamicHiddenApp;->mTotalMemMb:J

    .line 120
    const-wide/16 v9, 0x2800

    .line 122
    cmp-long v9, v7, v9

    .line 124
    const/4 v10, 0x0

    .line 125
    const/4 v11, 0x1

    .line 126
    if-lez v9, :cond_0

    .line 128
    move v9, v11

    .line 129
    goto :goto_0

    .line 130
    :cond_0
    move v9, v10

    .line 131
    :goto_0
    sput-boolean v9, Lcom/android/server/am/DynamicHiddenApp;->IS_HIGH_CAPACITY_RAM:Z

    .line 133
    const-wide/16 v12, 0x3000

    .line 135
    cmp-long v9, v7, v12

    .line 137
    if-lez v9, :cond_1

    .line 139
    sput v6, Lcom/android/server/am/DynamicHiddenApp;->MAX_NEVERKILLEDAPP_NUM:I

    .line 141
    goto :goto_1

    .line 142
    :cond_1
    const-wide/16 v12, 0x2000

    .line 144
    cmp-long v6, v7, v12

    .line 146
    if-lez v6, :cond_2

    .line 148
    sput v5, Lcom/android/server/am/DynamicHiddenApp;->MAX_NEVERKILLEDAPP_NUM:I

    .line 150
    goto :goto_1

    .line 151
    :cond_2
    const-wide/16 v5, 0x1800

    .line 153
    cmp-long v5, v7, v5

    .line 155
    if-lez v5, :cond_3

    .line 157
    sput v4, Lcom/android/server/am/DynamicHiddenApp;->MAX_NEVERKILLEDAPP_NUM:I

    .line 159
    goto :goto_1

    .line 160
    :cond_3
    sput v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_NEVERKILLEDAPP_NUM:I

    .line 162
    :goto_1
    const-string/jumbo v0, "low"

    .line 165
    const-string v4, "1001"

    .line 167
    invoke-static {v0, v4}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string/jumbo v0, "medium"

    .line 173
    const-string v4, "850"

    .line 175
    invoke-static {v0, v4}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-string/jumbo v0, "critical"

    .line 181
    invoke-static {v0, v3}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string/jumbo v0, "debug"

    .line 187
    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    .line 190
    const-string/jumbo v0, "critical_upgrade"

    .line 193
    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    .line 196
    const-string/jumbo v0, "upgrade_pressure"

    .line 199
    const-string v3, "80"

    .line 201
    invoke-static {v0, v3}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    move-result v0

    .line 205
    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_UPGRADE_PRESSURE:I

    .line 207
    const-string/jumbo v0, "downgrade_pressure"

    .line 210
    const-string v3, "100"

    .line 212
    invoke-static {v0, v3}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const-string/jumbo v0, "kill_heaviest_task"

    .line 218
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    .line 221
    const-string/jumbo v0, "ro.config.low_ram"

    .line 224
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 227
    move-result-object v0

    .line 228
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 231
    const-string/jumbo v0, "kill_timeout_ms"

    .line 234
    invoke-static {v0, v3}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const-string/jumbo v0, "use_minfree_levels"

    .line 240
    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    .line 243
    move-result v0

    .line 244
    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_USE_MINFREE_LEVELS:Z

    .line 246
    sput-boolean v11, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_USERSPACE_LMK:Z

    .line 248
    sput-boolean v11, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_REENTRY_LMK:Z

    .line 250
    const-string/jumbo v0, "enable_cmarbinfree_sub"

    .line 253
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    .line 256
    const-string/jumbo v0, "enable_upgrade_criadj"

    .line 259
    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    .line 262
    move-result v0

    .line 263
    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_UPGRADE_CRIADJ:Z

    .line 265
    const-string/jumbo v0, "freelimit_enable"

    .line 268
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    .line 271
    move-result v0

    .line 272
    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_FREELIMIT_ENABLE:Z

    .line 274
    sput-boolean v11, Lcom/android/server/am/DynamicHiddenApp;->LMK_LOW_MEM_KEEP_ENABLE:Z

    .line 276
    const-string/jumbo v0, "freelimit_val"

    .line 279
    const-string v2, "11"

    .line 281
    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    move-result v0

    .line 285
    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_FREELIMIT_VAL:I

    .line 287
    const-string/jumbo v0, "custom_sw_limit"

    .line 290
    const-string v2, "500"

    .line 292
    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    move-result v0

    .line 296
    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_CUSTOM_SW_LIMIT:I

    .line 298
    const-string/jumbo v0, "custom_tm_limit"

    .line 301
    const-string v2, "1000"

    .line 303
    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    move-result v0

    .line 307
    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_CUSTOM_TM_LIMIT:I

    .line 309
    const-string/jumbo v0, "psi_low"

    .line 312
    const-string v2, "70"

    .line 314
    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const-string/jumbo v0, "psi_medium"

    .line 320
    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    move-result v0

    .line 324
    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_PSI_MEDIUM_TH:I

    .line 326
    const-string/jumbo v0, "psi_critical"

    .line 329
    const-string v2, "120"

    .line 331
    invoke-static {v0, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    move-result v0

    .line 335
    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_PSI_CRITICAL_TH:I

    .line 337
    const-string/jumbo v0, "reentry_mode_enable"

    .line 340
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    .line 343
    move-result v0

    .line 344
    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMKD_REENTRY_MODE_ENABLE:Z

    .line 346
    new-instance v0, Ljava/util/HashMap;

    .line 348
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 351
    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->reentryMap:Ljava/util/HashMap;

    .line 353
    sput v10, Lcom/android/server/am/DynamicHiddenApp;->reentryCount:I

    .line 355
    const-wide/16 v0, 0x0

    .line 357
    sput-wide v0, Lcom/android/server/am/DynamicHiddenApp;->lastTime:J

    .line 359
    sput-wide v0, Lcom/android/server/am/DynamicHiddenApp;->lastStartTime:J

    .line 361
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/android/server/bgslotmanager/CustomEFKManager;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v1, "add_bonusEFK"

    .line 11
    const-string v2, "-1"

    .line 13
    invoke-static {v1, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    move-result v1

    .line 17
    iput v1, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->addBonusEFK:I

    .line 19
    const-string/jumbo v1, "v_bonusEFK"

    .line 22
    const-string v2, "0"

    .line 24
    invoke-static {v1, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    move-result v1

    .line 28
    iput v1, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->v_BonusEFK:I

    .line 30
    const/4 v1, -0x1

    .line 31
    iput v1, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->origin_EFK:I

    .line 33
    const-string/jumbo v3, "v_BootEFK"

    .line 36
    const-string v4, "204800"

    .line 38
    invoke-static {v3, v4}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    move-result v3

    .line 42
    iput v3, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->v_bonusEFKWhileBoot:I

    .line 44
    const-string/jumbo v3, "v_decrease_EFK"

    .line 47
    invoke-static {v3, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    move-result v3

    .line 51
    iput v3, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->vDecreaseEFK:I

    .line 53
    const-string/jumbo v3, "tm_decrease_EFK"

    .line 56
    const-string v4, "1000"

    .line 58
    invoke-static {v3, v4}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    move-result v3

    .line 62
    iput v3, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->vDecreaseEFKTime:I

    .line 64
    const/4 v4, 0x0

    .line 65
    iput v4, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->v_watermark_scale:I

    .line 67
    iput v3, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->vWatermarkScaleGetPerTickTime:I

    .line 69
    mul-int/lit8 v3, v3, 0x5

    .line 71
    iput v3, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->vWatermarkScaleGetTime:I

    .line 73
    iput v1, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->last_Watermark_EFK:I

    .line 75
    iput-boolean v4, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->isBlockDecEFK:Z

    .line 77
    iput-boolean v4, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->isStillDecEFK:Z

    .line 79
    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mCustomEFKManager:Lcom/android/server/bgslotmanager/CustomEFKManager;

    .line 81
    new-instance v0, Lcom/android/server/bgslotmanager/MemInfoGetter;

    .line 83
    invoke-direct {v0}, Lcom/android/server/bgslotmanager/MemInfoGetter;-><init>()V

    .line 86
    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/server/bgslotmanager/MemInfoGetter;

    .line 88
    new-instance v1, Lcom/android/server/bgslotmanager/BGSlotManager;

    .line 90
    invoke-direct {v1, v0}, Lcom/android/server/bgslotmanager/BGSlotManager;-><init>(Lcom/android/server/bgslotmanager/MemInfoGetter;)V

    .line 93
    iput-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGSlotManager:Lcom/android/server/bgslotmanager/BGSlotManager;

    .line 95
    new-instance v0, Lcom/android/server/am/BGProtectManager;

    .line 97
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 100
    const-string/jumbo v1, "ro.board.platform"

    .line 103
    const-string v3, ""

    .line 105
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    const-string/jumbo v1, "remove_contact_except_list"

    .line 111
    const-string/jumbo v3, "false"

    .line 114
    invoke-static {v1, v3}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    .line 117
    move-result v1

    .line 118
    iput-boolean v1, v0, Lcom/android/server/am/BGProtectManager;->removeContactExceptList:Z

    .line 120
    const-string/jumbo v1, "dha_pallowlist_enable"

    .line 123
    const-string v5, "1"

    .line 125
    invoke-static {v1, v5}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    move-result v1

    .line 129
    iput v1, v0, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnable:I

    .line 131
    const-string/jumbo v1, "dha_knox_plist_enable"

    .line 134
    invoke-static {v1, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    move-result v1

    .line 138
    iput v1, v0, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnableKnox:I

    .line 140
    const-string/jumbo v1, "provider_upgrade_adj"

    .line 143
    invoke-static {v1, v3}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    .line 146
    move-result v1

    .line 147
    iput-boolean v1, v0, Lcom/android/server/am/BGProtectManager;->AMSExceptionProviderUpgradeAdjEnable:Z

    .line 149
    const-string v1, "ams_knoxexpt_enable"

    .line 151
    const-string/jumbo v2, "true"

    .line 154
    invoke-static {v1, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    .line 157
    move-result v1

    .line 158
    iput-boolean v1, v0, Lcom/android/server/am/BGProtectManager;->mKnoxAMSExceptionEnable:Z

    .line 160
    const-string/jumbo v1, "dha_dialer_except_th"

    .line 163
    const-string v5, "3072"

    .line 165
    invoke-static {v1, v5}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    move-result v1

    .line 169
    iput v1, v0, Lcom/android/server/am/BGProtectManager;->DIALER_EXCEPTION_TH:I

    .line 171
    const-string/jumbo v1, "cleanup_webview_enable"

    .line 174
    invoke-static {v1, v3}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    .line 177
    move-result v1

    .line 178
    iput-boolean v1, v0, Lcom/android/server/am/BGProtectManager;->CLEANUP_WEBVIEW_ENABLE:Z

    .line 180
    const-string/jumbo v1, "picked_adj_tm"

    .line 183
    const-string v5, "1800000"

    .line 185
    invoke-static {v1, v5}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    move-result v1

    .line 189
    iput v1, v0, Lcom/android/server/am/BGProtectManager;->PICKED_ADJ_TIME_LIMIT:I

    .line 191
    new-instance v1, Ljava/util/ArrayList;

    .line 193
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 196
    iput-object v1, v0, Lcom/android/server/am/BGProtectManager;->PICKED_ADJ_EXCEPT:Ljava/util/ArrayList;

    .line 198
    const-string/jumbo v1, "neverkill_sqetool_enable"

    .line 201
    invoke-static {v1, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    .line 204
    move-result v1

    .line 205
    iput-boolean v1, v0, Lcom/android/server/am/BGProtectManager;->NEVERKILL_SQETOOL_ENABLE:Z

    .line 207
    const-string v1, "beks_enable"

    .line 209
    invoke-static {v1, v3}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    .line 212
    move-result v1

    .line 213
    iput-boolean v1, v0, Lcom/android/server/am/BGProtectManager;->BOOTING_EMPTY_KILL_SKIP_ENABLE:Z

    .line 215
    const-string/jumbo v1, "bora_cached_num"

    .line 218
    const-string v2, "3"

    .line 220
    invoke-static {v1, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    move-result v1

    .line 224
    iput v1, v0, Lcom/android/server/am/BGProtectManager;->recentActivityProcessLimit:I

    .line 226
    new-instance v1, Ljava/util/ArrayList;

    .line 228
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 231
    iput-object v1, v0, Lcom/android/server/am/BGProtectManager;->recentActivityProcessList:Ljava/util/ArrayList;

    .line 233
    const/4 v1, 0x0

    .line 234
    iput-object v1, v0, Lcom/android/server/am/BGProtectManager;->NapProcessSlotDefault:Lcom/android/server/am/ProcessRecord;

    .line 236
    const/4 v1, 0x1

    .line 237
    iput v1, v0, Lcom/android/server/am/BGProtectManager;->NapProcessSlotLimit:I

    .line 239
    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    .line 241
    iput v4, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchCount:I

    .line 243
    iput v1, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchLimit:I

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    .line 247
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 250
    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->ActiveLaunchSlot:Ljava/util/ArrayList;

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    .line 254
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 257
    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->MlLaunchSlot:Ljava/util/ArrayList;

    .line 259
    iput-boolean v4, p0, Lcom/android/server/am/DynamicHiddenApp;->HomeHubState:Z

    .line 261
    iput-boolean v4, p0, Lcom/android/server/am/DynamicHiddenApp;->isReentryMode:Z

    .line 263
    return-void
.end method

.method public static decodeToStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->sPkgDecoder:Ljava/util/Base64$Decoder;

    .line 3
    const-string v1, ""

    .line 5
    if-eqz v0, :cond_0

    .line 7
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    .line 10
    move-result-object p0

    .line 11
    new-instance v0, Ljava/lang/String;

    .line 13
    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return-object v0

    .line 17
    :catch_0
    :cond_0
    return-object v1
.end method

.method public static setKpmParams(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    const-string/jumbo v0, "ro.slmk.kpm_debug_trigger"

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 14
    move-result p0

    .line 15
    sput p0, Lcom/android/server/am/KillPolicyManager;->sWarmUpTrigger:I

    .line 17
    return v1

    .line 18
    :cond_0
    const-string/jumbo v0, "ro.slmk.kpm_policy_trigger"

    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 30
    move-result p0

    .line 31
    sput p0, Lcom/android/server/am/KillPolicyManager;->sPolicyTrigger:I

    .line 33
    return v1

    .line 34
    :cond_1
    const-string/jumbo v0, "ro.slmk.kpm_debug_cycles"

    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 46
    move-result p0

    .line 47
    sput p0, Lcom/android/server/am/KillPolicyManager;->sWarmUpCycles:I

    .line 49
    return v1

    .line 50
    :cond_2
    const-string/jumbo v0, "ro.slmk.kpm_boot_enable"

    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result p0

    .line 57
    if-eqz p0, :cond_3

    .line 59
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 62
    move-result p0

    .line 63
    sput-boolean p0, Lcom/android/server/am/KillPolicyManager;->KPM_BTIME_ENABLE:Z

    .line 65
    return v1

    .line 66
    :cond_3
    const/4 p0, 0x0

    .line 67
    return p0
.end method

.method public static setLmkdCameraKillBoost(III)V
    .locals 4

    .line 1
    sget v0, Lcom/android/server/am/ProcessList;->PAGE_SIZE:I

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 6
    move-result-wide v0

    .line 7
    const/16 v2, 0x10

    .line 9
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 12
    move-result-object v2

    .line 13
    const/16 v3, 0x67

    .line 15
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 18
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 21
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 24
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 27
    const/4 p0, 0x0

    .line 28
    invoke-static {v2, p0}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 34
    move-result-wide p0

    .line 35
    sub-long/2addr p0, v0

    .line 36
    const-wide/16 v0, 0xfa

    .line 38
    cmp-long p2, p0, v0

    .line 40
    if-lez p2, :cond_0

    .line 42
    new-instance p2, Ljava/lang/StringBuilder;

    .line 44
    const-string v0, "SLOW setLmkdCameraKillBoost: "

    .line 46
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p0

    .line 56
    const-string p1, "ActivityManager"

    .line 58
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method public final dumpLMKDParameter(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBgAppPropManager:Lcom/android/server/bgslotmanager/BgAppPropManager;

    .line 3
    if-eqz p0, :cond_2

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    const-string v1, "  DHA_CACHE_MIN: "

    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    sget v1, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_CACHED_APPS:I

    .line 17
    const-string v2, "  DHA_CACHE_MAX: "

    .line 19
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    move-result-object v0

    .line 23
    sget v1, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    .line 25
    const-string v2, "  DHA_EMPTY_MIN: "

    .line 27
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    move-result-object v0

    .line 31
    sget v1, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_EMPTY_APPS:I

    .line 33
    const-string v2, "  DHA_EMPTY_MAX: "

    .line 35
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    move-result-object v0

    .line 39
    sget v1, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_EMPTY_APPS:I

    .line 41
    invoke-static {v0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 44
    iget-object p0, p0, Lcom/android/server/bgslotmanager/BgAppPropManager;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 46
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 48
    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    const-string v1, "  AMC_CUR_MAX_CACHED: "

    .line 54
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 59
    iget v1, v1, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    .line 61
    const-string v2, "  AMC_CUR_MAX_EMPTY: "

    .line 63
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 69
    iget v1, v1, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    .line 71
    invoke-static {v0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 74
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    .line 79
    const-string v1, "  LMKD_enable_userspace_lmk "

    .line 81
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_USERSPACE_LMK:Z

    .line 86
    const-string v2, "  LMKD_use_minfree_levels "

    .line 88
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    move-result-object v0

    .line 92
    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_USE_MINFREE_LEVELS:Z

    .line 94
    const-string v2, "  LMKD_enable_upgrade_criadj "

    .line 96
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    move-result-object v0

    .line 100
    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_UPGRADE_CRIADJ:Z

    .line 102
    const-string v2, "  LMKD_freelimit_enable "

    .line 104
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    move-result-object v0

    .line 108
    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_FREELIMIT_ENABLE:Z

    .line 110
    const-string v2, "  LMKD_freelimit_val "

    .line 112
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    move-result-object v0

    .line 116
    sget v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_FREELIMIT_VAL:I

    .line 118
    const-string v2, "  LMKD_upgrade_pressure "

    .line 120
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    move-result-object v0

    .line 124
    sget v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_UPGRADE_PRESSURE:I

    .line 126
    const-string v2, "  LMKD_custom_sw_limit "

    .line 128
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    move-result-object v0

    .line 132
    sget v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_CUSTOM_SW_LIMIT:I

    .line 134
    const-string v2, "  LMKD_custom_tm_limit "

    .line 136
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    move-result-object v0

    .line 140
    sget v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_CUSTOM_TM_LIMIT:I

    .line 142
    const-string v2, "  LMKD_psi_medium_th "

    .line 144
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    move-result-object v0

    .line 148
    sget v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_PSI_MEDIUM_TH:I

    .line 150
    const-string v2, "  LMKD_psi_critical_th "

    .line 152
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    move-result-object v0

    .line 156
    sget v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_PSI_CRITICAL_TH:I

    .line 158
    const-string v2, "  LMKD_use_lowmem_keep_except "

    .line 160
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    move-result-object v0

    .line 164
    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->LMK_LOW_MEM_KEEP_ENABLE:Z

    .line 166
    invoke-static {v0, v1, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 169
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 171
    if-eqz p0, :cond_1

    .line 173
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 175
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 177
    const-string p0, "  APPCOMPACTOR_ENABLE false"

    .line 179
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 185
    :cond_2
    return-void
.end method

.method public final initDynamicHiddenApp(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActivityManagerConstants;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp$DhaClassLazyHolder;->isinitClass:Z

    .line 3
    if-nez v0, :cond_6

    .line 5
    iput-object p1, p0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 7
    iput-object p2, p0, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 9
    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 13
    iput-object p1, p0, Lcom/android/server/am/DynamicHiddenApp;->mContext:Landroid/content/Context;

    .line 15
    :cond_0
    iput-object p3, p0, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 17
    new-instance p1, Lcom/android/server/bgslotmanager/BgAppPropManager;

    .line 19
    iget-object p2, p0, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 21
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p2, p1, Lcom/android/server/bgslotmanager/BgAppPropManager;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 26
    iput-object p0, p1, Lcom/android/server/bgslotmanager/BgAppPropManager;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 28
    iput-object p1, p0, Lcom/android/server/am/DynamicHiddenApp;->mBgAppPropManager:Lcom/android/server/bgslotmanager/BgAppPropManager;

    .line 30
    iget-object p1, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGSlotManager:Lcom/android/server/bgslotmanager/BGSlotManager;

    .line 32
    iput-object p0, p1, Lcom/android/server/bgslotmanager/BGSlotManager;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 34
    sget-boolean p2, Lcom/android/server/bgslotmanager/BGSlotManager;->IS_CHINA_MODEL:Z

    .line 36
    if-eqz p2, :cond_1

    .line 38
    iget p3, p1, Lcom/android/server/bgslotmanager/BGSlotManager;->CHN_REDUCE_CACHED:I

    .line 40
    rsub-int p3, p3, 0x200

    .line 42
    sput p3, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    .line 44
    sget p3, Lcom/android/server/am/BGProtectManager;->dha_keepempty_chn_key:I

    .line 46
    sput p3, Lcom/android/server/am/BGProtectManager;->dha_keepempty_key:I

    .line 48
    const-string/jumbo p3, "is china model : "

    .line 51
    const-string v0, "DynamicHiddenApp_BGSlotManager"

    .line 53
    invoke-static {p3, v0, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 56
    :cond_1
    const-wide/16 p2, 0x1800

    .line 58
    sget-wide v0, Lcom/android/server/am/DynamicHiddenApp;->mTotalMemMb:J

    .line 60
    cmp-long p2, v0, p2

    .line 62
    if-lez p2, :cond_2

    .line 64
    sget p2, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_EMPTY_APPS:I

    .line 66
    sget p3, Lcom/android/server/bgslotmanager/BGSlotManager;->STATIC_MAX_EMPTY_FOR_OVER_8GB:I

    .line 68
    if-ge p2, p3, :cond_2

    .line 70
    sput p3, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_EMPTY_APPS:I

    .line 72
    :cond_2
    sget p2, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    .line 74
    iput p2, p1, Lcom/android/server/bgslotmanager/BGSlotManager;->originCachedMax:I

    .line 76
    sget p2, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_CACHED_APPS:I

    .line 78
    iput p2, p1, Lcom/android/server/bgslotmanager/BGSlotManager;->originCachedMin:I

    .line 80
    sget p2, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_EMPTY_APPS:I

    .line 82
    iput p2, p1, Lcom/android/server/bgslotmanager/BGSlotManager;->originEmptyMax:I

    .line 84
    sget p2, Lcom/android/server/bgslotmanager/BGSlotManager;->MIN_EMPTY_APPS:I

    .line 86
    iput p2, p1, Lcom/android/server/bgslotmanager/BGSlotManager;->originEmptyMin:I

    .line 88
    const-string/jumbo p1, "cur_trim_cached_num"

    .line 91
    const-string p2, "0"

    .line 93
    invoke-static {p1, p2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    move-result p1

    .line 97
    const-string/jumbo p3, "cur_trim_empty_num"

    .line 100
    invoke-static {p3, p2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    move-result p2

    .line 104
    iget-object p3, p0, Lcom/android/server/am/DynamicHiddenApp;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 106
    if-eqz p3, :cond_4

    .line 108
    if-eqz p1, :cond_3

    .line 110
    iput p1, p3, Lcom/android/server/am/ActivityManagerConstants;->CUSTOM_CUR_TRIM_CACHED_PROCESSES:I

    .line 112
    :cond_3
    if-eqz p2, :cond_4

    .line 114
    iput p2, p3, Lcom/android/server/am/ActivityManagerConstants;->CUSTOM_CUR_TRIM_EMPTY_PROCESSES:I

    .line 116
    :cond_4
    iget-object p1, p0, Lcom/android/server/am/DynamicHiddenApp;->mContext:Landroid/content/Context;

    .line 118
    iget-object p2, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    .line 120
    iput-object p1, p2, Lcom/android/server/am/BGProtectManager;->mContext:Landroid/content/Context;

    .line 122
    const/4 p1, 0x1

    .line 123
    invoke-virtual {p2, p1}, Lcom/android/server/am/BGProtectManager;->addAllowlistList(Z)V

    .line 126
    iget-boolean p3, p2, Lcom/android/server/am/BGProtectManager;->BOOTING_EMPTY_KILL_SKIP_ENABLE:Z

    .line 128
    if-eqz p3, :cond_5

    .line 130
    invoke-static {p1}, Lcom/android/server/am/BGProtectManager;->addBEKSList(Z)V

    .line 133
    :cond_5
    iput p1, p2, Lcom/android/server/am/BGProtectManager;->NapProcessSlotLimit:I

    .line 135
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 137
    iget p2, p0, Lcom/android/server/am/ProcessList;->mDisplayWidth:I

    .line 139
    iget p3, p0, Lcom/android/server/am/ProcessList;->mDisplayHeight:I

    .line 141
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 144
    sput-boolean p1, Lcom/android/server/am/DynamicHiddenApp$DhaClassLazyHolder;->isinitClass:Z

    .line 146
    :cond_6
    return-void
.end method

.method public final resetKillExceptFlag(Lcom/android/server/am/ProcessRecord;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 8
    invoke-static {v0}, Lcom/android/server/am/BGProtectManager;->isDhaKeepEmptyProcess(Ljava/lang/String;)I

    .line 11
    move-result v1

    .line 12
    const/4 v2, -0x1

    .line 13
    const/4 v3, 0x4

    .line 14
    const/4 v4, 0x2

    .line 15
    const/4 v5, 0x1

    .line 16
    if-eq v1, v2, :cond_3

    .line 18
    iget v0, p0, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnable:I

    .line 20
    if-ne v0, v5, :cond_0

    .line 22
    if-ne v1, v5, :cond_0

    .line 24
    iput v5, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    .line 26
    goto/16 :goto_1

    .line 28
    :cond_0
    iget p0, p0, Lcom/android/server/am/BGProtectManager;->mDhaKeepEmptyEnableKnox:I

    .line 30
    if-ne p0, v5, :cond_1

    .line 32
    if-ne v1, v4, :cond_1

    .line 34
    iget p0, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 36
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_1

    .line 42
    iput v4, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    .line 44
    goto/16 :goto_1

    .line 46
    :cond_1
    if-ne v0, v5, :cond_2

    .line 48
    const/4 p0, 0x3

    .line 49
    if-ne v1, p0, :cond_2

    .line 51
    iput p0, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    .line 53
    goto/16 :goto_1

    .line 55
    :cond_2
    if-ne v0, v5, :cond_a

    .line 57
    if-ne v1, v3, :cond_a

    .line 59
    iput v3, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    sget-object p0, Lcom/android/server/am/BGProtectManager;->dha_amsexcept_map:Ljava/util/HashMap;

    .line 64
    if-eqz p0, :cond_4

    .line 66
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_4

    .line 72
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    move-result-object p0

    .line 76
    check-cast p0, Ljava/lang/Integer;

    .line 78
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 81
    move-result p0

    .line 82
    goto :goto_0

    .line 83
    :cond_4
    move p0, v2

    .line 84
    :goto_0
    if-eq p0, v2, :cond_5

    .line 86
    iput-boolean v5, p1, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    .line 88
    iput p0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    .line 90
    goto :goto_1

    .line 91
    :cond_5
    invoke-static {p1}, Lcom/android/server/am/BGProtectManager;->isWebviewProcess(Lcom/android/server/am/ProcessRecord;)I

    .line 94
    move-result p0

    .line 95
    if-eq p0, v2, :cond_8

    .line 97
    sget-object v0, Lcom/android/server/am/BGProtectManager$exceptFlag;->SANDBOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 99
    if-ne p0, v4, :cond_6

    .line 101
    iput-boolean v5, p1, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    .line 103
    invoke-virtual {v0}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    .line 106
    move-result p0

    .line 107
    iput p0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    .line 109
    goto :goto_1

    .line 110
    :cond_6
    if-ne p0, v3, :cond_7

    .line 112
    invoke-virtual {v0}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    .line 115
    move-result p0

    .line 116
    iput p0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    .line 118
    goto :goto_1

    .line 119
    :cond_7
    const/4 v0, 0x6

    .line 120
    if-ne p0, v0, :cond_a

    .line 122
    sget-object p0, Lcom/android/server/am/BGProtectManager$exceptFlag;->BROWSERMAIN:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 124
    invoke-virtual {p0}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    .line 127
    move-result p0

    .line 128
    iput p0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    .line 130
    goto :goto_1

    .line 131
    :cond_8
    sget-boolean p0, Lcom/android/server/am/BGProtectManager;->mCameraGuardEnable:Z

    .line 133
    if-eqz p0, :cond_9

    .line 135
    sget-object p0, Lcom/android/server/am/BGProtectManager;->dha_cameraguard_map:Ljava/util/HashMap;

    .line 137
    if-eqz p0, :cond_9

    .line 139
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 142
    move-result p0

    .line 143
    if-eqz p0, :cond_9

    .line 145
    sget-object p0, Lcom/android/server/am/BGProtectManager$exceptFlag;->CAMERAGUARD:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 147
    invoke-virtual {p0}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    .line 150
    move-result p0

    .line 151
    iput p0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    .line 153
    goto :goto_1

    .line 154
    :cond_9
    const/4 p0, 0x0

    .line 155
    iput p0, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    .line 157
    iput-boolean p0, p1, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    .line 159
    iput v2, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    .line 161
    :cond_a
    :goto_1
    return-void
.end method

.method public final setCustomADJAndGetProcState(Lcom/android/server/am/ProcessRecord;)I
    .locals 13

    .line 1
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const/4 v0, -0x1

    .line 7
    if-eqz p1, :cond_1f

    .line 9
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 11
    if-nez v1, :cond_0

    .line 13
    goto/16 :goto_9

    .line 15
    :cond_0
    iget v2, v1, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 17
    iget v3, v1, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 19
    iget v4, v1, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 21
    if-eq v3, v4, :cond_1e

    .line 23
    const/16 v4, 0x10

    .line 25
    const/16 v5, 0x3e7

    .line 27
    const/16 v6, 0x352

    .line 29
    const/4 v7, 0x0

    .line 30
    if-lt v3, v6, :cond_7

    .line 32
    if-gt v3, v5, :cond_7

    .line 34
    sget-boolean v3, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_USERSPACE_LMK:Z

    .line 36
    const/16 v8, 0x384

    .line 38
    if-eqz v3, :cond_2

    .line 40
    sget-boolean v3, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_REENTRY_LMK:Z

    .line 42
    if-eqz v3, :cond_2

    .line 44
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 46
    iget-boolean v3, v3, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    .line 48
    if-eqz v3, :cond_3

    .line 50
    iget v3, v1, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 52
    const/16 v9, 0xa

    .line 54
    if-eq v3, v9, :cond_1

    .line 56
    const/16 v9, 0xf

    .line 58
    if-ne v3, v9, :cond_3

    .line 60
    :cond_1
    move v2, v4

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    invoke-static {p1}, Lcom/android/server/am/BGProtectManager;->IsProtected(Lcom/android/server/am/ProcessRecord;)Z

    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_3

    .line 68
    invoke-virtual {v1, v8}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 71
    iget v3, v1, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 73
    invoke-virtual {v1, v3, v7}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    .line 76
    :cond_3
    :goto_0
    sget-boolean v3, Lcom/android/server/am/DynamicHiddenApp;->PICKED_ADJ_ENABLE:Z

    .line 78
    if-eqz v3, :cond_7

    .line 80
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 82
    if-nez v3, :cond_6

    .line 84
    invoke-static {p1}, Lcom/android/server/am/BGProtectManager;->IsProtected(Lcom/android/server/am/ProcessRecord;)Z

    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_6

    .line 90
    sget-boolean v3, Lcom/android/server/am/BGProtectManager;->allowListCleared:Z

    .line 92
    if-nez v3, :cond_5

    .line 94
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 97
    move-result-wide v9

    .line 98
    iget-wide v11, v1, Lcom/android/server/am/ProcessStateRecord;->mLastStateTime:J

    .line 100
    sub-long/2addr v9, v11

    .line 101
    iget v3, p0, Lcom/android/server/am/BGProtectManager;->PICKED_ADJ_TIME_LIMIT:I

    .line 103
    int-to-long v11, v3

    .line 104
    cmp-long v3, v9, v11

    .line 106
    if-ltz v3, :cond_4

    .line 108
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 110
    iget-object v9, p0, Lcom/android/server/am/BGProtectManager;->PICKED_ADJ_EXCEPT:Ljava/util/ArrayList;

    .line 112
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 115
    move-result v3

    .line 116
    if-nez v3, :cond_6

    .line 118
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 120
    invoke-static {v3}, Lcom/android/server/am/BGProtectManager;->isDhaKeepEmptyProcess(Ljava/lang/String;)I

    .line 123
    move-result v3

    .line 124
    if-eq v3, v0, :cond_6

    .line 126
    invoke-virtual {v1, v8}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 129
    iget v0, v1, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 131
    invoke-virtual {v1, v0, v7}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    .line 134
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 136
    iget-object v3, p0, Lcom/android/server/am/BGProtectManager;->PICKED_ADJ_EXCEPT:Ljava/util/ArrayList;

    .line 138
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    const-string v0, "DynamicHiddenApp_BGProtectManager"

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    .line 145
    const-string v8, "Picked process timeout "

    .line 147
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 152
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const-string v8, " (pid: "

    .line 157
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget v8, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 162
    const-string v9, ")"

    .line 164
    invoke-static {v3, v8, v9, v0}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 167
    goto :goto_1

    .line 168
    :cond_4
    invoke-virtual {v1, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 171
    iget v0, v1, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 173
    invoke-virtual {v1, v0, v7}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    .line 176
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 178
    iget-object v3, p0, Lcom/android/server/am/BGProtectManager;->PICKED_ADJ_EXCEPT:Ljava/util/ArrayList;

    .line 180
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 183
    move-result v3

    .line 184
    if-eqz v3, :cond_6

    .line 186
    iget-object v3, p0, Lcom/android/server/am/BGProtectManager;->PICKED_ADJ_EXCEPT:Ljava/util/ArrayList;

    .line 188
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 191
    goto :goto_1

    .line 192
    :cond_5
    invoke-virtual {v1, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 195
    iget v0, v1, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 197
    invoke-virtual {v1, v0, v7}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    .line 200
    :cond_6
    :goto_1
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->mIpmLaunchType:I

    .line 202
    const/4 v3, 0x1

    .line 203
    if-ne v0, v3, :cond_7

    .line 205
    invoke-virtual {v1, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 208
    iget v0, v1, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 210
    invoke-virtual {v1, v0, v7}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    .line 213
    :cond_7
    iget v0, v1, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 215
    const/16 v3, 0x5c

    .line 217
    const/16 v6, 0xc8

    .line 219
    const/16 v8, 0xfa

    .line 221
    const/16 v9, 0x63

    .line 223
    if-lt v0, v8, :cond_d

    .line 225
    if-gt v0, v5, :cond_d

    .line 227
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 229
    if-nez v0, :cond_9

    .line 231
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    .line 233
    sget-object v10, Lcom/android/server/am/BGProtectManager$exceptFlag;->CAMERAGUARD:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 235
    invoke-virtual {v10}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    .line 238
    move-result v10

    .line 239
    if-ne v0, v10, :cond_9

    .line 241
    iget v0, v1, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 243
    if-ne v0, v4, :cond_8

    .line 245
    const/16 v2, 0x5b

    .line 247
    goto :goto_2

    .line 248
    :cond_8
    const/16 v2, 0x5a

    .line 250
    :cond_9
    :goto_2
    invoke-static {p1}, Lcom/android/server/am/BGProtectManager;->IsProtected(Lcom/android/server/am/ProcessRecord;)Z

    .line 253
    move-result v0

    .line 254
    if-eqz v0, :cond_d

    .line 256
    iget-boolean v0, p0, Lcom/android/server/am/BGProtectManager;->AMSExceptionProviderUpgradeAdjEnable:Z

    .line 258
    if-eqz v0, :cond_b

    .line 260
    const-string v0, "android.process.acore"

    .line 262
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 264
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 267
    move-result v0

    .line 268
    if-nez v0, :cond_a

    .line 270
    const-string v0, "android.process.media"

    .line 272
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 274
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 277
    move-result v0

    .line 278
    if-eqz v0, :cond_b

    .line 280
    :cond_a
    invoke-virtual {v1, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 283
    iget v0, v1, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 285
    invoke-virtual {v1, v0, v7}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    .line 288
    :cond_b
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    .line 290
    sget-object v2, Lcom/android/server/am/BGProtectManager$exceptFlag;->CAMERAMEDIA:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 292
    invoke-virtual {v2}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    .line 295
    move-result v2

    .line 296
    if-ne v0, v2, :cond_c

    .line 298
    move v2, v3

    .line 299
    goto :goto_3

    .line 300
    :cond_c
    move v2, v9

    .line 301
    :cond_d
    :goto_3
    iget v0, v1, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 303
    const/16 v4, 0x320

    .line 305
    const/16 v7, 0x13

    .line 307
    if-lt v0, v4, :cond_13

    .line 309
    if-gt v0, v5, :cond_13

    .line 311
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    .line 313
    sget-object v4, Lcom/android/server/am/BGProtectManager$exceptFlag;->SANDBOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 315
    invoke-virtual {v4}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    .line 318
    move-result v4

    .line 319
    if-ne v0, v4, :cond_10

    .line 321
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    .line 323
    if-eqz v0, :cond_f

    .line 325
    iget-boolean v0, p0, Lcom/android/server/am/BGProtectManager;->CLEANUP_WEBVIEW_ENABLE:Z

    .line 327
    if-eqz v0, :cond_e

    .line 329
    iget v0, v1, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 331
    sget v4, Lcom/android/server/am/BGProtectManager;->WEBVIEW_ADJ_THRESHOLD:I

    .line 333
    if-gt v0, v4, :cond_10

    .line 335
    :cond_e
    move v2, v9

    .line 336
    goto :goto_4

    .line 337
    :cond_f
    const/16 v2, 0x62

    .line 339
    :cond_10
    :goto_4
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    .line 341
    if-eqz v0, :cond_11

    .line 343
    iget v0, v1, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 345
    if-ne v0, v7, :cond_11

    .line 347
    const/16 v0, 0x61

    .line 349
    :goto_5
    move v2, v0

    .line 350
    goto :goto_6

    .line 351
    :cond_11
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->mIpmLaunchType:I

    .line 353
    if-nez v0, :cond_12

    .line 355
    iget v0, v1, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 357
    if-ne v0, v7, :cond_12

    .line 359
    const/16 v0, 0x60

    .line 361
    goto :goto_5

    .line 362
    :cond_12
    :goto_6
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    .line 364
    sget-object v4, Lcom/android/server/am/BGProtectManager$exceptFlag;->HOMEHUB:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 366
    invoke-virtual {v4}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    .line 369
    move-result v4

    .line 370
    if-ne v0, v4, :cond_13

    .line 372
    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->sHH_AMSExceptionEnable:Z

    .line 374
    if-eqz v0, :cond_13

    .line 376
    move v2, v9

    .line 377
    :cond_13
    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->BORA_POLICY_ENABLE:Z

    .line 379
    if-eqz v0, :cond_16

    .line 381
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    .line 383
    sget-object v4, Lcom/android/server/am/BGProtectManager$exceptFlag;->CAMERAMEDIA:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 385
    invoke-virtual {v4}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    .line 388
    move-result v4

    .line 389
    if-ne v0, v4, :cond_14

    .line 391
    iget v0, v1, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 393
    if-lt v0, v8, :cond_14

    .line 395
    goto :goto_7

    .line 396
    :cond_14
    iget v0, v1, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 398
    const/16 v3, 0x2bc

    .line 400
    if-ne v0, v3, :cond_15

    .line 402
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 404
    iget-boolean v0, v0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    .line 406
    if-eqz v0, :cond_15

    .line 408
    const/16 v3, 0x96

    .line 410
    goto :goto_7

    .line 411
    :cond_15
    iget-object v0, p0, Lcom/android/server/am/BGProtectManager;->recentActivityProcessList:Ljava/util/ArrayList;

    .line 413
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 416
    move-result v0

    .line 417
    if-eqz v0, :cond_16

    .line 419
    invoke-static {p1}, Lcom/android/server/am/BGProtectManager;->isCachedOrPickedActivityProcess(Lcom/android/server/am/ProcessRecord;)Z

    .line 422
    move-result v0

    .line 423
    if-eqz v0, :cond_16

    .line 425
    iget-object v0, p0, Lcom/android/server/am/BGProtectManager;->recentActivityProcessList:Ljava/util/ArrayList;

    .line 427
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 430
    move-result v0

    .line 431
    add-int/lit16 v3, v0, 0xb4

    .line 433
    const/16 v0, 0xc7

    .line 435
    if-le v3, v0, :cond_17

    .line 437
    move v3, v0

    .line 438
    goto :goto_7

    .line 439
    :cond_16
    move v3, v2

    .line 440
    :cond_17
    :goto_7
    iget v0, v1, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 442
    if-ge v0, v6, :cond_18

    .line 444
    if-ltz v0, :cond_18

    .line 446
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    .line 448
    sget-object v2, Lcom/android/server/am/BGProtectManager$exceptFlag;->BROWSERMAIN:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 450
    invoke-virtual {v2}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    .line 453
    move-result v2

    .line 454
    if-ne v0, v2, :cond_18

    .line 456
    const/16 v3, 0x5f

    .line 458
    :cond_18
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isNeverKillException:Z

    .line 460
    if-eqz v0, :cond_1a

    .line 462
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 464
    const/16 v2, -0x2bc

    .line 466
    if-nez v0, :cond_19

    .line 468
    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 471
    goto :goto_8

    .line 472
    :cond_19
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    .line 474
    sget-object v4, Lcom/android/server/am/BGProtectManager$exceptFlag;->NORMALANDKNOX:Lcom/android/server/am/BGProtectManager$exceptFlag;

    .line 476
    invoke-virtual {v4}, Lcom/android/server/am/BGProtectManager$exceptFlag;->getValue()I

    .line 479
    move-result v4

    .line 480
    if-lt v0, v4, :cond_1a

    .line 482
    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 485
    goto :goto_8

    .line 486
    :cond_1a
    move v9, v3

    .line 487
    :goto_8
    iget v0, v1, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 489
    if-ne v0, v7, :cond_1b

    .line 491
    invoke-virtual {p0, p1}, Lcom/android/server/am/BGProtectManager;->isBEKCondition(Lcom/android/server/am/ProcessRecord;)Z

    .line 494
    move-result p0

    .line 495
    if-eqz p0, :cond_1b

    .line 497
    const/16 v9, 0x5d

    .line 499
    :cond_1b
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->ALLIED_PROC_PROTECTION_LMKD:Z

    .line 501
    if-eqz p0, :cond_1d

    .line 503
    sget-object p0, Lcom/android/server/am/DynamicHiddenApp;->alliedProtectedProcList:Ljava/util/ArrayList;

    .line 505
    monitor-enter p0

    .line 506
    :try_start_0
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 508
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 510
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 513
    move-result p1

    .line 514
    if-eqz p1, :cond_1c

    .line 516
    const/16 v9, 0x8d

    .line 518
    :cond_1c
    monitor-exit p0

    .line 519
    :cond_1d
    move v0, v9

    .line 520
    goto :goto_9

    .line 521
    :catchall_0
    move-exception p1

    .line 522
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    throw p1

    .line 524
    :cond_1e
    move v0, v2

    .line 525
    :cond_1f
    :goto_9
    return v0
.end method
