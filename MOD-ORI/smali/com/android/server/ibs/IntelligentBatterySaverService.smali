.class public final Lcom/android/server/ibs/IntelligentBatterySaverService;
.super Landroid/os/IIntelligentBatterySaverService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static mIBSEnable:Z = false


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandlerThread:Landroid/os/HandlerThread;

.field public final mIBSDexoptManager:Lcom/android/server/ibs/IntelligentBatterySaverDexoptManager;

.field public final mIBSFastDrainPolicy:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

.field public final mIBSGoogleAppPolicy:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

.field public final mIBSLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

.field public final mIBSQuickDim:Lcom/android/server/ibs/sqd/IbsQuickDim;

.field public final mIBSScpmManager:Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;

.field public final mServiceHandler:Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;

.field public final mSleepModeLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

.field public final mSleepModePolicyController:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 13

    .line 1
    invoke-direct {p0}, Landroid/os/IIntelligentBatterySaverService$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const-string/jumbo v0, "sys.config.ibs.enable"

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sput-boolean v0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSEnable:Z

    .line 18
    .line 19
    new-instance v0, Landroid/os/HandlerThread;

    .line 20
    .line 21
    const-string v1, "IntelligentBatterySaverService"

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 30
    .line 31
    .line 32
    sget-boolean v1, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSEnable:Z

    .line 33
    .line 34
    const/4 v3, -0x1

    .line 35
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    const/4 v5, 0x2

    .line 40
    const/4 v6, 0x0

    .line 41
    const/4 v7, 0x0

    .line 42
    if-eqz v1, :cond_5

    .line 43
    .line 44
    new-instance v1, Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    invoke-direct {v1, p0, v8}, Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverService;Landroid/os/Looper;)V

    .line 51
    .line 52
    .line 53
    iput-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mServiceHandler:Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;

    .line 54
    .line 55
    const-class v8, Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    .line 56
    .line 57
    monitor-enter v8

    .line 58
    :try_start_0
    sget-object v9, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->sInstance:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    .line 59
    .line 60
    if-nez v9, :cond_0

    .line 61
    .line 62
    new-instance v9, Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    .line 63
    .line 64
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-boolean v7, v9, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->mIsUsed:Z

    .line 68
    .line 69
    new-instance v10, Landroid/util/LocalLog;

    .line 70
    .line 71
    const/16 v11, 0xbb8

    .line 72
    .line 73
    invoke-direct {v10, v11}, Landroid/util/LocalLog;-><init>(I)V

    .line 74
    .line 75
    .line 76
    iput-object v10, v9, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->mIBSLog:Landroid/util/LocalLog;

    .line 77
    .line 78
    sput-object v9, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->sInstance:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    goto/16 :goto_3

    .line 83
    .line 84
    :cond_0
    :goto_0
    sget-object v9, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->sInstance:Lcom/android/server/ibs/IntelligentBatterySaverLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .line 86
    monitor-exit v8

    .line 87
    iput-object v9, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    .line 88
    .line 89
    new-instance v8, Lcom/android/server/ibs/IntelligentBatterySaverSurvey;

    .line 90
    .line 91
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 95
    .line 96
    .line 97
    move-result-object v10

    .line 98
    const-string v11, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    .line 99
    .line 100
    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result v10

    .line 104
    iput-boolean v10, v8, Lcom/android/server/ibs/IntelligentBatterySaverSurvey;->mBigdataEnable:Z

    .line 105
    .line 106
    iput-object p1, v8, Lcom/android/server/ibs/IntelligentBatterySaverSurvey;->mContext:Landroid/content/Context;

    .line 107
    .line 108
    new-instance v10, Lcom/android/server/ibs/IntelligentBatterySaverGather;

    .line 109
    .line 110
    invoke-direct {v10, p1, p0}, Lcom/android/server/ibs/IntelligentBatterySaverGather;-><init>(Landroid/content/Context;Lcom/android/server/ibs/IntelligentBatterySaverService;)V

    .line 111
    .line 112
    .line 113
    new-instance v11, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;

    .line 114
    .line 115
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 116
    .line 117
    .line 118
    new-instance v12, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$$ExternalSyntheticLambda0;

    .line 119
    .line 120
    invoke-direct {v12, v11}, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;)V

    .line 121
    .line 122
    .line 123
    iput-object v12, v11, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->mRunnable:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$$ExternalSyntheticLambda0;

    .line 124
    .line 125
    iput-object p1, v11, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->mContext:Landroid/content/Context;

    .line 126
    .line 127
    iput-object v1, v11, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->mHandler:Landroid/os/Handler;

    .line 128
    .line 129
    iput-object p0, v11, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->mIBSService:Lcom/android/server/ibs/IntelligentBatterySaverService;

    .line 130
    .line 131
    new-instance v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 132
    .line 133
    invoke-direct {v1, p1, v0, v9, v8}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;Lcom/android/server/ibs/IntelligentBatterySaverLogger;Lcom/android/server/ibs/IntelligentBatterySaverSurvey;)V

    .line 134
    .line 135
    .line 136
    iput-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSFastDrainPolicy:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 137
    .line 138
    new-instance v8, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

    .line 139
    .line 140
    invoke-direct {v8, p1, v0}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;)V

    .line 141
    .line 142
    .line 143
    iput-object v8, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSGoogleAppPolicy:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

    .line 144
    .line 145
    invoke-static {p1}, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->getInstance(Landroid/content/Context;)Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSScpmManager:Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;

    .line 150
    .line 151
    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;

    .line 152
    .line 153
    const/4 v9, 0x1

    .line 154
    invoke-direct {v0, p0, v9}, Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverService;I)V

    .line 155
    .line 156
    .line 157
    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;

    .line 158
    .line 159
    const/4 v9, 0x0

    .line 160
    invoke-direct {v0, p0, v9}, Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverService;I)V

    .line 161
    .line 162
    .line 163
    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverGather$IntelligentBatterySaverGatherReceiver;

    .line 164
    .line 165
    invoke-direct {v0, v10}, Lcom/android/server/ibs/IntelligentBatterySaverGather$IntelligentBatterySaverGatherReceiver;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverGather;)V

    .line 166
    .line 167
    .line 168
    iput-object v0, v10, Lcom/android/server/ibs/IntelligentBatterySaverGather;->mReceiver:Lcom/android/server/ibs/IntelligentBatterySaverGather$IntelligentBatterySaverGatherReceiver;

    .line 169
    .line 170
    new-instance v0, Landroid/content/IntentFilter;

    .line 171
    .line 172
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 173
    .line 174
    .line 175
    iput-object v0, v10, Lcom/android/server/ibs/IntelligentBatterySaverGather;->mFilter:Landroid/content/IntentFilter;

    .line 176
    .line 177
    const-string v9, "android.intent.action.BATTERY_CHANGED"

    .line 178
    .line 179
    invoke-virtual {v0, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    iget-object v0, v10, Lcom/android/server/ibs/IntelligentBatterySaverGather;->mReceiver:Lcom/android/server/ibs/IntelligentBatterySaverGather$IntelligentBatterySaverGatherReceiver;

    .line 183
    .line 184
    iget-object v9, v10, Lcom/android/server/ibs/IntelligentBatterySaverGather;->mFilter:Landroid/content/IntentFilter;

    .line 185
    .line 186
    invoke-virtual {p1, v0, v9, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 187
    .line 188
    .line 189
    const-string/jumbo v0, "display"

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 197
    .line 198
    iget-object v9, v10, Lcom/android/server/ibs/IntelligentBatterySaverGather;->mDisplayListener:Lcom/android/server/ibs/IntelligentBatterySaverGather$1;

    .line 199
    .line 200
    invoke-virtual {v0, v9, v6}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 201
    .line 202
    .line 203
    iget-object v0, v11, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->mSettingsObserver:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$SettingsObserver;

    .line 204
    .line 205
    if-nez v0, :cond_1

    .line 206
    .line 207
    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$SettingsObserver;

    .line 208
    .line 209
    invoke-direct {v0, v11}, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$SettingsObserver;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;)V

    .line 210
    .line 211
    .line 212
    iput-object v0, v11, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->mSettingsObserver:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$SettingsObserver;

    .line 213
    .line 214
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    const-string/jumbo v9, "ibs_switch"

    .line 219
    .line 220
    .line 221
    invoke-static {v9}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 222
    .line 223
    .line 224
    move-result-object v9

    .line 225
    invoke-static {v9}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 226
    .line 227
    .line 228
    move-result-object v9

    .line 229
    new-instance v10, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$$ExternalSyntheticLambda1;

    .line 230
    .line 231
    const/4 v12, 0x0

    .line 232
    invoke-direct {v10, v11, v0, v12}, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;Landroid/content/ContentResolver;I)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v9, v10}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 236
    .line 237
    .line 238
    const-string/jumbo v9, "ibs_start_hour"

    .line 239
    .line 240
    .line 241
    invoke-static {v9}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 242
    .line 243
    .line 244
    move-result-object v9

    .line 245
    invoke-static {v9}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 246
    .line 247
    .line 248
    move-result-object v9

    .line 249
    new-instance v10, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$$ExternalSyntheticLambda1;

    .line 250
    .line 251
    const/4 v12, 0x1

    .line 252
    invoke-direct {v10, v11, v0, v12}, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;Landroid/content/ContentResolver;I)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v9, v10}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 256
    .line 257
    .line 258
    const-string/jumbo v9, "ibs_start_minute"

    .line 259
    .line 260
    .line 261
    invoke-static {v9}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 262
    .line 263
    .line 264
    move-result-object v9

    .line 265
    invoke-static {v9}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 266
    .line 267
    .line 268
    move-result-object v9

    .line 269
    new-instance v10, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$$ExternalSyntheticLambda1;

    .line 270
    .line 271
    const/4 v12, 0x2

    .line 272
    invoke-direct {v10, v11, v0, v12}, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;Landroid/content/ContentResolver;I)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v9, v10}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 276
    .line 277
    .line 278
    const-string/jumbo v9, "ibs_end_hour"

    .line 279
    .line 280
    .line 281
    invoke-static {v9}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 282
    .line 283
    .line 284
    move-result-object v9

    .line 285
    invoke-static {v9}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 286
    .line 287
    .line 288
    move-result-object v9

    .line 289
    new-instance v10, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$$ExternalSyntheticLambda1;

    .line 290
    .line 291
    const/4 v12, 0x3

    .line 292
    invoke-direct {v10, v11, v0, v12}, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;Landroid/content/ContentResolver;I)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v9, v10}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 296
    .line 297
    .line 298
    const-string/jumbo v9, "ibs_end_minute"

    .line 299
    .line 300
    .line 301
    invoke-static {v9}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 302
    .line 303
    .line 304
    move-result-object v9

    .line 305
    invoke-static {v9}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 306
    .line 307
    .line 308
    move-result-object v9

    .line 309
    new-instance v10, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$$ExternalSyntheticLambda1;

    .line 310
    .line 311
    const/4 v12, 0x4

    .line 312
    invoke-direct {v10, v11, v0, v12}, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;Landroid/content/ContentResolver;I)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v9, v10}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 316
    .line 317
    .line 318
    :cond_1
    invoke-virtual {v11}, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->updateSwitchSetting()V

    .line 319
    .line 320
    .line 321
    iget-object v0, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    .line 322
    .line 323
    const-string/jumbo v9, "display"

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 331
    .line 332
    iput-object v0, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 333
    .line 334
    iget-object v0, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    .line 335
    .line 336
    const-string/jumbo v9, "sensor"

    .line 337
    .line 338
    .line 339
    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    check-cast v0, Landroid/hardware/SensorManager;

    .line 344
    .line 345
    iput-object v0, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSensorManager:Landroid/hardware/SensorManager;

    .line 346
    .line 347
    iget-object v0, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    .line 348
    .line 349
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    const v9, 0x10e003d

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getInteger(I)I

    .line 357
    .line 358
    .line 359
    move-result v0

    .line 360
    if-lez v0, :cond_2

    .line 361
    .line 362
    iget-object v9, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSensorManager:Landroid/hardware/SensorManager;

    .line 363
    .line 364
    invoke-virtual {v9, v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    iput-object v0, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mMotionSensor:Landroid/hardware/Sensor;

    .line 369
    .line 370
    :cond_2
    iget-object v0, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mMotionSensor:Landroid/hardware/Sensor;

    .line 371
    .line 372
    if-nez v0, :cond_3

    .line 373
    .line 374
    iget-object v0, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    .line 375
    .line 376
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    const v9, 0x111003d

    .line 381
    .line 382
    .line 383
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 384
    .line 385
    .line 386
    move-result v0

    .line 387
    if-eqz v0, :cond_3

    .line 388
    .line 389
    iget-object v0, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSensorManager:Landroid/hardware/SensorManager;

    .line 390
    .line 391
    const/16 v9, 0x1a

    .line 392
    .line 393
    invoke-virtual {v0, v9, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    iput-object v0, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mMotionSensor:Landroid/hardware/Sensor;

    .line 398
    .line 399
    :cond_3
    iget-object v0, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mMotionSensor:Landroid/hardware/Sensor;

    .line 400
    .line 401
    if-nez v0, :cond_4

    .line 402
    .line 403
    iget-object v0, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSensorManager:Landroid/hardware/SensorManager;

    .line 404
    .line 405
    const/16 v9, 0x11

    .line 406
    .line 407
    invoke-virtual {v0, v9, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    iput-object v0, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mMotionSensor:Landroid/hardware/Sensor;

    .line 412
    .line 413
    :cond_4
    const-string/jumbo v0, "com.android.vending"

    .line 414
    .line 415
    .line 416
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    const-string v9, "NameNotFoundException"

    .line 421
    .line 422
    const-string v10, "IntelligentBatterySaverGoogleAppPolicy"

    .line 423
    .line 424
    new-instance v11, Ljava/lang/StringBuilder;

    .line 425
    .line 426
    const-string v12, "addPackageNameGoogleAppsList pkg= com.android.vendingvalue = "

    .line 427
    .line 428
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v11

    .line 438
    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    .line 440
    .line 441
    iget-object v10, v8, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mLockGoogleAppsList:Ljava/lang/Object;

    .line 442
    .line 443
    monitor-enter v10

    .line 444
    :try_start_1
    iget-object v11, v8, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mContext:Landroid/content/Context;

    .line 445
    .line 446
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 447
    .line 448
    .line 449
    move-result-object v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 450
    :try_start_2
    iget-object v12, v8, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mGoogleAppsList:Landroid/util/ArrayMap;

    .line 451
    .line 452
    invoke-virtual {v11, v0, v7}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    .line 453
    .line 454
    .line 455
    move-result v0

    .line 456
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    invoke-virtual {v12, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 461
    .line 462
    .line 463
    goto :goto_1

    .line 464
    :catchall_1
    move-exception p0

    .line 465
    goto :goto_2

    .line 466
    :catch_0
    move-exception v0

    .line 467
    :try_start_3
    const-string v1, "IntelligentBatterySaverGoogleAppPolicy"

    .line 468
    .line 469
    new-instance v11, Ljava/lang/StringBuilder;

    .line 470
    .line 471
    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    .line 483
    .line 484
    iget-object v0, v8, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mGoogleAppsList:Landroid/util/ArrayMap;

    .line 485
    .line 486
    invoke-virtual {v0, v4, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    :goto_1
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 490
    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyReceiver;

    .line 491
    .line 492
    invoke-direct {v0, v8}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyReceiver;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;)V

    .line 493
    .line 494
    .line 495
    const-string/jumbo v0, "network_management"

    .line 496
    .line 497
    .line 498
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    if-eqz v0, :cond_5

    .line 503
    .line 504
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    iput-object v0, v8, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 509
    .line 510
    goto :goto_4

    .line 511
    :goto_2
    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 512
    throw p0

    .line 513
    :goto_3
    monitor-exit v8

    .line 514
    throw p0

    .line 515
    :cond_5
    :goto_4
    new-instance v0, Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 516
    .line 517
    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    .line 518
    .line 519
    invoke-direct {v0, v1}, Lcom/android/server/ibs/sqd/IbsQuickDim;-><init>(Landroid/content/Context;)V

    .line 520
    .line 521
    .line 522
    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSQuickDim:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 523
    .line 524
    new-instance v1, Landroid/os/HandlerThread;

    .line 525
    .line 526
    const-string v4, "IbsQuickDim"

    .line 527
    .line 528
    invoke-direct {v1, v4, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 529
    .line 530
    .line 531
    iput-object v1, v0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mHandlerThread:Landroid/os/HandlerThread;

    .line 532
    .line 533
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 534
    .line 535
    .line 536
    new-instance v1, Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    .line 537
    .line 538
    iget-object v8, v0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mHandlerThread:Landroid/os/HandlerThread;

    .line 539
    .line 540
    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 541
    .line 542
    .line 543
    move-result-object v8

    .line 544
    invoke-direct {v1, v0, v8}, Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;-><init>(Lcom/android/server/ibs/sqd/IbsQuickDim;Landroid/os/Looper;)V

    .line 545
    .line 546
    .line 547
    iput-object v1, v0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    .line 548
    .line 549
    iget-object v1, v0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mContext:Landroid/content/Context;

    .line 550
    .line 551
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 552
    .line 553
    .line 554
    move-result-object v1

    .line 555
    iput-object v1, v0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mResolver:Landroid/content/ContentResolver;

    .line 556
    .line 557
    :try_start_5
    const-string/jumbo v1, "window"

    .line 558
    .line 559
    .line 560
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 561
    .line 562
    .line 563
    move-result-object v1

    .line 564
    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    .line 565
    .line 566
    .line 567
    move-result-object v1

    .line 568
    check-cast v1, Lcom/android/server/wm/WindowManagerService;

    .line 569
    .line 570
    iget-object v8, v0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mPointerEventListener:Lcom/android/server/ibs/sqd/IbsQuickDim$2;

    .line 571
    .line 572
    invoke-virtual {v1, v8, v7}, Lcom/android/server/wm/WindowManagerService;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 573
    .line 574
    .line 575
    goto :goto_5

    .line 576
    :catch_1
    move-exception v1

    .line 577
    const-string v8, "Exception - registerPointerEventListener"

    .line 578
    .line 579
    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    .line 581
    .line 582
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 583
    .line 584
    .line 585
    :goto_5
    const-class v1, Landroid/os/PowerManagerInternal;

    .line 586
    .line 587
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 588
    .line 589
    .line 590
    move-result-object v1

    .line 591
    check-cast v1, Landroid/os/PowerManagerInternal;

    .line 592
    .line 593
    iput-object v1, v0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 594
    .line 595
    new-instance v1, Landroid/util/ArraySet;

    .line 596
    .line 597
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 598
    .line 599
    .line 600
    iput-object v1, v0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mBlockUnDimUidSet:Landroid/util/ArraySet;

    .line 601
    .line 602
    new-instance v1, Landroid/util/ArraySet;

    .line 603
    .line 604
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 605
    .line 606
    .line 607
    iput-object v1, v0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mAllowDimUidSet:Landroid/util/ArraySet;

    .line 608
    .line 609
    iget-object v1, v0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mResolver:Landroid/content/ContentResolver;

    .line 610
    .line 611
    const-string/jumbo v8, "screen_off_timeout"

    .line 612
    .line 613
    .line 614
    const v9, 0xea60

    .line 615
    .line 616
    .line 617
    const/4 v10, -0x2

    .line 618
    invoke-static {v1, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 619
    .line 620
    .line 621
    move-result v1

    .line 622
    int-to-long v11, v1

    .line 623
    iput-wide v11, v0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mScreenOffTimeoutSetting:J

    .line 624
    .line 625
    iget-object v1, v0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mResolver:Landroid/content/ContentResolver;

    .line 626
    .line 627
    const-string/jumbo v9, "intelligent_sleep_mode"

    .line 628
    .line 629
    .line 630
    invoke-static {v1, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 631
    .line 632
    .line 633
    move-result v1

    .line 634
    if-eqz v1, :cond_6

    .line 635
    .line 636
    goto :goto_6

    .line 637
    :cond_6
    move v2, v7

    .line 638
    :goto_6
    iput-boolean v2, v0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSmartStayEnabledSetting:Z

    .line 639
    .line 640
    iget-object v1, v0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mResolver:Landroid/content/ContentResolver;

    .line 641
    .line 642
    const-string/jumbo v2, "screen_brightness"

    .line 643
    .line 644
    .line 645
    invoke-static {v1, v2, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 646
    .line 647
    .line 648
    move-result v1

    .line 649
    iput v1, v0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mBrightness:I

    .line 650
    .line 651
    new-instance v1, Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;

    .line 652
    .line 653
    iget-object v10, v0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    .line 654
    .line 655
    invoke-direct {v1, v0, v10}, Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;-><init>(Lcom/android/server/ibs/sqd/IbsQuickDim;Landroid/os/Handler;)V

    .line 656
    .line 657
    .line 658
    iput-object v1, v0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSettingsObserver:Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;

    .line 659
    .line 660
    new-instance v1, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;

    .line 661
    .line 662
    invoke-direct {v1, v0}, Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;-><init>(Lcom/android/server/ibs/sqd/IbsQuickDim;)V

    .line 663
    .line 664
    .line 665
    iput-object v1, v0, Lcom/android/server/ibs/sqd/IbsQuickDim;->receiver:Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;

    .line 666
    .line 667
    iget-object v10, v0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mContext:Landroid/content/Context;

    .line 668
    .line 669
    iget-object v11, v0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mFilter:Landroid/content/IntentFilter;

    .line 670
    .line 671
    invoke-virtual {v10, v1, v11, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 672
    .line 673
    .line 674
    iget-object v1, v0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mContext:Landroid/content/Context;

    .line 675
    .line 676
    iget-object v10, v0, Lcom/android/server/ibs/sqd/IbsQuickDim;->receiver:Lcom/android/server/ibs/sqd/IbsQuickDim$IntentReceiver;

    .line 677
    .line 678
    iget-object v11, v0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mPkgFilter:Landroid/content/IntentFilter;

    .line 679
    .line 680
    invoke-virtual {v1, v10, v11, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 681
    .line 682
    .line 683
    iget-object v1, v0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mResolver:Landroid/content/ContentResolver;

    .line 684
    .line 685
    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 686
    .line 687
    .line 688
    move-result-object v8

    .line 689
    iget-object v10, v0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSettingsObserver:Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;

    .line 690
    .line 691
    invoke-virtual {v1, v8, v7, v10, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 692
    .line 693
    .line 694
    iget-object v1, v0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mResolver:Landroid/content/ContentResolver;

    .line 695
    .line 696
    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 697
    .line 698
    .line 699
    move-result-object v8

    .line 700
    iget-object v9, v0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSettingsObserver:Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;

    .line 701
    .line 702
    invoke-virtual {v1, v8, v7, v9, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 703
    .line 704
    .line 705
    iget-object v1, v0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mResolver:Landroid/content/ContentResolver;

    .line 706
    .line 707
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 708
    .line 709
    .line 710
    move-result-object v2

    .line 711
    iget-object v8, v0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSettingsObserver:Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;

    .line 712
    .line 713
    invoke-virtual {v1, v2, v7, v8, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 714
    .line 715
    .line 716
    new-instance v1, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;

    .line 717
    .line 718
    iget-object v2, v0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mContext:Landroid/content/Context;

    .line 719
    .line 720
    const-string v3, "SQD_whilte_list"

    .line 721
    .line 722
    invoke-direct {v1, v2, v3, v6, v5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 723
    .line 724
    .line 725
    iput-object v6, v1, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 726
    .line 727
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 728
    .line 729
    .line 730
    move-result-object v2

    .line 731
    iput-object v2, v1, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 732
    .line 733
    new-instance v2, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;

    .line 734
    .line 735
    const/4 v3, 0x1

    .line 736
    invoke-direct {v2, v1, v3}, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;-><init>(Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;I)V

    .line 737
    .line 738
    .line 739
    iput-object v2, v1, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->mBlockDataOperator:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;

    .line 740
    .line 741
    new-instance v2, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;

    .line 742
    .line 743
    const/4 v3, 0x0

    .line 744
    invoke-direct {v2, v1, v3}, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;-><init>(Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;I)V

    .line 745
    .line 746
    .line 747
    iput-object v2, v1, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->mAllowDataOperator:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;

    .line 748
    .line 749
    iput-object v1, v0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQLiteSQDwhilteList:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;

    .line 750
    .line 751
    :try_start_6
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    .line 752
    .line 753
    .line 754
    move-result-object v1

    .line 755
    iget-object v2, v0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mProcessObserver:Lcom/android/server/ibs/sqd/IbsQuickDim$3;

    .line 756
    .line 757
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    .line 758
    .line 759
    .line 760
    goto :goto_7

    .line 761
    :catch_2
    move-exception v1

    .line 762
    const-string v2, "RemoteException - registerProcessObserver"

    .line 763
    .line 764
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    .line 766
    .line 767
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 768
    .line 769
    .line 770
    :goto_7
    iget-object v1, v0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    .line 771
    .line 772
    new-instance v2, Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda0;

    .line 773
    .line 774
    const/4 v3, 0x0

    .line 775
    invoke-direct {v2, v0, v3}, Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ibs/sqd/IbsQuickDim;I)V

    .line 776
    .line 777
    .line 778
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 779
    .line 780
    .line 781
    iget-object v1, v0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSFSevices:Landroid/os/IBinder;

    .line 782
    .line 783
    if-nez v1, :cond_7

    .line 784
    .line 785
    const-string v1, "SurfaceFlinger"

    .line 786
    .line 787
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 788
    .line 789
    .line 790
    move-result-object v1

    .line 791
    iput-object v1, v0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSFSevices:Landroid/os/IBinder;

    .line 792
    .line 793
    if-eqz v1, :cond_7

    .line 794
    .line 795
    move-object v6, v1

    .line 796
    :cond_7
    iput-object v6, v0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSFSevices:Landroid/os/IBinder;

    .line 797
    .line 798
    sget-object v0, Lcom/android/server/ibs/sleepmode/SleepModeLogger$SleepModeLoggerHolder;->INSTANCE:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    .line 799
    .line 800
    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mSleepModeLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    .line 801
    .line 802
    new-instance v1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 803
    .line 804
    iget-object v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 805
    .line 806
    invoke-direct {v1, p1, v2, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;Lcom/android/server/ibs/sleepmode/SleepModeLogger;)V

    .line 807
    .line 808
    .line 809
    iput-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mSleepModePolicyController:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 810
    .line 811
    new-instance p1, Lcom/android/server/ibs/IntelligentBatterySaverDexoptManager;

    .line 812
    .line 813
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 814
    .line 815
    .line 816
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSDexoptManager:Lcom/android/server/ibs/IntelligentBatterySaverDexoptManager;

    .line 817
    .line 818
    :try_start_7
    const-class p0, Lcom/android/server/art/ArtManagerLocal;

    .line 819
    .line 820
    invoke-static {p0}, Lcom/android/server/LocalManagerRegistry;->getManagerOrThrow(Ljava/lang/Class;)Ljava/lang/Object;

    .line 821
    .line 822
    .line 823
    move-result-object p0

    .line 824
    check-cast p0, Lcom/android/server/art/ArtManagerLocal;

    .line 825
    .line 826
    iput-object p0, p1, Lcom/android/server/ibs/IntelligentBatterySaverDexoptManager;->mArtManagerLocal:Lcom/android/server/art/ArtManagerLocal;

    .line 827
    .line 828
    const-class p0, Lcom/android/server/pm/PackageManagerLocal;

    .line 829
    .line 830
    invoke-static {p0}, Lcom/android/server/LocalManagerRegistry;->getManagerOrThrow(Ljava/lang/Class;)Ljava/lang/Object;

    .line 831
    .line 832
    .line 833
    move-result-object p0

    .line 834
    check-cast p0, Lcom/android/server/pm/PackageManagerLocal;

    .line 835
    .line 836
    iput-object p0, p1, Lcom/android/server/ibs/IntelligentBatterySaverDexoptManager;->mPackageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;
    :try_end_7
    .catch Lcom/android/server/LocalManagerRegistry$ManagerNotFoundException; {:try_start_7 .. :try_end_7} :catch_3

    .line 837
    .line 838
    goto :goto_8

    .line 839
    :catch_3
    move-exception p0

    .line 840
    new-instance p1, Ljava/lang/StringBuilder;

    .line 841
    .line 842
    const-string/jumbo v0, "failed to get local manager "

    .line 843
    .line 844
    .line 845
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 846
    .line 847
    .line 848
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 849
    .line 850
    .line 851
    move-result-object p0

    .line 852
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    .line 854
    .line 855
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 856
    .line 857
    .line 858
    move-result-object p0

    .line 859
    const-string p1, "IntelligentBatterySaverDexoptManager"

    .line 860
    .line 861
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    .line 863
    .line 864
    :goto_8
    return-void
.end method


# virtual methods
.method public final addScreenQuickDimApp(Ljava/lang/String;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 4
    .line 5
    const-string v2, "IntelligentBatterySaverService"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSQuickDim:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, " addScreenQuickDimApp uid = "

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, " pkgName = "

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "IbsQuickDim"

    .line 38
    .line 39
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mAllowDimUidSet:Landroid/util/ArraySet;

    .line 43
    .line 44
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_0

    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mAllowDimUidSet:Landroid/util/ArraySet;

    .line 55
    .line 56
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    :cond_0
    const-string v0, "PackageName"

    .line 64
    .line 65
    invoke-static {v0, p1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    const-string v0, "Uid"

    .line 74
    .line 75
    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 76
    .line 77
    .line 78
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQLiteSQDwhilteList:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;

    .line 79
    .line 80
    const/4 p2, 0x1

    .line 81
    invoke-virtual {p0, p2}, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->getDataOperator(I)Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;->insert(Landroid/content/ContentValues;)J

    .line 86
    .line 87
    .line 88
    move-result-wide p0

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v2, " ret = "

    .line 92
    .line 93
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    const-wide/16 v0, -0x1

    .line 107
    .line 108
    cmp-long p0, p0, v0

    .line 109
    .line 110
    if-eqz p0, :cond_1

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_1
    const/4 p2, 0x0

    .line 114
    :goto_0
    return p2
.end method

.method public final addSqdBlockList(ILjava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 4
    .line 5
    const-string v2, "IntelligentBatterySaverService"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSQuickDim:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, " addBlockList uid = "

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, " pkgName = "

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "IbsQuickDim"

    .line 38
    .line 39
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mBlockUnDimUidSet:Landroid/util/ArraySet;

    .line 43
    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_0

    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mBlockUnDimUidSet:Landroid/util/ArraySet;

    .line 55
    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    :cond_0
    const-string v0, "PackageName"

    .line 64
    .line 65
    invoke-static {v0, p2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const-string v0, "Uid"

    .line 74
    .line 75
    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 76
    .line 77
    .line 78
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQLiteSQDwhilteList:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;

    .line 79
    .line 80
    const/4 p1, 0x0

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->getDataOperator(I)Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {p0, p2}, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;->insert(Landroid/content/ContentValues;)J

    .line 86
    .line 87
    .line 88
    move-result-wide v2

    .line 89
    new-instance p0, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string p2, " ret = "

    .line 92
    .line 93
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    const-wide/16 v0, -0x1

    .line 107
    .line 108
    cmp-long p0, v2, v0

    .line 109
    .line 110
    if-eqz p0, :cond_1

    .line 111
    .line 112
    const/4 p1, 0x1

    .line 113
    :cond_1
    return p1
.end method

.method public final dexoptPackages(Ljava/util/List;)Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 4
    .line 5
    const-string v2, "IntelligentBatterySaverService"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSDexoptManager:Lcom/android/server/ibs/IntelligentBatterySaverDexoptManager;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/ibs/IntelligentBatterySaverDexoptManager;->dexoptPackages(Ljava/util/List;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "android.permission.DUMP"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string p1, "Permission Denial: can\'t dump IntelligentBatterySaverService from pid="

    .line 14
    .line 15
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p1, ", uid="

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p1, " without permission android.permission.DUMP"

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    sget-boolean p1, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSEnable:Z

    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    const/4 v1, 0x0

    .line 54
    const-string v2, ""

    .line 55
    .line 56
    if-eqz p1, :cond_4

    .line 57
    .line 58
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string p1, "IBS Version: 1.0"

    .line 62
    .line 63
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSFastDrainPolicy:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-string v3, "IntelligentBatterySaverFastDrainPolicy "

    .line 75
    .line 76
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string/jumbo v4, "get current mSysState :"

    .line 82
    .line 83
    .line 84
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget v4, p1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSysState:I

    .line 88
    .line 89
    invoke-static {v4}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string/jumbo v4, "getBatteryCapacity :"

    .line 106
    .line 107
    .line 108
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget-object v4, p1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 112
    .line 113
    if-nez v4, :cond_1

    .line 114
    .line 115
    new-instance v4, Lcom/android/internal/os/PowerProfile;

    .line 116
    .line 117
    iget-object v5, p1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    .line 118
    .line 119
    invoke-direct {v4, v5}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    .line 120
    .line 121
    .line 122
    iput-object v4, p1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 123
    .line 124
    :cond_1
    iget-object v4, p1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 125
    .line 126
    invoke-virtual {v4}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    .line 127
    .line 128
    .line 129
    move-result-wide v4

    .line 130
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    array-length v3, p3

    .line 141
    const/4 v4, 0x2

    .line 142
    if-ne v3, v4, :cond_2

    .line 143
    .line 144
    aget-object v3, p3, v1

    .line 145
    .line 146
    const-string/jumbo v4, "ibs"

    .line 147
    .line 148
    .line 149
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    if-eqz v3, :cond_2

    .line 154
    .line 155
    aget-object v3, p3, v0

    .line 156
    .line 157
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    new-instance v4, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    const-string/jumbo v5, "set new mSysState :"

    .line 164
    .line 165
    .line 166
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, v3}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->setSysState(I)V

    .line 184
    .line 185
    .line 186
    new-instance v3, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    const-string/jumbo v4, "get updated mSysState :"

    .line 189
    .line 190
    .line 191
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    iget p1, p1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSysState:I

    .line 195
    .line 196
    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    :cond_2
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSGoogleAppPolicy:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

    .line 211
    .line 212
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    const-string v3, "IntelligentBatterySaverGoogleAppPolicy "

    .line 219
    .line 220
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    move v3, v1

    .line 224
    :goto_0
    iget-object v4, p1, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mGoogleAppsList:Landroid/util/ArrayMap;

    .line 225
    .line 226
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 227
    .line 228
    .line 229
    move-result v4

    .line 230
    if-ge v3, v4, :cond_3

    .line 231
    .line 232
    const-string v4, "SCPM GoogleApps uid "

    .line 233
    .line 234
    const-string/jumbo v5, "is "

    .line 235
    .line 236
    .line 237
    invoke-static {v3, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    move-result-object v4

    .line 241
    iget-object v5, p1, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mGoogleAppsList:Landroid/util/ArrayMap;

    .line 242
    .line 243
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v5

    .line 247
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v4

    .line 254
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    new-instance v4, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    const-string v5, "SCPM GoogleApps stats "

    .line 260
    .line 261
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    const-string v5, "= "

    .line 268
    .line 269
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    iget-object v5, p1, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mGoogleAppsList:Landroid/util/ArrayMap;

    .line 273
    .line 274
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v4

    .line 285
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    add-int/lit8 v3, v3, 0x1

    .line 289
    .line 290
    goto :goto_0

    .line 291
    :cond_3
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    .line 292
    .line 293
    iget-boolean v3, p1, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->mIsUsed:Z

    .line 294
    .line 295
    if-eqz v3, :cond_4

    .line 296
    .line 297
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 298
    .line 299
    .line 300
    const-string v3, "IntelligentBatterySaverLogger history Log:"

    .line 301
    .line 302
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    iget-object p1, p1, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->mIBSLog:Landroid/util/LocalLog;

    .line 306
    .line 307
    const/4 v3, 0x0

    .line 308
    invoke-virtual {p1, v3, p2, v3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 312
    .line 313
    .line 314
    :cond_4
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSQuickDim:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 315
    .line 316
    if-eqz p1, :cond_6

    .line 317
    .line 318
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    const-string v3, "SQD Version: 1.0"

    .line 322
    .line 323
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    const-string v3, "SQD swich status : "

    .line 327
    .line 328
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    new-instance v3, Ljava/lang/StringBuilder;

    .line 332
    .line 333
    const-string v4, "UI on-off : "

    .line 334
    .line 335
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    iget-boolean v4, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mUiControlEnabled:Z

    .line 339
    .line 340
    const-string/jumbo v5, "mCharging : "

    .line 341
    .line 342
    .line 343
    invoke-static {v3, v4, p2, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    move-result-object v3

    .line 347
    iget-boolean v4, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mCharging:Z

    .line 348
    .line 349
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    const-string v4, " mSQDPowerSave : "

    .line 353
    .line 354
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    iget v4, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQDPowerSave:F

    .line 358
    .line 359
    const-string/jumbo v5, "policy status : "

    .line 360
    .line 361
    .line 362
    invoke-static {v3, v4, p2, v5}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    move-result-object v3

    .line 366
    iget v4, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    .line 367
    .line 368
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v3

    .line 375
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    const-string/jumbo v3, "block List:"

    .line 379
    .line 380
    .line 381
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    iget-object v3, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mBlockUnDimUidSet:Landroid/util/ArraySet;

    .line 385
    .line 386
    new-instance v4, Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda1;

    .line 387
    .line 388
    const/4 v5, 0x0

    .line 389
    invoke-direct {v4, v5, p2}, Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    .line 393
    .line 394
    .line 395
    const-string v3, "allow List:"

    .line 396
    .line 397
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    iget-object v3, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mAllowDimUidSet:Landroid/util/ArraySet;

    .line 401
    .line 402
    new-instance v4, Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda1;

    .line 403
    .line 404
    invoke-direct {v4, v5, p2}, Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    .line 408
    .line 409
    .line 410
    array-length v3, p3

    .line 411
    if-le v3, v0, :cond_6

    .line 412
    .line 413
    aget-object v3, p3, v1

    .line 414
    .line 415
    const-string/jumbo v4, "sqd_swich"

    .line 416
    .line 417
    .line 418
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 419
    .line 420
    .line 421
    move-result v3

    .line 422
    if-eqz v3, :cond_6

    .line 423
    .line 424
    aget-object v3, p3, v0

    .line 425
    .line 426
    const-string/jumbo v4, "true"

    .line 427
    .line 428
    .line 429
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    move-result v3

    .line 433
    if-eqz v3, :cond_5

    .line 434
    .line 435
    iput-boolean v0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mUiControlEnabled:Z

    .line 436
    .line 437
    goto :goto_1

    .line 438
    :cond_5
    iput-boolean v1, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mUiControlEnabled:Z

    .line 439
    .line 440
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSScpmManager:Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;

    .line 441
    .line 442
    if-eqz p1, :cond_7

    .line 443
    .line 444
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    const-string v0, "IntelligentBatterySaverScpmManager adapt to scpm v2 "

    .line 448
    .line 449
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    .line 453
    .line 454
    const-string v1, "IBS \'s mPolicyControlSwitch:"

    .line 455
    .line 456
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    iget p1, p1, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mPolicyControlSwitch:I

    .line 460
    .line 461
    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object p1

    .line 465
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object p1

    .line 472
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    :cond_7
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mSleepModePolicyController:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 476
    .line 477
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 478
    .line 479
    .line 480
    move-result-object p1

    .line 481
    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverService$$ExternalSyntheticLambda0;

    .line 482
    .line 483
    const/4 v1, 0x0

    .line 484
    invoke-direct {v0, p2, p3, v1}, Lcom/android/server/ibs/IntelligentBatterySaverService$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 488
    .line 489
    .line 490
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mSleepModeLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    .line 491
    .line 492
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 493
    .line 494
    .line 495
    move-result-object p1

    .line 496
    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverService$$ExternalSyntheticLambda1;

    .line 497
    .line 498
    invoke-direct {v0, p2, p3}, Lcom/android/server/ibs/IntelligentBatterySaverService$$ExternalSyntheticLambda1;-><init>(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 502
    .line 503
    .line 504
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSDexoptManager:Lcom/android/server/ibs/IntelligentBatterySaverDexoptManager;

    .line 505
    .line 506
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 507
    .line 508
    .line 509
    move-result-object p0

    .line 510
    new-instance p1, Lcom/android/server/ibs/IntelligentBatterySaverService$$ExternalSyntheticLambda0;

    .line 511
    .line 512
    const/4 v0, 0x1

    .line 513
    invoke-direct {p1, p2, p3, v0}, Lcom/android/server/ibs/IntelligentBatterySaverService$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 517
    .line 518
    .line 519
    return-void
.end method

.method public final getGain()[J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 4
    .line 5
    const-string v2, "IntelligentBatterySaverService"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSQuickDim:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 11
    .line 12
    iget v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQDPowerSave:F

    .line 13
    .line 14
    float-to-long v0, v0

    .line 15
    const-wide/16 v2, 0x1

    .line 16
    .line 17
    add-long/2addr v0, v2

    .line 18
    iget-wide v2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mChargingFinishTime:J

    .line 19
    .line 20
    const/4 p0, 0x2

    .line 21
    new-array p0, p0, [J

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    aput-wide v2, p0, v4

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    aput-wide v0, p0, v2

    .line 28
    .line 29
    return-object p0
.end method

.method public final getOperationHistory()Landroid/os/Bundle;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 4
    .line 5
    const-string v2, "IntelligentBatterySaverService"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mSleepModePolicyController:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const-string v0, "SleepModePolicyController"

    .line 16
    .line 17
    const-string/jumbo v1, "getOperationHistory"

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    const-string/jumbo v1, "pref_sleep_mode_trigger_time_key"

    .line 26
    .line 27
    .line 28
    const-wide/16 v2, 0x0

    .line 29
    .line 30
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    iget-object v4, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    const-string/jumbo v5, "pref_sleep_mode_cancel_time_key"

    .line 37
    .line 38
    .line 39
    invoke-static {v4, v5, v2, v3}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    .line 40
    .line 41
    .line 42
    move-result-wide v4

    .line 43
    cmp-long v6, v0, v2

    .line 44
    .line 45
    if-eqz v6, :cond_0

    .line 46
    .line 47
    cmp-long v2, v4, v2

    .line 48
    .line 49
    if-eqz v2, :cond_0

    .line 50
    .line 51
    iget-object v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    const-string/jumbo v3, "pref_sleep_mode_policy_state_key"

    .line 54
    .line 55
    .line 56
    const/4 v6, 0x0

    .line 57
    :try_start_0
    const-string/jumbo v7, "sleep_mode_pref"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v7, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 65
    .line 66
    .line 67
    move-result v6
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    goto :goto_0

    .line 69
    :catch_0
    move-exception v2

    .line 70
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 71
    .line 72
    .line 73
    :goto_0
    iput v6, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSysState:I

    .line 74
    .line 75
    new-instance v2, Landroid/os/Bundle;

    .line 76
    .line 77
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string/jumbo v3, "bundle_start_time_key"

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 84
    .line 85
    .line 86
    const-string/jumbo v0, "bundle_end_time_key"

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 90
    .line 91
    .line 92
    const/4 v0, 0x1

    .line 93
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->testState(I)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    const-string/jumbo v1, "bundle_psm_key"

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 101
    .line 102
    .line 103
    const/4 v0, 0x4

    .line 104
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->testState(I)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    const-string/jumbo v1, "bundle_gps_key"

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 112
    .line 113
    .line 114
    const/16 v0, 0x8

    .line 115
    .line 116
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->testState(I)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    const-string/jumbo v1, "bundle_bt_key"

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 124
    .line 125
    .line 126
    const/4 v0, 0x2

    .line 127
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->testState(I)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    const-string/jumbo v1, "bundle_wifi_key"

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 135
    .line 136
    .line 137
    const/16 v0, 0x10

    .line 138
    .line 139
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->testState(I)Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    const-string/jumbo v1, "bundle_nearby_key"

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 147
    .line 148
    .line 149
    const/16 v0, 0x20

    .line 150
    .line 151
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->testState(I)Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    const-string/jumbo v1, "bundle_master_sync_key"

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 159
    .line 160
    .line 161
    const/16 v0, 0x40

    .line 162
    .line 163
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->testState(I)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    const-string/jumbo v1, "bundle_notification_key"

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 171
    .line 172
    .line 173
    const/16 v0, 0x80

    .line 174
    .line 175
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->testState(I)Z

    .line 176
    .line 177
    .line 178
    move-result p0

    .line 179
    const-string/jumbo v0, "bundle_camera_flash_notification_key"

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 183
    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_0
    const/4 v2, 0x0

    .line 187
    :goto_1
    return-object v2
.end method

.method public final getScreenQuickDimApps()Ljava/util/Map;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 4
    .line 5
    const-string v2, "IntelligentBatterySaverService"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSQuickDim:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v0, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQLiteSQDwhilteList:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-virtual {v1, v2}, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->getDataOperator(I)Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQLiteSQDwhilteList:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 30
    .line 31
    invoke-virtual {v1, p0}, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;->query(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    :goto_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    const-string v1, "PackageName"

    .line 44
    .line 45
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string v2, "Uid"

    .line 54
    .line 55
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v1, "_"

    .line 72
    .line 73
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    .line 92
    goto :goto_1

    .line 93
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 98
    .line 99
    .line 100
    throw v0

    .line 101
    :cond_1
    :goto_2
    return-object v0
.end method

.method public final getSleepTime()Landroid/os/Bundle;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 4
    .line 5
    const-string v2, "IntelligentBatterySaverService"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mSleepModePolicyController:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->getSleepTime()Landroid/os/Bundle;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public final getSqdBlockList()Ljava/util/Map;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 4
    .line 5
    const-string v2, "IntelligentBatterySaverService"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSQuickDim:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v0, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQLiteSQDwhilteList:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v1, v2}, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->getDataOperator(I)Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQLiteSQDwhilteList:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 30
    .line 31
    invoke-virtual {v1, p0}, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;->query(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    :goto_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    const-string v1, "PackageName"

    .line 44
    .line 45
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string v2, "Uid"

    .line 54
    .line 55
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v1, "_"

    .line 72
    .line 73
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    .line 88
    goto :goto_1

    .line 89
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 94
    .line 95
    .line 96
    throw v0

    .line 97
    :cond_1
    :goto_2
    return-object v0
.end method

.method public final isEnableSerive()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 4
    .line 5
    const-string v2, "IntelligentBatterySaverService"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mSleepModePolicyController:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string/jumbo v1, "isEnableSerive: "

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-boolean v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSleepModeEnabled:Z

    .line 21
    .line 22
    const-string v2, "SleepModePolicyController"

    .line 23
    .line 24
    invoke-static {v2, v0, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 25
    .line 26
    .line 27
    iget-boolean p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSleepModeEnabled:Z

    .line 28
    .line 29
    return p0
.end method

.method public final isSqdSupport()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 4
    .line 5
    const-string v2, "IntelligentBatterySaverService"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSQuickDim:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x0

    .line 24
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSFSevices:Landroid/os/IBinder;

    .line 25
    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    if-nez v3, :cond_0

    .line 29
    .line 30
    const-string v3, "SurfaceFlinger"

    .line 31
    .line 32
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    iput-object v3, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSFSevices:Landroid/os/IBinder;

    .line 37
    .line 38
    :cond_0
    iget-object v3, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSFSevices:Landroid/os/IBinder;

    .line 39
    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    const-string v3, "android.ui.ISurfaceComposer"

    .line 43
    .line 44
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSFSevices:Landroid/os/IBinder;

    .line 48
    .line 49
    const/16 v3, 0x3f5

    .line 50
    .line 51
    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 52
    .line 53
    .line 54
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_3

    .line 58
    :catch_0
    move-exception p0

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :goto_2
    return v2

    .line 72
    :goto_3
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 76
    .line 77
    .line 78
    throw p0
.end method

.method public final isSqdUiControlEnabled()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 4
    .line 5
    const-string v2, "IntelligentBatterySaverService"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSQuickDim:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 11
    .line 12
    iget-boolean p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mUiControlEnabled:Z

    .line 13
    .line 14
    return p0
.end method

.method public final removeScreenQuickDimApp(Ljava/lang/String;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 4
    .line 5
    const-string v2, "IntelligentBatterySaverService"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSQuickDim:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, " removeScreenQuickDimApp uid = "

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, " pkgName = "

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "IbsQuickDim"

    .line 38
    .line 39
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mAllowDimUidSet:Landroid/util/ArraySet;

    .line 43
    .line 44
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mAllowDimUidSet:Landroid/util/ArraySet;

    .line 55
    .line 56
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    filled-new-array {p1, p2}, [Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQLiteSQDwhilteList:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;

    .line 72
    .line 73
    const/4 p2, 0x1

    .line 74
    invoke-virtual {p0, p2}, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->getDataOperator(I)Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {p0, p1}, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;->delete([Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    const-string p1, " ret = "

    .line 83
    .line 84
    invoke-static {p0, p1, v1}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const/4 p1, -0x1

    .line 88
    if-eq p0, p1, :cond_1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    const/4 p2, 0x0

    .line 92
    :goto_0
    return p2
.end method

.method public final removeSqdBlockList(ILjava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 4
    .line 5
    const-string v2, "IntelligentBatterySaverService"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSQuickDim:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, " removeBlockList uid = "

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, " pkgName = "

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "IbsQuickDim"

    .line 38
    .line 39
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mBlockUnDimUidSet:Landroid/util/ArraySet;

    .line 43
    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mBlockUnDimUidSet:Landroid/util/ArraySet;

    .line 55
    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    filled-new-array {p2, p1}, [Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQLiteSQDwhilteList:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;

    .line 72
    .line 73
    const/4 p2, 0x0

    .line 74
    invoke-virtual {p0, p2}, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->getDataOperator(I)Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {p0, p1}, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;->delete([Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    const-string p1, " ret = "

    .line 83
    .line 84
    invoke-static {p0, p1, v1}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const/4 p1, -0x1

    .line 88
    if-eq p0, p1, :cond_1

    .line 89
    .line 90
    const/4 p2, 0x1

    .line 91
    :cond_1
    return p2
.end method

.method public final setRubinEvent(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 4
    .line 5
    const-string v2, "IntelligentBatterySaverService"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mSleepModePolicyController:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->setRubinEvent(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final setSarrUiControlEnable(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setSleepModeEnabled(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 4
    .line 5
    const-string v2, "IntelligentBatterySaverService"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mSleepModePolicyController:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->setSleepModeEnable(Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final setSleepTime(JJ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 4
    .line 5
    const-string v2, "IntelligentBatterySaverService"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mSleepModePolicyController:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->setSleepTime(JJ)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final setSqdUiControlEnabled(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 4
    .line 5
    const-string v2, "IntelligentBatterySaverService"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSQuickDim:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/ibs/sqd/IbsQuickDim;->setUicontrolEnable(Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
