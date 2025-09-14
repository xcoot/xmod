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

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    iput-object v1, v0, Lcom/android/server/DeviceIdleController$Constants;->this$0:Lcom/android/server/DeviceIdleController;

    .line 8
    .line 9
    move-object/from16 v3, p2

    .line 10
    .line 11
    invoke-direct {v0, v3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 12
    .line 13
    .line 14
    const-wide/32 v3, 0xea60

    .line 15
    .line 16
    .line 17
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultFlexTimeShort:J

    .line 18
    .line 19
    const-wide/32 v5, 0x3a980

    .line 20
    .line 21
    .line 22
    iput-wide v5, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleAfterInactiveTimeout:J

    .line 23
    .line 24
    const-wide/32 v7, 0x493e0

    .line 25
    .line 26
    .line 27
    iput-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeout:J

    .line 28
    .line 29
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeoutInitialFlex:J

    .line 30
    .line 31
    const-wide/32 v9, 0xdbba0

    .line 32
    .line 33
    .line 34
    iput-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeoutMaxFlex:J

    .line 35
    .line 36
    const/high16 v11, 0x40000000    # 2.0f

    .line 37
    .line 38
    iput v11, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleFactor:F

    .line 39
    .line 40
    iput-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleLinearIncreaseFactorMs:J

    .line 41
    .line 42
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleFlexLinearIncreaseFactorMs:J

    .line 43
    .line 44
    iput-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightMaxIdleTimeout:J

    .line 45
    .line 46
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleMaintenanceMinBudget:J

    .line 47
    .line 48
    iput-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleMaintenanceMaxBudget:J

    .line 49
    .line 50
    const-wide/16 v12, 0x1388

    .line 51
    .line 52
    iput-wide v12, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinLightMaintenanceTime:J

    .line 53
    .line 54
    const-wide/16 v14, 0x7530

    .line 55
    .line 56
    iput-wide v14, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinDeepMaintenanceTime:J

    .line 57
    .line 58
    const-wide/32 v12, 0x1b7740

    .line 59
    .line 60
    .line 61
    iput-wide v12, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultInactiveTimeout:J

    .line 62
    .line 63
    iput-wide v5, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSensingTimeout:J

    .line 64
    .line 65
    iput-wide v14, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLocatingTimeout:J

    .line 66
    .line 67
    const/high16 v9, 0x41a00000    # 20.0f

    .line 68
    .line 69
    iput v9, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLocationAccuracy:F

    .line 70
    .line 71
    const-wide/32 v9, 0x927c0

    .line 72
    .line 73
    .line 74
    iput-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMotionInactiveTimeout:J

    .line 75
    .line 76
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMotionInactiveTimeoutFlex:J

    .line 77
    .line 78
    iput-wide v12, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleAfterInactiveTimeout:J

    .line 79
    .line 80
    iput-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdlePendingTimeout:J

    .line 81
    .line 82
    iput-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxIdlePendingTimeout:J

    .line 83
    .line 84
    iput v11, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdlePendingFactor:F

    .line 85
    .line 86
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultQuickDozeDelayTimeout:J

    .line 87
    .line 88
    const-wide/32 v9, 0x36ee80

    .line 89
    .line 90
    .line 91
    iput-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleTimeout:J

    .line 92
    .line 93
    const-wide/32 v9, 0x1499700

    .line 94
    .line 95
    .line 96
    iput-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxIdleTimeout:J

    .line 97
    .line 98
    iput v11, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleFactor:F

    .line 99
    .line 100
    iput-wide v12, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinTimeToAlarm:J

    .line 101
    .line 102
    iput-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxTempAppAllowlistDurationMs:J

    .line 103
    .line 104
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMmsTempAppAllowlistDurationMs:J

    .line 105
    .line 106
    const-wide/16 v9, 0x4e20

    .line 107
    .line 108
    iput-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSmsTempAppAllowlistDurationMs:J

    .line 109
    .line 110
    iput-wide v14, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultNotificationAllowlistDurationMs:J

    .line 111
    .line 112
    const/4 v9, 0x1

    .line 113
    iput-boolean v9, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultWaitForUnlock:Z

    .line 114
    .line 115
    iput-boolean v9, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultUseWindowAlarms:Z

    .line 116
    .line 117
    const/4 v10, 0x0

    .line 118
    iput-boolean v10, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultUseModeManager:Z

    .line 119
    .line 120
    iput-boolean v10, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSkipSensing:Z

    .line 121
    .line 122
    iput-boolean v10, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSkipLocating:Z

    .line 123
    .line 124
    const-wide/16 v9, 0x0

    .line 125
    .line 126
    iput-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultDnaRequestVersion:J

    .line 127
    .line 128
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->FLEX_TIME_SHORT:J

    .line 129
    .line 130
    iput-wide v5, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

    .line 131
    .line 132
    iput-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    .line 133
    .line 134
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_INITIAL_FLEX:J

    .line 135
    .line 136
    const-wide/32 v9, 0xdbba0

    .line 137
    .line 138
    .line 139
    iput-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_MAX_FLEX:J

    .line 140
    .line 141
    iput v11, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FACTOR:F

    .line 142
    .line 143
    iget-boolean v11, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleIncreaseLinearly:Z

    .line 144
    .line 145
    iput-boolean v11, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_INCREASE_LINEARLY:Z

    .line 146
    .line 147
    iput-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_LINEAR_INCREASE_FACTOR_MS:J

    .line 148
    .line 149
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FLEX_LINEAR_INCREASE_FACTOR_MS:J

    .line 150
    .line 151
    iput-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_MAX_IDLE_TIMEOUT:J

    .line 152
    .line 153
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    .line 154
    .line 155
    iput-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    .line 156
    .line 157
    const-wide/16 v9, 0x1388

    .line 158
    .line 159
    iput-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->MIN_LIGHT_MAINTENANCE_TIME:J

    .line 160
    .line 161
    iput-wide v14, v0, Lcom/android/server/DeviceIdleController$Constants;->MIN_DEEP_MAINTENANCE_TIME:J

    .line 162
    .line 163
    iput-wide v12, v0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    .line 164
    .line 165
    iput-wide v5, v0, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    .line 166
    .line 167
    iput-wide v14, v0, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    .line 168
    .line 169
    const/high16 v5, 0x41a00000    # 20.0f

    .line 170
    .line 171
    iput v5, v0, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    .line 172
    .line 173
    const-wide/32 v5, 0x927c0

    .line 174
    .line 175
    .line 176
    iput-wide v5, v0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    .line 177
    .line 178
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT_FLEX:J

    .line 179
    .line 180
    iput-wide v12, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    .line 181
    .line 182
    iput-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    .line 183
    .line 184
    iput-wide v5, v0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    .line 185
    .line 186
    const/high16 v5, 0x40000000    # 2.0f

    .line 187
    .line 188
    iput v5, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    .line 189
    .line 190
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->QUICK_DOZE_DELAY_TIMEOUT:J

    .line 191
    .line 192
    const-wide/32 v9, 0x36ee80

    .line 193
    .line 194
    .line 195
    iput-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    .line 196
    .line 197
    const-wide/32 v9, 0x1499700

    .line 198
    .line 199
    .line 200
    iput-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    .line 201
    .line 202
    iput v5, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    .line 203
    .line 204
    iput-wide v12, v0, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    .line 205
    .line 206
    iput-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_ALLOWLIST_DURATION_MS:J

    .line 207
    .line 208
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->MMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    .line 209
    .line 210
    const-wide/16 v5, 0x4e20

    .line 211
    .line 212
    iput-wide v5, v0, Lcom/android/server/DeviceIdleController$Constants;->SMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    .line 213
    .line 214
    iput-wide v14, v0, Lcom/android/server/DeviceIdleController$Constants;->NOTIFICATION_ALLOWLIST_DURATION_MS:J

    .line 215
    .line 216
    const/4 v5, 0x1

    .line 217
    iput-boolean v5, v0, Lcom/android/server/DeviceIdleController$Constants;->WAIT_FOR_UNLOCK:Z

    .line 218
    .line 219
    iput-boolean v5, v0, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    .line 220
    .line 221
    const/4 v5, 0x0

    .line 222
    iput-boolean v5, v0, Lcom/android/server/DeviceIdleController$Constants;->USE_MODE_MANAGER:Z

    .line 223
    .line 224
    iput-boolean v5, v0, Lcom/android/server/DeviceIdleController$Constants;->SKIP_SENSING:Z

    .line 225
    .line 226
    iput-boolean v5, v0, Lcom/android/server/DeviceIdleController$Constants;->SKIP_LOCATING:Z

    .line 227
    .line 228
    const-wide/16 v5, 0x0

    .line 229
    .line 230
    iput-wide v5, v0, Lcom/android/server/DeviceIdleController$Constants;->DNA_REQUEST_VERSION:J

    .line 231
    .line 232
    new-instance v5, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 233
    .line 234
    invoke-direct {v5}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;-><init>()V

    .line 235
    .line 236
    .line 237
    iput-object v5, v0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 238
    .line 239
    iput-object v2, v0, Lcom/android/server/DeviceIdleController$Constants;->mResolver:Landroid/content/ContentResolver;

    .line 240
    .line 241
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    const v6, 0x10e0189

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 253
    .line 254
    .line 255
    move-result v6

    .line 256
    int-to-long v6, v6

    .line 257
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultFlexTimeShort:J

    .line 258
    .line 259
    const v6, 0x10e0190

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 263
    .line 264
    .line 265
    move-result v6

    .line 266
    int-to-long v6, v6

    .line 267
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleAfterInactiveTimeout:J

    .line 268
    .line 269
    const v6, 0x10e0198

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 273
    .line 274
    .line 275
    move-result v6

    .line 276
    int-to-long v6, v6

    .line 277
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeout:J

    .line 278
    .line 279
    const v6, 0x10e0196

    .line 280
    .line 281
    .line 282
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 283
    .line 284
    .line 285
    move-result v6

    .line 286
    int-to-long v6, v6

    .line 287
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeoutInitialFlex:J

    .line 288
    .line 289
    const v6, 0x10e0197

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 293
    .line 294
    .line 295
    move-result v6

    .line 296
    int-to-long v6, v6

    .line 297
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeoutMaxFlex:J

    .line 298
    .line 299
    const v6, 0x10e0191

    .line 300
    .line 301
    .line 302
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getFloat(I)F

    .line 303
    .line 304
    .line 305
    move-result v6

    .line 306
    iput v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleFactor:F

    .line 307
    .line 308
    const v6, 0x111029f

    .line 309
    .line 310
    .line 311
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 312
    .line 313
    .line 314
    move-result v6

    .line 315
    iput-boolean v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleIncreaseLinearly:Z

    .line 316
    .line 317
    const v6, 0x10e0193

    .line 318
    .line 319
    .line 320
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 321
    .line 322
    .line 323
    move-result v6

    .line 324
    int-to-long v6, v6

    .line 325
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleLinearIncreaseFactorMs:J

    .line 326
    .line 327
    const v6, 0x10e0192

    .line 328
    .line 329
    .line 330
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 331
    .line 332
    .line 333
    move-result v6

    .line 334
    int-to-long v6, v6

    .line 335
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleFlexLinearIncreaseFactorMs:J

    .line 336
    .line 337
    const v6, 0x10e0199

    .line 338
    .line 339
    .line 340
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 341
    .line 342
    .line 343
    move-result v6

    .line 344
    int-to-long v6, v6

    .line 345
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightMaxIdleTimeout:J

    .line 346
    .line 347
    const v6, 0x10e0195

    .line 348
    .line 349
    .line 350
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 351
    .line 352
    .line 353
    move-result v6

    .line 354
    int-to-long v6, v6

    .line 355
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleMaintenanceMinBudget:J

    .line 356
    .line 357
    const v6, 0x10e0194

    .line 358
    .line 359
    .line 360
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 361
    .line 362
    .line 363
    move-result v6

    .line 364
    int-to-long v6, v6

    .line 365
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleMaintenanceMaxBudget:J

    .line 366
    .line 367
    const v6, 0x10e01a0

    .line 368
    .line 369
    .line 370
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 371
    .line 372
    .line 373
    move-result v6

    .line 374
    int-to-long v6, v6

    .line 375
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinLightMaintenanceTime:J

    .line 376
    .line 377
    const v6, 0x10e019f

    .line 378
    .line 379
    .line 380
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 381
    .line 382
    .line 383
    move-result v6

    .line 384
    int-to-long v6, v6

    .line 385
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinDeepMaintenanceTime:J

    .line 386
    .line 387
    const v6, 0x10e018f

    .line 388
    .line 389
    .line 390
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 391
    .line 392
    .line 393
    move-result v6

    .line 394
    int-to-long v6, v6

    .line 395
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultInactiveTimeout:J

    .line 396
    .line 397
    const v6, 0x10e01a7

    .line 398
    .line 399
    .line 400
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 401
    .line 402
    .line 403
    move-result v6

    .line 404
    int-to-long v6, v6

    .line 405
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSensingTimeout:J

    .line 406
    .line 407
    const v6, 0x10e019a

    .line 408
    .line 409
    .line 410
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 411
    .line 412
    .line 413
    move-result v6

    .line 414
    int-to-long v6, v6

    .line 415
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLocatingTimeout:J

    .line 416
    .line 417
    const v6, 0x10e019b

    .line 418
    .line 419
    .line 420
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getFloat(I)F

    .line 421
    .line 422
    .line 423
    move-result v6

    .line 424
    iput v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLocationAccuracy:F

    .line 425
    .line 426
    const v6, 0x10e01a4

    .line 427
    .line 428
    .line 429
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 430
    .line 431
    .line 432
    move-result v6

    .line 433
    int-to-long v6, v6

    .line 434
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMotionInactiveTimeout:J

    .line 435
    .line 436
    const v6, 0x10e01a3

    .line 437
    .line 438
    .line 439
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 440
    .line 441
    .line 442
    move-result v6

    .line 443
    int-to-long v6, v6

    .line 444
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMotionInactiveTimeoutFlex:J

    .line 445
    .line 446
    const v6, 0x10e018a

    .line 447
    .line 448
    .line 449
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 450
    .line 451
    .line 452
    move-result v6

    .line 453
    int-to-long v6, v6

    .line 454
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleAfterInactiveTimeout:J

    .line 455
    .line 456
    const v6, 0x10e018d

    .line 457
    .line 458
    .line 459
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 460
    .line 461
    .line 462
    move-result v6

    .line 463
    int-to-long v6, v6

    .line 464
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdlePendingTimeout:J

    .line 465
    .line 466
    const v6, 0x10e019c

    .line 467
    .line 468
    .line 469
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 470
    .line 471
    .line 472
    move-result v6

    .line 473
    int-to-long v6, v6

    .line 474
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxIdlePendingTimeout:J

    .line 475
    .line 476
    const v6, 0x10e018c

    .line 477
    .line 478
    .line 479
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getFloat(I)F

    .line 480
    .line 481
    .line 482
    move-result v6

    .line 483
    iput v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdlePendingFactor:F

    .line 484
    .line 485
    const v6, 0x10e01a6

    .line 486
    .line 487
    .line 488
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 489
    .line 490
    .line 491
    move-result v6

    .line 492
    int-to-long v6, v6

    .line 493
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultQuickDozeDelayTimeout:J

    .line 494
    .line 495
    const v6, 0x10e018e

    .line 496
    .line 497
    .line 498
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 499
    .line 500
    .line 501
    move-result v6

    .line 502
    int-to-long v6, v6

    .line 503
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleTimeout:J

    .line 504
    .line 505
    const v6, 0x10e019d

    .line 506
    .line 507
    .line 508
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 509
    .line 510
    .line 511
    move-result v6

    .line 512
    int-to-long v6, v6

    .line 513
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxIdleTimeout:J

    .line 514
    .line 515
    const v6, 0x10e018b

    .line 516
    .line 517
    .line 518
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getFloat(I)F

    .line 519
    .line 520
    .line 521
    move-result v6

    .line 522
    iput v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleFactor:F

    .line 523
    .line 524
    const v6, 0x10e01a1

    .line 525
    .line 526
    .line 527
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 528
    .line 529
    .line 530
    move-result v6

    .line 531
    int-to-long v6, v6

    .line 532
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinTimeToAlarm:J

    .line 533
    .line 534
    const v6, 0x10e019e

    .line 535
    .line 536
    .line 537
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 538
    .line 539
    .line 540
    move-result v6

    .line 541
    int-to-long v6, v6

    .line 542
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxTempAppAllowlistDurationMs:J

    .line 543
    .line 544
    const v6, 0x10e01a2

    .line 545
    .line 546
    .line 547
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 548
    .line 549
    .line 550
    move-result v6

    .line 551
    int-to-long v6, v6

    .line 552
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMmsTempAppAllowlistDurationMs:J

    .line 553
    .line 554
    const v6, 0x10e01a8

    .line 555
    .line 556
    .line 557
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 558
    .line 559
    .line 560
    move-result v6

    .line 561
    int-to-long v6, v6

    .line 562
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSmsTempAppAllowlistDurationMs:J

    .line 563
    .line 564
    const v6, 0x10e01a5

    .line 565
    .line 566
    .line 567
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 568
    .line 569
    .line 570
    move-result v6

    .line 571
    int-to-long v6, v6

    .line 572
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultNotificationAllowlistDurationMs:J

    .line 573
    .line 574
    const v6, 0x11102a4

    .line 575
    .line 576
    .line 577
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 578
    .line 579
    .line 580
    move-result v6

    .line 581
    iput-boolean v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultWaitForUnlock:Z

    .line 582
    .line 583
    const v6, 0x11102a3

    .line 584
    .line 585
    .line 586
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 587
    .line 588
    .line 589
    move-result v6

    .line 590
    iput-boolean v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultUseWindowAlarms:Z

    .line 591
    .line 592
    const v6, 0x11102a2

    .line 593
    .line 594
    .line 595
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 596
    .line 597
    .line 598
    move-result v6

    .line 599
    iput-boolean v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultUseModeManager:Z

    .line 600
    .line 601
    const v6, 0x11102a1

    .line 602
    .line 603
    .line 604
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 605
    .line 606
    .line 607
    move-result v6

    .line 608
    iput-boolean v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSkipSensing:Z

    .line 609
    .line 610
    const v6, 0x11102a0

    .line 611
    .line 612
    .line 613
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 614
    .line 615
    .line 616
    move-result v6

    .line 617
    iput-boolean v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSkipLocating:Z

    .line 618
    .line 619
    const v6, 0x10e0188

    .line 620
    .line 621
    .line 622
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 623
    .line 624
    .line 625
    move-result v1

    .line 626
    int-to-long v6, v1

    .line 627
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultDnaRequestVersion:J

    .line 628
    .line 629
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultFlexTimeShort:J

    .line 630
    .line 631
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->FLEX_TIME_SHORT:J

    .line 632
    .line 633
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleAfterInactiveTimeout:J

    .line 634
    .line 635
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

    .line 636
    .line 637
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeout:J

    .line 638
    .line 639
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    .line 640
    .line 641
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeoutInitialFlex:J

    .line 642
    .line 643
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_INITIAL_FLEX:J

    .line 644
    .line 645
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeoutMaxFlex:J

    .line 646
    .line 647
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_MAX_FLEX:J

    .line 648
    .line 649
    iget v1, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleFactor:F

    .line 650
    .line 651
    iput v1, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FACTOR:F

    .line 652
    .line 653
    iget-boolean v1, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleIncreaseLinearly:Z

    .line 654
    .line 655
    iput-boolean v1, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_INCREASE_LINEARLY:Z

    .line 656
    .line 657
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleLinearIncreaseFactorMs:J

    .line 658
    .line 659
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_LINEAR_INCREASE_FACTOR_MS:J

    .line 660
    .line 661
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleFlexLinearIncreaseFactorMs:J

    .line 662
    .line 663
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FLEX_LINEAR_INCREASE_FACTOR_MS:J

    .line 664
    .line 665
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightMaxIdleTimeout:J

    .line 666
    .line 667
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_MAX_IDLE_TIMEOUT:J

    .line 668
    .line 669
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleMaintenanceMinBudget:J

    .line 670
    .line 671
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    .line 672
    .line 673
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleMaintenanceMaxBudget:J

    .line 674
    .line 675
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    .line 676
    .line 677
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinLightMaintenanceTime:J

    .line 678
    .line 679
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->MIN_LIGHT_MAINTENANCE_TIME:J

    .line 680
    .line 681
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinDeepMaintenanceTime:J

    .line 682
    .line 683
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->MIN_DEEP_MAINTENANCE_TIME:J

    .line 684
    .line 685
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultInactiveTimeout:J

    .line 686
    .line 687
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    .line 688
    .line 689
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSensingTimeout:J

    .line 690
    .line 691
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    .line 692
    .line 693
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLocatingTimeout:J

    .line 694
    .line 695
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    .line 696
    .line 697
    iget v1, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLocationAccuracy:F

    .line 698
    .line 699
    iput v1, v0, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    .line 700
    .line 701
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMotionInactiveTimeout:J

    .line 702
    .line 703
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    .line 704
    .line 705
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMotionInactiveTimeoutFlex:J

    .line 706
    .line 707
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT_FLEX:J

    .line 708
    .line 709
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleAfterInactiveTimeout:J

    .line 710
    .line 711
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    .line 712
    .line 713
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdlePendingTimeout:J

    .line 714
    .line 715
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    .line 716
    .line 717
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxIdlePendingTimeout:J

    .line 718
    .line 719
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    .line 720
    .line 721
    iget v1, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdlePendingFactor:F

    .line 722
    .line 723
    iput v1, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    .line 724
    .line 725
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultQuickDozeDelayTimeout:J

    .line 726
    .line 727
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->QUICK_DOZE_DELAY_TIMEOUT:J

    .line 728
    .line 729
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleTimeout:J

    .line 730
    .line 731
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    .line 732
    .line 733
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxIdleTimeout:J

    .line 734
    .line 735
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    .line 736
    .line 737
    iget v1, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleFactor:F

    .line 738
    .line 739
    iput v1, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    .line 740
    .line 741
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinTimeToAlarm:J

    .line 742
    .line 743
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    .line 744
    .line 745
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxTempAppAllowlistDurationMs:J

    .line 746
    .line 747
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_ALLOWLIST_DURATION_MS:J

    .line 748
    .line 749
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMmsTempAppAllowlistDurationMs:J

    .line 750
    .line 751
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->MMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    .line 752
    .line 753
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSmsTempAppAllowlistDurationMs:J

    .line 754
    .line 755
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->SMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    .line 756
    .line 757
    iget-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultNotificationAllowlistDurationMs:J

    .line 758
    .line 759
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->NOTIFICATION_ALLOWLIST_DURATION_MS:J

    .line 760
    .line 761
    iget-boolean v1, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultWaitForUnlock:Z

    .line 762
    .line 763
    iput-boolean v1, v0, Lcom/android/server/DeviceIdleController$Constants;->WAIT_FOR_UNLOCK:Z

    .line 764
    .line 765
    iget-boolean v1, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultUseWindowAlarms:Z

    .line 766
    .line 767
    iput-boolean v1, v0, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    .line 768
    .line 769
    iget-boolean v1, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultUseModeManager:Z

    .line 770
    .line 771
    iput-boolean v1, v0, Lcom/android/server/DeviceIdleController$Constants;->USE_MODE_MANAGER:Z

    .line 772
    .line 773
    iget-boolean v1, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSkipSensing:Z

    .line 774
    .line 775
    iput-boolean v1, v0, Lcom/android/server/DeviceIdleController$Constants;->SKIP_SENSING:Z

    .line 776
    .line 777
    iget-boolean v1, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSkipLocating:Z

    .line 778
    .line 779
    iput-boolean v1, v0, Lcom/android/server/DeviceIdleController$Constants;->SKIP_LOCATING:Z

    .line 780
    .line 781
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->DNA_REQUEST_VERSION:J

    .line 782
    .line 783
    invoke-static {}, Landroid/app/ActivityManager;->isSmallBatteryDevice()Z

    .line 784
    .line 785
    .line 786
    move-result v1

    .line 787
    iput-boolean v1, v0, Lcom/android/server/DeviceIdleController$Constants;->mSmallBatteryDevice:Z

    .line 788
    .line 789
    if-eqz v1, :cond_0

    .line 790
    .line 791
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    .line 792
    .line 793
    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    .line 794
    .line 795
    :cond_0
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 796
    .line 797
    .line 798
    move-result-object v1

    .line 799
    const-string/jumbo v3, "device_idle"

    .line 800
    .line 801
    .line 802
    invoke-static {v3, v1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 803
    .line 804
    .line 805
    const-string/jumbo v1, "device_idle_constants"

    .line 806
    .line 807
    .line 808
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 809
    .line 810
    .line 811
    move-result-object v1

    .line 812
    const/4 v4, 0x0

    .line 813
    invoke-virtual {v2, v1, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 814
    .line 815
    .line 816
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController$Constants;->updateSettingsConstantLocked()V

    .line 817
    .line 818
    .line 819
    new-array v1, v4, [Ljava/lang/String;

    .line 820
    .line 821
    invoke-static {v3, v1}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    .line 822
    .line 823
    .line 824
    move-result-object v1

    .line 825
    iput-object v1, v5, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->mProperties:Landroid/provider/DeviceConfig$Properties;

    .line 826
    .line 827
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController$Constants;->updateConstantsLocked()V

    .line 828
    .line 829
    .line 830
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    const-string v0, "  Settings:"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "    "

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string/jumbo v1, "flex_time_short"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v1, "="

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->FLEX_TIME_SHORT:J

    .line 23
    .line 24
    const-string/jumbo v4, "light_after_inactive_to"

    .line 25
    .line 26
    .line 27
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

    .line 34
    .line 35
    const-string/jumbo v4, "light_idle_to"

    .line 36
    .line 37
    .line 38
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    .line 45
    .line 46
    const-string/jumbo v4, "light_idle_to_initial_flex"

    .line 47
    .line 48
    .line 49
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_INITIAL_FLEX:J

    .line 56
    .line 57
    const-string/jumbo v4, "light_max_idle_to_flex"

    .line 58
    .line 59
    .line 60
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_MAX_FLEX:J

    .line 67
    .line 68
    const-string/jumbo v4, "light_idle_factor"

    .line 69
    .line 70
    .line 71
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FACTOR:F

    .line 78
    .line 79
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const-string/jumbo v2, "light_idle_increase_linearly"

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_INCREASE_LINEARLY:Z

    .line 98
    .line 99
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-string/jumbo v2, "light_idle_linear_increase_factor_ms"

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_LINEAR_INCREASE_FACTOR_MS:J

    .line 118
    .line 119
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    const-string/jumbo v2, "light_idle_flex_linear_increase_factor_ms"

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FLEX_LINEAR_INCREASE_FACTOR_MS:J

    .line 138
    .line 139
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    const-string/jumbo v2, "light_max_idle_to"

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_MAX_IDLE_TIMEOUT:J

    .line 158
    .line 159
    const-string/jumbo v4, "light_idle_maintenance_min_budget"

    .line 160
    .line 161
    .line 162
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    .line 169
    .line 170
    const-string/jumbo v4, "light_idle_maintenance_max_budget"

    .line 171
    .line 172
    .line 173
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    .line 180
    .line 181
    const-string/jumbo v4, "min_light_maintenance_time"

    .line 182
    .line 183
    .line 184
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_LIGHT_MAINTENANCE_TIME:J

    .line 191
    .line 192
    const-string/jumbo v4, "min_deep_maintenance_time"

    .line 193
    .line 194
    .line 195
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_DEEP_MAINTENANCE_TIME:J

    .line 202
    .line 203
    const-string/jumbo v4, "inactive_to"

    .line 204
    .line 205
    .line 206
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    .line 213
    .line 214
    const-string/jumbo v4, "sensing_to"

    .line 215
    .line 216
    .line 217
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    .line 224
    .line 225
    const-string/jumbo v4, "locating_to"

    .line 226
    .line 227
    .line 228
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    .line 235
    .line 236
    const-string/jumbo v4, "location_accuracy"

    .line 237
    .line 238
    .line 239
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    .line 246
    .line 247
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 248
    .line 249
    .line 250
    const-string/jumbo v2, "m"

    .line 251
    .line 252
    .line 253
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    const-string/jumbo v2, "motion_inactive_to"

    .line 263
    .line 264
    .line 265
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    .line 272
    .line 273
    const-string/jumbo v4, "motion_inactive_to_flex"

    .line 274
    .line 275
    .line 276
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT_FLEX:J

    .line 283
    .line 284
    const-string/jumbo v4, "idle_after_inactive_to"

    .line 285
    .line 286
    .line 287
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    .line 294
    .line 295
    const-string/jumbo v4, "idle_pending_to"

    .line 296
    .line 297
    .line 298
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    .line 305
    .line 306
    const-string/jumbo v4, "max_idle_pending_to"

    .line 307
    .line 308
    .line 309
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    .line 316
    .line 317
    const-string/jumbo v4, "idle_pending_factor"

    .line 318
    .line 319
    .line 320
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    .line 327
    .line 328
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    const-string/jumbo v2, "quick_doze_delay_to"

    .line 335
    .line 336
    .line 337
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->QUICK_DOZE_DELAY_TIMEOUT:J

    .line 344
    .line 345
    const-string/jumbo v4, "idle_to"

    .line 346
    .line 347
    .line 348
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    .line 355
    .line 356
    const-string/jumbo v4, "max_idle_to"

    .line 357
    .line 358
    .line 359
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    .line 366
    .line 367
    const-string/jumbo v4, "idle_factor"

    .line 368
    .line 369
    .line 370
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    .line 377
    .line 378
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    const-string/jumbo v2, "min_time_to_alarm"

    .line 385
    .line 386
    .line 387
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    .line 394
    .line 395
    const-string/jumbo v4, "max_temp_app_allowlist_duration_ms"

    .line 396
    .line 397
    .line 398
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_ALLOWLIST_DURATION_MS:J

    .line 405
    .line 406
    const-string/jumbo v4, "mms_temp_app_allowlist_duration_ms"

    .line 407
    .line 408
    .line 409
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    .line 416
    .line 417
    const-string/jumbo v4, "sms_temp_app_allowlist_duration_ms"

    .line 418
    .line 419
    .line 420
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->SMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    .line 427
    .line 428
    const-string/jumbo v4, "notification_allowlist_duration_ms"

    .line 429
    .line 430
    .line 431
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->NOTIFICATION_ALLOWLIST_DURATION_MS:J

    .line 438
    .line 439
    const-string/jumbo v4, "wait_for_unlock"

    .line 440
    .line 441
    .line 442
    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->WAIT_FOR_UNLOCK:Z

    .line 449
    .line 450
    const-string/jumbo v3, "use_window_alarms"

    .line 451
    .line 452
    .line 453
    invoke-static {p1, v2, v0, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    .line 457
    .line 458
    const-string/jumbo v3, "use_mode_manager"

    .line 459
    .line 460
    .line 461
    invoke-static {p1, v2, v0, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->USE_MODE_MANAGER:Z

    .line 465
    .line 466
    const-string/jumbo v3, "skip_sensing"

    .line 467
    .line 468
    .line 469
    invoke-static {p1, v2, v0, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->SKIP_SENSING:Z

    .line 473
    .line 474
    const-string/jumbo v3, "skip_locating"

    .line 475
    .line 476
    .line 477
    invoke-static {p1, v2, v0, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->SKIP_LOCATING:Z

    .line 481
    .line 482
    const-string/jumbo v3, "dna_request_version"

    .line 483
    .line 484
    .line 485
    invoke-static {p1, v2, v0, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->DNA_REQUEST_VERSION:J

    .line 489
    .line 490
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 491
    .line 492
    .line 493
    return-void
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$Constants;->this$0:Lcom/android/server/DeviceIdleController;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController$Constants;->updateSettingsConstantLocked()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController$Constants;->updateConstantsLocked()V

    .line 8
    .line 9
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

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 5
    .line 6
    iput-object p1, v1, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->mProperties:Landroid/provider/DeviceConfig$Properties;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController$Constants;->updateConstantsLocked()V

    .line 9
    .line 10
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

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 7
    .line 8
    const-string/jumbo v1, "flex_time_short"

    .line 9
    .line 10
    .line 11
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultFlexTimeShort:J

    .line 12
    .line 13
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->FLEX_TIME_SHORT:J

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 20
    .line 21
    const-string/jumbo v1, "light_after_inactive_to"

    .line 22
    .line 23
    .line 24
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleAfterInactiveTimeout:J

    .line 25
    .line 26
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 33
    .line 34
    const-string/jumbo v1, "light_idle_to"

    .line 35
    .line 36
    .line 37
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeout:J

    .line 38
    .line 39
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 46
    .line 47
    const-string/jumbo v1, "light_idle_to_initial_flex"

    .line 48
    .line 49
    .line 50
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeoutInitialFlex:J

    .line 51
    .line 52
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_INITIAL_FLEX:J

    .line 57
    .line 58
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 59
    .line 60
    const-string/jumbo v1, "light_max_idle_to_flex"

    .line 61
    .line 62
    .line 63
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeoutMaxFlex:J

    .line 64
    .line 65
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 66
    .line 67
    .line 68
    move-result-wide v0

    .line 69
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_MAX_FLEX:J

    .line 70
    .line 71
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 72
    .line 73
    const-string/jumbo v1, "light_idle_factor"

    .line 74
    .line 75
    .line 76
    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleFactor:F

    .line 77
    .line 78
    invoke-virtual {v0, v2, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getFloat(FLjava/lang/String;)F

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    const/high16 v1, 0x3f800000    # 1.0f

    .line 83
    .line 84
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    iput v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FACTOR:F

    .line 89
    .line 90
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 91
    .line 92
    const-string/jumbo v1, "light_idle_increase_linearly"

    .line 93
    .line 94
    .line 95
    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleIncreaseLinearly:Z

    .line 96
    .line 97
    invoke-virtual {v0, v1, v2}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getBoolean(Ljava/lang/String;Z)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_INCREASE_LINEARLY:Z

    .line 102
    .line 103
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 104
    .line 105
    const-string/jumbo v1, "light_idle_linear_increase_factor_ms"

    .line 106
    .line 107
    .line 108
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleLinearIncreaseFactorMs:J

    .line 109
    .line 110
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 111
    .line 112
    .line 113
    move-result-wide v0

    .line 114
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_LINEAR_INCREASE_FACTOR_MS:J

    .line 115
    .line 116
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 117
    .line 118
    const-string/jumbo v1, "light_idle_flex_linear_increase_factor_ms"

    .line 119
    .line 120
    .line 121
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleFlexLinearIncreaseFactorMs:J

    .line 122
    .line 123
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 124
    .line 125
    .line 126
    move-result-wide v0

    .line 127
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FLEX_LINEAR_INCREASE_FACTOR_MS:J

    .line 128
    .line 129
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 130
    .line 131
    const-string/jumbo v1, "light_max_idle_to"

    .line 132
    .line 133
    .line 134
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightMaxIdleTimeout:J

    .line 135
    .line 136
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 137
    .line 138
    .line 139
    move-result-wide v0

    .line 140
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_MAX_IDLE_TIMEOUT:J

    .line 141
    .line 142
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 143
    .line 144
    const-string/jumbo v1, "light_idle_maintenance_min_budget"

    .line 145
    .line 146
    .line 147
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleMaintenanceMinBudget:J

    .line 148
    .line 149
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 150
    .line 151
    .line 152
    move-result-wide v0

    .line 153
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    .line 154
    .line 155
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 156
    .line 157
    const-string/jumbo v1, "light_idle_maintenance_max_budget"

    .line 158
    .line 159
    .line 160
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleMaintenanceMaxBudget:J

    .line 161
    .line 162
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 163
    .line 164
    .line 165
    move-result-wide v0

    .line 166
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    .line 167
    .line 168
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 169
    .line 170
    const-string/jumbo v1, "min_light_maintenance_time"

    .line 171
    .line 172
    .line 173
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinLightMaintenanceTime:J

    .line 174
    .line 175
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 176
    .line 177
    .line 178
    move-result-wide v0

    .line 179
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_LIGHT_MAINTENANCE_TIME:J

    .line 180
    .line 181
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 182
    .line 183
    const-string/jumbo v1, "min_deep_maintenance_time"

    .line 184
    .line 185
    .line 186
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinDeepMaintenanceTime:J

    .line 187
    .line 188
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 189
    .line 190
    .line 191
    move-result-wide v0

    .line 192
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_DEEP_MAINTENANCE_TIME:J

    .line 193
    .line 194
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mSmallBatteryDevice:Z

    .line 195
    .line 196
    const-wide/32 v1, 0xea60

    .line 197
    .line 198
    .line 199
    if-eqz v0, :cond_1

    .line 200
    .line 201
    move-wide v3, v1

    .line 202
    goto :goto_0

    .line 203
    :cond_1
    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultInactiveTimeout:J

    .line 204
    .line 205
    :goto_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 206
    .line 207
    const-string/jumbo v5, "inactive_to"

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 211
    .line 212
    .line 213
    move-result-wide v3

    .line 214
    iput-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    .line 215
    .line 216
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 217
    .line 218
    const-string/jumbo v3, "sensing_to"

    .line 219
    .line 220
    .line 221
    iget-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSensingTimeout:J

    .line 222
    .line 223
    invoke-virtual {v0, v4, v5, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 224
    .line 225
    .line 226
    move-result-wide v3

    .line 227
    iput-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    .line 228
    .line 229
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 230
    .line 231
    const-string/jumbo v3, "locating_to"

    .line 232
    .line 233
    .line 234
    iget-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLocatingTimeout:J

    .line 235
    .line 236
    invoke-virtual {v0, v4, v5, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 237
    .line 238
    .line 239
    move-result-wide v3

    .line 240
    iput-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    .line 241
    .line 242
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 243
    .line 244
    const-string/jumbo v3, "location_accuracy"

    .line 245
    .line 246
    .line 247
    iget v4, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLocationAccuracy:F

    .line 248
    .line 249
    invoke-virtual {v0, v4, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getFloat(FLjava/lang/String;)F

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    iput v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    .line 254
    .line 255
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 256
    .line 257
    const-string/jumbo v3, "motion_inactive_to"

    .line 258
    .line 259
    .line 260
    iget-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMotionInactiveTimeout:J

    .line 261
    .line 262
    invoke-virtual {v0, v4, v5, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 263
    .line 264
    .line 265
    move-result-wide v3

    .line 266
    iput-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    .line 267
    .line 268
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 269
    .line 270
    const-string/jumbo v3, "motion_inactive_to_flex"

    .line 271
    .line 272
    .line 273
    iget-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMotionInactiveTimeoutFlex:J

    .line 274
    .line 275
    invoke-virtual {v0, v4, v5, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 276
    .line 277
    .line 278
    move-result-wide v3

    .line 279
    iput-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT_FLEX:J

    .line 280
    .line 281
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mSmallBatteryDevice:Z

    .line 282
    .line 283
    if-eqz v0, :cond_2

    .line 284
    .line 285
    goto :goto_1

    .line 286
    :cond_2
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleAfterInactiveTimeout:J

    .line 287
    .line 288
    :goto_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 289
    .line 290
    const-string/jumbo v3, "idle_after_inactive_to"

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 294
    .line 295
    .line 296
    move-result-wide v0

    .line 297
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    .line 298
    .line 299
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 300
    .line 301
    const-string/jumbo v1, "idle_pending_to"

    .line 302
    .line 303
    .line 304
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdlePendingTimeout:J

    .line 305
    .line 306
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 307
    .line 308
    .line 309
    move-result-wide v0

    .line 310
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    .line 311
    .line 312
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 313
    .line 314
    const-string/jumbo v1, "max_idle_pending_to"

    .line 315
    .line 316
    .line 317
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxIdlePendingTimeout:J

    .line 318
    .line 319
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 320
    .line 321
    .line 322
    move-result-wide v0

    .line 323
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    .line 324
    .line 325
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 326
    .line 327
    const-string/jumbo v1, "idle_pending_factor"

    .line 328
    .line 329
    .line 330
    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdlePendingFactor:F

    .line 331
    .line 332
    invoke-virtual {v0, v2, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getFloat(FLjava/lang/String;)F

    .line 333
    .line 334
    .line 335
    move-result v0

    .line 336
    iput v0, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    .line 337
    .line 338
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 339
    .line 340
    const-string/jumbo v1, "quick_doze_delay_to"

    .line 341
    .line 342
    .line 343
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultQuickDozeDelayTimeout:J

    .line 344
    .line 345
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 346
    .line 347
    .line 348
    move-result-wide v0

    .line 349
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->QUICK_DOZE_DELAY_TIMEOUT:J

    .line 350
    .line 351
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 352
    .line 353
    const-string/jumbo v1, "idle_to"

    .line 354
    .line 355
    .line 356
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleTimeout:J

    .line 357
    .line 358
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 359
    .line 360
    .line 361
    move-result-wide v0

    .line 362
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    .line 363
    .line 364
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 365
    .line 366
    const-string/jumbo v1, "max_idle_to"

    .line 367
    .line 368
    .line 369
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxIdleTimeout:J

    .line 370
    .line 371
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 372
    .line 373
    .line 374
    move-result-wide v0

    .line 375
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    .line 376
    .line 377
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 378
    .line 379
    const-string/jumbo v1, "idle_factor"

    .line 380
    .line 381
    .line 382
    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleFactor:F

    .line 383
    .line 384
    invoke-virtual {v0, v2, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getFloat(FLjava/lang/String;)F

    .line 385
    .line 386
    .line 387
    move-result v0

    .line 388
    iput v0, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    .line 389
    .line 390
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 391
    .line 392
    const-string/jumbo v1, "min_time_to_alarm"

    .line 393
    .line 394
    .line 395
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinTimeToAlarm:J

    .line 396
    .line 397
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 398
    .line 399
    .line 400
    move-result-wide v0

    .line 401
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    .line 402
    .line 403
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 404
    .line 405
    const-string/jumbo v1, "max_temp_app_allowlist_duration_ms"

    .line 406
    .line 407
    .line 408
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxTempAppAllowlistDurationMs:J

    .line 409
    .line 410
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 411
    .line 412
    .line 413
    move-result-wide v0

    .line 414
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_ALLOWLIST_DURATION_MS:J

    .line 415
    .line 416
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 417
    .line 418
    const-string/jumbo v1, "mms_temp_app_allowlist_duration_ms"

    .line 419
    .line 420
    .line 421
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMmsTempAppAllowlistDurationMs:J

    .line 422
    .line 423
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 424
    .line 425
    .line 426
    move-result-wide v0

    .line 427
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    .line 428
    .line 429
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 430
    .line 431
    const-string/jumbo v1, "sms_temp_app_allowlist_duration_ms"

    .line 432
    .line 433
    .line 434
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSmsTempAppAllowlistDurationMs:J

    .line 435
    .line 436
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 437
    .line 438
    .line 439
    move-result-wide v0

    .line 440
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->SMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    .line 441
    .line 442
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 443
    .line 444
    const-string/jumbo v1, "notification_allowlist_duration_ms"

    .line 445
    .line 446
    .line 447
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultNotificationAllowlistDurationMs:J

    .line 448
    .line 449
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 450
    .line 451
    .line 452
    move-result-wide v0

    .line 453
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->NOTIFICATION_ALLOWLIST_DURATION_MS:J

    .line 454
    .line 455
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 456
    .line 457
    const-string/jumbo v1, "wait_for_unlock"

    .line 458
    .line 459
    .line 460
    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultWaitForUnlock:Z

    .line 461
    .line 462
    invoke-virtual {v0, v1, v2}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getBoolean(Ljava/lang/String;Z)Z

    .line 463
    .line 464
    .line 465
    move-result v0

    .line 466
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->WAIT_FOR_UNLOCK:Z

    .line 467
    .line 468
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 469
    .line 470
    const-string/jumbo v1, "use_window_alarms"

    .line 471
    .line 472
    .line 473
    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultUseWindowAlarms:Z

    .line 474
    .line 475
    invoke-virtual {v0, v1, v2}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getBoolean(Ljava/lang/String;Z)Z

    .line 476
    .line 477
    .line 478
    move-result v0

    .line 479
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    .line 480
    .line 481
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 482
    .line 483
    const-string/jumbo v1, "use_mode_manager"

    .line 484
    .line 485
    .line 486
    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultUseModeManager:Z

    .line 487
    .line 488
    invoke-virtual {v0, v1, v2}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getBoolean(Ljava/lang/String;Z)Z

    .line 489
    .line 490
    .line 491
    move-result v0

    .line 492
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->USE_MODE_MANAGER:Z

    .line 493
    .line 494
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 495
    .line 496
    const-string/jumbo v1, "skip_sensing"

    .line 497
    .line 498
    .line 499
    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSkipSensing:Z

    .line 500
    .line 501
    invoke-virtual {v0, v1, v2}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getBoolean(Ljava/lang/String;Z)Z

    .line 502
    .line 503
    .line 504
    move-result v0

    .line 505
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->SKIP_SENSING:Z

    .line 506
    .line 507
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 508
    .line 509
    const-string/jumbo v1, "skip_locating"

    .line 510
    .line 511
    .line 512
    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSkipLocating:Z

    .line 513
    .line 514
    invoke-virtual {v0, v1, v2}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getBoolean(Ljava/lang/String;Z)Z

    .line 515
    .line 516
    .line 517
    move-result v0

    .line 518
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->SKIP_LOCATING:Z

    .line 519
    .line 520
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 521
    .line 522
    const-string/jumbo v1, "dna_request_version"

    .line 523
    .line 524
    .line 525
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultDnaRequestVersion:J

    .line 526
    .line 527
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->getLong(JLjava/lang/String;)J

    .line 528
    .line 529
    .line 530
    move-result-wide v0

    .line 531
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->DNA_REQUEST_VERSION:J

    .line 532
    .line 533
    return-void
.end method

.method public final updateSettingsConstantLocked()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$Constants;->mResolver:Landroid/content/ContentResolver;

    .line 4
    .line 5
    const-string/jumbo v1, "device_idle_constants"

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    iget-object v0, v0, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->mSettingsParser:Landroid/util/KeyValueListParser;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    const-string v0, "DeviceIdleController"

    .line 20
    .line 21
    const-string v1, "Bad device idle settings"

    .line 22
    .line 23
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method
