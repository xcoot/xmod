.class public final Lcom/android/server/pm/GentleUpdateHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I

.field public static final PENDING_CHECK_MILLIS:J


# instance fields
.field public final mAppStateHelper:Lcom/android/server/pm/AppStateHelper;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mHasPendingIdleJob:Z

.field public final mPendingChecks:Ljava/util/ArrayDeque;

.field public final mPendingIdleFutures:Ljava/util/ArrayList;


# direct methods
.method public static $r8$lambda$JQiy908NuzFx59XC1nxYVaiXKqM(Lcom/android/server/pm/GentleUpdateHelper;II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    :try_start_0
    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/android/server/pm/GentleUpdateHelper;->mHandler:Landroid/os/Handler;

    .line 13
    .line 14
    new-instance v1, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda3;

    .line 15
    .line 16
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/GentleUpdateHelper;Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    :catch_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0xa

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sput-wide v0, Lcom/android/server/pm/GentleUpdateHelper;->PENDING_CHECK_MILLIS:J

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/pm/AppStateHelper;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayDeque;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/pm/GentleUpdateHelper;->mPendingChecks:Ljava/util/ArrayDeque;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/pm/GentleUpdateHelper;->mPendingIdleFutures:Ljava/util/ArrayList;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/pm/GentleUpdateHelper;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    new-instance p1, Landroid/os/Handler;

    .line 21
    .line 22
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/pm/GentleUpdateHelper;->mHandler:Landroid/os/Handler;

    .line 26
    .line 27
    iput-object p3, p0, Lcom/android/server/pm/GentleUpdateHelper;->mAppStateHelper:Lcom/android/server/pm/AppStateHelper;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final processPendingCheck(Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;Z)Z
    .locals 9

    .line 1
    iget-object v0, p1, Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;->future:Ljava/util/concurrent/CompletableFuture;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->isDone()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    iget-object v1, p1, Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;->constraints:Landroid/content/pm/PackageInstaller$InstallConstraints;

    .line 12
    .line 13
    iget-object v3, p1, Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;->packageNames:Ljava/util/List;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/pm/GentleUpdateHelper;->mAppStateHelper:Lcom/android/server/pm/AppStateHelper;

    .line 16
    .line 17
    invoke-virtual {p0, v3}, Lcom/android/server/pm/AppStateHelper;->getDependencyPackages(Ljava/util/List;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$InstallConstraints;->isDeviceIdleRequired()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    const/4 v5, 0x0

    .line 26
    if-eqz v4, :cond_1

    .line 27
    .line 28
    if-eqz p2, :cond_16

    .line 29
    .line 30
    :cond_1
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$InstallConstraints;->isAppNotForegroundRequired()Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-eqz p2, :cond_3

    .line 35
    .line 36
    move-object p2, v3

    .line 37
    check-cast p2, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_3

    .line 48
    .line 49
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Ljava/lang/String;

    .line 54
    .line 55
    iget-object v6, p0, Lcom/android/server/pm/AppStateHelper;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    const-class v7, Landroid/app/ActivityManager;

    .line 58
    .line 59
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    check-cast v6, Landroid/app/ActivityManager;

    .line 64
    .line 65
    invoke-virtual {v6, v4}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    const/16 v6, 0x7d

    .line 70
    .line 71
    if-gt v4, v6, :cond_2

    .line 72
    .line 73
    goto/16 :goto_c

    .line 74
    .line 75
    :cond_3
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$InstallConstraints;->isAppNotInteractingRequired()Z

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    const/16 v4, 0x64

    .line 80
    .line 81
    if-eqz p2, :cond_e

    .line 82
    .line 83
    move-object p2, v3

    .line 84
    check-cast p2, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    if-eqz v6, :cond_c

    .line 95
    .line 96
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    check-cast v6, Ljava/lang/String;

    .line 101
    .line 102
    const-string v7, "audio"

    .line 103
    .line 104
    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    invoke-static {v7}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    :try_start_0
    invoke-interface {v7}, Landroid/media/IAudioService;->getFocusStack()Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 117
    .line 118
    .line 119
    move-result v8

    .line 120
    if-lez v8, :cond_5

    .line 121
    .line 122
    add-int/lit8 v8, v8, -0x1

    .line 123
    .line 124
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    check-cast v7, Landroid/media/AudioFocusInfo;

    .line 129
    .line 130
    invoke-virtual {v7}, Landroid/media/AudioFocusInfo;->getPackageName()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    goto :goto_0

    .line 135
    :cond_5
    const/4 v7, 0x0

    .line 136
    :goto_0
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 137
    .line 138
    .line 139
    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    goto :goto_1

    .line 141
    :catch_0
    move v7, v5

    .line 142
    :goto_1
    if-nez v7, :cond_9

    .line 143
    .line 144
    iget-object v7, p0, Lcom/android/server/pm/AppStateHelper;->mContext:Landroid/content/Context;

    .line 145
    .line 146
    const-class v8, Landroid/media/AudioManager;

    .line 147
    .line 148
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    check-cast v7, Landroid/media/AudioManager;

    .line 153
    .line 154
    :try_start_1
    invoke-virtual {v7}, Landroid/media/AudioManager;->getActiveRecordingConfigurations()Ljava/util/List;

    .line 155
    .line 156
    .line 157
    move-result-object v7

    .line 158
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 163
    .line 164
    .line 165
    move-result v8

    .line 166
    if-eqz v8, :cond_7

    .line 167
    .line 168
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    check-cast v8, Landroid/media/AudioRecordingConfiguration;

    .line 173
    .line 174
    invoke-virtual {v8}, Landroid/media/AudioRecordingConfiguration;->getClientPackageName()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v8

    .line 178
    invoke-static {v8, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 179
    .line 180
    .line 181
    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 182
    if-eqz v8, :cond_6

    .line 183
    .line 184
    move v7, v2

    .line 185
    goto :goto_2

    .line 186
    :catch_1
    :cond_7
    move v7, v5

    .line 187
    :goto_2
    if-eqz v7, :cond_8

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_8
    move v7, v5

    .line 191
    goto :goto_4

    .line 192
    :cond_9
    :goto_3
    move v7, v2

    .line 193
    :goto_4
    if-nez v7, :cond_b

    .line 194
    .line 195
    iget-object v7, p0, Lcom/android/server/pm/AppStateHelper;->mContext:Landroid/content/Context;

    .line 196
    .line 197
    const-class v8, Landroid/app/ActivityManager;

    .line 198
    .line 199
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v7

    .line 203
    check-cast v7, Landroid/app/ActivityManager;

    .line 204
    .line 205
    invoke-virtual {v7, v6}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    move-result v6

    .line 209
    if-gt v6, v4, :cond_a

    .line 210
    .line 211
    move v6, v2

    .line 212
    goto :goto_5

    .line 213
    :cond_a
    move v6, v5

    .line 214
    :goto_5
    if-eqz v6, :cond_4

    .line 215
    .line 216
    :cond_b
    :goto_6
    move p2, v2

    .line 217
    goto :goto_7

    .line 218
    :cond_c
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/AppStateHelper;->hasActiveNetwork(ILjava/util/List;)Z

    .line 219
    .line 220
    .line 221
    move-result p2

    .line 222
    if-nez p2, :cond_b

    .line 223
    .line 224
    invoke-virtual {p0, v5, v3}, Lcom/android/server/pm/AppStateHelper;->hasActiveNetwork(ILjava/util/List;)Z

    .line 225
    .line 226
    .line 227
    move-result p2

    .line 228
    if-eqz p2, :cond_d

    .line 229
    .line 230
    goto :goto_6

    .line 231
    :cond_d
    move p2, v5

    .line 232
    :goto_7
    if-nez p2, :cond_16

    .line 233
    .line 234
    :cond_e
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$InstallConstraints;->isAppNotTopVisibleRequired()Z

    .line 235
    .line 236
    .line 237
    move-result p2

    .line 238
    if-eqz p2, :cond_12

    .line 239
    .line 240
    check-cast v3, Ljava/util/ArrayList;

    .line 241
    .line 242
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 243
    .line 244
    .line 245
    move-result-object p2

    .line 246
    :cond_f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    if-eqz v3, :cond_11

    .line 251
    .line 252
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    check-cast v3, Ljava/lang/String;

    .line 257
    .line 258
    iget-object v6, p0, Lcom/android/server/pm/AppStateHelper;->mContext:Landroid/content/Context;

    .line 259
    .line 260
    const-class v7, Landroid/app/ActivityManager;

    .line 261
    .line 262
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v6

    .line 266
    check-cast v6, Landroid/app/ActivityManager;

    .line 267
    .line 268
    invoke-virtual {v6, v3}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    .line 269
    .line 270
    .line 271
    move-result v3

    .line 272
    if-gt v3, v4, :cond_10

    .line 273
    .line 274
    move v3, v2

    .line 275
    goto :goto_8

    .line 276
    :cond_10
    move v3, v5

    .line 277
    :goto_8
    if-eqz v3, :cond_f

    .line 278
    .line 279
    move p2, v2

    .line 280
    goto :goto_9

    .line 281
    :cond_11
    move p2, v5

    .line 282
    :goto_9
    if-nez p2, :cond_16

    .line 283
    .line 284
    :cond_12
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$InstallConstraints;->isNotInCallRequired()Z

    .line 285
    .line 286
    .line 287
    move-result p2

    .line 288
    if-eqz p2, :cond_17

    .line 289
    .line 290
    const-string p2, "debug.pm.gentle_update_test.is_in_call"

    .line 291
    .line 292
    invoke-static {p2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 293
    .line 294
    .line 295
    move-result p2

    .line 296
    if-eqz p2, :cond_14

    .line 297
    .line 298
    :cond_13
    :goto_a
    move p0, v2

    .line 299
    goto :goto_b

    .line 300
    :cond_14
    iget-object p2, p0, Lcom/android/server/pm/AppStateHelper;->mContext:Landroid/content/Context;

    .line 301
    .line 302
    const-class v1, Landroid/telecom/TelecomManager;

    .line 303
    .line 304
    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object p2

    .line 308
    check-cast p2, Landroid/telecom/TelecomManager;

    .line 309
    .line 310
    invoke-virtual {p2}, Landroid/telecom/TelecomManager;->isInCall()Z

    .line 311
    .line 312
    .line 313
    move-result p2

    .line 314
    if-nez p2, :cond_13

    .line 315
    .line 316
    iget-object p0, p0, Lcom/android/server/pm/AppStateHelper;->mContext:Landroid/content/Context;

    .line 317
    .line 318
    const-class p2, Landroid/media/AudioManager;

    .line 319
    .line 320
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object p0

    .line 324
    check-cast p0, Landroid/media/AudioManager;

    .line 325
    .line 326
    :try_start_2
    invoke-virtual {p0}, Landroid/media/AudioManager;->getMode()I

    .line 327
    .line 328
    .line 329
    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 330
    const/4 p2, 0x2

    .line 331
    if-eq p0, p2, :cond_13

    .line 332
    .line 333
    const/4 p2, 0x3

    .line 334
    if-ne p0, p2, :cond_15

    .line 335
    .line 336
    goto :goto_a

    .line 337
    :catch_2
    :cond_15
    move p0, v5

    .line 338
    :goto_b
    if-nez p0, :cond_16

    .line 339
    .line 340
    goto :goto_d

    .line 341
    :cond_16
    :goto_c
    move p0, v5

    .line 342
    goto :goto_e

    .line 343
    :cond_17
    :goto_d
    move p0, v2

    .line 344
    :goto_e
    if-nez p0, :cond_1a

    .line 345
    .line 346
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 347
    .line 348
    .line 349
    move-result-wide v3

    .line 350
    iget-wide p1, p1, Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;->mFinishTime:J

    .line 351
    .line 352
    cmp-long p1, v3, p1

    .line 353
    .line 354
    if-ltz p1, :cond_18

    .line 355
    .line 356
    move p1, v2

    .line 357
    goto :goto_f

    .line 358
    :cond_18
    move p1, v5

    .line 359
    :goto_f
    if-eqz p1, :cond_19

    .line 360
    .line 361
    goto :goto_10

    .line 362
    :cond_19
    return v5

    .line 363
    :cond_1a
    :goto_10
    new-instance p1, Landroid/content/pm/PackageInstaller$InstallConstraintsResult;

    .line 364
    .line 365
    invoke-direct {p1, p0}, Landroid/content/pm/PackageInstaller$InstallConstraintsResult;-><init>(Z)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    return v2
.end method

.method public final runIdleJob()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/pm/GentleUpdateHelper;->mHasPendingIdleJob:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/pm/GentleUpdateHelper;->mPendingChecks:Ljava/util/ArrayDeque;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    :goto_0
    if-ge v0, v1, :cond_1

    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/server/pm/GentleUpdateHelper;->mPendingChecks:Ljava/util/ArrayDeque;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/GentleUpdateHelper;->processPendingCheck(Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;Z)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    iget-object v3, p0, Lcom/android/server/pm/GentleUpdateHelper;->mPendingChecks:Ljava/util/ArrayDeque;

    .line 28
    .line 29
    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/GentleUpdateHelper;->mPendingChecks:Ljava/util/ArrayDeque;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/server/pm/GentleUpdateHelper;->scheduleIdleJob()V

    .line 44
    .line 45
    .line 46
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/GentleUpdateHelper;->mPendingIdleFutures:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Ljava/util/concurrent/CompletableFuture;

    .line 63
    .line 64
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    iget-object p0, p0, Lcom/android/server/pm/GentleUpdateHelper;->mPendingIdleFutures:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public final scheduleIdleJob()V
    .locals 4

    .line 1
    const-string v0, "debug.pm.gentle_update_test.is_idle"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/pm/GentleUpdateHelper;->mHandler:Landroid/os/Handler;

    .line 11
    .line 12
    new-instance v1, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v1, v2, p0}, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/pm/GentleUpdateHelper;->mHasPendingIdleJob:Z

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/android/server/pm/GentleUpdateHelper;->mHasPendingIdleJob:Z

    .line 29
    .line 30
    new-instance v1, Landroid/content/ComponentName;

    .line 31
    .line 32
    iget-object v2, p0, Lcom/android/server/pm/GentleUpdateHelper;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const-class v3, Lcom/android/server/pm/GentleUpdateHelper$Service;

    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    .line 48
    .line 49
    const v3, 0xe067fd7

    .line 50
    .line 51
    .line 52
    invoke-direct {v2, v3, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object p0, p0, Lcom/android/server/pm/GentleUpdateHelper;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    const-class v1, Landroid/app/job/JobScheduler;

    .line 66
    .line 67
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    check-cast p0, Landroid/app/job/JobScheduler;

    .line 72
    .line 73
    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 74
    .line 75
    .line 76
    return-void
.end method
