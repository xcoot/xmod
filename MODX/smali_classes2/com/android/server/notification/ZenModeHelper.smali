.class public final Lcom/android/server/notification/ZenModeHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z

.field public static final DELETED_RULE_KEPT_FOR:Ljava/time/Duration;


# instance fields
.field public final mAppOps:Landroid/app/AppOpsManager;

.field protected mAudioManager:Landroid/media/AudioManagerInternal;

.field public final mCallbacks:Ljava/util/ArrayList;

.field public final mClock:Ljava/time/Clock;

.field protected final mConditions:Lcom/android/server/notification/ZenModeConditions;

.field protected mConfig:Landroid/service/notification/ZenModeConfig;

.field public final mConfigLock:Ljava/lang/Object;

.field final mConfigs:Landroid/util/SparseArray;

.field public final mConfigsArrayLock:Ljava/lang/Object;

.field public mConsolidatedDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

.field protected mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

.field public final mContext:Landroid/content/Context;

.field public final mDefaultConfig:Landroid/service/notification/ZenModeConfig;

.field public mDeviceEffectsApplier:Landroid/service/notification/DeviceEffectsApplier;

.field public final mFiltering:Lcom/android/server/notification/ZenModeFiltering;

.field public final mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

.field public final mHandler:Lcom/android/server/notification/ZenModeHelper$H;

.field protected mIsSystemServicesReady:Z

.field public final mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public mPm:Landroid/content/pm/PackageManager;

.field public mPriorityOnlyDndExemptPackages:[Ljava/lang/String;

.field protected final mRulesUidCache:Landroid/util/ArrayMap;

.field public final mServiceConfig:Lcom/android/server/notification/ManagedServices$Config;

.field public mSuppressedEffects:J

.field public mUser:I

.field protected mZenMode:I

.field public final mZenModeEventLogger:Lcom/android/server/notification/ZenModeEventLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "ZenModeHelper"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    .line 9
    .line 10
    const-wide/16 v0, 0x1e

    .line 11
    .line 12
    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/android/server/notification/ZenModeHelper;->DELETED_RULE_KEPT_FOR:Ljava/time/Duration;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/time/Clock;Lcom/android/server/notification/ConditionProviders;Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;Lcom/android/server/notification/ZenModeEventLogger;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mRulesUidCache:Landroid/util/ArrayMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v1, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/Object;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigsArrayLock:Ljava/lang/Object;

    .line 26
    .line 27
    new-instance v1, Landroid/util/SparseArray;

    .line 28
    .line 29
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    .line 33
    .line 34
    new-instance v1, Lcom/android/server/notification/ZenModeHelper$Metrics;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Lcom/android/server/notification/ZenModeHelper$Metrics;-><init>(Lcom/android/server/notification/ZenModeHelper;)V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

    .line 40
    .line 41
    new-instance v2, Landroid/service/notification/ZenDeviceEffects$Builder;

    .line 42
    .line 43
    invoke-direct {v2}, Landroid/service/notification/ZenDeviceEffects$Builder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Landroid/service/notification/ZenDeviceEffects$Builder;->build()Landroid/service/notification/ZenDeviceEffects;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iput-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    iput v2, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    .line 54
    .line 55
    new-instance v3, Ljava/lang/Object;

    .line 56
    .line 57
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    .line 61
    .line 62
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    new-instance v3, Lcom/android/server/notification/ZenModeHelper$H;

    .line 65
    .line 66
    invoke-direct {v3, p0, p2}, Lcom/android/server/notification/ZenModeHelper$H;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Looper;)V

    .line 67
    .line 68
    .line 69
    iput-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    .line 70
    .line 71
    iput-object p3, p0, Lcom/android/server/notification/ZenModeHelper;->mClock:Ljava/time/Clock;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    const-class p2, Landroid/app/AppOpsManager;

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    check-cast p2, Landroid/app/AppOpsManager;

    .line 83
    .line 84
    iput-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 85
    .line 86
    const-class p2, Landroid/app/NotificationManager;

    .line 87
    .line 88
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    check-cast p2, Landroid/app/NotificationManager;

    .line 93
    .line 94
    iput-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mNotificationManager:Landroid/app/NotificationManager;

    .line 95
    .line 96
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    const/4 p3, 0x0

    .line 101
    if-eqz p2, :cond_0

    .line 102
    .line 103
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getDefaultConfig()Landroid/service/notification/ZenModeConfig;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    goto :goto_3

    .line 108
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    const p2, 0x117000c

    .line 113
    .line 114
    .line 115
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 116
    .line 117
    .line 118
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 119
    :cond_1
    :try_start_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    .line 120
    .line 121
    .line 122
    move-result p2

    .line 123
    const/4 v0, 0x1

    .line 124
    if-eq p2, v0, :cond_2

    .line 125
    .line 126
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-static {p2}, Landroid/service/notification/ZenModeConfig;->readXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/service/notification/ZenModeConfig;

    .line 131
    .line 132
    .line 133
    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    if-eqz p2, :cond_1

    .line 135
    .line 136
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 137
    .line 138
    .line 139
    move-object p1, p2

    .line 140
    goto :goto_3

    .line 141
    :catchall_0
    move-exception p0

    .line 142
    move-object p3, p1

    .line 143
    goto/16 :goto_6

    .line 144
    .line 145
    :catch_0
    move-exception p2

    .line 146
    goto :goto_1

    .line 147
    :cond_2
    :goto_0
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :catchall_1
    move-exception p0

    .line 152
    goto/16 :goto_6

    .line 153
    .line 154
    :catch_1
    move-exception p2

    .line 155
    move-object p1, p3

    .line 156
    :goto_1
    :try_start_2
    const-string v0, "ZenModeHelper"

    .line 157
    .line 158
    const-string v1, "Error reading default zen mode config from resource"

    .line 159
    .line 160
    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    .line 162
    .line 163
    goto :goto_0

    .line 164
    :goto_2
    new-instance p1, Landroid/service/notification/ZenModeConfig;

    .line 165
    .line 166
    invoke-direct {p1}, Landroid/service/notification/ZenModeConfig;-><init>()V

    .line 167
    .line 168
    .line 169
    :goto_3
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    .line 170
    .line 171
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->updateDefaultConfigAutomaticRules()V

    .line 172
    .line 173
    .line 174
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    .line 175
    .line 176
    .line 177
    move-result p2

    .line 178
    if-eqz p2, :cond_5

    .line 179
    .line 180
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    .line 181
    .line 182
    .line 183
    move-result p2

    .line 184
    if-nez p2, :cond_3

    .line 185
    .line 186
    goto :goto_5

    .line 187
    :cond_3
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    iget-object p1, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 192
    .line 193
    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-eqz v0, :cond_5

    .line 206
    .line 207
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 212
    .line 213
    sget-object v1, Landroid/service/notification/ZenModeConfig;->DEFAULT_RULE_IDS:Ljava/util/List;

    .line 214
    .line 215
    iget-object v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    .line 216
    .line 217
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    if-eqz v1, :cond_4

    .line 222
    .line 223
    iget-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 224
    .line 225
    if-nez v1, :cond_4

    .line 226
    .line 227
    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->copy()Landroid/service/notification/ZenPolicy;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 232
    .line 233
    goto :goto_4

    .line 234
    :cond_5
    :goto_5
    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    .line 235
    .line 236
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 241
    .line 242
    iget-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigsArrayLock:Ljava/lang/Object;

    .line 243
    .line 244
    monitor-enter p2

    .line 245
    :try_start_3
    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    .line 246
    .line 247
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 248
    .line 249
    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 253
    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 254
    .line 255
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy()Landroid/app/NotificationManager$Policy;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    .line 260
    .line 261
    new-instance p1, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    .line 262
    .line 263
    iget-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    .line 264
    .line 265
    invoke-direct {p1, p0, p2}, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Handler;)V

    .line 266
    .line 267
    .line 268
    iget-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 269
    .line 270
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 271
    .line 272
    .line 273
    move-result-object p2

    .line 274
    iget-object v0, p1, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->ZEN_MODE:Landroid/net/Uri;

    .line 275
    .line 276
    invoke-virtual {p2, v0, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p1, p3}, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 280
    .line 281
    .line 282
    new-instance p1, Lcom/android/server/notification/ZenModeFiltering;

    .line 283
    .line 284
    iget-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 285
    .line 286
    invoke-direct {p1, p2}, Lcom/android/server/notification/ZenModeFiltering;-><init>(Landroid/content/Context;)V

    .line 287
    .line 288
    .line 289
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    .line 290
    .line 291
    new-instance p1, Lcom/android/server/notification/ZenModeConditions;

    .line 292
    .line 293
    invoke-direct {p1, p0, p4}, Lcom/android/server/notification/ZenModeConditions;-><init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ConditionProviders;)V

    .line 294
    .line 295
    .line 296
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    .line 297
    .line 298
    invoke-virtual {p4}, Lcom/android/server/notification/ConditionProviders;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mServiceConfig:Lcom/android/server/notification/ManagedServices$Config;

    .line 303
    .line 304
    iput-object p5, p0, Lcom/android/server/notification/ZenModeHelper;->mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    .line 305
    .line 306
    iput-object p6, p0, Lcom/android/server/notification/ZenModeHelper;->mZenModeEventLogger:Lcom/android/server/notification/ZenModeEventLogger;

    .line 307
    .line 308
    return-void

    .line 309
    :catchall_2
    move-exception p0

    .line 310
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 311
    throw p0

    .line 312
    :goto_6
    invoke-static {p3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 313
    .line 314
    .line 315
    throw p0
.end method

.method public static implicitRuleId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "implicit_"

    .line 2
    .line 3
    invoke-static {v0, p0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static requirePublicOrigin(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x4

    .line 9
    if-eq p0, v0, :cond_2

    .line 10
    .line 11
    const/4 v0, 0x5

    .line 12
    if-eq p0, v0, :cond_2

    .line 13
    .line 14
    const/4 v0, 0x3

    .line 15
    if-ne p0, v0, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    filled-new-array {p1, p0}, [Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string p1, "Expected one of UPDATE_ORIGIN_APP, UPDATE_ORIGIN_SYSTEM_OR_SYSTEMUI, or UPDATE_ORIGIN_USER for %s, but received \'%s\'."

    .line 30
    .line 31
    invoke-static {v0, p1, p0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final applyConsolidatedDeviceEffects(I)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDeviceEffectsApplier:Landroid/service/notification/DeviceEffectsApplier;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    .line 14
    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v1, p0, p1}, Landroid/service/notification/DeviceEffectsApplier;->apply(Landroid/service/notification/ZenDeviceEffects;I)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw p0
.end method

.method public final applyCustomPolicy(Landroid/service/notification/ZenPolicy;Landroid/service/notification/ZenModeConfig$ZenRule;Z)V
    .locals 3

    .line 1
    iget v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    new-instance p0, Landroid/service/notification/ZenPolicy$Builder;

    .line 8
    .line 9
    invoke-direct {p0}, Landroid/service/notification/ZenPolicy$Builder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy$Builder;->disallowAllSounds()Landroid/service/notification/ZenPolicy$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0, v2}, Landroid/service/notification/ZenPolicy$Builder;->allowPriorityChannels(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p1, p0}, Landroid/service/notification/ZenPolicy;->apply(Landroid/service/notification/ZenPolicy;)V

    .line 25
    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_0
    const/4 v1, 0x3

    .line 29
    if-ne v0, v1, :cond_1

    .line 30
    .line 31
    new-instance p0, Landroid/service/notification/ZenPolicy$Builder;

    .line 32
    .line 33
    invoke-direct {p0}, Landroid/service/notification/ZenPolicy$Builder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy$Builder;->disallowAllSounds()Landroid/service/notification/ZenPolicy$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const/4 p2, 0x1

    .line 41
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->allowAlarms(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->allowMedia(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p0, v2}, Landroid/service/notification/ZenPolicy$Builder;->allowPriorityChannels(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p1, p0}, Landroid/service/notification/ZenPolicy;->apply(Landroid/service/notification/ZenPolicy;)V

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_1
    iget-object v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 62
    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Landroid/service/notification/ZenPolicy;->apply(Landroid/service/notification/ZenPolicy;)V

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_2
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_5

    .line 74
    .line 75
    if-eqz p3, :cond_3

    .line 76
    .line 77
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p1, p0}, Landroid/service/notification/ZenPolicy;->apply(Landroid/service/notification/ZenPolicy;)V

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v0, "active automatic rule found with no specified policy: "

    .line 90
    .line 91
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    const-string p3, "ZenModeHelper"

    .line 102
    .line 103
    invoke-static {p3, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    if-eqz p2, :cond_4

    .line 111
    .line 112
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    .line 113
    .line 114
    :goto_0
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    goto :goto_1

    .line 119
    :cond_4
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :goto_1
    invoke-virtual {p1, p0}, Landroid/service/notification/ZenPolicy;->apply(Landroid/service/notification/ZenPolicy;)V

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_5
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 127
    .line 128
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-virtual {p1, p0}, Landroid/service/notification/ZenPolicy;->apply(Landroid/service/notification/ZenPolicy;)V

    .line 133
    .line 134
    .line 135
    :goto_2
    return-void
.end method

.method public final applyGlobalPolicyAsImplicitZenRule(Ljava/lang/String;ILandroid/app/NotificationManager$Policy;)V
    .locals 8

    .line 1
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p0, "ZenModeHelper"

    .line 8
    .line 9
    const-string p1, "applyGlobalPolicyAsImplicitZenRule called with flag off!"

    .line 10
    .line 11
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iget-object v1, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/android/server/notification/ZenModeHelper;->implicitRuleId(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    if-nez v1, :cond_2

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->newImplicitZenRule(Ljava/lang/String;)Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const/4 p1, 0x1

    .line 50
    iput p1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 51
    .line 52
    iget-object v4, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 53
    .line 54
    iget-object v5, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v4, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    move p1, v3

    .line 61
    :goto_0
    iget v4, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicyUserModifiedFields:I

    .line 62
    .line 63
    if-nez v4, :cond_4

    .line 64
    .line 65
    invoke-static {p3}, Landroid/service/notification/ZenAdapters;->notificationPolicyToZenPolicy(Landroid/app/NotificationManager$Policy;)Landroid/service/notification/ZenPolicy;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    if-eqz p1, :cond_3

    .line 70
    .line 71
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 72
    .line 73
    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-virtual {v4, p3}, Landroid/service/notification/ZenPolicy;->overwrittenWith(Landroid/service/notification/ZenPolicy;)Landroid/service/notification/ZenPolicy;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    :cond_3
    invoke-virtual {p0, v1, p3, v3, p1}, Lcom/android/server/notification/ZenModeHelper;->updatePolicy(Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenPolicy;ZZ)Z

    .line 82
    .line 83
    .line 84
    const-string v4, "applyGlobalPolicyAsImplicitZenRule"

    .line 85
    .line 86
    const/4 v5, 0x0

    .line 87
    const/4 v3, 0x4

    .line 88
    const/4 v6, 0x1

    .line 89
    move-object v1, p0

    .line 90
    move v7, p2

    .line 91
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    .line 92
    .line 93
    .line 94
    :cond_4
    monitor-exit v0

    .line 95
    return-void

    .line 96
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    throw p0
.end method

.method public final applyGlobalZenModeAsImplicitZenRule(IILjava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p0, "ZenModeHelper"

    .line 8
    .line 9
    const-string p1, "applyGlobalZenModeAsImplicitZenRule called with flag off!"

    .line 10
    .line 11
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto/16 :goto_1

    .line 26
    .line 27
    :cond_1
    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget-object v1, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 32
    .line 33
    invoke-static {p3}, Lcom/android/server/notification/ZenModeHelper;->implicitRuleId(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    if-nez p2, :cond_2

    .line 45
    .line 46
    if-eqz v1, :cond_5

    .line 47
    .line 48
    new-instance v4, Landroid/service/notification/Condition;

    .line 49
    .line 50
    iget-object p2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 51
    .line 52
    iget-object p3, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    const v5, 0x10410e7

    .line 55
    .line 56
    .line 57
    invoke-virtual {p3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    invoke-direct {v4, p2, p3, v3}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    const/4 v5, 0x4

    .line 69
    move-object v1, p0

    .line 70
    move v6, p1

    .line 71
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/ZenModeHelper;->setAutomaticZenRuleStateLocked(Landroid/service/notification/ZenModeConfig;Ljava/util/List;Landroid/service/notification/Condition;II)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    if-nez v1, :cond_3

    .line 76
    .line 77
    invoke-virtual {p0, p3}, Lcom/android/server/notification/ZenModeHelper;->newImplicitZenRule(Ljava/lang/String;)Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iget-object p3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 82
    .line 83
    invoke-virtual {p3}, Landroid/service/notification/ZenModeConfig;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    invoke-virtual {p3}, Landroid/service/notification/ZenPolicy;->copy()Landroid/service/notification/ZenPolicy;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    iput-object p3, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 92
    .line 93
    iget-object p3, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 94
    .line 95
    iget-object v4, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {p3, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    :cond_3
    iget p3, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    .line 101
    .line 102
    and-int/lit8 p3, p3, 0x2

    .line 103
    .line 104
    if-nez p3, :cond_4

    .line 105
    .line 106
    iput p2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 107
    .line 108
    :cond_4
    iput-boolean v3, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 109
    .line 110
    new-instance p2, Landroid/service/notification/Condition;

    .line 111
    .line 112
    iget-object p3, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 113
    .line 114
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 115
    .line 116
    const v4, 0x10410e6

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    const/4 v4, 0x1

    .line 124
    invoke-direct {p2, p3, v3, v4}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;I)V

    .line 125
    .line 126
    .line 127
    iput-object p2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 128
    .line 129
    const-string v4, "applyGlobalZenModeAsImplicitZenRule"

    .line 130
    .line 131
    const/4 v5, 0x0

    .line 132
    const/4 v3, 0x4

    .line 133
    const/4 v6, 0x1

    .line 134
    move-object v1, p0

    .line 135
    move v7, p1

    .line 136
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    .line 137
    .line 138
    .line 139
    :cond_5
    :goto_0
    monitor-exit v0

    .line 140
    return-void

    .line 141
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    throw p0
.end method

.method public applyRestrictions()V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    const/4 v5, 0x2

    if-ne v1, v5, :cond_1

    move v6, v3

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    const/4 v7, 0x3

    if-ne v1, v7, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 2
    :goto_2
    iget-object v8, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v8}, Landroid/app/NotificationManager$Policy;->allowCalls()Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    .line 3
    invoke-virtual {v8}, Landroid/app/NotificationManager$Policy;->getExceptionContacts()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_3

    goto :goto_3

    :cond_3
    move v8, v2

    goto :goto_4

    :cond_4
    :goto_3
    move v8, v3

    .line 4
    :goto_4
    iget-object v9, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v9}, Landroid/app/NotificationManager$Policy;->allowRepeatCallers()Z

    move-result v9

    .line 5
    iget-object v10, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v10}, Landroid/app/NotificationManager$Policy;->allowSystem()Z

    move-result v10

    .line 6
    iget-object v11, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v11}, Landroid/app/NotificationManager$Policy;->allowMedia()Z

    move-result v11

    .line 7
    iget-object v12, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v12}, Landroid/app/NotificationManager$Policy;->allowAlarms()Z

    move-result v12

    .line 8
    iget-wide v13, v0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    const-wide/16 v15, 0x1

    and-long/2addr v15, v13

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_5

    move v15, v3

    goto :goto_5

    :cond_5
    move v15, v2

    :goto_5
    if-nez v1, :cond_8

    if-eqz v4, :cond_6

    if-nez v8, :cond_6

    if-eqz v9, :cond_8

    :cond_6
    const-wide/16 v8, 0x2

    and-long/2addr v8, v13

    cmp-long v8, v8, v17

    if-eqz v8, :cond_7

    goto :goto_6

    :cond_7
    move v8, v2

    goto :goto_7

    :cond_8
    :goto_6
    move v8, v3

    :goto_7
    if-eqz v4, :cond_9

    if-nez v12, :cond_9

    move v9, v3

    goto :goto_8

    :cond_9
    move v9, v2

    :goto_8
    if-eqz v4, :cond_a

    if-nez v11, :cond_a

    move v11, v3

    goto :goto_9

    :cond_a
    move v11, v2

    :goto_9
    if-nez v1, :cond_c

    if-eqz v4, :cond_b

    if-nez v10, :cond_b

    goto :goto_a

    :cond_b
    move v1, v2

    goto :goto_b

    :cond_c
    :goto_a
    move v1, v3

    :goto_b
    if-nez v6, :cond_e

    if-eqz v4, :cond_d

    .line 9
    iget-object v6, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    .line 10
    invoke-static {v6}, Landroid/service/notification/ZenModeConfig;->areAllZenBehaviorSoundsMuted(Landroid/app/NotificationManager$Policy;)Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_c

    :cond_d
    move v6, v2

    goto :goto_d

    :cond_e
    :goto_c
    move v6, v3

    .line 11
    :goto_d
    sget-object v10, Landroid/media/AudioAttributes;->SDK_USAGES:Landroid/util/IntArray;

    invoke-virtual {v10}, Landroid/util/IntArray;->toArray()[I

    move-result-object v10

    array-length v12, v10

    move v13, v2

    :goto_e
    if-ge v13, v12, :cond_22

    aget v14, v10, v13

    .line 12
    sget-object v5, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v14}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    if-ne v5, v7, :cond_f

    .line 13
    invoke-virtual {v0, v4, v2, v14}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    goto/16 :goto_1b

    :cond_f
    if-ne v5, v3, :cond_12

    if-nez v15, :cond_11

    if-eqz v6, :cond_10

    goto :goto_f

    :cond_10
    move v5, v2

    goto :goto_10

    :cond_11
    :goto_f
    move v5, v3

    .line 14
    :goto_10
    invoke-virtual {v0, v4, v5, v14}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    goto/16 :goto_1b

    :cond_12
    const/4 v3, 0x2

    if-ne v5, v3, :cond_15

    if-nez v8, :cond_14

    if-eqz v6, :cond_13

    goto :goto_11

    :cond_13
    move v5, v2

    goto :goto_12

    :cond_14
    :goto_11
    const/4 v5, 0x1

    .line 15
    :goto_12
    invoke-virtual {v0, v4, v5, v14}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    goto :goto_1b

    :cond_15
    const/4 v3, 0x4

    if-ne v5, v3, :cond_18

    if-nez v9, :cond_17

    if-eqz v6, :cond_16

    goto :goto_13

    :cond_16
    move v3, v2

    goto :goto_14

    :cond_17
    :goto_13
    const/4 v3, 0x1

    .line 16
    :goto_14
    invoke-virtual {v0, v4, v3, v14}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    goto :goto_1b

    :cond_18
    const/4 v3, 0x5

    if-ne v5, v3, :cond_1b

    if-nez v11, :cond_1a

    if-eqz v6, :cond_19

    goto :goto_15

    :cond_19
    move v3, v2

    goto :goto_16

    :cond_1a
    :goto_15
    const/4 v3, 0x1

    .line 17
    :goto_16
    invoke-virtual {v0, v4, v3, v14}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    goto :goto_1b

    :cond_1b
    const/4 v3, 0x6

    if-ne v5, v3, :cond_21

    const/16 v3, 0xd

    if-ne v14, v3, :cond_1e

    if-nez v1, :cond_1d

    if-eqz v6, :cond_1c

    goto :goto_17

    :cond_1c
    move v3, v2

    goto :goto_18

    :cond_1d
    :goto_17
    const/4 v3, 0x1

    :goto_18
    const/16 v5, 0x1c

    .line 18
    invoke-virtual {v0, v4, v3, v14, v5}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZII)V

    .line 19
    invoke-virtual {v0, v4, v2, v14, v7}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZII)V

    goto :goto_1b

    :cond_1e
    if-nez v1, :cond_20

    if-eqz v6, :cond_1f

    goto :goto_19

    :cond_1f
    move v3, v2

    goto :goto_1a

    :cond_20
    :goto_19
    const/4 v3, 0x1

    .line 20
    :goto_1a
    invoke-virtual {v0, v4, v3, v14}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    goto :goto_1b

    .line 21
    :cond_21
    invoke-virtual {v0, v4, v6, v14}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    :goto_1b
    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x1

    const/4 v5, 0x2

    goto :goto_e

    :cond_22
    return-void
.end method

.method public applyRestrictions(ZZI)V
    .locals 1

    const/4 v0, 0x3

    .line 28
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZII)V

    const/16 v0, 0x1c

    .line 29
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZII)V

    return-void
