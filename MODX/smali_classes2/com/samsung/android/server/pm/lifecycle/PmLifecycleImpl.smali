.class public final Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mACFilter:Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;

.field public final mATCommandReceiver:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$ATCommandReceiver;

.field public mChinaGmsToggleUtils:Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;

.field public final mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

.field public mEnabled:Z

.field public final mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

.field public mIsUserTrial:Z

.field public mOmcInstallHelper:Lcom/samsung/android/server/pm/install/OmcInstallHelper;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mRRFilter:Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;

.field public mSkippingApks:Lcom/samsung/android/server/pm/install/SkippingApks;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->getInstance()Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mRRFilter:Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mEnabled:Z

    .line 4
    new-instance v1, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$ATCommandReceiver;

    invoke-direct {v1}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$ATCommandReceiver;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mATCommandReceiver:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$ATCommandReceiver;

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mIsUserTrial:Z

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 7
    iput-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 8
    iput-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-static {}, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->getInstance()Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mRRFilter:Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mEnabled:Z

    .line 12
    new-instance v1, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$ATCommandReceiver;

    invoke-direct {v1}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$ATCommandReceiver;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mATCommandReceiver:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$ATCommandReceiver;

    .line 13
    iput-boolean v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mIsUserTrial:Z

    .line 14
    iput-object p1, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 15
    iput-object p2, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 16
    iput-object p3, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    return-void
.end method


