.class public final Lcom/android/server/DeviceIdleController$Constants;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public DNA_REQUEST_VERSION:J

.field public FLEX_TIME_SHORT:J

.field public IDLE_AFTER_INACTIVE_TIMEOUT:J

.field public IDLE_FACTOR:F

.field public IDLE_PENDING_FACTOR:F

.field public IDLE_PENDING_TIMEOUT:J

.field public IDLE_TIMEOUT:J

.field public INACTIVE_TIMEOUT:J

.field public LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

.field public LIGHT_IDLE_FACTOR:F

.field public LIGHT_IDLE_FLEX_LINEAR_INCREASE_FACTOR_MS:J

.field public LIGHT_IDLE_INCREASE_LINEARLY:Z

.field public LIGHT_IDLE_LINEAR_INCREASE_FACTOR_MS:J

.field public LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

.field public LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

.field public LIGHT_IDLE_TIMEOUT:J

.field public LIGHT_IDLE_TIMEOUT_INITIAL_FLEX:J

.field public LIGHT_IDLE_TIMEOUT_MAX_FLEX:J

.field public LIGHT_MAX_IDLE_TIMEOUT:J

.field public LOCATING_TIMEOUT:J

.field public LOCATION_ACCURACY:F

.field public MAX_IDLE_PENDING_TIMEOUT:J

.field public MAX_IDLE_TIMEOUT:J

.field public MAX_TEMP_APP_ALLOWLIST_DURATION_MS:J

.field public MIN_DEEP_MAINTENANCE_TIME:J

.field public MIN_LIGHT_MAINTENANCE_TIME:J

.field public MIN_TIME_TO_ALARM:J

.field public MMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

.field public MOTION_INACTIVE_TIMEOUT:J

.field public MOTION_INACTIVE_TIMEOUT_FLEX:J

.field public NOTIFICATION_ALLOWLIST_DURATION_MS:J

.field public QUICK_DOZE_DELAY_TIMEOUT:J

.field public SENSING_TIMEOUT:J

.field public SKIP_LOCATING:Z

.field public SKIP_SENSING:Z

.field public SMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

.field public USE_MODE_MANAGER:Z

.field public USE_WINDOW_ALARMS:Z

.field public WAIT_FOR_UNLOCK:Z

.field public final mDefaultDnaRequestVersion:J

.field public final mDefaultFlexTimeShort:J

.field public final mDefaultIdleAfterInactiveTimeout:J

.field public final mDefaultIdleFactor:F

.field public final mDefaultIdlePendingFactor:F

.field public final mDefaultIdlePendingTimeout:J

.field public final mDefaultIdleTimeout:J

.field public final mDefaultInactiveTimeout:J

.field public final mDefaultLightIdleAfterInactiveTimeout:J

.field public final mDefaultLightIdleFactor:F

.field public final mDefaultLightIdleFlexLinearIncreaseFactorMs:J

.field public final mDefaultLightIdleIncreaseLinearly:Z

.field public final mDefaultLightIdleLinearIncreaseFactorMs:J

.field public final mDefaultLightIdleMaintenanceMaxBudget:J

.field public final mDefaultLightIdleMaintenanceMinBudget:J

.field public final mDefaultLightIdleTimeout:J

.field public final mDefaultLightIdleTimeoutInitialFlex:J

.field public final mDefaultLightIdleTimeoutMaxFlex:J

.field public final mDefaultLightMaxIdleTimeout:J

.field public final mDefaultLocatingTimeout:J

.field public final mDefaultLocationAccuracy:F

.field public final mDefaultMaxIdlePendingTimeout:J

.field public final mDefaultMaxIdleTimeout:J

.field public final mDefaultMaxTempAppAllowlistDurationMs:J

.field public final mDefaultMinDeepMaintenanceTime:J

.field public final mDefaultMinLightMaintenanceTime:J

.field public final mDefaultMinTimeToAlarm:J

.field public final mDefaultMmsTempAppAllowlistDurationMs:J

.field public final mDefaultMotionInactiveTimeout:J

.field public final mDefaultMotionInactiveTimeoutFlex:J

.field public final mDefaultNotificationAllowlistDurationMs:J

.field public final mDefaultQuickDozeDelayTimeout:J

.field public final mDefaultSensingTimeout:J

.field public final mDefaultSkipLocating:Z

.field public final mDefaultSkipSensing:Z

.field public final mDefaultSmsTempAppAllowlistDurationMs:J

.field public final mDefaultUseModeManager:Z

.field public final mDefaultUseWindowAlarms:Z

.field public final mDefaultWaitForUnlock:Z

.field public final mResolver:Landroid/content/ContentResolver;

.field public final mSmallBatteryDevice:Z

.field public final mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