.end method

.method public applyRestrictions(ZZII)V
    .locals 3

    .line 22
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 23
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    if-eqz p1, :cond_0

    .line 24
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mPriorityOnlyDndExemptPackages:[Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    .line 25
    :goto_0
    invoke-virtual {v2, p4, p3, p2, p0}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 27
    throw p0
.end method

.method public applyZenToRingerMode()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManagerInternal;->getRingerModeInternal()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget v1, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    if-eq v1, v2, :cond_1

    .line 16
    .line 17
    const/4 v2, 0x3

    .line 18
    if-eq v1, v2, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    if-eqz v0, :cond_3

    .line 22
    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->setPreviousRingerModeSetting(Ljava/lang/Integer;)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    if-nez v0, :cond_3

    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string/jumbo v1, "zen_mode_ringer_level"

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-virtual {p0, v1}, Lcom/android/server/notification/ZenModeHelper;->setPreviousRingerModeSetting(Ljava/lang/Integer;)V

    .line 49
    .line 50
    .line 51
    :cond_3
    :goto_0
    const/4 v1, -0x1

    .line 52
    if-eq v0, v1, :cond_4

    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    .line 55
    .line 56
    const-string v1, "ZenModeHelper"

    .line 57
    .line 58
    invoke-virtual {p0, v0, v1}, Landroid/media/AudioManagerInternal;->setRingerModeInternal(ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_4
    return-void
.end method

.method public final canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    const/16 v2, 0x3e8

    .line 9
    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    const-string v2, "android.permission.MANAGE_NOTIFICATIONS"

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    return v1

    .line 24
    :cond_1
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 25
    .line 26
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const/4 v0, 0x0

    .line 35
    if-eqz p0, :cond_3

    .line 36
    .line 37
    array-length v2, p0

    .line 38
    move v3, v0

    .line 39
    :goto_0
    if-ge v3, v2, :cond_3

    .line 40
    .line 41
    aget-object v4, p0, v3

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_2

    .line 52
    .line 53
    return v1

    .line 54
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    return v0

    .line 58
    :cond_4
    :goto_1
    return v1
.end method

.method public final cleanUpZenRules()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mClock:Ljava/time/Clock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/android/server/notification/ZenModeHelper;->DELETED_RULE_KEPT_FOR:Ljava/time/Duration;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/time/Instant;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v1

    .line 16
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    iget-object v2, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 23
    .line 24
    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeHelper;->deleteRulesWithoutOwner(Landroid/util/ArrayMap;)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    iget-object v2, v4, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    .line 34
    .line 35
    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeHelper;->deleteRulesWithoutOwner(Landroid/util/ArrayMap;)V

    .line 36
    .line 37
    .line 38
    iget-object v2, v4, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    .line 39
    .line 40
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    add-int/lit8 v2, v2, -0x1

    .line 45
    .line 46
    :goto_0
    if-ltz v2, :cond_2

    .line 47
    .line 48
    iget-object v3, v4, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    .line 49
    .line 50
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 55
    .line 56
    iget-object v3, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->deletionInstant:Ljava/time/Instant;

    .line 57
    .line 58
    if-eqz v3, :cond_0

    .line 59
    .line 60
    invoke-virtual {v3, v0}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    goto :goto_2

    .line 69
    :cond_0
    :goto_1
    iget-object v3, v4, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    .line 70
    .line 71
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 78
    .line 79
    invoke-virtual {v4, v0}, Landroid/service/notification/ZenModeConfig;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_3

    .line 84
    .line 85
    const-string v6, "cleanUpZenRules"

    .line 86
    .line 87
    const/4 v8, 0x1

    .line 88
    const/4 v7, 0x0

    .line 89
    const/4 v5, 0x5

    .line 90
    const/16 v9, 0x3e8

    .line 91
    .line 92
    move-object v3, p0

    .line 93
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    .line 94
    .line 95
    .line 96
    :cond_3
    monitor-exit v1

    .line 97
    return-void

    .line 98
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    throw p0
.end method

.method public createZenUpgradeNotification()Landroid/app/Notification;
    .locals 8

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const v2, 0x10405e5

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "android.substName"

    .line 20
    .line 21
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/app/NotificationManager$Policy;->copy()Landroid/app/NotificationManager$Policy;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget v1, v1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 31
    .line 32
    invoke-static {v1}, Landroid/app/NotificationManager$Policy;->areAllVisualEffectsSuppressed(I)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    const v1, 0x10410f2

    .line 39
    .line 40
    .line 41
    const v2, 0x10410f1

    .line 42
    .line 43
    .line 44
    const v3, 0x1080406

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const v1, 0x10410f0

    .line 49
    .line 50
    .line 51
    const v2, 0x10410ef

    .line 52
    .line 53
    .line 54
    const v3, 0x108060d

    .line 55
    .line 56
    .line 57
    :goto_0
    const-string v4, "android.settings.ZEN_MODE_ONBOARDING"

    .line 58
    .line 59
    const v5, 0x10008000

    .line 60
    .line 61
    .line 62
    invoke-static {v5, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    new-instance v5, Landroid/app/Notification$Builder;

    .line 67
    .line 68
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 69
    .line 70
    sget-object v7, Lcom/android/internal/notification/SystemNotificationChannels;->DO_NOT_DISTURB:Ljava/lang/String;

    .line 71
    .line 72
    invoke-direct {v5, v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const/4 v6, 0x1

    .line 76
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    const v7, 0x10805bf

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    iget-object v7, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 88
    .line 89
    invoke-static {v7, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 98
    .line 99
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 112
    .line 113
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 126
    .line 127
    const/4 v2, 0x0

    .line 128
    const/high16 v3, 0xc000000

    .line 129
    .line 130
    invoke-static {p0, v2, v4, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-virtual {v1, p0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-virtual {p0, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    invoke-virtual {p0, v6}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    .line 151
    .line 152
    invoke-direct {v0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    return-object p0
.end method

.method public final deleteRulesWithoutOwner(Landroid/util/ArrayMap;)V
    .locals 8

    .line 1
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mClock:Ljava/time/Clock;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    :goto_0
    if-eqz p1, :cond_2

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    add-int/lit8 v2, v2, -0x1

    .line 25
    .line 26
    :goto_1
    if-ltz v2, :cond_2

    .line 27
    .line 28
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 33
    .line 34
    iget-wide v4, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    .line 35
    .line 36
    sub-long v4, v0, v4

    .line 37
    .line 38
    const-wide/32 v6, 0xf731400

    .line 39
    .line 40
    .line 41
    cmp-long v4, v6, v4

    .line 42
    .line 43
    if-gez v4, :cond_1

    .line 44
    .line 45
    :try_start_0
    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    if-eqz v4, :cond_1

    .line 50
    .line 51
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 52
    .line 53
    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    const/high16 v5, 0x400000

    .line 58
    .line 59
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :catch_0
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, -0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    return-void
.end method

.method public final dispatchOnAutomaticRuleStatusChanged(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 18
    .line 19
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/notification/ZenModeHelper$Callback;->onAutomaticRuleStatusChanged(IILjava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public final drawableResIdToResName(ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "ZenModeHelper"

    .line 2
    .line 3
    const-string v1, "Resource name for ID="

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-object v2

    .line 9
    :cond_0
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 13
    .line 14
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const/16 v4, 0x3e8

    .line 29
    .line 30
    if-le v3, v4, :cond_1

    .line 31
    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v4, " in package "

    .line 41
    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v4, " is too long ("

    .line 49
    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p0, "); ignoring it"

    .line 61
    .line 62
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    return-object v2

    .line 73
    :cond_1
    return-object p0

    .line 74
    :catch_0
    const-string p0, " not found in package "

    .line 75
    .line 76
    const-string v3, ". Resource IDs may change when the application is upgraded, and the system may not be able to find the correct resource."

    .line 77
    .line 78
    invoke-static {p1, v1, p0, p2, v3}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    return-object v2
.end method

.method public final dump(Landroid/util/proto/ProtoOutputStream;)V
    .locals 7

    const-wide v0, 0x10e00000001L

    .line 1
    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const-wide v2, 0x20b00000002L

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, p1, v2, v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 5
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 6
    iget-boolean v5, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-eqz v5, :cond_1

    iget-object v5, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz v5, :cond_1

    iget v5, v5, Landroid/service/notification/Condition;->state:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    iget-boolean v5, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    if-nez v5, :cond_1

    .line 7
    invoke-virtual {v4, p1, v2, v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_1

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v1

    const-wide v2, 0x10b00000005L

    invoke-virtual {v1, p1, v2, v3}, Landroid/app/NotificationManager$Policy;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 9
    iget-wide v1, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    const-wide v3, 0x10500000003L

    invoke-virtual {p1, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 10
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 9

    const-string v0, "    "

    .line 11
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 12
    const-string/jumbo v1, "mZenMode="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 13
    iget v1, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-static {v1}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mConsolidatedPolicy="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigsArrayLock:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/16 v5, 0x3d

    if-ge v4, v2, :cond_0

    .line 18
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mConfigs[u="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/notification/ZenModeConfig;

    const-string v8, "    "

    .line 19
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 20
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    .line 21
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mUser="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 23
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v2

    .line 24
    :try_start_1
    const-string v1, "mConfig"

    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    const-string v6, "    "

    .line 25
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 26
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 27
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 28
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mSuppressedEffects="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    .line 29
    const-string/jumbo v4, "mPriorityOnlyDndExemptPackages="

    .line 30
    invoke-static {v1, v2, p1, v0, v4}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 32
    :goto_1
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mPriorityOnlyDndExemptPackages:[Ljava/lang/String;

    array-length v1, v1

    if-ge v3, v1, :cond_1

    .line 33
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "        "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mPriorityOnlyDndExemptPackages:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 34
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mDefaultPhoneApp="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 36
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "RepeatCallers.mThresholdMinutes="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 37
    sget-object v1, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    iget v1, v1, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 38
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSubscriptions="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void

    :catchall_1
    move-exception p0

    .line 40
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    .line 41
    :goto_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public evaluateZenModeLocked(ILjava/lang/String;Z)V
    .locals 11

    .line 1
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "ZenModeHelper"

    .line 6
    .line 7
    const-string v1, "evaluateZenMode"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    move v0, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_2
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    :goto_0
    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    .line 29
    .line 30
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    .line 31
    .line 32
    monitor-enter v3

    .line 33
    :try_start_0
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 34
    .line 35
    const/4 v5, 0x1

    .line 36
    if-nez v4, :cond_3

    .line 37
    .line 38
    monitor-exit v3

    .line 39
    move v4, v1

    .line 40
    goto/16 :goto_4

    .line 41
    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto/16 :goto_5

    .line 44
    .line 45
    :cond_3
    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig;->isManualActive()Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_4

    .line 50
    .line 51
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 52
    .line 53
    iget-object v4, v4, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 54
    .line 55
    iget v4, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 56
    .line 57
    monitor-exit v3

    .line 58
    goto/16 :goto_4

    .line 59
    .line 60
    :cond_4
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 61
    .line 62
    iget-object v4, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 63
    .line 64
    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    move v6, v1

    .line 73
    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    if-eqz v7, :cond_d

    .line 78
    .line 79
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    check-cast v7, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 84
    .line 85
    invoke-virtual {v7}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    if-eqz v8, :cond_5

    .line 90
    .line 91
    iget v8, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 92
    .line 93
    const/4 v9, 0x2

    .line 94
    const/4 v10, 0x3

    .line 95
    if-eq v8, v5, :cond_8

    .line 96
    .line 97
    if-eq v8, v9, :cond_7

    .line 98
    .line 99
    if-eq v8, v10, :cond_6

    .line 100
    .line 101
    move v8, v1

    .line 102
    goto :goto_2

    .line 103
    :cond_6
    move v8, v9

    .line 104
    goto :goto_2

    .line 105
    :cond_7
    move v8, v10

    .line 106
    goto :goto_2

    .line 107
    :cond_8
    move v8, v5

    .line 108
    :goto_2
    if-eq v6, v5, :cond_a

    .line 109
    .line 110
    if-eq v6, v9, :cond_9

    .line 111
    .line 112
    if-eq v6, v10, :cond_b

    .line 113
    .line 114
    move v9, v1

    .line 115
    goto :goto_3

    .line 116
    :cond_9
    move v9, v10

    .line 117
    goto :goto_3

    .line 118
    :cond_a
    move v9, v5

    .line 119
    :cond_b
    :goto_3
    if-le v8, v9, :cond_5

    .line 120
    .line 121
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 122
    .line 123
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    const-string/jumbo v8, "zen_settings_suggestion_viewed"

    .line 128
    .line 129
    .line 130
    invoke-static {v6, v8, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    if-nez v6, :cond_c

    .line 135
    .line 136
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 137
    .line 138
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    const-string/jumbo v8, "show_zen_settings_suggestion"

    .line 143
    .line 144
    .line 145
    invoke-static {v6, v8, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 146
    .line 147
    .line 148
    :cond_c
    iget v6, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_d
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    move v4, v6

    .line 153
    :goto_4
    invoke-static {v4, p2}, Lcom/android/server/notification/ZenLog;->traceSetZenMode(ILjava/lang/String;)V

    .line 154
    .line 155
    .line 156
    iput v4, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    .line 157
    .line 158
    invoke-virtual {p0, v4}, Lcom/android/server/notification/ZenModeHelper;->setZenModeSetting(I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ZenModeHelper;->updateAndApplyConsolidatedPolicyAndDeviceEffects(ILjava/lang/String;)V

    .line 162
    .line 163
    .line 164
    if-eqz p3, :cond_f

    .line 165
    .line 166
    if-ne v4, v2, :cond_e

    .line 167
    .line 168
    if-ne v4, v5, :cond_f

    .line 169
    .line 170
    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    .line 171
    .line 172
    invoke-virtual {p1}, Landroid/app/NotificationManager$Policy;->hashCode()I

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    if-eq v0, p1, :cond_f

    .line 177
    .line 178
    :cond_e
    move v1, v5

    .line 179
    :cond_f
    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    .line 180
    .line 181
    sget p2, Lcom/android/server/notification/ZenModeHelper$H;->$r8$clinit:I

    .line 182
    .line 183
    const/4 p2, 0x5

    .line 184
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 185
    .line 186
    .line 187
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 188
    .line 189
    .line 190
    move-result-object p3

    .line 191
    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 196
    .line 197
    .line 198
    if-eq v4, v2, :cond_10

    .line 199
    .line 200
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    .line 201
    .line 202
    invoke-virtual {p0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 206
    .line 207
    .line 208
    :cond_10
    return-void

    .line 209
    :goto_5
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    throw p0
.end method

.method public final getAppsToBypassDndForEnabledForMode()Ljava/util/ArrayList;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 5
    .line 6
    iget-object p0, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const/4 v1, 0x0

    .line 17
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 36
    .line 37
    const-string v4, "com.android.settings"

    .line 38
    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    iget-object v2, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 46
    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    invoke-virtual {v2}, Landroid/service/notification/ZenPolicy;->getAppsToBypassDnd()Ljava/util/ArrayList;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    sget-boolean v2, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    .line 54
    .line 55
    if-eqz v2, :cond_0

    .line 56
    .line 57
    const-string v2, "ZenModeHelper"

    .line 58
    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v4, "BixbyRoutine Mode apps="

    .line 65
    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catchall_0
    move-exception p0

    .line 85
    goto :goto_1

    .line 86
    :cond_1
    monitor-exit v0

    .line 87
    return-object v1

    .line 88
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    throw p0
.end method

.method public final getConfig()Landroid/service/notification/ZenModeConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    monitor-exit v0

    .line 11
    return-object p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public final getCurrentInstanceCount(Landroid/content/ComponentName;)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 9
    .line 10
    iget-object p0, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_3

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 31
    .line 32
    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 33
    .line 34
    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-nez v3, :cond_2

    .line 39
    .line 40
    iget-object v2, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    .line 41
    .line 42
    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    monitor-exit v1

    .line 55
    return v0

    .line 56
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    throw p0
.end method

.method public getDefaultZenPolicy()Landroid/service/notification/ZenPolicy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getNotificationPolicy()Landroid/app/NotificationManager$Policy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy()Landroid/app/NotificationManager$Policy;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_0
    monitor-exit v0

    .line 15
    return-object p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0
.end method

.method public final getZenRules()Ljava/util/List;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    monitor-exit v1

    .line 14
    return-object v0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 38
    .line 39
    invoke-virtual {p0, v3}, Lcom/android/server/notification/ZenModeHelper;->canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    monitor-exit v1

    .line 50
    return-object v0

    .line 51
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p0
.end method

.method public final loadConfigForUser(ILjava/lang/String;)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_5

    .line 4
    .line 5
    if-gez p1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    iput p1, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    .line 10
    .line 11
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const-string v1, "ZenModeHelper"

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v3, " u="

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigsArrayLock:Ljava/lang/Object;

    .line 41
    .line 42
    monitor-enter v1

    .line 43
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    .line 44
    .line 45
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    .line 52
    .line 53
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Landroid/service/notification/ZenModeConfig;

    .line 58
    .line 59
    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    const/4 v2, 0x0

    .line 67
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    if-nez v2, :cond_4

    .line 69
    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    const-string v0, "ZenModeHelper"

    .line 73
    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v2, " generating default config for user "

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    :cond_3
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    .line 98
    .line 99
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    iput p1, v2, Landroid/service/notification/ZenModeConfig;->user:I

    .line 104
    .line 105
    :cond_4
    move-object v4, v2

    .line 106
    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    .line 107
    .line 108
    monitor-enter p1

    .line 109
    const/4 v5, 0x2

    .line 110
    const/16 v9, 0x3e8

    .line 111
    .line 112
    const/4 v8, 0x1

    .line 113
    const/4 v7, 0x0

    .line 114
    move-object v3, p0

    .line 115
    move-object v6, p2

    .line 116
    :try_start_1
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    .line 117
    .line 118
    .line 119
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 120
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->cleanUpZenRules()V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :catchall_1
    move-exception p0

    .line 125
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 126
    throw p0

    .line 127
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 128
    throw p0

    .line 129
    :cond_5
    :goto_2
    return-void
.end method

.method public final maybePreserveRemovedRule(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;I)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x4

    .line 9
    if-ne p3, v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/service/notification/ZenModeConfig$ZenRule;->canBeUpdatedByApp()Z

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    if-nez p3, :cond_1

    .line 16
    .line 17
    const-string p3, "android"

    .line 18
    .line 19
    iget-object v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    if-nez p3, :cond_1

    .line 26
    .line 27
    invoke-static {p2}, Landroid/service/notification/ZenModeConfig;->deletedRuleKey(Landroid/service/notification/ZenModeConfig$ZenRule;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    if-eqz p3, :cond_1

    .line 32
    .line 33
    invoke-virtual {p2}, Landroid/service/notification/ZenModeConfig$ZenRule;->copy()Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mClock:Ljava/time/Clock;

    .line 38
    .line 39
    invoke-static {p0}, Ljava/time/Instant;->now(Ljava/time/Clock;)Ljava/time/Instant;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    iput-object p0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->deletionInstant:Ljava/time/Instant;

    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    iput-boolean p0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 47
    .line 48
    const/4 p0, 0x0

    .line 49
    iput-object p0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 50
    .line 51
    iget-object p0, p1, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    .line 52
    .line 53
    invoke-virtual {p0, p3, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method

.method public final newImplicitZenRule(Ljava/lang/String;)Landroid/service/notification/ZenModeConfig$ZenRule;
    .locals 4

    .line 1
    new-instance v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/android/server/notification/ZenModeHelper;->implicitRuleId(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mClock:Ljava/time/Clock;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    iput-wide v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    .line 21
    .line 22
    new-instance v1, Lcom/android/server/notification/ZenModeHelper$$ExternalSyntheticLambda0;

    .line 23
    .line 24
    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/notification/ZenModeHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    iput v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    iget-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 36
    .line 37
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const v3, 0x10410e8

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    iput-object p0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    .line 49
    .line 50
    const/4 p0, 0x0

    .line 51
    iput-object p0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 52
    .line 53
    new-instance v2, Landroid/net/Uri$Builder;

    .line 54
    .line 55
    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v3, "condition"

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const-string v3, "android"

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    const-string v3, "implicit"

    .line 71
    .line 72
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v2, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iput-object p1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 85
    .line 86
    const/4 p1, 0x1

    .line 87
    iput-boolean p1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 88
    .line 89
    iput-boolean v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->modified:Z

    .line 90
    .line 91
    iput-object p0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 92
    .line 93
    iput-object p0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    .line 94
    .line 95
    return-object v0
.end method

.method public final populateZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;IZ)Z
    .locals 6

    .line 1
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v0, :cond_25

    .line 9
    .line 10
    if-eqz p5, :cond_0

    .line 11
    .line 12
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->newRuleId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mClock:Ljava/time/Clock;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    iput-wide v4, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    .line 25
    .line 26
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 31
    .line 32
    iput-object p1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 33
    .line 34
    move p1, v3

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move p1, v2

    .line 37
    :goto_0
    iget-object v0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 38
    .line 39
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 54
    .line 55
    move p1, v3

    .line 56
    :cond_1
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    const/4 v4, 0x3

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    if-nez p5, :cond_2

    .line 70
    .line 71
    if-ne p4, v4, :cond_2

    .line 72
    .line 73
    iget-boolean v0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 74
    .line 75
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-ne v0, v5, :cond_2

    .line 80
    .line 81
    iget-object v0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 82
    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    iget-object v5, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 86
    .line 87
    if-eqz v5, :cond_2

    .line 88
    .line 89
    iget-object v5, v5, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    .line 90
    .line 91
    invoke-virtual {v0, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_2

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    iput-object v1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 99
    .line 100
    :goto_1
    iget-boolean v0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 101
    .line 102
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eq v0, v1, :cond_3

    .line 107
    .line 108
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    iput-boolean p1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 113
    .line 114
    iput-boolean v2, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 115
    .line 116
    move p1, v3

    .line 117
    :cond_3
    iget-object v0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    .line 118
    .line 119
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-nez v0, :cond_4

    .line 128
    .line 129
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    iput-object p1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    .line 134
    .line 135
    move p1, v3

    .line 136
    :cond_4
    iget-boolean v0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    .line 137
    .line 138
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->isManualInvocationAllowed()Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-eq v0, v1, :cond_5

    .line 143
    .line 144
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->isManualInvocationAllowed()Z

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    iput-boolean p1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    .line 149
    .line 150
    move p1, v3

    .line 151
    :cond_5
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-nez v0, :cond_6

    .line 156
    .line 157
    iget-object v0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getIconResId()I

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/ZenModeHelper;->drawableResIdToResName(ILjava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    iget-object v1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    .line 168
    .line 169
    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    if-nez v1, :cond_6

    .line 174
    .line 175
    iput-object v0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    .line 176
    .line 177
    move p1, v3

    .line 178
    :cond_6
    iget-object v0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getTriggerDescription()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-nez v0, :cond_7

    .line 189
    .line 190
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getTriggerDescription()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    iput-object p1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    .line 195
    .line 196
    move p1, v3

    .line 197
    :cond_7
    iget v0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    .line 198
    .line 199
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getType()I

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    if-eq v0, v1, :cond_8

    .line 204
    .line 205
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getType()I

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    iput p1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    .line 210
    .line 211
    move p1, v3

    .line 212
    :cond_8
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->isModified()Z

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    iput-boolean v0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->modified:Z

    .line 217
    .line 218
    iget-object v0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 219
    .line 220
    const/4 v1, 0x5

    .line 221
    if-nez p5, :cond_a

    .line 222
    .line 223
    if-eq p4, v4, :cond_a

    .line 224
    .line 225
    if-ne p4, v1, :cond_9

    .line 226
    .line 227
    goto :goto_2

    .line 228
    :cond_9
    iget v5, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    .line 229
    .line 230
    and-int/2addr v5, v3

    .line 231
    if-nez v5, :cond_b

    .line 232
    .line 233
    :cond_a
    :goto_2
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    iput-object v5, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 238
    .line 239
    invoke-static {v5, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v5

    .line 243
    xor-int/2addr v5, v3

    .line 244
    or-int/2addr p1, v5

    .line 245
    :cond_b
    if-nez p5, :cond_e

    .line 246
    .line 247
    if-eq p4, v4, :cond_e

    .line 248
    .line 249
    if-ne p4, v1, :cond_c

    .line 250
    .line 251
    goto :goto_3

    .line 252
    :cond_c
    invoke-virtual {p3}, Landroid/service/notification/ZenModeConfig$ZenRule;->canBeUpdatedByApp()Z

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    if-eqz v1, :cond_d

    .line 257
    .line 258
    goto :goto_3

    .line 259
    :cond_d
    return p1

    .line 260
    :cond_e
    :goto_3
    if-ne p4, v4, :cond_f

    .line 261
    .line 262
    move v1, v3

    .line 263
    goto :goto_4

    .line 264
    :cond_f
    move v1, v2

    .line 265
    :goto_4
    if-eqz v1, :cond_10

    .line 266
    .line 267
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    if-nez v0, :cond_10

    .line 276
    .line 277
    iget v0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    .line 278
    .line 279
    or-int/2addr v0, v3

    .line 280
    iput v0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    .line 281
    .line 282
    :cond_10
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getInterruptionFilter()I

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    invoke-static {v0, v2}, Landroid/app/NotificationManager;->zenModeFromInterruptionFilter(II)I

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    iget v4, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 291
    .line 292
    if-eq v4, v0, :cond_12

    .line 293
    .line 294
    iput v0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 295
    .line 296
    if-eqz v1, :cond_11

    .line 297
    .line 298
    iget p1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    .line 299
    .line 300
    or-int/lit8 p1, p1, 0x2

    .line 301
    .line 302
    iput p1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    .line 303
    .line 304
    :cond_11
    move p1, v3

    .line 305
    :cond_12
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    .line 306
    .line 307
    .line 308
    move-result v0

    .line 309
    const/4 v4, 0x4

    .line 310
    if-eqz v0, :cond_14

    .line 311
    .line 312
    iget-object v0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 313
    .line 314
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getIconResId()I

    .line 315
    .line 316
    .line 317
    move-result v5

    .line 318
    invoke-virtual {p0, v5, v0}, Lcom/android/server/notification/ZenModeHelper;->drawableResIdToResName(ILjava/lang/String;)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    iget-object v5, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    .line 323
    .line 324
    invoke-static {v5, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result v5

    .line 328
    if-nez v5, :cond_14

    .line 329
    .line 330
    iput-object v0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    .line 331
    .line 332
    if-eqz v1, :cond_13

    .line 333
    .line 334
    iget p1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    .line 335
    .line 336
    or-int/2addr p1, v4

    .line 337
    iput p1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    .line 338
    .line 339
    :cond_13
    move p1, v3

    .line 340
    :cond_14
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    invoke-virtual {p0, p3, v0, v1, p5}, Lcom/android/server/notification/ZenModeHelper;->updatePolicy(Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenPolicy;ZZ)Z

    .line 345
    .line 346
    .line 347
    move-result p0

    .line 348
    or-int/2addr p0, p1

    .line 349
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getDeviceEffects()Landroid/service/notification/ZenDeviceEffects;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    if-ne p4, v4, :cond_15

    .line 354
    .line 355
    move p2, v3

    .line 356
    goto :goto_5

    .line 357
    :cond_15
    move p2, v2

    .line 358
    :goto_5
    if-nez p1, :cond_16

    .line 359
    .line 360
    goto/16 :goto_7

    .line 361
    .line 362
    :cond_16
    iget-object p4, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    .line 363
    .line 364
    if-eqz p4, :cond_17

    .line 365
    .line 366
    goto :goto_6

    .line 367
    :cond_17
    new-instance p4, Landroid/service/notification/ZenDeviceEffects$Builder;

    .line 368
    .line 369
    invoke-direct {p4}, Landroid/service/notification/ZenDeviceEffects$Builder;-><init>()V

    .line 370
    .line 371
    .line 372
    invoke-virtual {p4}, Landroid/service/notification/ZenDeviceEffects$Builder;->build()Landroid/service/notification/ZenDeviceEffects;

    .line 373
    .line 374
    .line 375
    move-result-object p4

    .line 376
    :goto_6
    if-eqz p2, :cond_18

    .line 377
    .line 378
    new-instance p2, Landroid/service/notification/ZenDeviceEffects$Builder;

    .line 379
    .line 380
    invoke-direct {p2, p1}, Landroid/service/notification/ZenDeviceEffects$Builder;-><init>(Landroid/service/notification/ZenDeviceEffects;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {p4}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableAutoBrightness()Z

    .line 384
    .line 385
    .line 386
    move-result p1

    .line 387
    invoke-virtual {p2, p1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisableAutoBrightness(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    .line 388
    .line 389
    .line 390
    move-result-object p1

    .line 391
    invoke-virtual {p4}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTapToWake()Z

    .line 392
    .line 393
    .line 394
    move-result p2

    .line 395
    invoke-virtual {p1, p2}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisableTapToWake(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    .line 396
    .line 397
    .line 398
    move-result-object p1

    .line 399
    invoke-virtual {p4}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTiltToWake()Z

    .line 400
    .line 401
    .line 402
    move-result p2

    .line 403
    invoke-virtual {p1, p2}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisableTiltToWake(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    .line 404
    .line 405
    .line 406
    move-result-object p1

    .line 407
    invoke-virtual {p4}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTouch()Z

    .line 408
    .line 409
    .line 410
    move-result p2

    .line 411
    invoke-virtual {p1, p2}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisableTouch(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    .line 412
    .line 413
    .line 414
    move-result-object p1

    .line 415
    invoke-virtual {p4}, Landroid/service/notification/ZenDeviceEffects;->shouldMinimizeRadioUsage()Z

    .line 416
    .line 417
    .line 418
    move-result p2

    .line 419
    invoke-virtual {p1, p2}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldMinimizeRadioUsage(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    .line 420
    .line 421
    .line 422
    move-result-object p1

    .line 423
    invoke-virtual {p4}, Landroid/service/notification/ZenDeviceEffects;->shouldMaximizeDoze()Z

    .line 424
    .line 425
    .line 426
    move-result p2

    .line 427
    invoke-virtual {p1, p2}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldMaximizeDoze(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    .line 428
    .line 429
    .line 430
    move-result-object p1

    .line 431
    invoke-virtual {p4}, Landroid/service/notification/ZenDeviceEffects;->getExtraEffects()Ljava/util/Set;

    .line 432
    .line 433
    .line 434
    move-result-object p2

    .line 435
    invoke-virtual {p1, p2}, Landroid/service/notification/ZenDeviceEffects$Builder;->setExtraEffects(Ljava/util/Set;)Landroid/service/notification/ZenDeviceEffects$Builder;

    .line 436
    .line 437
    .line 438
    move-result-object p1

    .line 439
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects$Builder;->build()Landroid/service/notification/ZenDeviceEffects;

    .line 440
    .line 441
    .line 442
    move-result-object p1

    .line 443
    :cond_18
    iput-object p1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    .line 444
    .line 445
    if-eqz v1, :cond_24

    .line 446
    .line 447
    iget p2, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffectsUserModifiedFields:I

    .line 448
    .line 449
    invoke-virtual {p4}, Landroid/service/notification/ZenDeviceEffects;->shouldDisplayGrayscale()Z

    .line 450
    .line 451
    .line 452
    move-result p5

    .line 453
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisplayGrayscale()Z

    .line 454
    .line 455
    .line 456
    move-result v0

    .line 457
    if-eq p5, v0, :cond_19

    .line 458
    .line 459
    or-int/lit8 p2, p2, 0x1

    .line 460
    .line 461
    :cond_19
    invoke-virtual {p4}, Landroid/service/notification/ZenDeviceEffects;->shouldSuppressAmbientDisplay()Z

    .line 462
    .line 463
    .line 464
    move-result p5

    .line 465
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldSuppressAmbientDisplay()Z

    .line 466
    .line 467
    .line 468
    move-result v0

    .line 469
    if-eq p5, v0, :cond_1a

    .line 470
    .line 471
    or-int/lit8 p2, p2, 0x2

    .line 472
    .line 473
    :cond_1a
    invoke-virtual {p4}, Landroid/service/notification/ZenDeviceEffects;->shouldDimWallpaper()Z

    .line 474
    .line 475
    .line 476
    move-result p5

    .line 477
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDimWallpaper()Z

    .line 478
    .line 479
    .line 480
    move-result v0

    .line 481
    if-eq p5, v0, :cond_1b

    .line 482
    .line 483
    or-int/lit8 p2, p2, 0x4

    .line 484
    .line 485
    :cond_1b
    invoke-virtual {p4}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightMode()Z

    .line 486
    .line 487
    .line 488
    move-result p5

    .line 489
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightMode()Z

    .line 490
    .line 491
    .line 492
    move-result v0

    .line 493
    if-eq p5, v0, :cond_1c

    .line 494
    .line 495
    or-int/lit8 p2, p2, 0x8

    .line 496
    .line 497
    :cond_1c
    invoke-virtual {p4}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableAutoBrightness()Z

    .line 498
    .line 499
    .line 500
    move-result p5

    .line 501
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableAutoBrightness()Z

    .line 502
    .line 503
    .line 504
    move-result v0

    .line 505
    if-eq p5, v0, :cond_1d

    .line 506
    .line 507
    or-int/lit8 p2, p2, 0x10

    .line 508
    .line 509
    :cond_1d
    invoke-virtual {p4}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTapToWake()Z

    .line 510
    .line 511
    .line 512
    move-result p5

    .line 513
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTapToWake()Z

    .line 514
    .line 515
    .line 516
    move-result v0

    .line 517
    if-eq p5, v0, :cond_1e

    .line 518
    .line 519
    or-int/lit8 p2, p2, 0x20

    .line 520
    .line 521
    :cond_1e
    invoke-virtual {p4}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTiltToWake()Z

    .line 522
    .line 523
    .line 524
    move-result p5

    .line 525
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTiltToWake()Z

    .line 526
    .line 527
    .line 528
    move-result v0

    .line 529
    if-eq p5, v0, :cond_1f

    .line 530
    .line 531
    or-int/lit8 p2, p2, 0x40

    .line 532
    .line 533
    :cond_1f
    invoke-virtual {p4}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTouch()Z

    .line 534
    .line 535
    .line 536
    move-result p5

    .line 537
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTouch()Z

    .line 538
    .line 539
    .line 540
    move-result v0

    .line 541
    if-eq p5, v0, :cond_20

    .line 542
    .line 543
    or-int/lit16 p2, p2, 0x80

    .line 544
    .line 545
    :cond_20
    invoke-virtual {p4}, Landroid/service/notification/ZenDeviceEffects;->shouldMinimizeRadioUsage()Z

    .line 546
    .line 547
    .line 548
    move-result p5

    .line 549
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldMinimizeRadioUsage()Z

    .line 550
    .line 551
    .line 552
    move-result v0

    .line 553
    if-eq p5, v0, :cond_21

    .line 554
    .line 555
    or-int/lit16 p2, p2, 0x100

    .line 556
    .line 557
    :cond_21
    invoke-virtual {p4}, Landroid/service/notification/ZenDeviceEffects;->shouldMaximizeDoze()Z

    .line 558
    .line 559
    .line 560
    move-result p5

    .line 561
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldMaximizeDoze()Z

    .line 562
    .line 563
    .line 564
    move-result v0

    .line 565
    if-eq p5, v0, :cond_22

    .line 566
    .line 567
    or-int/lit16 p2, p2, 0x200

    .line 568
    .line 569
    :cond_22
    invoke-virtual {p4}, Landroid/service/notification/ZenDeviceEffects;->getExtraEffects()Ljava/util/Set;

    .line 570
    .line 571
    .line 572
    move-result-object p5

    .line 573
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->getExtraEffects()Ljava/util/Set;

    .line 574
    .line 575
    .line 576
    move-result-object v0

    .line 577
    invoke-static {p5, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 578
    .line 579
    .line 580
    move-result p5

    .line 581
    if-nez p5, :cond_23

    .line 582
    .line 583
    or-int/lit16 p2, p2, 0x400

    .line 584
    .line 585
    :cond_23
    iput p2, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffectsUserModifiedFields:I

    .line 586
    .line 587
    :cond_24
    invoke-virtual {p1, p4}, Landroid/service/notification/ZenDeviceEffects;->equals(Ljava/lang/Object;)Z

    .line 588
    .line 589
    .line 590
    move-result p1

    .line 591
    xor-int/lit8 v2, p1, 0x1

    .line 592
    .line 593
    :goto_7
    or-int/2addr p0, v2

    .line 594
    return p0

    .line 595
    :cond_25
    if-eqz p5, :cond_26

    .line 596
    .line 597
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->newRuleId()Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object p0

    .line 601
    iput-object p0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    .line 602
    .line 603
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 604
    .line 605
    .line 606
    move-result-wide p4

    .line 607
    iput-wide p4, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    .line 608
    .line 609
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    .line 610
    .line 611
    .line 612
    move-result-object p0

    .line 613
    iput-object p0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 614
    .line 615
    iput-object p1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 616
    .line 617
    :cond_26
    iget-boolean p0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 618
    .line 619
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    .line 620
    .line 621
    .line 622
    move-result p1

    .line 623
    if-eq p0, p1, :cond_27

    .line 624
    .line 625
    iput-boolean v2, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 626
    .line 627
    :cond_27
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object p0

    .line 631
    iput-object p0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 632
    .line 633
    iput-object v1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 634
    .line 635
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    .line 636
    .line 637
    .line 638
    move-result-object p0

    .line 639
    iput-object p0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 640
    .line 641
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    .line 642
    .line 643
    .line 644
    move-result p0

    .line 645
    iput-boolean p0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 646
    .line 647
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->isModified()Z

    .line 648
    .line 649
    .line 650
    move-result p0

    .line 651
    iput-boolean p0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->modified:Z

    .line 652
    .line 653
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    .line 654
    .line 655
    .line 656
    move-result-object p0

    .line 657
    iput-object p0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 658
    .line 659
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getInterruptionFilter()I

    .line 660
    .line 661
    .line 662
    move-result p0

    .line 663
    invoke-static {p0, v2}, Landroid/app/NotificationManager;->zenModeFromInterruptionFilter(II)I

    .line 664
    .line 665
    .line 666
    move-result p0

    .line 667
    iput p0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 668
    .line 669
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    .line 670
    .line 671
    .line 672
    move-result-object p0

    .line 673
    iput-object p0, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    .line 674
    .line 675
    return v3
.end method

.method public final ruleToProtoLocked(ILandroid/service/notification/ZenModeConfig$ZenRule;ZLjava/util/List;)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move v1, p1

    .line 3
    move-object v2, p2

    .line 4
    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    .line 5
    .line 6
    const-string v4, ""

    .line 7
    .line 8
    if-nez v3, :cond_0

    .line 9
    .line 10
    move-object v3, v4

    .line 11
    :cond_0
    sget-object v5, Landroid/service/notification/ZenModeConfig;->DEFAULT_RULE_IDS:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    if-nez v5, :cond_1

    .line 18
    .line 19
    move-object v3, v4

    .line 20
    :cond_1
    invoke-virtual {p2}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    if-nez v5, :cond_2

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    invoke-virtual {p2}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    :goto_0
    iget-object v5, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    .line 32
    .line 33
    if-eqz v5, :cond_3

    .line 34
    .line 35
    move-object v4, v5

    .line 36
    :cond_3
    iget v5, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    .line 37
    .line 38
    if-eqz p3, :cond_4

    .line 39
    .line 40
    const-string v3, "MANUAL_RULE"

    .line 41
    .line 42
    const/16 v5, 0x3e7

    .line 43
    .line 44
    :cond_4
    move v11, v5

    .line 45
    move-object v5, v3

    .line 46
    const/4 v3, 0x0

    .line 47
    new-array v3, v3, [B

    .line 48
    .line 49
    iget-object v6, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 50
    .line 51
    if-eqz v6, :cond_5

    .line 52
    .line 53
    invoke-virtual {v6}, Landroid/service/notification/ZenPolicy;->toProto()[B

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    :cond_5
    move-object v7, v3

    .line 58
    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 59
    .line 60
    iget v6, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 61
    .line 62
    const-string v8, "android"

    .line 63
    .line 64
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    if-eqz v8, :cond_6

    .line 69
    .line 70
    const/16 v0, 0x3e8

    .line 71
    .line 72
    :goto_1
    move v8, v0

    .line 73
    goto :goto_2

    .line 74
    :cond_6
    const-string/jumbo v8, "|"

    .line 75
    .line 76
    .line 77
    invoke-static {p1, v4, v8}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    iget-object v9, v0, Lcom/android/server/notification/ZenModeHelper;->mRulesUidCache:Landroid/util/ArrayMap;

    .line 82
    .line 83
    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    if-nez v9, :cond_7

    .line 88
    .line 89
    :try_start_0
    iget-object v9, v0, Lcom/android/server/notification/ZenModeHelper;->mRulesUidCache:Landroid/util/ArrayMap;

    .line 90
    .line 91
    iget-object v10, v0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 92
    .line 93
    invoke-virtual {v10, v4, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-virtual {v9, v8, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .line 103
    .line 104
    :catch_0
    :cond_7
    iget-object v0, v0, Lcom/android/server/notification/ZenModeHelper;->mRulesUidCache:Landroid/util/ArrayMap;

    .line 105
    .line 106
    const/4 v4, -0x1

    .line 107
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v0, v8, v4}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Ljava/lang/Integer;

    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    goto :goto_1

    .line 122
    :goto_2
    iget v9, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    .line 123
    .line 124
    iget v10, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicyUserModifiedFields:I

    .line 125
    .line 126
    iget v12, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffectsUserModifiedFields:I

    .line 127
    .line 128
    const/16 v0, 0x2764

    .line 129
    .line 130
    const/4 v4, 0x0

    .line 131
    move v1, p1

    .line 132
    move v2, v3

    .line 133
    move v3, v4

    .line 134
    move v4, v6

    .line 135
    move v6, v8

    .line 136
    move v8, v9

    .line 137
    move v9, v10

    .line 138
    move v10, v12

    .line 139
    invoke-static/range {v0 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIZZILjava/lang/String;I[BIIII)Landroid/util/StatsEvent;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    move-object/from16 v1, p4

    .line 144
    .line 145
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    return-void
.end method

.method public final setAutomaticZenRuleStateLocked(Landroid/service/notification/ZenModeConfig;Ljava/util/List;Landroid/service/notification/Condition;II)V
    .locals 7

    .line 1
    if-eqz p2, :cond_3

    .line 2
    .line 3
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget v0, p3, Landroid/service/notification/Condition;->source:I

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    const/4 p4, 0x3

    .line 22
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 37
    .line 38
    iput-object p3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 39
    .line 40
    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;->isTrueOrUnknown()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_2

    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    iput-boolean v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 52
    .line 53
    sget-boolean v1, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v2, "Snoozing reset for "

    .line 60
    .line 61
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const-string v2, "ZenModeHelper"

    .line 74
    .line 75
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    :cond_2
    iget-object v4, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 79
    .line 80
    const/4 v5, 0x1

    .line 81
    const-string v3, "conditionChanged"

    .line 82
    .line 83
    move-object v0, p0

    .line 84
    move-object v1, p1

    .line 85
    move v2, p4

    .line 86
    move v6, p5

    .line 87
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_3
    :goto_1
    return-void
.end method

.method public final setConfigLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;Landroid/content/ComponentName;ZI)Z
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v7, p1

    .line 3
    .line 4
    move-object/from16 v4, p3

    .line 5
    .line 6
    move-object/from16 v8, p4

    .line 7
    .line 8
    const-string v1, "Invalid config in setConfigLocked; "

    .line 9
    .line 10
    const-string/jumbo v2, "setConfigLocked reason="

    .line 11
    .line 12
    .line 13
    const-string/jumbo v3, "setConfigLocked: store config for user "

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 17
    .line 18
    .line 19
    move-result-wide v9

    .line 20
    const/4 v11, 0x0

    .line 21
    if-eqz v7, :cond_6

    .line 22
    .line 23
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/ZenModeConfig;->isValid()Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-nez v5, :cond_0

    .line 28
    .line 29
    goto/16 :goto_3

    .line 30
    .line 31
    :cond_0
    iget v1, v7, Landroid/service/notification/ZenModeConfig;->user:I

    .line 32
    .line 33
    iget v5, v0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    .line 34
    .line 35
    const/4 v12, 0x1

    .line 36
    if-eq v1, v5, :cond_2

    .line 37
    .line 38
    iget-object v1, v0, Lcom/android/server/notification/ZenModeHelper;->mConfigsArrayLock:Ljava/lang/Object;

    .line 39
    .line 40
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :try_start_1
    iget-object v0, v0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    .line 42
    .line 43
    iget v2, v7, Landroid/service/notification/ZenModeConfig;->user:I

    .line 44
    .line 45
    invoke-virtual {v0, v2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49
    :try_start_2
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    const-string v0, "ZenModeHelper"

    .line 54
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget v2, v7, Landroid/service/notification/ZenModeConfig;->user:I

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    .line 74
    goto/16 :goto_5

    .line 75
    .line 76
    :catch_0
    move-exception v0

    .line 77
    goto/16 :goto_4

    .line 78
    .line 79
    :cond_1
    :goto_0
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    .line 81
    .line 82
    return v12

    .line 83
    :catchall_1
    move-exception v0

    .line 84
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 85
    :try_start_4
    throw v0

    .line 86
    :cond_2
    iget-object v1, v0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    .line 87
    .line 88
    const/4 v3, 0x0

    .line 89
    invoke-virtual {v1, v7, v3, v11}, Lcom/android/server/notification/ZenModeConditions;->evaluateConfig(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Z)V

    .line 90
    .line 91
    .line 92
    iget-object v1, v0, Lcom/android/server/notification/ZenModeHelper;->mConfigsArrayLock:Ljava/lang/Object;

    .line 93
    .line 94
    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 95
    :try_start_5
    iget-object v5, v0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    .line 96
    .line 97
    iget v6, v7, Landroid/service/notification/ZenModeConfig;->user:I

    .line 98
    .line 99
    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 103
    :try_start_6
    sget-boolean v1, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    .line 104
    .line 105
    if-eqz v1, :cond_3

    .line 106
    .line 107
    const-string v1, "ZenModeHelper"

    .line 108
    .line 109
    new-instance v5, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    new-instance v5, Ljava/lang/Throwable;

    .line 122
    .line 123
    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-static {v1, v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    .line 128
    .line 129
    :cond_3
    iget-object v1, v0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 130
    .line 131
    move/from16 v6, p6

    .line 132
    .line 133
    invoke-static {v4, v8, v1, v7, v6}, Lcom/android/server/notification/ZenLog;->traceConfig(Ljava/lang/String;Landroid/content/ComponentName;Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy()Landroid/app/NotificationManager$Policy;

    .line 137
    .line 138
    .line 139
    move-result-object v13

    .line 140
    iget-object v1, v0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 141
    .line 142
    if-nez v1, :cond_4

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_4
    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy()Landroid/app/NotificationManager$Policy;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    :goto_1
    invoke-static {v3, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    xor-int/lit8 v14, v1, 0x1

    .line 154
    .line 155
    move-object v1, p0

    .line 156
    move-object/from16 v2, p1

    .line 157
    .line 158
    move/from16 v3, p2

    .line 159
    .line 160
    move-object/from16 v4, p3

    .line 161
    .line 162
    move/from16 v5, p5

    .line 163
    .line 164
    move/from16 v6, p6

    .line 165
    .line 166
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/ZenModeHelper;->updateConfigAndZenModeLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;ZI)V

    .line 167
    .line 168
    .line 169
    if-eqz v14, :cond_5

    .line 170
    .line 171
    iget-object v1, v0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    .line 172
    .line 173
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    if-eqz v2, :cond_5

    .line 182
    .line 183
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    check-cast v2, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 188
    .line 189
    invoke-virtual {v2, v13}, Lcom/android/server/notification/ZenModeHelper$Callback;->onPolicyChanged(Landroid/app/NotificationManager$Policy;)V

    .line 190
    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_5
    iget-object v0, v0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    .line 194
    .line 195
    invoke-virtual {v0, v7, v8, v12}, Lcom/android/server/notification/ZenModeConditions;->evaluateConfig(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Z)V
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 196
    .line 197
    .line 198
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 199
    .line 200
    .line 201
    return v12

    .line 202
    :catchall_2
    move-exception v0

    .line 203
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 204
    :try_start_8
    throw v0

    .line 205
    :cond_6
    :goto_3
    const-string v0, "ZenModeHelper"

    .line 206
    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 220
    .line 221
    .line 222
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 223
    .line 224
    .line 225
    return v11

    .line 226
    :goto_4
    :try_start_9
    const-string v1, "ZenModeHelper"

    .line 227
    .line 228
    const-string v2, "Invalid rule in config"

    .line 229
    .line 230
    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 231
    .line 232
    .line 233
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 234
    .line 235
    .line 236
    return v11

    .line 237
    :goto_5
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 238
    .line 239
    .line 240
    throw v0
.end method

.method public final setManualZenMode(ILandroid/net/Uri;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 9

    .line 1
    const/4 v5, 0x1

    .line 2
    const-string/jumbo v0, "setManualZenMode "

    .line 3
    .line 4
    .line 5
    iget-object v7, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v7

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    monitor-exit v7

    .line 13
    goto/16 :goto_4

    .line 14
    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto/16 :goto_5

    .line 17
    .line 18
    :cond_0
    invoke-static {p1}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    monitor-exit v7

    .line 25
    goto/16 :goto_4

    .line 26
    .line 27
    :cond_1
    sget-boolean v1, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    const-string v1, "ZenModeHelper"

    .line 32
    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v0, " conditionId="

    .line 46
    .line 47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v0, " reason="

    .line 54
    .line 55
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v0, " setRingerMode="

    .line 62
    .line 63
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    :cond_2
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    const/4 v2, 0x1

    .line 87
    if-eqz v0, :cond_7

    .line 88
    .line 89
    iget-object v0, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 90
    .line 91
    iput-object p5, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    .line 92
    .line 93
    if-eqz p2, :cond_3

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_3
    sget-object p2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 97
    .line 98
    :goto_0
    iput-object p2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 99
    .line 100
    const-string p2, "android"

    .line 101
    .line 102
    iput-object p2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 103
    .line 104
    iput p1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 105
    .line 106
    new-instance p2, Landroid/service/notification/Condition;

    .line 107
    .line 108
    iget-object p5, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 109
    .line 110
    iget-object p5, p5, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 111
    .line 112
    const-string v3, ""

    .line 113
    .line 114
    const/4 v4, 0x0

    .line 115
    if-nez p1, :cond_4

    .line 116
    .line 117
    move v6, v4

    .line 118
    goto :goto_1

    .line 119
    :cond_4
    move v6, v2

    .line 120
    :goto_1
    const/4 v8, 0x3

    .line 121
    if-ne p3, v8, :cond_5

    .line 122
    .line 123
    move v4, v2

    .line 124
    :cond_5
    invoke-direct {p2, p5, v3, v6, v4}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;II)V

    .line 125
    .line 126
    .line 127
    iput-object p2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 128
    .line 129
    if-nez p1, :cond_b

    .line 130
    .line 131
    if-eq p3, v8, :cond_b

    .line 132
    .line 133
    iget-object p1, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 134
    .line 135
    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    .line 145
    .line 146
    move-result p2

    .line 147
    if-eqz p2, :cond_b

    .line 148
    .line 149
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    check-cast p2, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 154
    .line 155
    invoke-virtual {p2}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    .line 156
    .line 157
    .line 158
    move-result p5

    .line 159
    if-eqz p5, :cond_6

    .line 160
    .line 161
    iput-boolean v2, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_7
    if-nez p1, :cond_9

    .line 165
    .line 166
    const/4 p1, 0x0

    .line 167
    iput-object p1, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 168
    .line 169
    iget-object p1, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 170
    .line 171
    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    :cond_8
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 180
    .line 181
    .line 182
    move-result p2

    .line 183
    if-eqz p2, :cond_b

    .line 184
    .line 185
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object p2

    .line 189
    check-cast p2, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 190
    .line 191
    invoke-virtual {p2}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    .line 192
    .line 193
    .line 194
    move-result p5

    .line 195
    if-eqz p5, :cond_8

    .line 196
    .line 197
    iput-boolean v2, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_9
    new-instance v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 201
    .line 202
    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 203
    .line 204
    .line 205
    iput-boolean v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 206
    .line 207
    iput p1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 208
    .line 209
    iput-object p2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 210
    .line 211
    iput-object p5, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    .line 212
    .line 213
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    if-eqz p1, :cond_a

    .line 218
    .line 219
    iput-boolean v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    .line 220
    .line 221
    :cond_a
    iput-object v0, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 222
    .line 223
    :cond_b
    const/4 v4, 0x0

    .line 224
    move-object v0, p0

    .line 225
    move v2, p3

    .line 226
    move-object v3, p4

    .line 227
    move v6, p6

    .line 228
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    .line 229
    .line 230
    .line 231
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    :goto_4
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 233
    .line 234
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    const-string/jumbo p1, "show_zen_settings_suggestion"

    .line 239
    .line 240
    .line 241
    const/4 p2, 0x0

    .line 242
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 243
    .line 244
    .line 245
    return-void

    .line 246
    :goto_5
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    throw p0
.end method

.method public final setNotificationPolicy(Landroid/app/NotificationManager$Policy;II)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_0
    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_3

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy()Landroid/app/NotificationManager$Policy;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v1}, Landroid/service/notification/ZenAdapters;->notificationPolicyToZenPolicy(Landroid/app/NotificationManager$Policy;)Landroid/service/notification/ZenPolicy;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {p1}, Landroid/service/notification/ZenAdapters;->notificationPolicyToZenPolicy(Landroid/app/NotificationManager$Policy;)Landroid/service/notification/ZenPolicy;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v2, p1}, Landroid/service/notification/ZenModeConfig;->applyNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v3}, Landroid/service/notification/ZenPolicy;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_4

    .line 49
    .line 50
    iget-object p1, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_4

    .line 65
    .line 66
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 71
    .line 72
    invoke-static {v4}, Landroid/service/notification/SystemZenRules;->isSystemOwnedRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-nez v5, :cond_1

    .line 77
    .line 78
    iget v5, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 79
    .line 80
    const/4 v6, 0x1

    .line 81
    if-ne v5, v6, :cond_1

    .line 82
    .line 83
    iget-object v5, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 84
    .line 85
    if-eqz v5, :cond_2

    .line 86
    .line 87
    invoke-virtual {v5, v1}, Landroid/service/notification/ZenPolicy;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    if-nez v5, :cond_2

    .line 92
    .line 93
    iget-object v5, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getDefaultZenPolicy()Landroid/service/notification/ZenPolicy;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-virtual {v5, v6}, Landroid/service/notification/ZenPolicy;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    if-eqz v5, :cond_1

    .line 104
    .line 105
    :cond_2
    iput-object v3, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_3
    invoke-virtual {v2, p1}, Landroid/service/notification/ZenModeConfig;->applyNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    .line 109
    .line 110
    .line 111
    :cond_4
    const-string/jumbo v4, "setNotificationPolicy"

    .line 112
    .line 113
    .line 114
    const/4 v6, 0x1

    .line 115
    const/4 v5, 0x0

    .line 116
    move-object v1, p0

    .line 117
    move v3, p2

    .line 118
    move v7, p3

    .line 119
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    .line 120
    .line 121
    .line 122
    monitor-exit v0

    .line 123
    return-void

    .line 124
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    throw p0
.end method

.method public final setPreviousRingerModeSetting(Ljava/lang/Integer;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :goto_0
    const-string/jumbo v0, "zen_mode_ringer_level"

    .line 20
    .line 21
    .line 22
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public setZenModeSetting(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "zen_mode"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v2, -0x1

    .line 20
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const-string/jumbo v1, "updated setting"

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1}, Lcom/android/server/notification/ZenLog;->traceSetZenMode(ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->showZenUpgradeNotification(I)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final showZenUpgradeNotification(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "android.hardware.type.watch"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-boolean v1, p0, Lcom/android/server/notification/ZenModeHelper;->mIsSystemServicesReady:Z

    .line 14
    .line 15
    const-string/jumbo v2, "show_zen_upgrade_notification"

    .line 16
    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string/jumbo v1, "zen_settings_updated"

    .line 44
    .line 45
    .line 46
    invoke-static {p1, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    const/4 v1, 0x1

    .line 51
    if-eq p1, v1, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    move v1, v3

    .line 55
    :goto_0
    if-eqz v0, :cond_1

    .line 56
    .line 57
    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 64
    .line 65
    .line 66
    :cond_1
    if-eqz v1, :cond_2

    .line 67
    .line 68
    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mNotificationManager:Landroid/app/NotificationManager;

    .line 69
    .line 70
    const/16 v0, 0x30

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->createZenUpgradeNotification()Landroid/app/Notification;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const-string v4, "ZenModeHelper"

    .line 77
    .line 78
    invoke-virtual {p1, v4, v0, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 79
    .line 80
    .line 81
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {p0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 88
    .line 89
    .line 90
    :cond_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "ZenModeHelper"

    .line 2
    .line 3
    return-object p0
.end method

.method public final updateAndApplyConsolidatedPolicyAndDeviceEffects(ILjava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto/16 :goto_2

    .line 12
    .line 13
    :cond_0
    new-instance v1, Landroid/service/notification/ZenPolicy;

    .line 14
    .line 15
    invoke-direct {v1}, Landroid/service/notification/ZenPolicy;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v2, Landroid/service/notification/ZenDeviceEffects$Builder;

    .line 19
    .line 20
    invoke-direct {v2}, Landroid/service/notification/ZenDeviceEffects$Builder;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 24
    .line 25
    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig;->isManualActive()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 32
    .line 33
    iget-object v3, v3, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    invoke-virtual {p0, v1, v3, v4}, Lcom/android/server/notification/ZenModeHelper;->applyCustomPolicy(Landroid/service/notification/ZenPolicy;Landroid/service/notification/ZenModeConfig$ZenRule;Z)V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 46
    .line 47
    iget-object v3, v3, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 48
    .line 49
    iget-object v3, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Landroid/service/notification/ZenDeviceEffects$Builder;->add(Landroid/service/notification/ZenDeviceEffects;)Landroid/service/notification/ZenDeviceEffects$Builder;

    .line 52
    .line 53
    .line 54
    :cond_1
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 55
    .line 56
    iget-object v3, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 57
    .line 58
    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    const/4 v5, 0x0

    .line 71
    if-eqz v4, :cond_5

    .line 72
    .line 73
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 78
    .line 79
    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    if-eqz v6, :cond_2

    .line 84
    .line 85
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    if-eqz v6, :cond_3

    .line 90
    .line 91
    iget v6, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 92
    .line 93
    if-eqz v6, :cond_4

    .line 94
    .line 95
    :cond_3
    invoke-virtual {p0, v1, v4, v5}, Lcom/android/server/notification/ZenModeHelper;->applyCustomPolicy(Landroid/service/notification/ZenPolicy;Landroid/service/notification/ZenModeConfig$ZenRule;Z)V

    .line 96
    .line 97
    .line 98
    :cond_4
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-eqz v5, :cond_2

    .line 103
    .line 104
    iget-object v4, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    .line 105
    .line 106
    invoke-virtual {v2, v4}, Landroid/service/notification/ZenDeviceEffects$Builder;->add(Landroid/service/notification/ZenDeviceEffects;)Landroid/service/notification/ZenDeviceEffects$Builder;

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_5
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 111
    .line 112
    invoke-virtual {v3, v1}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy(Landroid/service/notification/ZenPolicy;)Landroid/app/NotificationManager$Policy;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    .line 117
    .line 118
    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-nez v3, :cond_7

    .line 123
    .line 124
    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    .line 125
    .line 126
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    if-eqz v4, :cond_6

    .line 137
    .line 138
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    check-cast v4, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 143
    .line 144
    invoke-virtual {v4, v1}, Lcom/android/server/notification/ZenModeHelper$Callback;->onConsolidatedPolicyChanged(Landroid/app/NotificationManager$Policy;)V

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_6
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    .line 149
    .line 150
    sget-object v3, Lcom/android/server/notification/ZenLog;->STATE_CHANGES:Landroid/util/LocalLog;

    .line 151
    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1}, Landroid/app/NotificationManager$Policy;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string v1, ","

    .line 165
    .line 166
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    const/16 v1, 0x11

    .line 177
    .line 178
    invoke-static {v1, p2}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    .line 179
    .line 180
    .line 181
    :cond_7
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    .line 182
    .line 183
    .line 184
    move-result p2

    .line 185
    if-eqz p2, :cond_8

    .line 186
    .line 187
    invoke-virtual {v2}, Landroid/service/notification/ZenDeviceEffects$Builder;->build()Landroid/service/notification/ZenDeviceEffects;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    .line 192
    .line 193
    invoke-virtual {p2, v1}, Landroid/service/notification/ZenDeviceEffects;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-nez v1, :cond_8

    .line 198
    .line 199
    iput-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    .line 200
    .line 201
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    .line 202
    .line 203
    sget p2, Lcom/android/server/notification/ZenModeHelper$H;->$r8$clinit:I

    .line 204
    .line 205
    const/4 p2, 0x6

    .line 206
    invoke-virtual {p0, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0, p2, p1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 214
    .line 215
    .line 216
    :cond_8
    monitor-exit v0

    .line 217
    return-void

    .line 218
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    throw p0
.end method

.method public final updateConfigAndZenModeLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;ZI)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    iget-object v4, v0, Lcom/android/server/notification/ZenModeHelper;->mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    .line 10
    .line 11
    sget-object v5, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$NotificationFlags;->LOG_DND_STATE_EVENTS:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    .line 12
    .line 13
    invoke-interface {v4, v5}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;->isEnabled(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    iget v5, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    .line 18
    .line 19
    iget-object v6, v0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 20
    .line 21
    iget-object v7, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    .line 22
    .line 23
    if-eqz v6, :cond_0

    .line 24
    .line 25
    invoke-virtual {v6}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v6, 0x0

    .line 31
    :goto_0
    if-eqz v7, :cond_1

    .line 32
    .line 33
    invoke-virtual {v7}, Landroid/app/NotificationManager$Policy;->copy()Landroid/app/NotificationManager$Policy;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 v7, 0x0

    .line 39
    :goto_1
    iget-object v9, v0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 40
    .line 41
    invoke-virtual {v1, v9}, Landroid/service/notification/ZenModeConfig;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v9

    .line 45
    const/4 v10, 0x1

    .line 46
    if-nez v9, :cond_9

    .line 47
    .line 48
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    .line 49
    .line 50
    .line 51
    move-result v9

    .line 52
    if-eqz v9, :cond_7

    .line 53
    .line 54
    if-eq v2, v10, :cond_7

    .line 55
    .line 56
    iget-object v9, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 57
    .line 58
    invoke-virtual {v9}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 59
    .line 60
    .line 61
    move-result-object v9

    .line 62
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v9

    .line 66
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v13

    .line 70
    if-eqz v13, :cond_7

    .line 71
    .line 72
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v13

    .line 76
    check-cast v13, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 77
    .line 78
    iget-object v14, v0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 79
    .line 80
    iget-object v14, v14, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 81
    .line 82
    iget-object v15, v13, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v14, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v14

    .line 88
    check-cast v14, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 89
    .line 90
    if-eqz v14, :cond_6

    .line 91
    .line 92
    iget-boolean v15, v14, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 93
    .line 94
    iget-boolean v8, v13, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 95
    .line 96
    if-eq v15, v8, :cond_3

    .line 97
    .line 98
    invoke-virtual {v13}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    iget v15, v1, Landroid/service/notification/ZenModeConfig;->user:I

    .line 103
    .line 104
    iget-object v12, v13, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    .line 105
    .line 106
    iget-boolean v10, v13, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 107
    .line 108
    if-eqz v10, :cond_2

    .line 109
    .line 110
    const/4 v10, 0x1

    .line 111
    goto :goto_3

    .line 112
    :cond_2
    const/4 v10, 0x2

    .line 113
    :goto_3
    invoke-virtual {v0, v15, v10, v8, v12}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnAutomaticRuleStatusChanged(IILjava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :cond_3
    invoke-virtual {v14}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    .line 117
    .line 118
    .line 119
    move-result v8

    .line 120
    invoke-virtual {v13}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    .line 121
    .line 122
    .line 123
    move-result v10

    .line 124
    if-eq v8, v10, :cond_6

    .line 125
    .line 126
    invoke-virtual {v13}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    iget v10, v1, Landroid/service/notification/ZenModeConfig;->user:I

    .line 131
    .line 132
    iget-object v12, v13, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {v13}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    .line 135
    .line 136
    .line 137
    move-result v13

    .line 138
    const-wide/32 v14, 0x1265fc51

    .line 139
    .line 140
    .line 141
    invoke-static {v10}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 142
    .line 143
    .line 144
    move-result-object v11

    .line 145
    invoke-static {v14, v15, v8, v11}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    .line 146
    .line 147
    .line 148
    move-result v11

    .line 149
    if-eqz v11, :cond_5

    .line 150
    .line 151
    if-eqz v13, :cond_4

    .line 152
    .line 153
    const/4 v11, 0x4

    .line 154
    goto :goto_4

    .line 155
    :cond_4
    const/4 v11, 0x5

    .line 156
    :goto_4
    invoke-virtual {v0, v10, v11, v8, v12}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnAutomaticRuleStatusChanged(IILjava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    goto :goto_5

    .line 160
    :cond_5
    const/4 v11, -0x1

    .line 161
    invoke-virtual {v0, v10, v11, v8, v12}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnAutomaticRuleStatusChanged(IILjava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    :cond_6
    :goto_5
    const/4 v10, 0x1

    .line 165
    goto :goto_2

    .line 166
    :cond_7
    iput-object v1, v0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 167
    .line 168
    iget-object v8, v0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    .line 169
    .line 170
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 175
    .line 176
    .line 177
    move-result v9

    .line 178
    if-eqz v9, :cond_8

    .line 179
    .line 180
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v9

    .line 184
    check-cast v9, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 185
    .line 186
    invoke-virtual {v9}, Lcom/android/server/notification/ZenModeHelper$Callback;->onConfigChanged()V

    .line 187
    .line 188
    .line 189
    goto :goto_6

    .line 190
    :cond_8
    invoke-virtual {v0, v2, v3}, Lcom/android/server/notification/ZenModeHelper;->updateAndApplyConsolidatedPolicyAndDeviceEffects(ILjava/lang/String;)V

    .line 191
    .line 192
    .line 193
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/ZenModeConfig;->hashCode()I

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    iget-object v8, v0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 202
    .line 203
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 204
    .line 205
    .line 206
    move-result-object v8

    .line 207
    const-string/jumbo v9, "zen_mode_config_etag"

    .line 208
    .line 209
    .line 210
    invoke-static {v8, v9, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 211
    .line 212
    .line 213
    move/from16 v1, p4

    .line 214
    .line 215
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/notification/ZenModeHelper;->evaluateZenModeLocked(ILjava/lang/String;Z)V

    .line 216
    .line 217
    .line 218
    if-eqz v4, :cond_36

    .line 219
    .line 220
    iget v1, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    .line 221
    .line 222
    iget-object v3, v0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 223
    .line 224
    iget-object v4, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    .line 225
    .line 226
    if-eqz v3, :cond_a

    .line 227
    .line 228
    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    goto :goto_7

    .line 233
    :cond_a
    const/4 v3, 0x0

    .line 234
    :goto_7
    if-eqz v4, :cond_b

    .line 235
    .line 236
    invoke-virtual {v4}, Landroid/app/NotificationManager$Policy;->copy()Landroid/app/NotificationManager$Policy;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    goto :goto_8

    .line 241
    :cond_b
    const/4 v4, 0x0

    .line 242
    :goto_8
    iget-object v0, v0, Lcom/android/server/notification/ZenModeHelper;->mZenModeEventLogger:Lcom/android/server/notification/ZenModeEventLogger;

    .line 243
    .line 244
    iget-object v8, v0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    .line 245
    .line 246
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 247
    .line 248
    .line 249
    iput v5, v8, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevZenMode:I

    .line 250
    .line 251
    iput v1, v8, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewZenMode:I

    .line 252
    .line 253
    iput-object v6, v8, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevConfig:Landroid/service/notification/ZenModeConfig;

    .line 254
    .line 255
    iput-object v3, v8, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewConfig:Landroid/service/notification/ZenModeConfig;

    .line 256
    .line 257
    iput-object v7, v8, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevPolicy:Landroid/app/NotificationManager$Policy;

    .line 258
    .line 259
    iput-object v4, v8, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    .line 260
    .line 261
    move/from16 v1, p5

    .line 262
    .line 263
    iput v1, v8, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mCallingUid:I

    .line 264
    .line 265
    iput v2, v8, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mOrigin:I

    .line 266
    .line 267
    iget-object v1, v0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    .line 268
    .line 269
    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->shouldLogChanges()Z

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    if-eqz v1, :cond_35

    .line 274
    .line 275
    iget-object v1, v0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    .line 276
    .line 277
    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->getChangedRuleType()I

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    const/4 v2, 0x0

    .line 282
    const-string v3, "ZenModeEventLogger"

    .line 283
    .line 284
    const/4 v4, 0x1

    .line 285
    if-ne v1, v4, :cond_13

    .line 286
    .line 287
    iget-object v1, v0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    .line 288
    .line 289
    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->isFromSystemOrSystemUi()Z

    .line 290
    .line 291
    .line 292
    move-result v1

    .line 293
    if-eqz v1, :cond_11

    .line 294
    .line 295
    iget-object v1, v0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    .line 296
    .line 297
    iget-object v1, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewConfig:Landroid/service/notification/ZenModeConfig;

    .line 298
    .line 299
    if-eqz v1, :cond_d

    .line 300
    .line 301
    iget-object v4, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 302
    .line 303
    if-nez v4, :cond_c

    .line 304
    .line 305
    goto :goto_9

    .line 306
    :cond_c
    iget-object v4, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    .line 307
    .line 308
    goto :goto_a

    .line 309
    :cond_d
    :goto_9
    const/4 v4, 0x0

    .line 310
    :goto_a
    if-nez v4, :cond_e

    .line 311
    .line 312
    goto :goto_d

    .line 313
    :cond_e
    if-eqz v1, :cond_10

    .line 314
    .line 315
    iget-object v4, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 316
    .line 317
    if-nez v4, :cond_f

    .line 318
    .line 319
    goto :goto_b

    .line 320
    :cond_f
    iget-object v4, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    .line 321
    .line 322
    goto :goto_c

    .line 323
    :cond_10
    :goto_b
    const/4 v4, 0x0

    .line 324
    :goto_c
    iget v11, v1, Landroid/service/notification/ZenModeConfig;->user:I

    .line 325
    .line 326
    goto :goto_f

    .line 327
    :cond_11
    :goto_d
    const/4 v5, 0x2

    .line 328
    :cond_12
    :goto_e
    const/4 v8, 0x0

    .line 329
    goto/16 :goto_15

    .line 330
    .line 331
    :cond_13
    const/4 v4, 0x0

    .line 332
    const/4 v11, -0x1

    .line 333
    :goto_f
    iget-object v1, v0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    .line 334
    .line 335
    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->getChangedRuleType()I

    .line 336
    .line 337
    .line 338
    move-result v1

    .line 339
    const/4 v5, 0x2

    .line 340
    if-ne v1, v5, :cond_1d

    .line 341
    .line 342
    iget-object v1, v0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    .line 343
    .line 344
    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->getIsUserAction()Z

    .line 345
    .line 346
    .line 347
    move-result v1

    .line 348
    if-nez v1, :cond_12

    .line 349
    .line 350
    iget-object v1, v0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    .line 351
    .line 352
    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->isFromSystemOrSystemUi()Z

    .line 353
    .line 354
    .line 355
    move-result v1

    .line 356
    if-nez v1, :cond_14

    .line 357
    .line 358
    goto :goto_11

    .line 359
    :cond_14
    iget-object v1, v0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    .line 360
    .line 361
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 362
    .line 363
    .line 364
    new-instance v4, Landroid/util/ArrayMap;

    .line 365
    .line 366
    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 367
    .line 368
    .line 369
    new-instance v6, Landroid/service/notification/ZenModeDiff$ConfigDiff;

    .line 370
    .line 371
    iget-object v7, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevConfig:Landroid/service/notification/ZenModeConfig;

    .line 372
    .line 373
    iget-object v1, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewConfig:Landroid/service/notification/ZenModeConfig;

    .line 374
    .line 375
    invoke-direct {v6, v7, v1}, Landroid/service/notification/ZenModeDiff$ConfigDiff;-><init>(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v6}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->hasDiff()Z

    .line 379
    .line 380
    .line 381
    move-result v1

    .line 382
    if-nez v1, :cond_15

    .line 383
    .line 384
    goto :goto_10

    .line 385
    :cond_15
    invoke-virtual {v6}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->getAllAutomaticRuleDiffs()Landroid/util/ArrayMap;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    if-eqz v1, :cond_16

    .line 390
    .line 391
    move-object v4, v1

    .line 392
    :cond_16
    :goto_10
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 393
    .line 394
    .line 395
    move-result v1

    .line 396
    const/4 v6, 0x1

    .line 397
    if-eq v1, v6, :cond_17

    .line 398
    .line 399
    :goto_11
    goto :goto_e

    .line 400
    :cond_17
    iget-object v1, v0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    .line 401
    .line 402
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v6

    .line 406
    check-cast v6, Ljava/lang/String;

    .line 407
    .line 408
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v4

    .line 412
    check-cast v4, Landroid/service/notification/ZenModeDiff$RuleDiff;

    .line 413
    .line 414
    iget-object v7, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewConfig:Landroid/service/notification/ZenModeConfig;

    .line 415
    .line 416
    invoke-virtual {v4}, Landroid/service/notification/ZenModeDiff$RuleDiff;->wasRemoved()Z

    .line 417
    .line 418
    .line 419
    move-result v4

    .line 420
    if-eqz v4, :cond_18

    .line 421
    .line 422
    iget-object v7, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevConfig:Landroid/service/notification/ZenModeConfig;

    .line 423
    .line 424
    :cond_18
    if-nez v7, :cond_19

    .line 425
    .line 426
    const/4 v4, 0x0

    .line 427
    const/4 v8, 0x0

    .line 428
    goto :goto_12

    .line 429
    :cond_19
    iget-object v1, v7, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 430
    .line 431
    const/4 v8, 0x0

    .line 432
    invoke-virtual {v1, v6, v8}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 437
    .line 438
    if-eqz v1, :cond_1b

    .line 439
    .line 440
    iget-object v4, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 441
    .line 442
    if-eqz v4, :cond_1a

    .line 443
    .line 444
    new-instance v4, Landroid/util/Pair;

    .line 445
    .line 446
    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 447
    .line 448
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v1

    .line 452
    iget v6, v7, Landroid/service/notification/ZenModeConfig;->user:I

    .line 453
    .line 454
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 455
    .line 456
    .line 457
    move-result-object v6

    .line 458
    invoke-direct {v4, v1, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 459
    .line 460
    .line 461
    goto :goto_12

    .line 462
    :cond_1a
    iget-object v4, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    .line 463
    .line 464
    if-eqz v4, :cond_1b

    .line 465
    .line 466
    new-instance v4, Landroid/util/Pair;

    .line 467
    .line 468
    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    .line 469
    .line 470
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v1

    .line 474
    iget v6, v7, Landroid/service/notification/ZenModeConfig;->user:I

    .line 475
    .line 476
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 477
    .line 478
    .line 479
    move-result-object v6

    .line 480
    invoke-direct {v4, v1, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 481
    .line 482
    .line 483
    goto :goto_12

    .line 484
    :cond_1b
    move-object v4, v8

    .line 485
    :goto_12
    if-eqz v4, :cond_1f

    .line 486
    .line 487
    iget-object v1, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 488
    .line 489
    check-cast v1, Ljava/lang/String;

    .line 490
    .line 491
    const-string v6, "android"

    .line 492
    .line 493
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 494
    .line 495
    .line 496
    move-result v1

    .line 497
    if-eqz v1, :cond_1c

    .line 498
    .line 499
    goto :goto_15

    .line 500
    :cond_1c
    iget-object v1, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 501
    .line 502
    check-cast v1, Ljava/lang/String;

    .line 503
    .line 504
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 505
    .line 506
    check-cast v4, Ljava/lang/Integer;

    .line 507
    .line 508
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 509
    .line 510
    .line 511
    move-result v11

    .line 512
    move-object v4, v1

    .line 513
    :goto_13
    const/4 v1, -0x1

    .line 514
    goto :goto_14

    .line 515
    :cond_1d
    const/4 v8, 0x0

    .line 516
    goto :goto_13

    .line 517
    :goto_14
    if-eq v11, v1, :cond_1f

    .line 518
    .line 519
    if-nez v4, :cond_1e

    .line 520
    .line 521
    goto :goto_15

    .line 522
    :cond_1e
    :try_start_0
    iget-object v1, v0, Lcom/android/server/notification/ZenModeEventLogger;->mPm:Landroid/content/pm/PackageManager;

    .line 523
    .line 524
    invoke-virtual {v1, v4, v11}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 525
    .line 526
    .line 527
    move-result v1

    .line 528
    iget-object v6, v0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    .line 529
    .line 530
    iput v1, v6, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mCallingUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    .line 532
    goto :goto_15

    .line 533
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 534
    .line 535
    const-string/jumbo v6, "unable to find package name "

    .line 536
    .line 537
    .line 538
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 539
    .line 540
    .line 541
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    const-string v4, " "

    .line 545
    .line 546
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v1

    .line 556
    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    .line 558
    .line 559
    :cond_1f
    :goto_15
    iget-object v1, v0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    .line 560
    .line 561
    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->shouldLogChanges()Z

    .line 562
    .line 563
    .line 564
    move-result v4

    .line 565
    if-nez v4, :cond_20

    .line 566
    .line 567
    const-string v4, "attempt to get DNDStateChanged fields without shouldLog=true"

    .line 568
    .line 569
    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    .line 571
    .line 572
    :cond_20
    iget v4, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevZenMode:I

    .line 573
    .line 574
    iget v6, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewZenMode:I

    .line 575
    .line 576
    if-ne v4, v6, :cond_21

    .line 577
    .line 578
    goto :goto_16

    .line 579
    :cond_21
    if-eqz v4, :cond_28

    .line 580
    .line 581
    if-nez v6, :cond_22

    .line 582
    .line 583
    goto :goto_18

    .line 584
    :cond_22
    :goto_16
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    .line 585
    .line 586
    .line 587
    move-result v4

    .line 588
    if-eqz v4, :cond_25

    .line 589
    .line 590
    iget v4, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewZenMode:I

    .line 591
    .line 592
    if-nez v4, :cond_25

    .line 593
    .line 594
    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->hasPolicyDiff()Z

    .line 595
    .line 596
    .line 597
    move-result v4

    .line 598
    if-nez v4, :cond_23

    .line 599
    .line 600
    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->hasChannelsBypassingDiff()Z

    .line 601
    .line 602
    .line 603
    move-result v1

    .line 604
    if-eqz v1, :cond_24

    .line 605
    .line 606
    :cond_23
    const-string v1, "Detected policy diff even though DND is OFF and not toggled"

    .line 607
    .line 608
    invoke-static {v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    .line 610
    .line 611
    :cond_24
    sget-object v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;->DND_ACTIVE_RULES_CHANGED:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;

    .line 612
    .line 613
    goto :goto_19

    .line 614
    :cond_25
    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->hasPolicyDiff()Z

    .line 615
    .line 616
    .line 617
    move-result v4

    .line 618
    if-nez v4, :cond_27

    .line 619
    .line 620
    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->hasChannelsBypassingDiff()Z

    .line 621
    .line 622
    .line 623
    move-result v1

    .line 624
    if-eqz v1, :cond_26

    .line 625
    .line 626
    goto :goto_17

    .line 627
    :cond_26
    sget-object v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;->DND_ACTIVE_RULES_CHANGED:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;

    .line 628
    .line 629
    goto :goto_19

    .line 630
    :cond_27
    :goto_17
    sget-object v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;->DND_POLICY_CHANGED:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;

    .line 631
    .line 632
    goto :goto_19

    .line 633
    :cond_28
    :goto_18
    if-nez v4, :cond_29

    .line 634
    .line 635
    sget-object v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;->DND_TURNED_ON:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;

    .line 636
    .line 637
    goto :goto_19

    .line 638
    :cond_29
    sget-object v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;->DND_TURNED_OFF:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;

    .line 639
    .line 640
    :goto_19
    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;->getId()I

    .line 641
    .line 642
    .line 643
    move-result v17

    .line 644
    iget-object v1, v0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    .line 645
    .line 646
    iget v4, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewZenMode:I

    .line 647
    .line 648
    iget v6, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevZenMode:I

    .line 649
    .line 650
    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->getChangedRuleType()I

    .line 651
    .line 652
    .line 653
    move-result v20

    .line 654
    iget-object v1, v0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    .line 655
    .line 656
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 657
    .line 658
    .line 659
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    .line 660
    .line 661
    .line 662
    move-result v7

    .line 663
    if-nez v7, :cond_2a

    .line 664
    .line 665
    iget v7, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewZenMode:I

    .line 666
    .line 667
    if-nez v7, :cond_2a

    .line 668
    .line 669
    move/from16 v21, v2

    .line 670
    .line 671
    goto :goto_1a

    .line 672
    :cond_2a
    iget-object v1, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewConfig:Landroid/service/notification/ZenModeConfig;

    .line 673
    .line 674
    invoke-static {v1}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->activeRulesList(Landroid/service/notification/ZenModeConfig;)Ljava/util/List;

    .line 675
    .line 676
    .line 677
    move-result-object v1

    .line 678
    check-cast v1, Ljava/util/ArrayList;

    .line 679
    .line 680
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 681
    .line 682
    .line 683
    move-result v1

    .line 684
    move/from16 v21, v1

    .line 685
    .line 686
    :goto_1a
    iget-object v1, v0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    .line 687
    .line 688
    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->getIsUserAction()Z

    .line 689
    .line 690
    .line 691
    move-result v22

    .line 692
    iget-object v1, v0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    .line 693
    .line 694
    iget v7, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mCallingUid:I

    .line 695
    .line 696
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    .line 697
    .line 698
    .line 699
    move-result v9

    .line 700
    if-eqz v9, :cond_2b

    .line 701
    .line 702
    iget v9, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewZenMode:I

    .line 703
    .line 704
    if-nez v9, :cond_2b

    .line 705
    .line 706
    :goto_1b
    move-object/from16 v24, v8

    .line 707
    .line 708
    goto/16 :goto_1e

    .line 709
    .line 710
    :cond_2b
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    .line 711
    .line 712
    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 713
    .line 714
    .line 715
    new-instance v9, Landroid/util/proto/ProtoOutputStream;

    .line 716
    .line 717
    invoke-direct {v9, v8}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 718
    .line 719
    .line 720
    iget-object v10, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    .line 721
    .line 722
    if-eqz v10, :cond_2d

    .line 723
    .line 724
    invoke-virtual {v10}, Landroid/app/NotificationManager$Policy;->allowCalls()Z

    .line 725
    .line 726
    .line 727
    move-result v3

    .line 728
    invoke-static {v3}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    .line 729
    .line 730
    .line 731
    move-result v3

    .line 732
    const-wide v10, 0x10e00000001L

    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    invoke-virtual {v9, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 738
    .line 739
    .line 740
    iget-object v3, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    .line 741
    .line 742
    invoke-virtual {v3}, Landroid/app/NotificationManager$Policy;->allowRepeatCallers()Z

    .line 743
    .line 744
    .line 745
    move-result v3

    .line 746
    invoke-static {v3}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    .line 747
    .line 748
    .line 749
    move-result v3

    .line 750
    const-wide v10, 0x10e00000002L

    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    invoke-virtual {v9, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 756
    .line 757
    .line 758
    iget-object v3, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    .line 759
    .line 760
    invoke-virtual {v3}, Landroid/app/NotificationManager$Policy;->allowMessages()Z

    .line 761
    .line 762
    .line 763
    move-result v3

    .line 764
    invoke-static {v3}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    .line 765
    .line 766
    .line 767
    move-result v3

    .line 768
    const-wide v10, 0x10e00000003L

    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    invoke-virtual {v9, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 774
    .line 775
    .line 776
    iget-object v3, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    .line 777
    .line 778
    invoke-virtual {v3}, Landroid/app/NotificationManager$Policy;->allowConversations()Z

    .line 779
    .line 780
    .line 781
    move-result v3

    .line 782
    invoke-static {v3}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    .line 783
    .line 784
    .line 785
    move-result v3

    .line 786
    const-wide v10, 0x10e00000004L

    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    invoke-virtual {v9, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 792
    .line 793
    .line 794
    iget-object v3, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    .line 795
    .line 796
    invoke-virtual {v3}, Landroid/app/NotificationManager$Policy;->allowReminders()Z

    .line 797
    .line 798
    .line 799
    move-result v3

    .line 800
    invoke-static {v3}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    .line 801
    .line 802
    .line 803
    move-result v3

    .line 804
    const-wide v10, 0x10e00000005L

    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    invoke-virtual {v9, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 810
    .line 811
    .line 812
    iget-object v3, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    .line 813
    .line 814
    invoke-virtual {v3}, Landroid/app/NotificationManager$Policy;->allowEvents()Z

    .line 815
    .line 816
    .line 817
    move-result v3

    .line 818
    invoke-static {v3}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    .line 819
    .line 820
    .line 821
    move-result v3

    .line 822
    const-wide v10, 0x10e00000006L

    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    invoke-virtual {v9, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 828
    .line 829
    .line 830
    iget-object v3, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    .line 831
    .line 832
    invoke-virtual {v3}, Landroid/app/NotificationManager$Policy;->allowAlarms()Z

    .line 833
    .line 834
    .line 835
    move-result v3

    .line 836
    invoke-static {v3}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    .line 837
    .line 838
    .line 839
    move-result v3

    .line 840
    const-wide v10, 0x10e00000007L

    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    invoke-virtual {v9, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 846
    .line 847
    .line 848
    iget-object v3, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    .line 849
    .line 850
    invoke-virtual {v3}, Landroid/app/NotificationManager$Policy;->allowMedia()Z

    .line 851
    .line 852
    .line 853
    move-result v3

    .line 854
    invoke-static {v3}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    .line 855
    .line 856
    .line 857
    move-result v3

    .line 858
    const-wide v10, 0x10e00000008L

    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    invoke-virtual {v9, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 864
    .line 865
    .line 866
    iget-object v3, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    .line 867
    .line 868
    invoke-virtual {v3}, Landroid/app/NotificationManager$Policy;->allowSystem()Z

    .line 869
    .line 870
    .line 871
    move-result v3

    .line 872
    invoke-static {v3}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    .line 873
    .line 874
    .line 875
    move-result v3

    .line 876
    const-wide v10, 0x10e00000009L

    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    invoke-virtual {v9, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 882
    .line 883
    .line 884
    iget-object v3, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    .line 885
    .line 886
    invoke-virtual {v3}, Landroid/app/NotificationManager$Policy;->showFullScreenIntents()Z

    .line 887
    .line 888
    .line 889
    move-result v3

    .line 890
    invoke-static {v3}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    .line 891
    .line 892
    .line 893
    move-result v3

    .line 894
    const-wide v10, 0x10e0000000aL

    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    invoke-virtual {v9, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 900
    .line 901
    .line 902
    iget-object v3, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    .line 903
    .line 904
    invoke-virtual {v3}, Landroid/app/NotificationManager$Policy;->showLights()Z

    .line 905
    .line 906
    .line 907
    move-result v3

    .line 908
    invoke-static {v3}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    .line 909
    .line 910
    .line 911
    move-result v3

    .line 912
    const-wide v10, 0x10e0000000bL

    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    invoke-virtual {v9, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 918
    .line 919
    .line 920
    iget-object v3, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    .line 921
    .line 922
    invoke-virtual {v3}, Landroid/app/NotificationManager$Policy;->showPeeking()Z

    .line 923
    .line 924
    .line 925
    move-result v3

    .line 926
    invoke-static {v3}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    .line 927
    .line 928
    .line 929
    move-result v3

    .line 930
    const-wide v10, 0x10e0000000cL

    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    invoke-virtual {v9, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 936
    .line 937
    .line 938
    iget-object v3, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    .line 939
    .line 940
    invoke-virtual {v3}, Landroid/app/NotificationManager$Policy;->showStatusBarIcons()Z

    .line 941
    .line 942
    .line 943
    move-result v3

    .line 944
    invoke-static {v3}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    .line 945
    .line 946
    .line 947
    move-result v3

    .line 948
    const-wide v10, 0x10e0000000dL

    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    invoke-virtual {v9, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 954
    .line 955
    .line 956
    iget-object v3, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    .line 957
    .line 958
    invoke-virtual {v3}, Landroid/app/NotificationManager$Policy;->showBadges()Z

    .line 959
    .line 960
    .line 961
    move-result v3

    .line 962
    invoke-static {v3}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    .line 963
    .line 964
    .line 965
    move-result v3

    .line 966
    const-wide v10, 0x10e0000000eL

    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    invoke-virtual {v9, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 972
    .line 973
    .line 974
    iget-object v3, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    .line 975
    .line 976
    invoke-virtual {v3}, Landroid/app/NotificationManager$Policy;->showAmbient()Z

    .line 977
    .line 978
    .line 979
    move-result v3

    .line 980
    invoke-static {v3}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    .line 981
    .line 982
    .line 983
    move-result v3

    .line 984
    const-wide v10, 0x10e0000000fL

    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    invoke-virtual {v9, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 990
    .line 991
    .line 992
    iget-object v3, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    .line 993
    .line 994
    invoke-virtual {v3}, Landroid/app/NotificationManager$Policy;->showInNotificationList()Z

    .line 995
    .line 996
    .line 997
    move-result v3

    .line 998
    invoke-static {v3}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    .line 999
    .line 1000
    .line 1001
    move-result v3

    .line 1002
    const-wide v10, 0x10e00000010L

    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    invoke-virtual {v9, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1008
    .line 1009
    .line 1010
    iget-object v3, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    .line 1011
    .line 1012
    invoke-virtual {v3}, Landroid/app/NotificationManager$Policy;->allowCallsFrom()I

    .line 1013
    .line 1014
    .line 1015
    move-result v3

    .line 1016
    invoke-static {v3}, Landroid/service/notification/ZenAdapters;->prioritySendersToPeopleType(I)I

    .line 1017
    .line 1018
    .line 1019
    move-result v3

    .line 1020
    const-wide v10, 0x10e00000011L

    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    invoke-virtual {v9, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1026
    .line 1027
    .line 1028
    iget-object v3, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    .line 1029
    .line 1030
    invoke-virtual {v3}, Landroid/app/NotificationManager$Policy;->allowMessagesFrom()I

    .line 1031
    .line 1032
    .line 1033
    move-result v3

    .line 1034
    invoke-static {v3}, Landroid/service/notification/ZenAdapters;->prioritySendersToPeopleType(I)I

    .line 1035
    .line 1036
    .line 1037
    move-result v3

    .line 1038
    const-wide v10, 0x10e00000012L

    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    invoke-virtual {v9, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1044
    .line 1045
    .line 1046
    iget-object v3, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    .line 1047
    .line 1048
    invoke-virtual {v3}, Landroid/app/NotificationManager$Policy;->allowConversationsFrom()I

    .line 1049
    .line 1050
    .line 1051
    move-result v3

    .line 1052
    const-wide v10, 0x10e00000013L

    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    invoke-virtual {v9, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1058
    .line 1059
    .line 1060
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    .line 1061
    .line 1062
    .line 1063
    move-result v3

    .line 1064
    if-eqz v3, :cond_2e

    .line 1065
    .line 1066
    iget-object v1, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    .line 1067
    .line 1068
    invoke-virtual {v1}, Landroid/app/NotificationManager$Policy;->allowPriorityChannels()Z

    .line 1069
    .line 1070
    .line 1071
    move-result v1

    .line 1072
    if-eqz v1, :cond_2c

    .line 1073
    .line 1074
    const/4 v12, 0x1

    .line 1075
    goto :goto_1c

    .line 1076
    :cond_2c
    move v12, v5

    .line 1077
    :goto_1c
    const-wide v10, 0x10e00000014L

    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    invoke-virtual {v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1083
    .line 1084
    .line 1085
    goto :goto_1d

    .line 1086
    :cond_2d
    const-string v1, "attempted to write zen mode log event with null policy"

    .line 1087
    .line 1088
    invoke-static {v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    .line 1090
    .line 1091
    :cond_2e
    :goto_1d
    invoke-virtual {v9}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1092
    .line 1093
    .line 1094
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 1095
    .line 1096
    .line 1097
    move-result-object v8

    .line 1098
    goto/16 :goto_1b

    .line 1099
    .line 1100
    :goto_1e
    iget-object v1, v0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    .line 1101
    .line 1102
    iget-object v3, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    .line 1103
    .line 1104
    if-eqz v3, :cond_30

    .line 1105
    .line 1106
    iget v3, v3, Landroid/app/NotificationManager$Policy;->state:I

    .line 1107
    .line 1108
    const/4 v5, 0x1

    .line 1109
    and-int/2addr v3, v5

    .line 1110
    if-eqz v3, :cond_2f

    .line 1111
    .line 1112
    move v10, v5

    .line 1113
    goto :goto_1f

    .line 1114
    :cond_2f
    move v10, v2

    .line 1115
    :goto_1f
    move/from16 v25, v10

    .line 1116
    .line 1117
    goto :goto_20

    .line 1118
    :cond_30
    move/from16 v25, v2

    .line 1119
    .line 1120
    :goto_20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1121
    .line 1122
    .line 1123
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    .line 1124
    .line 1125
    .line 1126
    move-result v3

    .line 1127
    if-nez v3, :cond_32

    .line 1128
    .line 1129
    new-array v1, v2, [I

    .line 1130
    .line 1131
    :cond_31
    :goto_21
    move-object/from16 v26, v1

    .line 1132
    .line 1133
    goto :goto_24

    .line 1134
    :cond_32
    new-instance v3, Ljava/util/ArrayList;

    .line 1135
    .line 1136
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1137
    .line 1138
    .line 1139
    iget-object v1, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewConfig:Landroid/service/notification/ZenModeConfig;

    .line 1140
    .line 1141
    invoke-static {v1}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->activeRulesList(Landroid/service/notification/ZenModeConfig;)Ljava/util/List;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v1

    .line 1145
    check-cast v1, Ljava/util/ArrayList;

    .line 1146
    .line 1147
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1148
    .line 1149
    .line 1150
    move-result v5

    .line 1151
    if-nez v5, :cond_33

    .line 1152
    .line 1153
    new-array v1, v2, [I

    .line 1154
    .line 1155
    goto :goto_21

    .line 1156
    :cond_33
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v1

    .line 1160
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1161
    .line 1162
    .line 1163
    move-result v5

    .line 1164
    if-eqz v5, :cond_34

    .line 1165
    .line 1166
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v5

    .line 1170
    check-cast v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1171
    .line 1172
    iget v5, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    .line 1173
    .line 1174
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1175
    .line 1176
    .line 1177
    move-result-object v5

    .line 1178
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1179
    .line 1180
    .line 1181
    goto :goto_22

    .line 1182
    :cond_34
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1183
    .line 1184
    .line 1185
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1186
    .line 1187
    .line 1188
    move-result v1

    .line 1189
    new-array v1, v1, [I

    .line 1190
    .line 1191
    :goto_23
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1192
    .line 1193
    .line 1194
    move-result v5

    .line 1195
    if-ge v2, v5, :cond_31

    .line 1196
    .line 1197
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v5

    .line 1201
    check-cast v5, Ljava/lang/Integer;

    .line 1202
    .line 1203
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 1204
    .line 1205
    .line 1206
    move-result v5

    .line 1207
    aput v5, v1, v2

    .line 1208
    .line 1209
    add-int/lit8 v2, v2, 0x1

    .line 1210
    .line 1211
    goto :goto_23

    .line 1212
    :goto_24
    const/16 v16, 0x291

    .line 1213
    .line 1214
    move/from16 v18, v4

    .line 1215
    .line 1216
    move/from16 v19, v6

    .line 1217
    .line 1218
    move/from16 v23, v7

    .line 1219
    .line 1220
    invoke-static/range {v16 .. v26}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIIZI[BZ[I)V

    .line 1221
    .line 1222
    .line 1223
    :cond_35
    new-instance v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    .line 1224
    .line 1225
    invoke-direct {v1}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;-><init>()V

    .line 1226
    .line 1227
    .line 1228
    iput-object v1, v0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    .line 1229
    .line 1230
    :cond_36
    return-void
.end method

.method public final updateDefaultConfigAutomaticRules()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 24
    .line 25
    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    .line 26
    .line 27
    const-string v3, "EVENTS_DEFAULT_RULE"

    .line 28
    .line 29
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const v3, 0x10410d6

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const-string v2, "EVERY_NIGHT_DEFAULT_RULE"

    .line 52
    .line 53
    iget-object v3, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_2

    .line 60
    .line 61
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    const v3, 0x10410d7

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 75
    .line 76
    :cond_2
    :goto_1
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_0

    .line 81
    .line 82
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_0

    .line 87
    .line 88
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 89
    .line 90
    invoke-static {v2, v1}, Landroid/service/notification/SystemZenRules;->updateTriggerDescription(Landroid/content/Context;Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    return-void
.end method

.method public final updatePolicy(Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenPolicy;ZZ)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p2, :cond_2

    .line 3
    .line 4
    if-eqz p4, :cond_1

    .line 5
    .line 6
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    .line 13
    .line 14
    :goto_0
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :goto_1
    iput-object p0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 23
    .line 24
    return v0

    .line 25
    :cond_1
    const/4 p0, 0x0

    .line 26
    return p0

    .line 27
    :cond_2
    iget-object p4, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 28
    .line 29
    if-eqz p4, :cond_3

    .line 30
    .line 31
    goto :goto_3

    .line 32
    :cond_3
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    .line 33
    .line 34
    .line 35
    move-result p4

    .line 36
    if-eqz p4, :cond_4

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    .line 39
    .line 40
    :goto_2
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    .line 41
    .line 42
    .line 43
    move-result-object p4

    .line 44
    goto :goto_3

    .line 45
    :cond_4
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :goto_3
    invoke-virtual {p4, p2}, Landroid/service/notification/ZenPolicy;->overwrittenWith(Landroid/service/notification/ZenPolicy;)Landroid/service/notification/ZenPolicy;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    iput-object p0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 53
    .line 54
    if-eqz p3, :cond_16

    .line 55
    .line 56
    iget p2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicyUserModifiedFields:I

    .line 57
    .line 58
    invoke-virtual {p4}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    .line 59
    .line 60
    .line 61
    move-result p3

    .line 62
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eq p3, v1, :cond_5

    .line 67
    .line 68
    or-int/lit8 p2, p2, 0x1

    .line 69
    .line 70
    :cond_5
    invoke-virtual {p4}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    .line 71
    .line 72
    .line 73
    move-result p3

    .line 74
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eq p3, v1, :cond_6

    .line 79
    .line 80
    or-int/lit8 p2, p2, 0x2

    .line 81
    .line 82
    :cond_6
    invoke-virtual {p4}, Landroid/service/notification/ZenPolicy;->getPriorityConversationSenders()I

    .line 83
    .line 84
    .line 85
    move-result p3

    .line 86
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityConversationSenders()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-eq p3, v1, :cond_7

    .line 91
    .line 92
    or-int/lit8 p2, p2, 0x4

    .line 93
    .line 94
    :cond_7
    invoke-virtual {p4}, Landroid/service/notification/ZenPolicy;->getPriorityChannelsAllowed()I

    .line 95
    .line 96
    .line 97
    move-result p3

    .line 98
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityChannelsAllowed()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eq p3, v1, :cond_8

    .line 103
    .line 104
    or-int/lit8 p2, p2, 0x8

    .line 105
    .line 106
    :cond_8
    invoke-virtual {p4}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryReminders()I

    .line 107
    .line 108
    .line 109
    move-result p3

    .line 110
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryReminders()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eq p3, v1, :cond_9

    .line 115
    .line 116
    or-int/lit8 p2, p2, 0x10

    .line 117
    .line 118
    :cond_9
    invoke-virtual {p4}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryEvents()I

    .line 119
    .line 120
    .line 121
    move-result p3

    .line 122
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryEvents()I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eq p3, v1, :cond_a

    .line 127
    .line 128
    or-int/lit8 p2, p2, 0x20

    .line 129
    .line 130
    :cond_a
    invoke-virtual {p4}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryRepeatCallers()I

    .line 131
    .line 132
    .line 133
    move-result p3

    .line 134
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryRepeatCallers()I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-eq p3, v1, :cond_b

    .line 139
    .line 140
    or-int/lit8 p2, p2, 0x40

    .line 141
    .line 142
    :cond_b
    invoke-virtual {p4}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryAlarms()I

    .line 143
    .line 144
    .line 145
    move-result p3

    .line 146
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryAlarms()I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-eq p3, v1, :cond_c

    .line 151
    .line 152
    or-int/lit16 p2, p2, 0x80

    .line 153
    .line 154
    :cond_c
    invoke-virtual {p4}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMedia()I

    .line 155
    .line 156
    .line 157
    move-result p3

    .line 158
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMedia()I

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eq p3, v1, :cond_d

    .line 163
    .line 164
    or-int/lit16 p2, p2, 0x100

    .line 165
    .line 166
    :cond_d
    invoke-virtual {p4}, Landroid/service/notification/ZenPolicy;->getPriorityCategorySystem()I

    .line 167
    .line 168
    .line 169
    move-result p3

    .line 170
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategorySystem()I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-eq p3, v1, :cond_e

    .line 175
    .line 176
    or-int/lit16 p2, p2, 0x200

    .line 177
    .line 178
    :cond_e
    invoke-virtual {p4}, Landroid/service/notification/ZenPolicy;->getVisualEffectFullScreenIntent()I

    .line 179
    .line 180
    .line 181
    move-result p3

    .line 182
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectFullScreenIntent()I

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    if-eq p3, v1, :cond_f

    .line 187
    .line 188
    or-int/lit16 p2, p2, 0x400

    .line 189
    .line 190
    :cond_f
    invoke-virtual {p4}, Landroid/service/notification/ZenPolicy;->getVisualEffectLights()I

    .line 191
    .line 192
    .line 193
    move-result p3

    .line 194
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectLights()I

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    if-eq p3, v1, :cond_10

    .line 199
    .line 200
    or-int/lit16 p2, p2, 0x800

    .line 201
    .line 202
    :cond_10
    invoke-virtual {p4}, Landroid/service/notification/ZenPolicy;->getVisualEffectPeek()I

    .line 203
    .line 204
    .line 205
    move-result p3

    .line 206
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectPeek()I

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    if-eq p3, v1, :cond_11

    .line 211
    .line 212
    or-int/lit16 p2, p2, 0x1000

    .line 213
    .line 214
    :cond_11
    invoke-virtual {p4}, Landroid/service/notification/ZenPolicy;->getVisualEffectStatusBar()I

    .line 215
    .line 216
    .line 217
    move-result p3

    .line 218
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectStatusBar()I

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    if-eq p3, v1, :cond_12

    .line 223
    .line 224
    or-int/lit16 p2, p2, 0x2000

    .line 225
    .line 226
    :cond_12
    invoke-virtual {p4}, Landroid/service/notification/ZenPolicy;->getVisualEffectBadge()I

    .line 227
    .line 228
    .line 229
    move-result p3

    .line 230
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectBadge()I

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    if-eq p3, v1, :cond_13

    .line 235
    .line 236
    or-int/lit16 p2, p2, 0x4000

    .line 237
    .line 238
    :cond_13
    invoke-virtual {p4}, Landroid/service/notification/ZenPolicy;->getVisualEffectAmbient()I

    .line 239
    .line 240
    .line 241
    move-result p3

    .line 242
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectAmbient()I

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    if-eq p3, v1, :cond_14

    .line 247
    .line 248
    const p3, 0x8000

    .line 249
    .line 250
    .line 251
    or-int/2addr p2, p3

    .line 252
    :cond_14
    invoke-virtual {p4}, Landroid/service/notification/ZenPolicy;->getVisualEffectNotificationList()I

    .line 253
    .line 254
    .line 255
    move-result p3

    .line 256
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectNotificationList()I

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    if-eq p3, v1, :cond_15

    .line 261
    .line 262
    const/high16 p3, 0x10000

    .line 263
    .line 264
    or-int/2addr p2, p3

    .line 265
    :cond_15
    iput p2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicyUserModifiedFields:I

    .line 266
    .line 267
    :cond_16
    invoke-virtual {p0, p4}, Landroid/service/notification/ZenPolicy;->equals(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result p0

    .line 271
    xor-int/2addr p0, v0

    .line 272
    return p0
.end method

.method public final zenRuleToAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Landroid/app/AutomaticZenRule;
    .locals 10

    .line 1
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    new-instance v0, Landroid/app/AutomaticZenRule$Builder;

    .line 8
    .line 9
    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Landroid/app/AutomaticZenRule$Builder;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 14
    .line 15
    .line 16
    iget-boolean v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/app/AutomaticZenRule$Builder;->setManualInvocationAllowed(Z)Landroid/app/AutomaticZenRule$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/app/AutomaticZenRule$Builder;->setPackage(Ljava/lang/String;)Landroid/app/AutomaticZenRule$Builder;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-wide v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/app/AutomaticZenRule$Builder;->setCreationTime(J)Landroid/app/AutomaticZenRule$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const/4 v4, 0x0

    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-virtual {p0, v2, v1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception p0

    .line 59
    const-string v1, "ZenModeHelper"

    .line 60
    .line 61
    const-string v2, "cannot load rule icon for pkg"

    .line 62
    .line 63
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    .line 65
    .line 66
    :goto_0
    invoke-virtual {v0, v4}, Landroid/app/AutomaticZenRule$Builder;->setIconResId(I)Landroid/app/AutomaticZenRule$Builder;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    iget v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    .line 71
    .line 72
    invoke-virtual {p0, v0}, Landroid/app/AutomaticZenRule$Builder;->setType(I)Landroid/app/AutomaticZenRule$Builder;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 77
    .line 78
    invoke-virtual {p0, v0}, Landroid/app/AutomaticZenRule$Builder;->setZenPolicy(Landroid/service/notification/ZenPolicy;)Landroid/app/AutomaticZenRule$Builder;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    .line 83
    .line 84
    invoke-virtual {p0, v0}, Landroid/app/AutomaticZenRule$Builder;->setDeviceEffects(Landroid/service/notification/ZenDeviceEffects;)Landroid/app/AutomaticZenRule$Builder;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    iget-boolean v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 89
    .line 90
    invoke-virtual {p0, v0}, Landroid/app/AutomaticZenRule$Builder;->setEnabled(Z)Landroid/app/AutomaticZenRule$Builder;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    iget v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 95
    .line 96
    invoke-static {v0}, Landroid/app/NotificationManager;->zenModeToInterruptionFilter(I)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    invoke-virtual {p0, v0}, Landroid/app/AutomaticZenRule$Builder;->setInterruptionFilter(I)Landroid/app/AutomaticZenRule$Builder;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 105
    .line 106
    invoke-virtual {p0, v0}, Landroid/app/AutomaticZenRule$Builder;->setOwner(Landroid/content/ComponentName;)Landroid/app/AutomaticZenRule$Builder;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    .line 111
    .line 112
    invoke-virtual {p0, v0}, Landroid/app/AutomaticZenRule$Builder;->setConfigurationActivity(Landroid/content/ComponentName;)Landroid/app/AutomaticZenRule$Builder;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    iget-object p1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {p0, p1}, Landroid/app/AutomaticZenRule$Builder;->setTriggerDescription(Ljava/lang/String;)Landroid/app/AutomaticZenRule$Builder;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-virtual {p0}, Landroid/app/AutomaticZenRule$Builder;->build()Landroid/app/AutomaticZenRule;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    goto :goto_1

    .line 127
    :cond_1
    new-instance p0, Landroid/app/AutomaticZenRule;

    .line 128
    .line 129
    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 130
    .line 131
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 132
    .line 133
    iget-object v3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    .line 134
    .line 135
    iget-object v4, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 136
    .line 137
    iget-object v5, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 138
    .line 139
    iget v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 140
    .line 141
    invoke-static {v0}, Landroid/app/NotificationManager;->zenModeToInterruptionFilter(I)I

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    iget-boolean v7, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 146
    .line 147
    iget-wide v8, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    .line 148
    .line 149
    move-object v0, p0

    .line 150
    invoke-direct/range {v0 .. v9}, Landroid/app/AutomaticZenRule;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/ZenPolicy;IZJ)V

    .line 151
    .line 152
    .line 153
    iget-object p1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {p0, p1}, Landroid/app/AutomaticZenRule;->setPackageName(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    :goto_1
    return-object p0
.end method