# virtual methods
.method public final onInitPreparing()V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mEnabled:Z

    .line 3
    .line 4
    invoke-static {}, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->getInstance()Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    .line 9
    .line 10
    iget-object v3, v2, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 11
    .line 12
    iget-object v4, v2, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPmService:Lcom/android/server/pm/PackageManagerService;

    .line 13
    .line 14
    iget-object v2, v2, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPackageManagerBackupControllerProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    .line 15
    .line 16
    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->registerController(Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    .line 26
    .line 27
    iget-object v2, v1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 28
    .line 29
    iget-object v3, v1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPmService:Lcom/android/server/pm/PackageManagerService;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mSkippingApksProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    .line 32
    .line 33
    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lcom/samsung/android/server/pm/install/SkippingApks;

    .line 38
    .line 39
    iput-object v1, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mSkippingApks:Lcom/samsung/android/server/pm/install/SkippingApks;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    .line 42
    .line 43
    iget-object v2, v1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 44
    .line 45
    iget-object v3, v1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPmService:Lcom/android/server/pm/PackageManagerService;

    .line 46
    .line 47
    iget-object v1, v1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mOmcInstallHelperProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    .line 48
    .line 49
    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lcom/samsung/android/server/pm/install/OmcInstallHelper;

    .line 54
    .line 55
    iput-object v1, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mOmcInstallHelper:Lcom/samsung/android/server/pm/install/OmcInstallHelper;

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    const-string/jumbo v1, "mdc.singlesku"

    .line 61
    .line 62
    .line 63
    const/4 v2, 0x0

    .line 64
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-nez v1, :cond_0

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_0
    const-string/jumbo v1, "mdc.singlesku.activated"

    .line 72
    .line 73
    .line 74
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    xor-int/2addr v1, v0

    .line 83
    if-eqz v1, :cond_1

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_1
    const-string/jumbo v1, "wait to read AID before system scan"

    .line 87
    .line 88
    .line 89
    const-string v3, "PackageManager"

    .line 90
    .line 91
    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 95
    .line 96
    .line 97
    move-result-wide v4

    .line 98
    const/16 v1, 0xfa

    .line 99
    .line 100
    :goto_0
    if-ltz v1, :cond_3

    .line 101
    .line 102
    const-string/jumbo v6, "mdc.singlesku.activated"

    .line 103
    .line 104
    .line 105
    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    xor-int/2addr v6, v0

    .line 114
    if-eqz v6, :cond_2

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_2
    const-wide/16 v6, 0x14

    .line 118
    .line 119
    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .line 121
    .line 122
    :catch_0
    add-int/lit8 v1, v1, -0x1

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_3
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string/jumbo v6, "waitToReadAID took "

    .line 128
    .line 129
    .line 130
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 134
    .line 135
    .line 136
    move-result-wide v6

    .line 137
    sub-long/2addr v6, v4

    .line 138
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string/jumbo v4, "ms"

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mSkippingApks:Lcom/samsung/android/server/pm/install/SkippingApks;

    .line 155
    .line 156
    iget-object v3, v1, Lcom/samsung/android/server/pm/install/SkippingApks;->mSkippingApkList:Ljava/util/ArrayList;

    .line 157
    .line 158
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 159
    .line 160
    .line 161
    const-string/jumbo v3, "mdc.sys.omc_etcpath"

    .line 162
    .line 163
    .line 164
    const/4 v4, 0x0

    .line 165
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    const-string v5, "/data/omc/etc/enforceskippingpackages.txt"

    .line 170
    .line 171
    invoke-static {v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 172
    .line 173
    .line 174
    move-result v6

    .line 175
    const-string v7, ""

    .line 176
    .line 177
    if-eqz v6, :cond_4

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_4
    if-eqz v3, :cond_7

    .line 181
    .line 182
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v5

    .line 186
    if-nez v5, :cond_7

    .line 187
    .line 188
    const-string/jumbo v5, "ro.boot.activatedid"

    .line 189
    .line 190
    .line 191
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    new-instance v6, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string v8, "/enforceskippingpackages_"

    .line 204
    .line 205
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const-string v5, ".txt"

    .line 212
    .line 213
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    invoke-static {v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 221
    .line 222
    .line 223
    move-result v9

    .line 224
    if-eqz v9, :cond_5

    .line 225
    .line 226
    move-object v5, v6

    .line 227
    goto :goto_3

    .line 228
    :cond_5
    const-string/jumbo v6, "ro.csc.countryiso_code"

    .line 229
    .line 230
    .line 231
    invoke-static {v6, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    new-instance v9, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v5

    .line 256
    invoke-static {v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 257
    .line 258
    .line 259
    move-result v6

    .line 260
    if-eqz v6, :cond_6

    .line 261
    .line 262
    goto :goto_3

    .line 263
    :cond_6
    const-string v5, "/enforceskippingpackages.txt"

    .line 264
    .line 265
    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    move-object v5, v3

    .line 270
    goto :goto_3

    .line 271
    :cond_7
    const-string v5, "/system/csc_contents/enforceskippingpackages.txt"

    .line 272
    .line 273
    invoke-static {v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    if-eqz v3, :cond_8

    .line 278
    .line 279
    goto :goto_3

    .line 280
    :cond_8
    const-string v5, "/system/etc/enforceskippingpackages.txt"

    .line 281
    .line 282
    :goto_3
    invoke-static {v5}, Lcom/samsung/android/server/pm/install/SkippingApks;->getApkNamesFromFile(Ljava/lang/String;)Ljava/util/List;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    iget-object v5, v1, Lcom/samsung/android/server/pm/install/SkippingApks;->mSkippingApkList:Ljava/util/ArrayList;

    .line 287
    .line 288
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 289
    .line 290
    .line 291
    const-string/jumbo v3, "persist.sys.omcnw_path"

    .line 292
    .line 293
    .line 294
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v3

    .line 298
    if-eqz v3, :cond_a

    .line 299
    .line 300
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v5

    .line 304
    if-nez v5, :cond_a

    .line 305
    .line 306
    const-string v5, "/etc/enforceinstallpackages_omcnw.txt"

    .line 307
    .line 308
    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    invoke-static {v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 313
    .line 314
    .line 315
    move-result v5

    .line 316
    if-eqz v5, :cond_a

    .line 317
    .line 318
    invoke-static {v3}, Lcom/samsung/android/server/pm/install/SkippingApks;->getApkNamesFromFile(Ljava/lang/String;)Ljava/util/List;

    .line 319
    .line 320
    .line 321
    move-result-object v3

    .line 322
    check-cast v3, Ljava/util/ArrayList;

    .line 323
    .line 324
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 325
    .line 326
    .line 327
    move-result-object v3

    .line 328
    :cond_9
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 329
    .line 330
    .line 331
    move-result v5

    .line 332
    if-eqz v5, :cond_a

    .line 333
    .line 334
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v5

    .line 338
    check-cast v5, Ljava/lang/String;

    .line 339
    .line 340
    iget-object v6, v1, Lcom/samsung/android/server/pm/install/SkippingApks;->mSkippingApkList:Ljava/util/ArrayList;

    .line 341
    .line 342
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    move-result v6

    .line 346
    if-eqz v6, :cond_9

    .line 347
    .line 348
    iget-object v6, v1, Lcom/samsung/android/server/pm/install/SkippingApks;->mSkippingApkList:Ljava/util/ArrayList;

    .line 349
    .line 350
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    goto :goto_4

    .line 354
    :cond_a
    new-instance v3, Lcom/samsung/android/server/pm/install/SkippingApksExceptions;

    .line 355
    .line 356
    invoke-direct {v3}, Lcom/samsung/android/server/pm/install/SkippingApksExceptions;-><init>()V

    .line 357
    .line 358
    .line 359
    iget-object v5, v3, Lcom/samsung/android/server/pm/install/SkippingApksExceptions;->mAdditionalSkippingApkList:Ljava/util/List;

    .line 360
    .line 361
    check-cast v5, Ljava/util/ArrayList;

    .line 362
    .line 363
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 364
    .line 365
    .line 366
    move-result v5

    .line 367
    xor-int/2addr v5, v0

    .line 368
    if-eqz v5, :cond_b

    .line 369
    .line 370
    new-instance v5, Ljava/lang/StringBuilder;

    .line 371
    .line 372
    const-string v6, "getAdditionalSkippingApkList: "

    .line 373
    .line 374
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    iget-object v6, v3, Lcom/samsung/android/server/pm/install/SkippingApksExceptions;->mAdditionalSkippingApkList:Ljava/util/List;

    .line 378
    .line 379
    invoke-interface {v6}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v6

    .line 383
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v5

    .line 390
    const-string v6, "SkippingApksExceptions"

    .line 391
    .line 392
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    .line 394
    .line 395
    iget-object v3, v3, Lcom/samsung/android/server/pm/install/SkippingApksExceptions;->mAdditionalSkippingApkList:Ljava/util/List;

    .line 396
    .line 397
    check-cast v3, Ljava/util/ArrayList;

    .line 398
    .line 399
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 400
    .line 401
    .line 402
    move-result-object v3

    .line 403
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 404
    .line 405
    .line 406
    move-result v5

    .line 407
    if-eqz v5, :cond_b

    .line 408
    .line 409
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v5

    .line 413
    check-cast v5, Ljava/lang/String;

    .line 414
    .line 415
    invoke-virtual {v1, v5}, Lcom/samsung/android/server/pm/install/SkippingApks;->addSkippingPackage(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    goto :goto_5

    .line 419
    :cond_b
    iget-object v1, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mOmcInstallHelper:Lcom/samsung/android/server/pm/install/OmcInstallHelper;

    .line 420
    .line 421
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 422
    .line 423
    .line 424
    const-string/jumbo v3, "persist.sys.prev_salescode"

    .line 425
    .line 426
    .line 427
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v3

    .line 431
    const-string/jumbo v5, "ro.csc.sales_code"

    .line 432
    .line 433
    .line 434
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v5

    .line 438
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 439
    .line 440
    .line 441
    move-result v6

    .line 442
    if-nez v6, :cond_e

    .line 443
    .line 444
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 445
    .line 446
    .line 447
    move-result v6

    .line 448
    if-eqz v6, :cond_c

    .line 449
    .line 450
    goto :goto_6

    .line 451
    :cond_c
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v5

    .line 455
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v5

    .line 459
    const-string v6, ","

    .line 460
    .line 461
    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v3

    .line 465
    aget-object v3, v3, v2

    .line 466
    .line 467
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v3

    .line 471
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v3

    .line 475
    new-instance v6, Ljava/lang/StringBuilder;

    .line 476
    .line 477
    const-string v7, "Sales code, current: "

    .line 478
    .line 479
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    const-string v7, ", prev: "

    .line 486
    .line 487
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v6

    .line 497
    const-string v7, "PackageManager"

    .line 498
    .line 499
    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    .line 501
    .line 502
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 503
    .line 504
    .line 505
    move-result v6

    .line 506
    if-nez v6, :cond_e

    .line 507
    .line 508
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 509
    .line 510
    .line 511
    move-result v6

    .line 512
    if-eqz v6, :cond_d

    .line 513
    .line 514
    goto :goto_6

    .line 515
    :cond_d
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 516
    .line 517
    .line 518
    move-result v3

    .line 519
    xor-int/2addr v3, v0

    .line 520
    goto :goto_7

    .line 521
    :cond_e
    :goto_6
    move v3, v2

    .line 522
    :goto_7
    iput-boolean v3, v1, Lcom/samsung/android/server/pm/install/OmcInstallHelper;->mNeedsOmcInit:Z

    .line 523
    .line 524
    const-string/jumbo v3, "mdc.singlesku"

    .line 525
    .line 526
    .line 527
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 528
    .line 529
    .line 530
    move-result v3

    .line 531
    if-eqz v3, :cond_10

    .line 532
    .line 533
    const-string/jumbo v3, "mdc.singlesku.activated"

    .line 534
    .line 535
    .line 536
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 537
    .line 538
    .line 539
    move-result v3

    .line 540
    if-nez v3, :cond_f

    .line 541
    .line 542
    goto :goto_8

    .line 543
    :cond_f
    new-instance v3, Ljava/io/File;

    .line 544
    .line 545
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    .line 546
    .line 547
    .line 548
    move-result-object v5

    .line 549
    const-string/jumbo v6, "samsung_pm_settings.xml"

    .line 550
    .line 551
    .line 552
    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    iget-object v5, v1, Lcom/samsung/android/server/pm/install/OmcInstallHelper;->mContext:Landroid/content/Context;

    .line 556
    .line 557
    invoke-virtual {v5}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    .line 558
    .line 559
    .line 560
    move-result-object v5

    .line 561
    invoke-virtual {v5, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    .line 562
    .line 563
    .line 564
    move-result-object v3

    .line 565
    const-string/jumbo v5, "pref_tss_initialized"

    .line 566
    .line 567
    .line 568
    invoke-interface {v3, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 569
    .line 570
    .line 571
    move-result v2

    .line 572
    xor-int/2addr v2, v0

    .line 573
    :cond_10
    :goto_8
    iput-boolean v2, v1, Lcom/samsung/android/server/pm/install/OmcInstallHelper;->mNeedsTssInit:Z

    .line 574
    .line 575
    iget-object v1, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 576
    .line 577
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerServiceInjector;->mInstaller:Lcom/android/server/pm/Installer;

    .line 578
    .line 579
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 580
    .line 581
    .line 582
    :try_start_1
    iget-object v1, v1, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 583
    .line 584
    invoke-interface {v1}, Landroid/os/IInstalld;->removeNotTargetedPreloadApksIfNeeded()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 585
    .line 586
    .line 587
    :catch_1
    sget-boolean v1, Lcom/samsung/android/rune/PMRune;->PM_ENABLE_GMS:Z

    .line 588
    .line 589
    if-eqz v1, :cond_11

    .line 590
    .line 591
    iget-object v1, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    .line 592
    .line 593
    iget-object v2, v1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 594
    .line 595
    iget-object v3, v1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPmService:Lcom/android/server/pm/PackageManagerService;

    .line 596
    .line 597
    iget-object v1, v1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mChinaGmsToggleUtilsProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    .line 598
    .line 599
    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    .line 600
    .line 601
    .line 602
    move-result-object v1

    .line 603
    check-cast v1, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;

    .line 604
    .line 605
    iput-object v1, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mChinaGmsToggleUtils:Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;

    .line 606
    .line 607
    :cond_11
    iget-object v1, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    .line 608
    .line 609
    iget-object v2, v1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 610
    .line 611
    iget-object v3, v1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPmService:Lcom/android/server/pm/PackageManagerService;

    .line 612
    .line 613
    iget-object v1, v1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mAppCategoryFilterProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    .line 614
    .line 615
    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    .line 616
    .line 617
    .line 618
    move-result-object v1

    .line 619
    check-cast v1, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;

    .line 620
    .line 621
    iput-object v1, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mACFilter:Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;

    .line 622
    .line 623
    iput-boolean v0, v1, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->mEnabled:Z

    .line 624
    .line 625
    iget-object v0, v1, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->mLock:Ljava/lang/Object;

    .line 626
    .line 627
    monitor-enter v0

    .line 628
    :try_start_2
    iget-boolean v2, v1, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->mEnabled:Z

    .line 629
    .line 630
    if-eqz v2, :cond_12

    .line 631
    .line 632
    invoke-virtual {v1}, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->clearItemsLocked()V

    .line 633
    .line 634
    .line 635
    invoke-virtual {v1, v4}, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->loadItemsInternalLocked(Ljava/lang/String;)V

    .line 636
    .line 637
    .line 638
    goto :goto_9

    .line 639
    :catchall_0
    move-exception p0

    .line 640
    goto :goto_a

    .line 641
    :cond_12
    invoke-virtual {v1}, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->clearItemsLocked()V

    .line 642
    .line 643
    .line 644
    :goto_9
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 645
    iget-object p0, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mACFilter:Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;

    .line 646
    .line 647
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 648
    .line 649
    .line 650
    sget-object v0, Lcom/samsung/android/server/packagefeature/PackageFeature;->appcategory:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 651
    .line 652
    iget-object p0, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->mAppCategoryCallback:Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter$1;

    .line 653
    .line 654
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/packagefeature/PackageFeature;->registerCallback(Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;)V

    .line 655
    .line 656
    .line 657
    return-void

    .line 658
    :goto_a
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 659
    throw p0
.end method

.method public final onInitStarting()V
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-boolean v1, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mEnabled:Z

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    array-length v1, p0

    .line 18
    const/4 v2, 0x0

    .line 19
    move v3, v2

    .line 20
    :goto_0
    if-ge v3, v1, :cond_1

    .line 21
    .line 22
    aget v4, p0, v3

    .line 23
    .line 24
    const/4 v5, 0x3

    .line 25
    :try_start_0
    const-string v6, "com.android.role.persistence.RolesPersistenceImpl"

    .line 26
    .line 27
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    new-array v7, v2, [Ljava/lang/Class;

    .line 32
    .line 33
    const/4 v7, 0x0

    .line 34
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    invoke-virtual {v8, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 39
    .line 40
    .line 41
    const-string/jumbo v9, "readForUser"

    .line 42
    .line 43
    .line 44
    new-array v10, v0, [Ljava/lang/Class;

    .line 45
    .line 46
    const-class v11, Landroid/os/UserHandle;

    .line 47
    .line 48
    aput-object v11, v10, v2

    .line 49
    .line 50
    invoke-virtual {v6, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-virtual {v8, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catch_0
    move-exception v4

    .line 71
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 72
    .line 73
    const-string v6, "!@Failed to use RolesPersistence class."

    .line 74
    .line 75
    invoke-static {v5, v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :catch_1
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 83
    .line 84
    const-string v6, "!@Failed to read roles.xml. Initiate the files."

    .line 85
    .line 86
    invoke-static {v5, v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const-string v5, "com.android.permission"

    .line 90
    .line 91
    invoke-static {v5}, Landroid/content/ApexEnvironment;->getApexEnvironment(Ljava/lang/String;)Landroid/content/ApexEnvironment;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    invoke-virtual {v6, v7}, Landroid/content/ApexEnvironment;->getDeviceProtectedDataDirForUser(Landroid/os/UserHandle;)Ljava/io/File;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    new-instance v7, Ljava/io/File;

    .line 104
    .line 105
    const-string/jumbo v8, "runtime-permissions.xml"

    .line 106
    .line 107
    .line 108
    invoke-direct {v7, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 112
    .line 113
    .line 114
    invoke-static {v5}, Landroid/content/ApexEnvironment;->getApexEnvironment(Ljava/lang/String;)Landroid/content/ApexEnvironment;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-virtual {v5, v4}, Landroid/content/ApexEnvironment;->getDeviceProtectedDataDirForUser(Landroid/os/UserHandle;)Ljava/io/File;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    new-instance v5, Ljava/io/File;

    .line 127
    .line 128
    const-string/jumbo v6, "roles.xml"

    .line 129
    .line 130
    .line 131
    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 135
    .line 136
    .line 137
    :goto_1
    add-int/2addr v3, v0

    .line 138
    goto :goto_0

    .line 139
    :cond_1
    return-void
.end method

.method public final onInstalldStarting()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mRRFilter:Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->enableAndConfigure(Z)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl$$ExternalSyntheticLambda1;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;)V

    .line 10
    .line 11
    .line 12
    const-string p0, "Installd connected. Took "

    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    new-instance v5, Lcom/samsung/android/server/pm/install/PdpUtils$$ExternalSyntheticLambda0;

    .line 23
    .line 24
    invoke-direct {v5, v0}, Lcom/samsung/android/server/pm/install/PdpUtils$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl$$ExternalSyntheticLambda1;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 32
    .line 33
    const-wide/16 v5, 0x186

    .line 34
    .line 35
    invoke-interface {v0, v5, v6, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    const-string v4, "PackageManager"

    .line 39
    .line 40
    new-instance v5, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v5, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v6

    .line 49
    sub-long/2addr v6, v2

    .line 50
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p0, " ms"

    .line 54
    .line 55
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception p0

    .line 67
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catch_1
    const/4 p0, 0x5

    .line 72
    const-string v2, "Timeout. Installd connection failed."

    .line 73
    .line 74
    invoke-static {p0, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 78
    .line 79
    .line 80
    :goto_0
    return-void
.end method

.method public final onPackageInstalled(Ljava/lang/String;Z[I)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    sget-boolean p2, Lcom/samsung/android/rune/PMRune;->PM_ENABLE_GMS:Z

    .line 6
    .line 7
    if-eqz p2, :cond_3

    .line 8
    .line 9
    sget-object p2, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;->GMS_PACKAGES:[Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {p2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    new-instance v1, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    invoke-direct {v1, p1}, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_3

    .line 25
    .line 26
    iget-object p2, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mChinaGmsToggleUtils:Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;

    .line 27
    .line 28
    sget-boolean v1, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;->isToggleSupported:Z

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    iget-object v1, p2, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v3, "google_core_control"

    .line 40
    .line 41
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-ne v1, v0, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 v1, 0x2

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    :goto_0
    move v1, v0

    .line 54
    :goto_1
    array-length v3, p3

    .line 55
    :goto_2
    if-ge v2, v3, :cond_3

    .line 56
    .line 57
    aget v4, p3, v2

    .line 58
    .line 59
    :try_start_0
    invoke-virtual {p2, p1, v1, v4}, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;->setApplicationEnabledSettingAsUser(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_3

    .line 63
    :catch_0
    move-exception v4

    .line 64
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    .line 66
    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v5, "Fail to enable "

    .line 70
    .line 71
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    const-string v5, "PackageManager"

    .line 82
    .line 83
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    :goto_3
    add-int/2addr v2, v0

    .line 87
    goto :goto_2

    .line 88
    :cond_3
    invoke-static {}, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->getInstance()Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    iget-object p3, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 93
    .line 94
    iget-object p3, p3, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    .line 95
    .line 96
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    const-class p2, Landroid/app/job/JobScheduler;

    .line 100
    .line 101
    invoke-virtual {p3, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    check-cast p2, Landroid/app/job/JobScheduler;

    .line 106
    .line 107
    const p3, 0x91a0b3

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2, p3}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    const-string v2, "SystemFileBackupManager"

    .line 115
    .line 116
    if-nez v1, :cond_4

    .line 117
    .line 118
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    .line 119
    .line 120
    sget-object v3, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->sFileBackupServiceName:Landroid/content/ComponentName;

    .line 121
    .line 122
    invoke-direct {v1, p3, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 126
    .line 127
    .line 128
    move-result-object p3

    .line 129
    invoke-virtual {p3, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 133
    .line 134
    .line 135
    move-result-object p3

    .line 136
    invoke-virtual {p2, p3}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 137
    .line 138
    .line 139
    const-string p2, "Scheduled onetime backup job"

    .line 140
    .line 141
    invoke-static {v2, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_4
    const-string p2, "Already scheduled"

    .line 146
    .line 147
    invoke-static {v2, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    :goto_4
    iget-object p2, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 151
    .line 152
    iget-object p2, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 153
    .line 154
    sget-boolean p3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 155
    .line 156
    monitor-enter p2

    .line 157
    :try_start_1
    iget-object p3, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    .line 158
    .line 159
    iget-object v0, p3, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 160
    .line 161
    iget-object v1, p3, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPmService:Lcom/android/server/pm/PackageManagerService;

    .line 162
    .line 163
    iget-object p3, p3, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mMultiUserInstallPolicyProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    .line 164
    .line 165
    invoke-virtual {p3, v1, v0}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p3

    .line 169
    check-cast p3, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;

    .line 170
    .line 171
    iget-object v0, p3, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;->mSettingsDelegator:Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;

    .line 172
    .line 173
    iget-object v0, v0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;->mGetPackagesLocked:Ljava/util/function/Supplier;

    .line 174
    .line 175
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    check-cast v0, Lcom/android/server/utils/WatchedArrayMap;

    .line 180
    .line 181
    iget-object v0, v0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 182
    .line 183
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 188
    .line 189
    if-nez v0, :cond_5

    .line 190
    .line 191
    goto :goto_5

    .line 192
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    .line 193
    .line 194
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p3, v1}, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;->getSubUserIdsAndGuestUserId(Ljava/util/List;)I

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    invoke-virtual {p3, v0, v1, v2}, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;->applyInstallPolicyPackageInternalLPw(Lcom/android/server/pm/PackageSetting;Ljava/util/List;I)V

    .line 202
    .line 203
    .line 204
    :goto_5
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    iget-object p0, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mACFilter:Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;

    .line 206
    .line 207
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->getPackageCategory(Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    move-result p0

    .line 211
    if-ltz p0, :cond_6

    .line 212
    .line 213
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 214
    .line 215
    .line 216
    move-result-object p2

    .line 217
    const-string p3, "android"

    .line 218
    .line 219
    invoke-interface {p2, p1, p0, p3}, Landroid/content/pm/IPackageManager;->setApplicationCategoryHint(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 220
    .line 221
    .line 222
    :catch_1
    :cond_6
    return-void

    .line 223
    :catchall_0
    move-exception p0

    .line 224
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 225
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 226
    .line 227
    throw p0
.end method

.method public final onSystemReady()V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v2, 0x1

    .line 4
    iget-boolean v0, v1, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mEnabled:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, v1, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 10
    .line 11
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 12
    .line 13
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 14
    .line 15
    monitor-enter v3

    .line 16
    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    .line 17
    .line 18
    iget-object v4, v0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 19
    .line 20
    iget-object v5, v0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPmService:Lcom/android/server/pm/PackageManagerService;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mMultiUserInstallPolicyProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    .line 23
    .line 24
    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    new-instance v4, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v4}, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;->getSubUserIdsAndGuestUserId(Ljava/util/List;)I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    iget-object v6, v0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;->mSettingsDelegator:Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;

    .line 43
    .line 44
    iget-object v6, v6, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;->mGetPackagesLocked:Ljava/util/function/Supplier;

    .line 45
    .line 46
    invoke-interface {v6}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    check-cast v6, Lcom/android/server/utils/WatchedArrayMap;

    .line 51
    .line 52
    invoke-virtual {v6}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    if-eqz v7, :cond_1

    .line 65
    .line 66
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    check-cast v7, Lcom/android/server/pm/PackageSetting;

    .line 71
    .line 72
    invoke-virtual {v0, v7, v4, v5}, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;->applyInstallPolicyPackageInternalLPw(Lcom/android/server/pm/PackageSetting;Ljava/util/List;I)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 77
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 78
    .line 79
    sget-boolean v0, Lcom/samsung/android/rune/PMRune;->PM_ENABLE_GMS:Z

    .line 80
    .line 81
    const/4 v3, -0x1

    .line 82
    if-eqz v0, :cond_2

    .line 83
    .line 84
    iget-object v0, v1, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mChinaGmsToggleUtils:Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;

    .line 85
    .line 86
    invoke-virtual {v0, v3}, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;->setGmsEnabledSetting(I)V

    .line 87
    .line 88
    .line 89
    sget-boolean v0, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;->isToggleSupported:Z

    .line 90
    .line 91
    if-eqz v0, :cond_2

    .line 92
    .line 93
    iget-object v0, v1, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mChinaGmsToggleUtils:Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;

    .line 94
    .line 95
    iget-object v4, v1, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 96
    .line 97
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getHandler()Landroid/os/Handler;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    iget-object v5, v0, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;->mContext:Landroid/content/Context;

    .line 102
    .line 103
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    const-string v6, "google_core_control"

    .line 108
    .line 109
    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    new-instance v7, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils$1;

    .line 114
    .line 115
    invoke-direct {v7, v0, v4}, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils$1;-><init>(Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;Landroid/os/Handler;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5, v6, v2, v7, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 119
    .line 120
    .line 121
    :cond_2
    iget-object v0, v1, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 122
    .line 123
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    .line 124
    .line 125
    const/4 v4, 0x0

    .line 126
    invoke-static {v0, v4}, Lcom/samsung/android/server/pm/scan/CacheCorruptionChecker;->setPackageScanStarted(Landroid/content/Context;Z)V

    .line 127
    .line 128
    .line 129
    iget-object v0, v1, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-nez v0, :cond_4

    .line 136
    .line 137
    iget-object v0, v1, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 138
    .line 139
    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    .line 140
    .line 141
    if-eqz v0, :cond_3

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_3
    move v5, v4

    .line 145
    goto :goto_2

    .line 146
    :cond_4
    :goto_1
    move v5, v2

    .line 147
    :goto_2
    iget-object v0, v1, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mOmcInstallHelper:Lcom/samsung/android/server/pm/install/OmcInstallHelper;

    .line 148
    .line 149
    iget-boolean v6, v0, Lcom/samsung/android/server/pm/install/OmcInstallHelper;->mNeedsOmcInit:Z

    .line 150
    .line 151
    if-nez v6, :cond_6

    .line 152
    .line 153
    iget-boolean v0, v0, Lcom/samsung/android/server/pm/install/OmcInstallHelper;->mNeedsTssInit:Z

    .line 154
    .line 155
    if-eqz v0, :cond_5

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_5
    move v0, v4

    .line 159
    goto :goto_4

    .line 160
    :cond_6
    :goto_3
    move v0, v2

    .line 161
    :goto_4
    if-nez v5, :cond_7

    .line 162
    .line 163
    if-eqz v0, :cond_15

    .line 164
    .line 165
    :cond_7
    new-instance v6, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;

    .line 166
    .line 167
    iget-object v7, v1, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 168
    .line 169
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    .line 170
    .line 171
    new-instance v8, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;

    .line 172
    .line 173
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 174
    .line 175
    .line 176
    iput-object v7, v8, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->mContext:Landroid/content/Context;

    .line 177
    .line 178
    invoke-direct {v6, v8}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;-><init>(Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;)V

    .line 179
    .line 180
    .line 181
    new-instance v7, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    const-string v9, "Set up omc permissions (firstBootOrUpgrade: "

    .line 184
    .line 185
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v9, ", needsOmcOrTssInit: "

    .line 192
    .line 193
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string v0, ")"

    .line 200
    .line 201
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    const/4 v7, 0x5

    .line 209
    invoke-static {v7, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 217
    .line 218
    .line 219
    move-result-object v7

    .line 220
    const-string v9, "OmcPermissionPolicy"

    .line 221
    .line 222
    if-eqz v7, :cond_e

    .line 223
    .line 224
    array-length v0, v7

    .line 225
    if-gtz v0, :cond_8

    .line 226
    .line 227
    goto/16 :goto_d

    .line 228
    .line 229
    :cond_8
    iget-object v0, v8, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->mContext:Landroid/content/Context;

    .line 230
    .line 231
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    const v10, 0x2800b000

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, v10, v4}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    .line 239
    .line 240
    .line 241
    move-result-object v10

    .line 242
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 243
    .line 244
    .line 245
    move-result v11

    .line 246
    move v12, v4

    .line 247
    :goto_5
    if-ge v12, v11, :cond_e

    .line 248
    .line 249
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    move-object v13, v0

    .line 254
    check-cast v13, Landroid/content/pm/PackageInfo;

    .line 255
    .line 256
    iget-object v14, v13, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 257
    .line 258
    if-nez v14, :cond_a

    .line 259
    .line 260
    :cond_9
    move v4, v2

    .line 261
    move-object/from16 v16, v8

    .line 262
    .line 263
    move-object/from16 v19, v10

    .line 264
    .line 265
    move/from16 v18, v11

    .line 266
    .line 267
    goto/16 :goto_c

    .line 268
    .line 269
    :cond_a
    array-length v15, v14

    .line 270
    move v3, v4

    .line 271
    :goto_6
    if-ge v3, v15, :cond_9

    .line 272
    .line 273
    aget-object v2, v14, v3

    .line 274
    .line 275
    :try_start_1
    iget-object v0, v8, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->mContext:Landroid/content/Context;

    .line 276
    .line 277
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    .line 282
    .line 283
    .line 284
    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 285
    goto :goto_7

    .line 286
    :catch_0
    const-string v0, "Permission not found: "

    .line 287
    .line 288
    invoke-static {v0, v2, v9}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    const/4 v0, 0x0

    .line 292
    :goto_7
    if-eqz v0, :cond_b

    .line 293
    .line 294
    iget v0, v0, Landroid/content/pm/PermissionInfo;->flags:I

    .line 295
    .line 296
    and-int/lit8 v0, v0, 0xc

    .line 297
    .line 298
    if-nez v0, :cond_d

    .line 299
    .line 300
    :cond_b
    move-object/from16 v16, v8

    .line 301
    .line 302
    :cond_c
    move-object/from16 v19, v10

    .line 303
    .line 304
    move/from16 v18, v11

    .line 305
    .line 306
    const/4 v4, 0x1

    .line 307
    goto :goto_b

    .line 308
    :cond_d
    array-length v4, v7

    .line 309
    move-object/from16 v16, v8

    .line 310
    .line 311
    const/4 v8, 0x0

    .line 312
    :goto_8
    if-ge v8, v4, :cond_c

    .line 313
    .line 314
    aget v0, v7, v8

    .line 315
    .line 316
    move/from16 v17, v4

    .line 317
    .line 318
    iget-object v4, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 319
    .line 320
    const-string/jumbo v18, "permissionmgr"

    .line 321
    .line 322
    .line 323
    invoke-static/range {v18 .. v18}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 324
    .line 325
    .line 326
    move-result-object v18

    .line 327
    move-object/from16 v19, v10

    .line 328
    .line 329
    invoke-static/range {v18 .. v18}, Landroid/permission/IPermissionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/permission/IPermissionManager;

    .line 330
    .line 331
    .line 332
    move-result-object v10

    .line 333
    move/from16 v18, v11

    .line 334
    .line 335
    const/4 v11, 0x4

    .line 336
    :try_start_2
    invoke-interface {v10, v4, v2, v11, v0}, Landroid/permission/IPermissionManager;->addAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 337
    .line 338
    .line 339
    :goto_9
    const/4 v4, 0x1

    .line 340
    goto :goto_a

    .line 341
    :catch_1
    move-exception v0

    .line 342
    move-object v4, v0

    .line 343
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 344
    .line 345
    .line 346
    goto :goto_9

    .line 347
    :goto_a
    add-int/2addr v8, v4

    .line 348
    move/from16 v4, v17

    .line 349
    .line 350
    move/from16 v11, v18

    .line 351
    .line 352
    move-object/from16 v10, v19

    .line 353
    .line 354
    goto :goto_8

    .line 355
    :goto_b
    add-int/2addr v3, v4

    .line 356
    move v2, v4

    .line 357
    move-object/from16 v8, v16

    .line 358
    .line 359
    move/from16 v11, v18

    .line 360
    .line 361
    move-object/from16 v10, v19

    .line 362
    .line 363
    const/4 v4, 0x0

    .line 364
    goto :goto_6

    .line 365
    :goto_c
    add-int/2addr v12, v4

    .line 366
    move v2, v4

    .line 367
    move-object/from16 v8, v16

    .line 368
    .line 369
    move/from16 v11, v18

    .line 370
    .line 371
    move-object/from16 v10, v19

    .line 372
    .line 373
    const/4 v3, -0x1

    .line 374
    const/4 v4, 0x0

    .line 375
    goto :goto_5

    .line 376
    :cond_e
    :goto_d
    iget-object v0, v6, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;->mConfigDirs:Ljava/util/ArrayList;

    .line 377
    .line 378
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    :cond_f
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 383
    .line 384
    .line 385
    move-result v0

    .line 386
    if-eqz v0, :cond_13

    .line 387
    .line 388
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    check-cast v0, Ljava/lang/String;

    .line 393
    .line 394
    new-instance v3, Ljava/lang/StringBuilder;

    .line 395
    .line 396
    const-string v4, "grantDefaultPermissionsInternal : "

    .line 397
    .line 398
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    const-string v4, ", firstBootOrUpgrade: "

    .line 405
    .line 406
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v3

    .line 416
    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    .line 418
    .line 419
    new-instance v3, Ljava/io/File;

    .line 420
    .line 421
    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 425
    .line 426
    .line 427
    move-result v0

    .line 428
    if-nez v0, :cond_10

    .line 429
    .line 430
    goto :goto_e

    .line 431
    :cond_10
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 432
    .line 433
    .line 434
    move-result-object v3

    .line 435
    array-length v4, v3

    .line 436
    const/4 v8, 0x0

    .line 437
    :goto_f
    if-ge v8, v4, :cond_f

    .line 438
    .line 439
    aget-object v0, v3, v8

    .line 440
    .line 441
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 442
    .line 443
    .line 444
    move-result v10

    .line 445
    if-nez v10, :cond_11

    .line 446
    .line 447
    :goto_10
    const/4 v10, 0x1

    .line 448
    goto :goto_11

    .line 449
    :cond_11
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v10

    .line 453
    const-string v11, ".xml"

    .line 454
    .line 455
    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 456
    .line 457
    .line 458
    move-result v10

    .line 459
    if-nez v10, :cond_12

    .line 460
    .line 461
    goto :goto_10

    .line 462
    :cond_12
    :try_start_3
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    invoke-virtual {v6, v0, v5, v7}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;->grantOrRevokePermissions(Ljava/lang/String;Z[I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 467
    .line 468
    .line 469
    goto :goto_10

    .line 470
    :catch_2
    move-exception v0

    .line 471
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 472
    .line 473
    .line 474
    goto :goto_10

    .line 475
    :goto_11
    add-int/2addr v8, v10

    .line 476
    goto :goto_f

    .line 477
    :cond_13
    iget-object v0, v1, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mOmcInstallHelper:Lcom/samsung/android/server/pm/install/OmcInstallHelper;

    .line 478
    .line 479
    iget-boolean v2, v0, Lcom/samsung/android/server/pm/install/OmcInstallHelper;->mNeedsTssInit:Z

    .line 480
    .line 481
    if-nez v2, :cond_14

    .line 482
    .line 483
    goto :goto_12

    .line 484
    :cond_14
    new-instance v2, Ljava/io/File;

    .line 485
    .line 486
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    .line 487
    .line 488
    .line 489
    move-result-object v3

    .line 490
    const-string/jumbo v4, "samsung_pm_settings.xml"

    .line 491
    .line 492
    .line 493
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    iget-object v3, v0, Lcom/samsung/android/server/pm/install/OmcInstallHelper;->mContext:Landroid/content/Context;

    .line 497
    .line 498
    invoke-virtual {v3}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    .line 499
    .line 500
    .line 501
    move-result-object v3

    .line 502
    const/4 v4, 0x0

    .line 503
    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    .line 504
    .line 505
    .line 506
    move-result-object v2

    .line 507
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 508
    .line 509
    .line 510
    move-result-object v2

    .line 511
    const-string/jumbo v3, "pref_tss_initialized"

    .line 512
    .line 513
    .line 514
    iget-boolean v0, v0, Lcom/samsung/android/server/pm/install/OmcInstallHelper;->mNeedsTssInit:Z

    .line 515
    .line 516
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 517
    .line 518
    .line 519
    move-result-object v0

    .line 520
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 521
    .line 522
    .line 523
    :cond_15
    :goto_12
    iget-object v0, v1, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 524
    .line 525
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 526
    .line 527
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 528
    .line 529
    monitor-enter v2

    .line 530
    :try_start_4
    iget-object v0, v1, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    .line 531
    .line 532
    invoke-virtual {v0}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->getUnknownSourceAppManager()Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    const-string v3, "/data/system/UnknownSourceAppList.xml"

    .line 537
    .line 538
    invoke-virtual {v0, v3}, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;->loadListFromFile(Ljava/lang/String;)Z

    .line 539
    .line 540
    .line 541
    move-result v3

    .line 542
    if-eqz v3, :cond_16

    .line 543
    .line 544
    new-instance v3, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$$ExternalSyntheticLambda1;

    .line 545
    .line 546
    invoke-direct {v3, v0}, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;)V

    .line 547
    .line 548
    .line 549
    iget-object v4, v0, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;->mUnknownLock:Ljava/lang/Object;

    .line 550
    .line 551
    monitor-enter v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 552
    :try_start_5
    iget-object v5, v0, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;->mUnknownSourceAppSet:Ljava/util/HashSet;

    .line 553
    .line 554
    new-instance v6, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$$ExternalSyntheticLambda3;

    .line 555
    .line 556
    invoke-direct {v6, v3}, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$$ExternalSyntheticLambda1;)V

    .line 557
    .line 558
    .line 559
    invoke-virtual {v5, v6}, Ljava/util/HashSet;->removeIf(Ljava/util/function/Predicate;)Z

    .line 560
    .line 561
    .line 562
    move-result v3

    .line 563
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 564
    if-eqz v3, :cond_16

    .line 565
    .line 566
    :try_start_6
    const-string v3, "/data/system/UnknownSourceAppList.xml"

    .line 567
    .line 568
    invoke-virtual {v0, v3}, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;->writeUnknownPackageXmlSync(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 569
    .line 570
    .line 571
    goto :goto_13

    .line 572
    :catchall_0
    move-exception v0

    .line 573
    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 574
    :try_start_8
    throw v0

    .line 575
    :cond_16
    :goto_13
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 576
    invoke-static {}, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->getInstance()Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;

    .line 577
    .line 578
    .line 579
    move-result-object v0

    .line 580
    iget-object v2, v1, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 581
    .line 582
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    .line 583
    .line 584
    const/4 v3, 0x1

    .line 585
    iput-boolean v3, v0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->mSystemReady:Z

    .line 586
    .line 587
    iget-object v4, v0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->mLock:Ljava/lang/Object;

    .line 588
    .line 589
    monitor-enter v4

    .line 590
    :try_start_9
    iget-object v0, v0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->mControllers:Landroid/util/ArrayMap;

    .line 591
    .line 592
    new-instance v5, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager$$ExternalSyntheticLambda0;

    .line 593
    .line 594
    invoke-direct {v5, v3}, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager$$ExternalSyntheticLambda0;-><init>(I)V

    .line 595
    .line 596
    .line 597
    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 598
    .line 599
    .line 600
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 601
    const-class v0, Landroid/app/job/JobScheduler;

    .line 602
    .line 603
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 604
    .line 605
    .line 606
    move-result-object v0

    .line 607
    check-cast v0, Landroid/app/job/JobScheduler;

    .line 608
    .line 609
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    .line 610
    .line 611
    const v3, 0x80fb54

    .line 612
    .line 613
    .line 614
    sget-object v4, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->sFileBackupServiceName:Landroid/content/ComponentName;

    .line 615
    .line 616
    invoke-direct {v2, v3, v4}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 617
    .line 618
    .line 619
    sget-wide v3, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->DEFAULT_BACKUP_PERIOD:J

    .line 620
    .line 621
    invoke-virtual {v2, v3, v4}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    .line 622
    .line 623
    .line 624
    const/4 v3, 0x1

    .line 625
    invoke-virtual {v2, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 626
    .line 627
    .line 628
    move-result-object v4

    .line 629
    invoke-virtual {v4, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 630
    .line 631
    .line 632
    invoke-virtual {v2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 633
    .line 634
    .line 635
    move-result-object v2

    .line 636
    invoke-virtual {v0, v2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 637
    .line 638
    .line 639
    new-instance v0, Lcom/samsung/android/server/pm/role/RoleLogger;

    .line 640
    .line 641
    iget-object v0, v1, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 642
    .line 643
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    .line 644
    .line 645
    const-class v2, Landroid/app/job/JobScheduler;

    .line 646
    .line 647
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 648
    .line 649
    .line 650
    move-result-object v0

    .line 651
    check-cast v0, Landroid/app/job/JobScheduler;

    .line 652
    .line 653
    if-nez v0, :cond_17

    .line 654
    .line 655
    const-string v0, "RoleLogger"

    .line 656
    .line 657
    const-string v2, "Failed to get JobScheduler"

    .line 658
    .line 659
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    .line 661
    .line 662
    goto :goto_14

    .line 663
    :cond_17
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    .line 664
    .line 665
    sget-object v3, Lcom/samsung/android/server/pm/role/RoleLogger;->sRoleLoggingServiceName:Landroid/content/ComponentName;

    .line 666
    .line 667
    const v4, 0x6ec3dd

    .line 668
    .line 669
    .line 670
    invoke-direct {v2, v4, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 671
    .line 672
    .line 673
    const/4 v3, 0x1

    .line 674
    invoke-virtual {v2, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 675
    .line 676
    .line 677
    move-result-object v2

    .line 678
    invoke-virtual {v2, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 679
    .line 680
    .line 681
    move-result-object v2

    .line 682
    sget-wide v3, Lcom/samsung/android/server/pm/role/RoleLogger;->LOGGING_PERIOD:J

    .line 683
    .line 684
    invoke-virtual {v2, v3, v4}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    .line 685
    .line 686
    .line 687
    move-result-object v2

    .line 688
    invoke-virtual {v2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 689
    .line 690
    .line 691
    move-result-object v2

    .line 692
    invoke-virtual {v0, v2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 693
    .line 694
    .line 695
    :goto_14
    iget-object v0, v1, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 696
    .line 697
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    .line 698
    .line 699
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getHandler()Landroid/os/Handler;

    .line 700
    .line 701
    .line 702
    move-result-object v0

    .line 703
    sget-object v3, Lcom/samsung/android/server/pm/install/PackageBlockListPolicy;->sLduBlocklist:Ljava/util/HashSet;

    .line 704
    .line 705
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 706
    .line 707
    .line 708
    move-result-object v2

    .line 709
    sget-object v3, Lcom/samsung/android/server/pm/install/PackageBlockListPolicy;->sIsRduDevice:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 710
    .line 711
    const-string/jumbo v4, "shopdemo"

    .line 712
    .line 713
    .line 714
    const/4 v5, 0x0

    .line 715
    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 716
    .line 717
    .line 718
    move-result v6

    .line 719
    const/4 v7, 0x1

    .line 720
    if-ne v6, v7, :cond_18

    .line 721
    .line 722
    move v6, v7

    .line 723
    goto :goto_15

    .line 724
    :cond_18
    move v6, v5

    .line 725
    :goto_15
    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 726
    .line 727
    .line 728
    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 729
    .line 730
    .line 731
    move-result-object v3

    .line 732
    new-instance v4, Lcom/samsung/android/server/pm/install/PackageBlockListPolicy$1;

    .line 733
    .line 734
    invoke-direct {v4, v0, v2}, Lcom/samsung/android/server/pm/install/PackageBlockListPolicy$1;-><init>(Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 735
    .line 736
    .line 737
    const/4 v6, -0x1

    .line 738
    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 739
    .line 740
    .line 741
    iget-object v0, v1, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mATCommandReceiver:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$ATCommandReceiver;

    .line 742
    .line 743
    iget-object v2, v1, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 744
    .line 745
    iget-object v8, v2, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    .line 746
    .line 747
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getHandler()Landroid/os/Handler;

    .line 748
    .line 749
    .line 750
    move-result-object v12

    .line 751
    iget-object v9, v0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$ATCommandReceiver;->mReceiver:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$ATCommandReceiver$1;

    .line 752
    .line 753
    new-instance v10, Landroid/content/IntentFilter;

    .line 754
    .line 755
    const-string v0, "com.samsung.intent.action.BCS_REQUEST"

    .line 756
    .line 757
    invoke-direct {v10, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 758
    .line 759
    .line 760
    const/4 v11, 0x0

    .line 761
    const/4 v13, 0x2

    .line 762
    invoke-virtual/range {v8 .. v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 763
    .line 764
    .line 765
    const-string v0, "com.salab.issuetracker"

    .line 766
    .line 767
    :try_start_a
    iget-object v2, v1, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 768
    .line 769
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    .line 770
    .line 771
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 772
    .line 773
    .line 774
    move-result-object v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 775
    const v3, 0xe0200

    .line 776
    .line 777
    .line 778
    const/4 v4, 0x0

    .line 779
    :try_start_b
    invoke-virtual {v2, v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 780
    .line 781
    .line 782
    move-result-object v5

    .line 783
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    .line 784
    .line 785
    .line 786
    move-result v0

    .line 787
    const/16 v2, 0x3e8

    .line 788
    .line 789
    invoke-static {v0, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 790
    .line 791
    .line 792
    move-result v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 793
    if-eqz v5, :cond_19

    .line 794
    .line 795
    if-eqz v0, :cond_19

    .line 796
    .line 797
    move v2, v7

    .line 798
    goto :goto_16

    .line 799
    :cond_19
    move v2, v4

    .line 800
    :goto_16
    move v4, v2

    .line 801
    goto :goto_17

    .line 802
    :catch_3
    const/4 v4, 0x0

    .line 803
    :catch_4
    :goto_17
    iput-boolean v4, v1, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mIsUserTrial:Z

    .line 804
    .line 805
    return-void

    .line 806
    :catchall_1
    move-exception v0

    .line 807
    :try_start_c
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 808
    throw v0

    .line 809
    :catchall_2
    move-exception v0

    .line 810
    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 811
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 812
    .line 813
    throw v0

    .line 814
    :catchall_3
    move-exception v0

    .line 815
    :try_start_e
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 816
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 817
    .line 818
    throw v0
.end method

.method public final onSystemScanning(Ljava/io/File;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mEnabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string/jumbo v0, "persist.sys.clear_package_cache_needed"

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v2, 0x3

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    const-string v0, "Clear pkg caches due to BR allowlist updated"

    .line 18
    .line 19
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 20
    .line 21
    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-static {p1}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 27
    .line 28
    .line 29
    :cond_1
    const-string/jumbo v0, "persist.sys.clear_package_cache_needed"

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mOmcInstallHelper:Lcom/samsung/android/server/pm/install/OmcInstallHelper;

    .line 40
    .line 41
    if-eqz p1, :cond_4

    .line 42
    .line 43
    iget-boolean v3, v0, Lcom/samsung/android/server/pm/install/OmcInstallHelper;->mNeedsOmcInit:Z

    .line 44
    .line 45
    if-nez v3, :cond_3

    .line 46
    .line 47
    iget-boolean v0, v0, Lcom/samsung/android/server/pm/install/OmcInstallHelper;->mNeedsTssInit:Z

    .line 48
    .line 49
    if-eqz v0, :cond_5

    .line 50
    .line 51
    :cond_3
    const/4 v0, 0x5

    .line 52
    const-string v3, "Clear package cache by omcboot or tssboot"

    .line 53
    .line 54
    invoke-static {v0, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-static {p1}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 65
    .line 66
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    .line 67
    .line 68
    const-string v3, "key_scan_started"

    .line 69
    .line 70
    const-class v4, Lcom/samsung/android/server/pm/PmSharedPreferences;

    .line 71
    .line 72
    monitor-enter v4

    .line 73
    :try_start_0
    new-instance v5, Ljava/io/File;

    .line 74
    .line 75
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    const-string/jumbo v7, "samsung_pm_settings.xml"

    .line 80
    .line 81
    .line 82
    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0, v5, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    if-eqz v0, :cond_6

    .line 99
    .line 100
    if-eqz p1, :cond_6

    .line 101
    .line 102
    const-string v0, "Delete package caches due to corruption"

    .line 103
    .line 104
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 105
    .line 106
    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-static {p1}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 110
    .line 111
    .line 112
    :cond_6
    iget-object p0, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 113
    .line 114
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    .line 115
    .line 116
    const/4 p1, 0x1

    .line 117
    invoke-static {p0, p1}, Lcom/samsung/android/server/pm/scan/CacheCorruptionChecker;->setPackageScanStarted(Landroid/content/Context;Z)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :catchall_0
    move-exception p0

    .line 122
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    throw p0
.end method