.field public final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceIdleController;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move-object/from16 v2, p3

    .line 7
    iput-object v1, v0, Lcom/android/server/DeviceIdleController$Constants;->this$0:Lcom/android/server/DeviceIdleController;

    .line 9
    move-object/from16 v3, p2

    .line 11
    invoke-direct {v0, v3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 14
    const-wide/32 v3, 0xea60

    .line 17
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultFlexTimeShort:J

    .line 19
    const-wide/32 v5, 0x3a980

    .line 22
    iput-wide v5, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleAfterInactiveTimeout:J

    .line 24
    const-wide/32 v7, 0x493e0

    .line 27
    iput-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeout:J

    .line 29
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeoutInitialFlex:J

    .line 31
    const-wide/32 v9, 0xdbba0

    .line 34
    iput-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeoutMaxFlex:J

    .line 36
    const/high16 v11, 0x40000000    # 2.0f

    .line 38
    iput v11, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleFactor:F

    .line 40
    iput-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleLinearIncreaseFactorMs:J

    .line 42
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleFlexLinearIncreaseFactorMs:J

    .line 44
    iput-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightMaxIdleTimeout:J

    .line 46
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleMaintenanceMinBudget:J

    .line 48
    iput-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleMaintenanceMaxBudget:J

    .line 50
    const-wide/16 v12, 0x1388

    .line 52
    iput-wide v12, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinLightMaintenanceTime:J

    .line 54
    const-wide/16 v14, 0x7530

    .line 56
    iput-wide v14, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinDeepMaintenanceTime:J

    .line 58
    const-wide/32 v12, 0x1b7740

    .line 61
    iput-wide v12, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultInactiveTimeout:J

    .line 63
    iput-wide v5, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSensingTimeout:J

    .line 65
    iput-wide v14, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLocatingTimeout:J

    .line 67
    const/high16 v9, 0x41a00000    # 20.0f

    .line 69
    iput v9, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLocationAccuracy:F

    .line 71
    const-wide/32 v9, 0x927c0

    .line 74
    iput-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMotionInactiveTimeout:J

    .line 76
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMotionInactiveTimeoutFlex:J

    .line 78
    iput-wide v12, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleAfterInactiveTimeout:J

    .line 80
    iput-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdlePendingTimeout:J

    .line 82
    iput-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxIdlePendingTimeout:J

    .line 84
    iput v11, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdlePendingFactor:F

    .line 86
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultQuickDozeDelayTimeout:J

    .line 88
    const-wide/32 v9, 0x36ee80

    .line 91
    iput-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleTimeout:J

    .line 93
    const-wide/32 v9, 0x1499700

    .line 96
    iput-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxIdleTimeout:J

    .line 98
    iput v11, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleFactor:F

    .line 100
    iput-wide v12, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinTimeToAlarm:J

    .line 102
    iput-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxTempAppAllowlistDurationMs:J

    .line 104
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMmsTempAppAllowlistDurationMs:J

    .line 106
    const-wide/16 v9, 0x4e20

    .line 108
    iput-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSmsTempAppAllowlistDurationMs:J

    .line 110
    iput-wide v14, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultNotificationAllowlistDurationMs:J

    .line 112
    const/4 v9, 0x1

    .line 113
    iput-boolean v9, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultWaitForUnlock:Z

    .line 115
    iput-boolean v9, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultUseWindowAlarms:Z

    .line 117
    const/4 v10, 0x0

    .line 118
    iput-boolean v10, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultUseModeManager:Z

    .line 120
    iput-boolean v10, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSkipSensing:Z

    .line 122
    iput-boolean v10, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSkipLocating:Z

    .line 124
    const-wide/16 v9, 0x0

    .line 126
    iput-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultDnaRequestVersion:J

    .line 128
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->FLEX_TIME_SHORT:J

    .line 130
    iput-wide v5, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

    .line 132
    iput-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    .line 134
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_INITIAL_FLEX:J

    .line 136
    const-wide/32 v9, 0xdbba0

    .line 139
    iput-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_MAX_FLEX:J

    .line 141
    iput v11, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FACTOR:F

    .line 143
    iget-boolean v11, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleIncreaseLinearly:Z

    .line 145
    iput-boolean v11, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_INCREASE_LINEARLY:Z

    .line 147
    iput-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_LINEAR_INCREASE_FACTOR_MS:J

    .line 149
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FLEX_LINEAR_INCREASE_FACTOR_MS:J

    .line 151
    iput-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_MAX_IDLE_TIMEOUT:J

    .line 153
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    .line 155
    iput-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    .line 157
    const-wide/16 v9, 0x1388

    .line 159
    iput-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->MIN_LIGHT_MAINTENANCE_TIME:J

    .line 161
    iput-wide v14, v0, Lcom/android/server/DeviceIdleController$Constants;->MIN_DEEP_MAINTENANCE_TIME:J

    .line 163
    iput-wide v12, v0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    .line 165
    iput-wide v5, v0, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    .line 167
    iput-wide v14, v0, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    .line 169
    const/high16 v5, 0x41a00000    # 20.0f

    .line 171
    iput v5, v0, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    .line 173
    const-wide/32 v5, 0x927c0

    .line 176
    iput-wide v5, v0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    .line 178
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT_FLEX:J

    .line 180
    iput-wide v12, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    .line 182
    iput-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    .line 184
    iput-wide v5, v0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    .line 186
    const/high16 v5, 0x40000000    # 2.0f

    .line 188
    iput v5, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    .line 190
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->QUICK_DOZE_DELAY_TIMEOUT:J

    .line 192
    const-wide/32 v9, 0x36ee80

    .line 195
    iput-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    .line 197
    const-wide/32 v9, 0x1499700

    .line 200
    iput-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    .line 202
    iput v5, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    .line 204
    iput-wide v12, v0, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    .line 206
    iput-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_ALLOWLIST_DURATION_MS:J

    .line 208
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->MMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    .line 210
    const-wide/16 v5, 0x4e20

    .line 212
    iput-wide v5, v0, Lcom/android/server/DeviceIdleController$Constants;->SMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    .line 214
    iput-wide v14, v0, Lcom/android/server/DeviceIdleController$Constants;->NOTIFICATION_ALLOWLIST_DURATION_MS:J

    .line 216
    const/4 v5, 0x1

    .line 217
    iput-boolean v5, v0, Lcom/android/server/DeviceIdleController$Constants;->WAIT_FOR_UNLOCK:Z

    .line 219
    iput-boolean v5, v0, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    .line 221
    const/4 v5, 0x0

    .line 222
    iput-boolean v5, v0, Lcom/android/server/DeviceIdleController$Constants;->USE_MODE_MANAGER:Z

    .line 224
    iput-boolean v5, v0, Lcom/android/server/DeviceIdleController$Constants;->SKIP_SENSING:Z

    .line 226
    iput-boolean v5, v0, Lcom/android/server/DeviceIdleController$Constants;->SKIP_LOCATING:Z

    .line 228
    const-wide/16 v5, 0x0

    .line 230
    iput-wide v5, v0, Lcom/android/server/DeviceIdleController$Constants;->DNA_REQUEST_VERSION:J

    .line 232
    new-instance v5, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 234
    invoke-direct {v5}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;-><init>()V

    .line 237
    iput-object v5, v0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 239
    iput-object v2, v0, Lcom/android/server/DeviceIdleController$Constants;->mResolver:Landroid/content/ContentResolver;

    .line 241
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 244
    move-result-object v1

    .line 245
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 248
    move-result-object v1

    .line 249
    const v6, 0x10e0189

    .line 252
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 255
    move-result v6

    .line 256
    int-to-long v6, v6

    .line 257
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultFlexTimeShort:J

    .line 259
    const v6, 0x10e0190

    .line 262
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 265
    move-result v6

    .line 266
    int-to-long v6, v6

    .line 267
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleAfterInactiveTimeout:J

    .line 269
    const v6, 0x10e0198

    .line 272
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 275
    move-result v6

    .line 276
    int-to-long v6, v6

    .line 277
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeout:J

    .line 279
    const v6, 0x10e0196

    .line 282
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 285
    move-result v6

    .line 286
    int-to-long v6, v6

    .line 287
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeoutInitialFlex:J

    .line 289
    const v6, 0x10e0197

    .line 292
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 295
    move-result v6

    .line 296
    int-to-long v6, v6

    .line 297
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeoutMaxFlex:J

    .line 299
    const v6, 0x10e0191

    .line 302
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getFloat(I)F

    .line 305
    move-result v6

    .line 306
    iput v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleFactor:F

    .line 308
    const v6, 0x111029f

    .line 311
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 314
    move-result v6

    .line 315
    iput-boolean v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleIncreaseLinearly:Z

    .line 317
    const v6, 0x10e0193

    .line 320
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 323
    move-result v6

    .line 324
    int-to-long v6, v6

    .line 325
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleLinearIncreaseFactorMs:J

    .line 327
    const v6, 0x10e0192

    .line 330
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 333
    move-result v6

    .line 334
    int-to-long v6, v6

    .line 335
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleFlexLinearIncreaseFactorMs:J

    .line 337
    const v6, 0x10e0199

    .line 340
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 343
    move-result v6

    .line 344
    int-to-long v6, v6

    .line 345
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightMaxIdleTimeout:J

    .line 347
    const v6, 0x10e0195

    .line 350
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 353
    move-result v6

    .line 354
    int-to-long v6, v6

    .line 355
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleMaintenanceMinBudget:J

    .line 357
    const v6, 0x10e0194

    .line 360
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 363
    move-result v6

    .line 364
    int-to-long v6, v6

    .line 365
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleMaintenanceMaxBudget:J

    .line 367
    const v6, 0x10e01a0

    .line 370
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 373
    move-result v6

    .line 374
    int-to-long v6, v6

    .line 375
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinLightMaintenanceTime:J

    .line 377
    const v6, 0x10e019f

    .line 380
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 383
    move-result v6

    .line 384
    int-to-long v6, v6

    .line 385
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinDeepMaintenanceTime:J

    .line 387
    const v6, 0x10e018f

    .line 390
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 393
    move-result v6

    .line 394
    int-to-long v6, v6

    .line 395
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultInactiveTimeout:J

    .line 397
    const v6, 0x10e01a7

    .line 400
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 403
    move-result v6

    .line 404
    int-to-long v6, v6

    .line 405
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSensingTimeout:J

    .line 407
    const v6, 0x10e019a

    .line 410
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 413
    move-result v6

    .line 414
    int-to-long v6, v6

    .line 415
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLocatingTimeout:J

    .line 417
    const v6, 0x10e019b

    .line 420
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getFloat(I)F

    .line 423
    move-result v6

    .line 424
    iput v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLocationAccuracy:F

    .line 426
    const v6, 0x10e01a4

    .line 429
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 432
    move-result v6

    .line 433
    int-to-long v6, v6

    .line 434
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMotionInactiveTimeout:J

    .line 436
    const v6, 0x10e01a3

    .line 439
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 442
    move-result v6

    .line 443
    int-to-long v6, v6

    .line 444
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMotionInactiveTimeoutFlex:J

    .line 446
    const v6, 0x10e018a

    .line 449
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 452
    move-result v6

    .line 453
    int-to-long v6, v6

    .line 454
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleAfterInactiveTimeout:J

    .line 456
    const v6, 0x10e018d

    .line 459
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 462
    move-result v6

    .line 463
    int-to-long v6, v6

    .line 464
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdlePendingTimeout:J

    .line 466
    const v6, 0x10e019c

    .line 469
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 472
    move-result v6

    .line 473
    int-to-long v6, v6

    .line 474
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxIdlePendingTimeout:J

    .line 476
    const v6, 0x10e018c

    .line 479
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getFloat(I)F

    .line 482
    move-result v6

    .line 483
    iput v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdlePendingFactor:F

    .line 485
    const v6, 0x10e01a6

    .line 488
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 491
    move-result v6

    .line 492
    int-to-long v6, v6

    .line 493
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultQuickDozeDelayTimeout:J

    .line 495
    const v6, 0x10e018e

    .line 498
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 501
    move-result v6

    .line 502
    int-to-long v6, v6

    .line 503
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleTimeout:J

    .line 505
    const v6, 0x10e019d

    .line 508
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 511
    move-result v6

    .line 512
    int-to-long v6, v6

    .line 513
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxIdleTimeout:J

    .line 515
    const v6, 0x10e018b

    .line 518
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getFloat(I)F

    .line 521
    move-result v6

    .line 522
    iput v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleFactor:F

    .line 524
    const v6, 0x10e01a1

    .line 527
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 530
    move-result v6

    .line 531
    int-to-long v6, v6

    .line 532
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinTimeToAlarm:J

    .line 534
    const v6, 0x10e019e

    .line 537
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 540
    move-result v6

    .line 541
    int-to-long v6, v6

    .line 542
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxTempAppAllowlistDurationMs:J

    .line 544
    const v6, 0x10e01a2

    .line 547
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 550
    move-result v6

    .line 551
    int-to-long v6, v6

    .line 552
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMmsTempAppAllowlistDurationMs:J

    .line 554
    const v6, 0x10e01a8

    .line 557
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 560
    move-result v6

    .line 561
    int-to-long v6, v6

    .line 562
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSmsTempAppAllowlistDurationMs:J

    .line 564
    const v6, 0x10e01a5

    .line 567
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 570
    move-result v6

    .line 571
    int-to-long v6, v6

    .line 572
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultNotificationAllowlistDurationMs:J

    .line 574
    const v6, 0x11102a4

    .line 577
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 580
    move-result v6

    .line 581
    iput-boolean v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultWaitForUnlock:Z

    .line 583
    const v6, 0x11102a3

    .line 586
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 589
    move-result v6

    .line 590
    iput-boolean v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultUseWindowAlarms:Z

    .line 592
    const v6, 0x11102a2

    .line 595
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 598
    move-result v6

    .line 599
    iput-boolean v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultUseModeManager:Z

    .line 601
    const v6, 0x11102a1

    .line 604
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 607
    move-result v6

    .line 608
    iput-boolean v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSkipSensing:Z

    .line 610
    const v6, 0x11102a0

    .line 613
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 616
    move-result v6

    .line 617
    iput-boolean v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSkipLocating:Z

    .line 619
    const v6, 0x10e0188

    .line 622
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 625
    move-result v1

    .line 626
    int-to-long v6, v1

    .line 627
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultDnaRequestVersion:J

    .line 629
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultFlexTimeShort:J

    .line 631
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->FLEX_TIME_SHORT:J

    .line 633
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleAfterInactiveTimeout:J

    .line 635
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

    .line 637
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeout:J

    .line 639
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    .line 641
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeoutInitialFlex:J

    .line 643
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_INITIAL_FLEX:J

    .line 645
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeoutMaxFlex:J

    .line 647
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_MAX_FLEX:J

    .line 649
    iget v1, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleFactor:F

    .line 651
    iput v1, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FACTOR:F

    .line 653
    iget-boolean v1, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleIncreaseLinearly:Z

    .line 655
    iput-boolean v1, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_INCREASE_LINEARLY:Z

    .line 657
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleLinearIncreaseFactorMs:J

    .line 659
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_LINEAR_INCREASE_FACTOR_MS:J

    .line 661
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleFlexLinearIncreaseFactorMs:J

    .line 663
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FLEX_LINEAR_INCREASE_FACTOR_MS:J

    .line 665
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightMaxIdleTimeout:J

    .line 667
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_MAX_IDLE_TIMEOUT:J

    .line 669
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleMaintenanceMinBudget:J

    .line 671
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    .line 673
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleMaintenanceMaxBudget:J

    .line 675
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    .line 677
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinLightMaintenanceTime:J

    .line 679
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->MIN_LIGHT_MAINTENANCE_TIME:J

    .line 681
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinDeepMaintenanceTime:J

    .line 683
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->MIN_DEEP_MAINTENANCE_TIME:J

    .line 685
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultInactiveTimeout:J

    .line 687
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    .line 689
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSensingTimeout:J

    .line 691
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    .line 693
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLocatingTimeout:J

    .line 695
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    .line 697
    iget v1, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLocationAccuracy:F

    .line 699
    iput v1, v0, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    .line 701
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMotionInactiveTimeout:J

    .line 703
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    .line 705
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMotionInactiveTimeoutFlex:J

    .line 707
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT_FLEX:J

    .line 709
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleAfterInactiveTimeout:J

    .line 711
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    .line 713
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdlePendingTimeout:J

    .line 715
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    .line 717
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxIdlePendingTimeout:J

    .line 719
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    .line 721
    iget v1, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdlePendingFactor:F

    .line 723
    iput v1, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    .line 725
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultQuickDozeDelayTimeout:J

    .line 727
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->QUICK_DOZE_DELAY_TIMEOUT:J

    .line 729
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleTimeout:J

    .line 731
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    .line 733
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxIdleTimeout:J

    .line 735
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    .line 737
    iget v1, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleFactor:F

    .line 739
    iput v1, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    .line 741
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinTimeToAlarm:J

    .line 743
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    .line 745
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxTempAppAllowlistDurationMs:J

    .line 747
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_ALLOWLIST_DURATION_MS:J

    .line 749
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMmsTempAppAllowlistDurationMs:J

    .line 751
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->MMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    .line 753
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSmsTempAppAllowlistDurationMs:J

    .line 755
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->SMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    .line 757
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultNotificationAllowlistDurationMs:J

    .line 759
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->NOTIFICATION_ALLOWLIST_DURATION_MS:J

    .line 761
    iget-boolean v1, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultWaitForUnlock:Z

    .line 763
    iput-boolean v1, v0, Lcom/android/server/DeviceIdleController$Constants;->WAIT_FOR_UNLOCK:Z

    .line 765
    iget-boolean v1, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultUseWindowAlarms:Z

    .line 767
    iput-boolean v1, v0, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    .line 769
    iget-boolean v1, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultUseModeManager:Z

    .line 771
    iput-boolean v1, v0, Lcom/android/server/DeviceIdleController$Constants;->USE_MODE_MANAGER:Z

    .line 773
    iget-boolean v1, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSkipSensing:Z

    .line 775
    iput-boolean v1, v0, Lcom/android/server/DeviceIdleController$Constants;->SKIP_SENSING:Z

    .line 777
    iget-boolean v1, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSkipLocating:Z

    .line 779
    iput-boolean v1, v0, Lcom/android/server/DeviceIdleController$Constants;->SKIP_LOCATING:Z

    .line 781
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->DNA_REQUEST_VERSION:J

    .line 783
    invoke-static {}, Landroid/app/ActivityManager;->isSmallBatteryDevice()Z

    .line 786
    move-result v1

    .line 787
    iput-boolean v1, v0, Lcom/android/server/DeviceIdleController$Constants;->mSmallBatteryDevice:Z

    .line 789
    if-eqz v1, :cond_0

    .line 791
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    .line 793
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    .line 795
    :cond_0
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 798
    move-result-object v1

    .line 799
    const-string/jumbo v3, "device_idle"

    .line 802
    invoke-static {v3, v1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 805
    const-string/jumbo v1, "device_idle_constants"

    .line 808
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 811
    move-result-object v1

    .line 812
    const/4 v4, 0x0

    .line 813
    invoke-virtual {v2, v1, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 816
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController$Constants;->updateSettingsConstantLocked()V

    .line 819
    new-array v1, v4, [Ljava/lang/String;

    .line 821
    invoke-static {v3, v1}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    .line 824
    move-result-object v1

    .line 825
    iput-object v1, v5, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->mProperties:Landroid/provider/DeviceConfig$Properties;

    .line 827
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController$Constants;->updateConstantsLocked()V

    .line 830
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    const-string v0, "  Settings:"

    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6
    const-string v0, "    "

    .line 8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11
    const-string/jumbo v1, "flex_time_short"

    .line 14
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 17
    const-string v1, "="

    .line 19
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 22
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->FLEX_TIME_SHORT:J

    .line 24
    const-string/jumbo v4, "light_after_inactive_to"

    .line 27
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 33
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

    .line 35
    const-string/jumbo v4, "light_idle_to"

    .line 38
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 44
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    .line 46
    const-string/jumbo v4, "light_idle_to_initial_flex"

    .line 49
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 55
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_INITIAL_FLEX:J

    .line 57
    const-string/jumbo v4, "light_max_idle_to_flex"

    .line 60
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 66
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_MAX_FLEX:J

    .line 68
    const-string/jumbo v4, "light_idle_factor"

    .line 71
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 77
    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FACTOR:F

    .line 79
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 82
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 85
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 88
    const-string/jumbo v2, "light_idle_increase_linearly"

    .line 91
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 97
    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_INCREASE_LINEARLY:Z

    .line 99
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 102
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 105
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 108
    const-string/jumbo v2, "light_idle_linear_increase_factor_ms"

    .line 111
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 117
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_LINEAR_INCREASE_FACTOR_MS:J

    .line 119
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 122
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 125
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 128
    const-string/jumbo v2, "light_idle_flex_linear_increase_factor_ms"

    .line 131
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 137
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FLEX_LINEAR_INCREASE_FACTOR_MS:J

    .line 139
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 142
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 145
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 148
    const-string/jumbo v2, "light_max_idle_to"

    .line 151
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 157
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_MAX_IDLE_TIMEOUT:J

    .line 159
    const-string/jumbo v4, "light_idle_maintenance_min_budget"

    .line 162
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 168
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    .line 170
    const-string/jumbo v4, "light_idle_maintenance_max_budget"

    .line 173
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 179
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    .line 181
    const-string/jumbo v4, "min_light_maintenance_time"

    .line 184
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 190
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_LIGHT_MAINTENANCE_TIME:J

    .line 192
    const-string/jumbo v4, "min_deep_maintenance_time"

    .line 195
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 201
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_DEEP_MAINTENANCE_TIME:J

    .line 203
    const-string/jumbo v4, "inactive_to"

    .line 206
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 212
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    .line 214
    const-string/jumbo v4, "sensing_to"

    .line 217
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 223
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    .line 225
    const-string/jumbo v4, "locating_to"

    .line 228
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 234
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    .line 236
    const-string/jumbo v4, "location_accuracy"

    .line 239
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 245
    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    .line 247
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 250
    const-string/jumbo v2, "m"

    .line 253
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 259
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 262
    const-string/jumbo v2, "motion_inactive_to"

    .line 265
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 271
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    .line 273
    const-string/jumbo v4, "motion_inactive_to_flex"

    .line 276
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 282
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT_FLEX:J

    .line 284
    const-string/jumbo v4, "idle_after_inactive_to"

    .line 287
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 293
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    .line 295
    const-string/jumbo v4, "idle_pending_to"

    .line 298
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 304
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    .line 306
    const-string/jumbo v4, "max_idle_pending_to"

    .line 309
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 315
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    .line 317
    const-string/jumbo v4, "idle_pending_factor"

    .line 320
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 326
    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    .line 328
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 331
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 334
    const-string/jumbo v2, "quick_doze_delay_to"

    .line 337
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 343
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->QUICK_DOZE_DELAY_TIMEOUT:J

    .line 345
    const-string/jumbo v4, "idle_to"

    .line 348
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 354
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    .line 356
    const-string/jumbo v4, "max_idle_to"

    .line 359
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 365
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    .line 367
    const-string/jumbo v4, "idle_factor"

    .line 370
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 376
    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    .line 378
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 381
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 384
    const-string/jumbo v2, "min_time_to_alarm"

    .line 387
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 393
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    .line 395
    const-string/jumbo v4, "max_temp_app_allowlist_duration_ms"

    .line 398
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 404
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_ALLOWLIST_DURATION_MS:J

    .line 406
    const-string/jumbo v4, "mms_temp_app_allowlist_duration_ms"

    .line 409
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 415
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    .line 417
    const-string/jumbo v4, "sms_temp_app_allowlist_duration_ms"

    .line 420
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 426
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->SMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    .line 428
    const-string/jumbo v4, "notification_allowlist_duration_ms"

    .line 431
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 437
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->NOTIFICATION_ALLOWLIST_DURATION_MS:J

    .line 439
    const-string/jumbo v4, "wait_for_unlock"

    .line 442
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 448
    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->WAIT_FOR_UNLOCK:Z

    .line 450
    const-string/jumbo v3, "use_window_alarms"

    .line 453
    invoke-static {p1, v2, v0, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    .line 458
    const-string/jumbo v3, "use_mode_manager"

    .line 461
    invoke-static {p1, v2, v0, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->USE_MODE_MANAGER:Z

    .line 466
    const-string/jumbo v3, "skip_sensing"

    .line 469
    invoke-static {p1, v2, v0, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->SKIP_SENSING:Z

    .line 474
    const-string/jumbo v3, "skip_locating"

    .line 477
    invoke-static {p1, v2, v0, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->SKIP_LOCATING:Z

    .line 482
    const-string/jumbo v3, "dna_request_version"

    .line 485
    invoke-static {p1, v2, v0, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->DNA_REQUEST_VERSION:J

    .line 490
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 493
    return-void
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$Constants;->this$0:Lcom/android/server/DeviceIdleController;

    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController$Constants;->updateSettingsConstantLocked()V

    .line 7
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController$Constants;->updateConstantsLocked()V

    .line 10
    monitor-exit p1

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->this$0:Lcom/android/server/DeviceIdleController;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 6
    iput-object p1, v1, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->mProperties:Landroid/provider/DeviceConfig$Properties;

    .line 8
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController$Constants;->updateConstantsLocked()V

    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public final updateConstantsLocked()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mSmallBatteryDevice:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 8
    const-string/jumbo v1, "flex_time_short"

    .line 11
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultFlexTimeShort:J

    .line 13
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 16
    move-result-wide v0

    .line 17
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->FLEX_TIME_SHORT:J

    .line 19
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 21
    const-string/jumbo v1, "light_after_inactive_to"

    .line 24
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleAfterInactiveTimeout:J

    .line 26
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 29
    move-result-wide v0

    .line 30
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

    .line 32
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 34
    const-string/jumbo v1, "light_idle_to"

    .line 37
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeout:J

    .line 39
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 42
    move-result-wide v0

    .line 43
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    .line 45
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 47
    const-string/jumbo v1, "light_idle_to_initial_flex"

    .line 50
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeoutInitialFlex:J

    .line 52
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 55
    move-result-wide v0

    .line 56
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_INITIAL_FLEX:J

    .line 58
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 60
    const-string/jumbo v1, "light_max_idle_to_flex"

    .line 63
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeoutMaxFlex:J

    .line 65
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 68
    move-result-wide v0

    .line 69
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_MAX_FLEX:J

    .line 71
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 73
    const-string/jumbo v1, "light_idle_factor"

    .line 76
    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleFactor:F

    .line 78
    invoke-virtual {v0, v2, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getFloat(FLjava/lang/String;)F

    .line 81
    move-result v0

    .line 82
    const/high16 v1, 0x3f800000    # 1.0f

    .line 84
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    .line 87
    move-result v0

    .line 88
    iput v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FACTOR:F

    .line 90
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 92
    const-string/jumbo v1, "light_idle_increase_linearly"

    .line 95
    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleIncreaseLinearly:Z

    .line 97
    invoke-virtual {v0, v1, v2}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getBoolean(Ljava/lang/String;Z)Z

    .line 100
    move-result v0

    .line 101
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_INCREASE_LINEARLY:Z

    .line 103
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 105
    const-string/jumbo v1, "light_idle_linear_increase_factor_ms"

    .line 108
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleLinearIncreaseFactorMs:J

    .line 110
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 113
    move-result-wide v0

    .line 114
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_LINEAR_INCREASE_FACTOR_MS:J

    .line 116
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 118
    const-string/jumbo v1, "light_idle_flex_linear_increase_factor_ms"

    .line 121
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleFlexLinearIncreaseFactorMs:J

    .line 123
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 126
    move-result-wide v0

    .line 127
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FLEX_LINEAR_INCREASE_FACTOR_MS:J

    .line 129
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 131
    const-string/jumbo v1, "light_max_idle_to"

    .line 134
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightMaxIdleTimeout:J

    .line 136
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 139
    move-result-wide v0

    .line 140
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_MAX_IDLE_TIMEOUT:J

    .line 142
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 144
    const-string/jumbo v1, "light_idle_maintenance_min_budget"

    .line 147
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleMaintenanceMinBudget:J

    .line 149
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 152
    move-result-wide v0

    .line 153
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    .line 155
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 157
    const-string/jumbo v1, "light_idle_maintenance_max_budget"

    .line 160
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleMaintenanceMaxBudget:J

    .line 162
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 165
    move-result-wide v0

    .line 166
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    .line 168
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 170
    const-string/jumbo v1, "min_light_maintenance_time"

    .line 173
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinLightMaintenanceTime:J

    .line 175
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 178
    move-result-wide v0

    .line 179
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_LIGHT_MAINTENANCE_TIME:J

    .line 181
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 183
    const-string/jumbo v1, "min_deep_maintenance_time"

    .line 186
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinDeepMaintenanceTime:J

    .line 188
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 191
    move-result-wide v0

    .line 192
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_DEEP_MAINTENANCE_TIME:J

    .line 194
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mSmallBatteryDevice:Z

    .line 196
    const-wide/32 v1, 0xea60

    .line 199
    if-eqz v0, :cond_1

    .line 201
    move-wide v3, v1

    .line 202
    goto :goto_0

    .line 203
    :cond_1
    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultInactiveTimeout:J

    .line 205
    :goto_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 207
    const-string/jumbo v5, "inactive_to"

    .line 210
    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 213
    move-result-wide v3

    .line 214
    iput-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    .line 216
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 218
    const-string/jumbo v3, "sensing_to"

    .line 221
    iget-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSensingTimeout:J

    .line 223
    invoke-virtual {v0, v4, v5, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 226
    move-result-wide v3

    .line 227
    iput-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    .line 229
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 231
    const-string/jumbo v3, "locating_to"

    .line 234
    iget-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLocatingTimeout:J

    .line 236
    invoke-virtual {v0, v4, v5, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 239
    move-result-wide v3

    .line 240
    iput-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    .line 242
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 244
    const-string/jumbo v3, "location_accuracy"

    .line 247
    iget v4, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLocationAccuracy:F

    .line 249
    invoke-virtual {v0, v4, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getFloat(FLjava/lang/String;)F

    .line 252
    move-result v0

    .line 253
    iput v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    .line 255
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 257
    const-string/jumbo v3, "motion_inactive_to"

    .line 260
    iget-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMotionInactiveTimeout:J

    .line 262
    invoke-virtual {v0, v4, v5, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 265
    move-result-wide v3

    .line 266
    iput-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    .line 268
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 270
    const-string/jumbo v3, "motion_inactive_to_flex"

    .line 273
    iget-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMotionInactiveTimeoutFlex:J

    .line 275
    invoke-virtual {v0, v4, v5, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 278
    move-result-wide v3

    .line 279
    iput-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT_FLEX:J

    .line 281
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mSmallBatteryDevice:Z

    .line 283
    if-eqz v0, :cond_2

    .line 285
    goto :goto_1

    .line 286
    :cond_2
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleAfterInactiveTimeout:J

    .line 288
    :goto_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 290
    const-string/jumbo v3, "idle_after_inactive_to"

    .line 293
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 296
    move-result-wide v0

    .line 297
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    .line 299
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 301
    const-string/jumbo v1, "idle_pending_to"

    .line 304
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdlePendingTimeout:J

    .line 306
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 309
    move-result-wide v0

    .line 310
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    .line 312
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 314
    const-string/jumbo v1, "max_idle_pending_to"

    .line 317
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxIdlePendingTimeout:J

    .line 319
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 322
    move-result-wide v0

    .line 323
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    .line 325
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 327
    const-string/jumbo v1, "idle_pending_factor"

    .line 330
    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdlePendingFactor:F

    .line 332
    invoke-virtual {v0, v2, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getFloat(FLjava/lang/String;)F

    .line 335
    move-result v0

    .line 336
    iput v0, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    .line 338
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 340
    const-string/jumbo v1, "quick_doze_delay_to"

    .line 343
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultQuickDozeDelayTimeout:J

    .line 345
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 348
    move-result-wide v0

    .line 349
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->QUICK_DOZE_DELAY_TIMEOUT:J

    .line 351
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 353
    const-string/jumbo v1, "idle_to"

    .line 356
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleTimeout:J

    .line 358
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 361
    move-result-wide v0

    .line 362
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    .line 364
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 366
    const-string/jumbo v1, "max_idle_to"

    .line 369
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxIdleTimeout:J

    .line 371
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 374
    move-result-wide v0

    .line 375
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    .line 377
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 379
    const-string/jumbo v1, "idle_factor"

    .line 382
    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleFactor:F

    .line 384
    invoke-virtual {v0, v2, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getFloat(FLjava/lang/String;)F

    .line 387
    move-result v0

    .line 388
    iput v0, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    .line 390
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 392
    const-string/jumbo v1, "min_time_to_alarm"

    .line 395
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinTimeToAlarm:J

    .line 397
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 400
    move-result-wide v0

    .line 401
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    .line 403
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 405
    const-string/jumbo v1, "max_temp_app_allowlist_duration_ms"

    .line 408
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxTempAppAllowlistDurationMs:J

    .line 410
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 413
    move-result-wide v0

    .line 414
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_ALLOWLIST_DURATION_MS:J

    .line 416
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 418
    const-string/jumbo v1, "mms_temp_app_allowlist_duration_ms"

    .line 421
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMmsTempAppAllowlistDurationMs:J

    .line 423
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 426
    move-result-wide v0

    .line 427
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    .line 429
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 431
    const-string/jumbo v1, "sms_temp_app_allowlist_duration_ms"

    .line 434
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSmsTempAppAllowlistDurationMs:J

    .line 436
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 439
    move-result-wide v0

    .line 440
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->SMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    .line 442
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 444
    const-string/jumbo v1, "notification_allowlist_duration_ms"

    .line 447
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultNotificationAllowlistDurationMs:J

    .line 449
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 452
    move-result-wide v0

    .line 453
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->NOTIFICATION_ALLOWLIST_DURATION_MS:J

    .line 455
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 457
    const-string/jumbo v1, "wait_for_unlock"

    .line 460
    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultWaitForUnlock:Z

    .line 462
    invoke-virtual {v0, v1, v2}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getBoolean(Ljava/lang/String;Z)Z

    .line 465
    move-result v0

    .line 466
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->WAIT_FOR_UNLOCK:Z

    .line 468
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 470
    const-string/jumbo v1, "use_window_alarms"

    .line 473
    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultUseWindowAlarms:Z

    .line 475
    invoke-virtual {v0, v1, v2}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getBoolean(Ljava/lang/String;Z)Z

    .line 478
    move-result v0

    .line 479
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    .line 481
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 483
    const-string/jumbo v1, "use_mode_manager"

    .line 486
    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultUseModeManager:Z

    .line 488
    invoke-virtual {v0, v1, v2}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getBoolean(Ljava/lang/String;Z)Z

    .line 491
    move-result v0

    .line 492
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->USE_MODE_MANAGER:Z

    .line 494
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 496
    const-string/jumbo v1, "skip_sensing"

    .line 499
    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSkipSensing:Z

    .line 501
    invoke-virtual {v0, v1, v2}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getBoolean(Ljava/lang/String;Z)Z

    .line 504
    move-result v0

    .line 505
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->SKIP_SENSING:Z

    .line 507
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 509
    const-string/jumbo v1, "skip_locating"

    .line 512
    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSkipLocating:Z

    .line 514
    invoke-virtual {v0, v1, v2}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getBoolean(Ljava/lang/String;Z)Z

    .line 517
    move-result v0

    .line 518
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->SKIP_LOCATING:Z

    .line 520
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 522
    const-string/jumbo v1, "dna_request_version"

    .line 525
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultDnaRequestVersion:J

    .line 527
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 530
    move-result-wide v0

    .line 531
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->DNA_REQUEST_VERSION:J

    .line 533
    return-void
.end method

.method public final updateSettingsConstantLocked()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 3
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$Constants;->mResolver:Landroid/content/ContentResolver;

    .line 5
    const-string/jumbo v1, "device_idle_constants"

    .line 8
    invoke-static {p0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 12
    iget-object v0, v0, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->mSettingsParser:Landroid/util/KeyValueListParser;

    .line 14
    invoke-virtual {v0, p0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    const-string v0, "DeviceIdleController"

    .line 21
    const-string v1, "Bad device idle settings"

    .line 23
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    :goto_0
    return-void
.end method
