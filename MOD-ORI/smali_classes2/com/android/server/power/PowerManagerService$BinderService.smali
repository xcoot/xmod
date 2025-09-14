.class final Lcom/android/server/power/PowerManagerService$BinderService;
.super Landroid/os/IPowerManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mShellCommand:Lcom/android/server/power/PowerManagerShellCommand;

.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/IPowerManager$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/android/server/power/PowerManagerShellCommand;

    .line 7
    .line 8
    invoke-direct {p1, p2, p0}, Lcom/android/server/power/PowerManagerShellCommand;-><init>(Landroid/content/Context;Lcom/android/server/power/PowerManagerService$BinderService;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->mShellCommand:Lcom/android/server/power/PowerManagerShellCommand;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final acquireLowPowerStandbyPorts(Landroid/os/IBinder;Ljava/util/List;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "android.permission.SET_LOW_POWER_STANDBY_PORTS"

    .line 6
    .line 7
    const-string v2, "acquireLowPowerStandbyPorts"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyController:Lcom/android/server/power/LowPowerStandbyController;

    .line 23
    .line 24
    invoke-static {p2}, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->fromParcelable(Ljava/util/List;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/power/LowPowerStandbyController;->acquireStandbyPorts(Landroid/os/IBinder;Ljava/util/List;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 37
    .line 38
    .line 39
    throw p0
.end method

.method public final acquireWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;ILandroid/os/IWakeLockCallback;)V
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    move/from16 v4, p2

    .line 3
    .line 4
    move-object/from16 v5, p3

    .line 5
    .line 6
    move-object/from16 v6, p4

    .line 7
    .line 8
    if-eqz p1, :cond_d

    .line 9
    .line 10
    if-eqz v6, :cond_c

    .line 11
    .line 12
    invoke-static/range {p2 .. p3}, Landroid/os/PowerManager;->validateWakeLockParameters(ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    const-string v2, "android.permission.WAKE_LOCK"

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    and-int/lit8 v0, v4, 0x40

    .line 26
    .line 27
    const-string v2, "android.permission.DEVICE_POWER"

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    and-int/lit16 v0, v4, 0x100

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mFeatureFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/android/server/power/feature/PowerManagerFlags;->mEarlyScreenTimeoutDetectorFlagState:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->isEnabled()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    const-string v7, "android.permission.SCREEN_TIMEOUT_OVERRIDE"

    .line 59
    .line 60
    invoke-virtual {v0, v7, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 65
    .line 66
    const-string v1, "Acquiring an unsupported wake lock: flags="

    .line 67
    .line 68
    const-string v2, ", tag="

    .line 69
    .line 70
    invoke-static {v4, v1, v2, v5}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v0

    .line 78
    :cond_2
    :goto_0
    if-eqz p5, :cond_3

    .line 79
    .line 80
    invoke-virtual/range {p5 .. p5}, Landroid/os/WorkSource;->isEmpty()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-nez v0, :cond_3

    .line 85
    .line 86
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 87
    .line 88
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 89
    .line 90
    const-string v7, "android.permission.UPDATE_DEVICE_STATS"

    .line 91
    .line 92
    invoke-virtual {v0, v7, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    move-object/from16 v0, p5

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    move-object v0, v3

    .line 99
    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 104
    .line 105
    .line 106
    move-result v8

    .line 107
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    .line 108
    .line 109
    if-eqz v9, :cond_4

    .line 110
    .line 111
    iget-object v9, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 112
    .line 113
    iget-object v9, v9, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 114
    .line 115
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 116
    .line 117
    .line 118
    move-result-object v9

    .line 119
    if-eqz v9, :cond_4

    .line 120
    .line 121
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 122
    .line 123
    .line 124
    move-result v10

    .line 125
    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->isSpeg(I)Z

    .line 126
    .line 127
    .line 128
    move-result v9

    .line 129
    if-eqz v9, :cond_4

    .line 130
    .line 131
    const-string v0, "App "

    .line 132
    .line 133
    const-string v1, ":"

    .line 134
    .line 135
    const-string v2, " tries to acquire wake lock. Ignore"

    .line 136
    .line 137
    invoke-static {v7, v0, v6, v1, v2}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    const-string v1, "SPEG"

    .line 142
    .line 143
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :cond_4
    const/high16 v9, -0x80000000

    .line 148
    .line 149
    and-int/2addr v9, v4

    .line 150
    if-eqz v9, :cond_6

    .line 151
    .line 152
    iget-object v7, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 153
    .line 154
    iget-object v7, v7, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 155
    .line 156
    invoke-virtual {v7, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    new-instance v2, Landroid/os/WorkSource;

    .line 160
    .line 161
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    invoke-direct {v2, v3, v6}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    .line 166
    .line 167
    .line 168
    if-eqz v0, :cond_5

    .line 169
    .line 170
    invoke-virtual {v0}, Landroid/os/WorkSource;->isEmpty()Z

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    if-nez v3, :cond_5

    .line 175
    .line 176
    invoke-virtual {v2, v0}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    .line 177
    .line 178
    .line 179
    :cond_5
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    move v9, v0

    .line 188
    move-object v7, v2

    .line 189
    move v10, v3

    .line 190
    goto :goto_2

    .line 191
    :cond_6
    move v9, v7

    .line 192
    move v10, v8

    .line 193
    move-object v7, v0

    .line 194
    :goto_2
    const/high16 v0, 0x10000000

    .line 195
    .line 196
    and-int/2addr v0, v4

    .line 197
    if-eqz v0, :cond_b

    .line 198
    .line 199
    const v0, 0xffff

    .line 200
    .line 201
    .line 202
    and-int/2addr v0, v4

    .line 203
    const/4 v2, 0x6

    .line 204
    if-eq v0, v2, :cond_7

    .line 205
    .line 206
    const/16 v2, 0xa

    .line 207
    .line 208
    if-eq v0, v2, :cond_7

    .line 209
    .line 210
    const/16 v2, 0x1a

    .line 211
    .line 212
    if-eq v0, v2, :cond_7

    .line 213
    .line 214
    goto :goto_6

    .line 215
    :cond_7
    if-eqz v7, :cond_a

    .line 216
    .line 217
    invoke-virtual {v7}, Landroid/os/WorkSource;->isEmpty()Z

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    if-nez v0, :cond_a

    .line 222
    .line 223
    invoke-static {v7}, Lcom/android/server/power/PowerManagerService;->getFirstNonEmptyWorkChain(Landroid/os/WorkSource;)Landroid/os/WorkSource$WorkChain;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    if-eqz v0, :cond_8

    .line 228
    .line 229
    invoke-virtual {v0}, Landroid/os/WorkSource$WorkChain;->getAttributionTag()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-virtual {v0}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    goto :goto_4

    .line 238
    :cond_8
    const/4 v0, 0x0

    .line 239
    invoke-virtual {v7, v0}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    if-eqz v2, :cond_9

    .line 244
    .line 245
    invoke-virtual {v7, v0}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    goto :goto_3

    .line 250
    :cond_9
    move-object v2, v6

    .line 251
    :goto_3
    invoke-virtual {v7, v0}, Landroid/os/WorkSource;->get(I)I

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    goto :goto_4

    .line 256
    :cond_a
    move-object v2, v6

    .line 257
    move v0, v9

    .line 258
    :goto_4
    iget-object v3, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 259
    .line 260
    iget-object v3, v3, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    .line 261
    .line 262
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 263
    .line 264
    .line 265
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    if-eqz v3, :cond_b

    .line 270
    .line 271
    :try_start_0
    invoke-interface {v3, v2, v0, v5, v4}, Landroid/app/INotificationManager;->isAlertsAllowed(Ljava/lang/String;ILjava/lang/String;I)Z

    .line 272
    .line 273
    .line 274
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :goto_5
    move v12, v0

    .line 276
    goto :goto_7

    .line 277
    :catch_0
    move-exception v0

    .line 278
    move-object v2, v0

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    .line 280
    .line 281
    const-string v3, "Failed to call NotificationManager : "

    .line 282
    .line 283
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    const-string v2, "PowerManagerService"

    .line 294
    .line 295
    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    :cond_b
    :goto_6
    const/4 v0, 0x1

    .line 299
    goto :goto_5

    .line 300
    :goto_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 301
    .line 302
    .line 303
    move-result-wide v13

    .line 304
    :try_start_1
    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 305
    .line 306
    move-object/from16 v2, p1

    .line 307
    .line 308
    move/from16 v3, p7

    .line 309
    .line 310
    move/from16 v4, p2

    .line 311
    .line 312
    move-object/from16 v5, p3

    .line 313
    .line 314
    move-object/from16 v6, p4

    .line 315
    .line 316
    move-object/from16 v8, p6

    .line 317
    .line 318
    move-object/from16 v11, p8

    .line 319
    .line 320
    invoke-static/range {v1 .. v12}, Lcom/android/server/power/PowerManagerService;->-$$Nest$macquireWakeLockInternal(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;IILandroid/os/IWakeLockCallback;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    .line 322
    .line 323
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 324
    .line 325
    .line 326
    return-void

    .line 327
    :catchall_0
    move-exception v0

    .line 328
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 329
    .line 330
    .line 331
    throw v0

    .line 332
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 333
    .line 334
    const-string/jumbo v1, "packageName must not be null"

    .line 335
    .line 336
    .line 337
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    throw v0

    .line 341
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 342
    .line 343
    const-string v1, "lock must not be null"

    .line 344
    .line 345
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    throw v0
.end method

.method public final acquireWakeLockAsync(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;)V
    .locals 9

    .line 1
    const/4 v7, -0x1

    .line 2
    const/4 v8, 0x0

    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move-object v4, p4

    .line 8
    move-object v5, p5

    .line 9
    move-object v6, p6

    .line 10
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/power/PowerManagerService$BinderService;->acquireWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;ILandroid/os/IWakeLockCallback;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final acquireWakeLockWithUid(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IILandroid/os/IWakeLockCallback;)V
    .locals 10

    .line 1
    if-gez p5, :cond_0

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v0, p5

    .line 9
    :goto_0
    new-instance v6, Landroid/os/WorkSource;

    .line 10
    .line 11
    invoke-direct {v6, v0}, Landroid/os/WorkSource;-><init>(I)V

    .line 12
    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    move-object v1, p0

    .line 16
    move-object v2, p1

    .line 17
    move v3, p2

    .line 18
    move-object v4, p3

    .line 19
    move-object v5, p4

    .line 20
    move/from16 v8, p6

    .line 21
    .line 22
    move-object/from16 v9, p7

    .line 23
    .line 24
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/power/PowerManagerService$BinderService;->acquireWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;ILandroid/os/IWakeLockCallback;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final addAdaptiveScreenOffTimeoutConfig(Ljava/util/List;)V
    .locals 4

    .line 1
    const-string v0, "addAdaptiveScreenOffTimeoutConfig: mSafeMode: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string v2, "android.permission.DEVICE_POWER"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 19
    .line 20
    iget-boolean v3, v2, Lcom/android/server/power/PowerManagerService;->mSafeMode:Z

    .line 21
    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    const-string p1, "PowerManagerService"

    .line 25
    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 32
    .line 33
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mSafeMode:Z

    .line 34
    .line 35
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    monitor-exit v1

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget-object p0, v2, Lcom/android/server/power/PowerManagerService;->mAdaptiveScreenOffTimeoutController:Lcom/android/server/power/AdaptiveScreenOffTimeoutController;

    .line 50
    .line 51
    if-eqz p0, :cond_1

    .line 52
    .line 53
    invoke-static {p1}, Landroid/os/PowerManager$AdaptiveScreenOffTimeoutConfig;->fromParcelable(Ljava/util/List;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/power/AdaptiveScreenOffTimeoutController;->addAdaptiveScreenOffTimeoutConfigLocked(Ljava/util/List;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    monitor-exit v1

    .line 61
    return-void

    .line 62
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw p0
.end method

.method public final areAutoPowerSaveModesEnabled()Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const v2, 0x1110167

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 17
    .line 18
    .line 19
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    .line 22
    .line 23
    return p0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 26
    .line 27
    .line 28
    throw p0
.end method

.method public final boostScreenBrightness(J)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v3, "[api] boostScreenBrightness: "

    .line 15
    .line 16
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    const-string v4, "PowerManagerService"

    .line 24
    .line 25
    invoke-static {v4, v2, v3}, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 29
    .line 30
    iget-object v2, v2, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    cmp-long v2, p1, v2

    .line 40
    .line 41
    if-gtz v2, :cond_0

    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    const-string v1, "android.permission.DEVICE_POWER"

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 58
    .line 59
    .line 60
    move-result-wide v1

    .line 61
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 62
    .line 63
    invoke-static {p0, p1, p2, v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mboostScreenBrightnessInternal(Lcom/android/server/power/PowerManagerService;JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    .line 66
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 72
    .line 73
    .line 74
    throw p0

    .line 75
    :cond_0
    const-string p0, "Event time "

    .line 76
    .line 77
    const-string v2, " cannot be newer than "

    .line 78
    .line 79
    invoke-static {p0, p1, p2, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-static {v4, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 94
    .line 95
    const-string p1, "event time must not be in the future"

    .line 96
    .line 97
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p0
.end method

.method public final crash(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[api] crash: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    const-string v2, "PowerManagerService"

    .line 13
    .line 14
    invoke-static {v2, v0, v1}, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    const-string v1, "android.permission.REBOOT"

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    new-instance p0, Lcom/android/server/power/PowerManagerService$5;

    .line 37
    .line 38
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$5;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception p0

    .line 49
    :try_start_2
    sget p1, Lcom/android/server/power/Slog;->$r8$clinit:I

    .line 50
    .line 51
    invoke-static {v2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    .line 53
    .line 54
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 60
    .line 61
    .line 62
    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "PowerManagerService"

    .line 6
    .line 7
    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    array-length v2, p3

    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x1

    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    move v2, v4

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move v2, v3

    .line 26
    :goto_0
    array-length v5, p3

    .line 27
    :goto_1
    if-ge v3, v5, :cond_4

    .line 28
    .line 29
    aget-object v6, p3, v3

    .line 30
    .line 31
    const-string v7, "--proto"

    .line 32
    .line 33
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    if-eqz v7, :cond_2

    .line 38
    .line 39
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 40
    .line 41
    invoke-static {p0, p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mdumpProto(Lcom/android/server/power/PowerManagerService;Ljava/io/FileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_3

    .line 47
    :cond_2
    if-nez v2, :cond_3

    .line 48
    .line 49
    const-string v7, "CRITICAL"

    .line 50
    .line 51
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-eqz v6, :cond_3

    .line 56
    .line 57
    move v2, v4

    .line 58
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_4
    :try_start_1
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 62
    .line 63
    invoke-virtual {p0, p2, v2}, Lcom/android/server/power/PowerManagerService;->dumpInternal(Ljava/io/PrintWriter;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    .line 65
    .line 66
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :goto_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 71
    .line 72
    .line 73
    throw p0
.end method

.method public final forceLowPowerStandbyActive(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "android.permission.DEVICE_POWER"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    const-string v1, "android.permission.MANAGE_LOW_POWER_STANDBY"

    .line 18
    .line 19
    const-string v2, "forceLowPowerStandbyActive"

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyController:Lcom/android/server/power/LowPowerStandbyController;

    .line 31
    .line 32
    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 35
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/power/LowPowerStandbyController;->mForceActive:Z

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateActiveLocked()V

    .line 38
    .line 39
    .line 40
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 48
    :catchall_1
    move-exception p0

    .line 49
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 50
    .line 51
    .line 52
    throw p0
.end method

.method public final forceSuspend()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "android.permission.DEVICE_POWER"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 20
    .line 21
    invoke-static {p0, v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mforceSuspendInternal(Lcom/android/server/power/PowerManagerService;I)Z

    .line 22
    .line 23
    .line 24
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 26
    .line 27
    .line 28
    return p0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    .line 32
    .line 33
    throw p0
.end method

.method public final getActiveLowPowerStandbyPorts()Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "android.permission.DEVICE_POWER"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    const-string v1, "android.permission.MANAGE_LOW_POWER_STANDBY"

    .line 18
    .line 19
    const-string v2, "getActiveLowPowerStandbyPorts"

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyController:Lcom/android/server/power/LowPowerStandbyController;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getActiveStandbyPorts()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0}, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->toParcelable(Ljava/util/List;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 41
    .line 42
    .line 43
    return-object p0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    .line 47
    .line 48
    throw p0
.end method

.method public final getAdaptiveScreenOffTimeoutConfig()Ljava/util/List;
    .locals 5

    .line 1
    const-string v0, "getAdaptiveScreenOffTimeoutConfig: mSafeMode: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string v2, "android.permission.DEVICE_POWER"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 19
    .line 20
    iget-boolean v4, v2, Lcom/android/server/power/PowerManagerService;->mSafeMode:Z

    .line 21
    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    const-string v2, "PowerManagerService"

    .line 25
    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 32
    .line 33
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mSafeMode:Z

    .line 34
    .line 35
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {v2, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    monitor-exit v1

    .line 46
    return-object v3

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget-object p0, v2, Lcom/android/server/power/PowerManagerService;->mAdaptiveScreenOffTimeoutController:Lcom/android/server/power/AdaptiveScreenOffTimeoutController;

    .line 50
    .line 51
    if-eqz p0, :cond_1

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/android/server/power/AdaptiveScreenOffTimeoutController;->getAdaptiveScreenOffTimeoutConfigLocked()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-static {p0}, Landroid/os/PowerManager$AdaptiveScreenOffTimeoutConfig;->toParcelable(Ljava/util/List;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    monitor-exit v1

    .line 62
    return-object p0

    .line 63
    :cond_1
    monitor-exit v1

    .line 64
    return-object v3

    .line 65
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p0
.end method

.method public final getBatteryDischargePrediction()Landroid/os/ParcelDuration;
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 7
    .line 8
    iget-object v3, v3, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 11
    :try_start_1
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 12
    .line 13
    iget-boolean v5, v4, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    .line 14
    .line 15
    if-eqz v5, :cond_0

    .line 16
    .line 17
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19
    .line 20
    .line 21
    return-object v2

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    :try_start_3
    iget-object v3, v4, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargeTimeLock:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v3
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 28
    :try_start_4
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 29
    .line 30
    iget-object v4, v4, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 36
    .line 37
    .line 38
    move-result-wide v4

    .line 39
    invoke-virtual {p0, v4, v5}, Lcom/android/server/power/PowerManagerService$BinderService;->isEnhancedDischargePredictionValidLocked(J)Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-eqz v6, :cond_1

    .line 44
    .line 45
    new-instance v6, Landroid/os/ParcelDuration;

    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 48
    .line 49
    iget-wide v7, p0, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargeTimeElapsed:J

    .line 50
    .line 51
    sub-long/2addr v7, v4

    .line 52
    invoke-direct {v6, v7, v8}, Landroid/os/ParcelDuration;-><init>(J)V

    .line 53
    .line 54
    .line 55
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 56
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    .line 58
    .line 59
    return-object v6

    .line 60
    :catchall_1
    move-exception p0

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 63
    :try_start_6
    new-instance v3, Landroid/os/ParcelDuration;

    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 68
    .line 69
    invoke-interface {p0}, Lcom/android/internal/app/IBatteryStats;->computeBatteryTimeRemaining()J

    .line 70
    .line 71
    .line 72
    move-result-wide v4

    .line 73
    invoke-direct {v3, v4, v5}, Landroid/os/ParcelDuration;-><init>(J)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 74
    .line 75
    .line 76
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 77
    .line 78
    .line 79
    return-object v3

    .line 80
    :catchall_2
    move-exception p0

    .line 81
    goto :goto_2

    .line 82
    :goto_0
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 83
    :try_start_8
    throw p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 84
    :goto_1
    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 85
    :try_start_a
    throw p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 86
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 87
    .line 88
    .line 89
    throw p0

    .line 90
    :catch_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 91
    .line 92
    .line 93
    return-object v2
.end method

.method public final getBrightnessConstraint(I)F
    .locals 1

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_3

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    const/high16 p0, 0x7fc00000    # Float.NaN

    .line 16
    .line 17
    return p0

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 19
    .line 20
    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDoze:F

    .line 21
    .line 22
    return p0

    .line 23
    :cond_1
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 24
    .line 25
    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDim:F

    .line 26
    .line 27
    return p0

    .line 28
    :cond_2
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 29
    .line 30
    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessDefault:F

    .line 31
    .line 32
    return p0

    .line 33
    :cond_3
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 34
    .line 35
    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMaximum:F

    .line 36
    .line 37
    return p0

    .line 38
    :cond_4
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 39
    .line 40
    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessMinimum:F

    .line 41
    .line 42
    return p0
.end method

.method public final getCurrentBrightness(Z)F
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[api] getCurrentBrightness: ratio: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const-string v2, "PowerManagerService"

    .line 13
    .line 14
    invoke-static {v2, v0, v1}, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    const-string v0, "display"

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroid/hardware/display/DisplayManager;->getBrightness(I)F

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-static {p0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    int-to-float p0, p0

    .line 41
    :goto_0
    return p0
.end method

.method public final getFullPowerSavePolicy()Landroid/os/BatterySaverPolicyConfig;
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 6
    .line 7
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverSupported:Z

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    :try_start_1
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getPolicyLocked()Landroid/os/BatterySaverPolicyConfig;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    monitor-exit v2

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :try_start_2
    throw p0

    .line 27
    :cond_0
    new-instance p0, Landroid/os/BatterySaverPolicyConfig$Builder;

    .line 28
    .line 29
    invoke-direct {p0}, Landroid/os/BatterySaverPolicyConfig$Builder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/os/BatterySaverPolicyConfig$Builder;->build()Landroid/os/BatterySaverPolicyConfig;

    .line 33
    .line 34
    .line 35
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 36
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 37
    .line 38
    .line 39
    return-object p0

    .line 40
    :catchall_1
    move-exception p0

    .line 41
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 42
    .line 43
    .line 44
    throw p0
.end method

.method public final getLastShutdownReason()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "android.permission.DEVICE_POWER"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getLastShutdownReasonInternal()I

    .line 18
    .line 19
    .line 20
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    return p0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 27
    .line 28
    .line 29
    throw p0
.end method

.method public final getLastSleepReason()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "android.permission.DEVICE_POWER"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    :try_start_1
    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepReason:I

    .line 21
    .line 22
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 24
    .line 25
    .line 26
    return p0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 30
    :catchall_1
    move-exception p0

    .line 31
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 32
    .line 33
    .line 34
    throw p0
.end method

.method public final getLastUserActivityTime(I)J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "android.permission.DEVICE_POWER"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "[api] getLastUserActivityTime: userId: "

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "PowerManagerService"

    .line 26
    .line 27
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    check-cast p0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 51
    .line 52
    iget-wide p0, p0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    .line 53
    .line 54
    return-wide p0

    .line 55
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v0, "error on getLastUserActivityTime: userId: "

    .line 58
    .line 59
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-wide/16 p0, -0x1

    .line 73
    .line 74
    return-wide p0
.end method

.method public final getLowPowerStandbyPolicy()Landroid/os/IPowerManager$LowPowerStandbyPolicy;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "android.permission.DEVICE_POWER"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    const-string v1, "android.permission.MANAGE_LOW_POWER_STANDBY"

    .line 18
    .line 19
    const-string v2, "getLowPowerStandbyPolicy"

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyController:Lcom/android/server/power/LowPowerStandbyController;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->toParcelable(Landroid/os/PowerManager$LowPowerStandbyPolicy;)Landroid/os/IPowerManager$LowPowerStandbyPolicy;

    .line 37
    .line 38
    .line 39
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 41
    .line 42
    .line 43
    return-object p0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    .line 47
    .line 48
    throw p0
.end method

.method public final getPackageNameOnScreenCurtain()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "getPackageNameOnScreenCurtain: mSafeMode: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string v2, "android.permission.DEVICE_POWER"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 19
    .line 20
    iget-boolean v3, v2, Lcom/android/server/power/PowerManagerService;->mSafeMode:Z

    .line 21
    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    const-string v2, "PowerManagerService"

    .line 25
    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 32
    .line 33
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mSafeMode:Z

    .line 34
    .line 35
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {v2, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    const-string p0, ""

    .line 46
    .line 47
    monitor-exit v1

    .line 48
    return-object p0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iget-object p0, v2, Lcom/android/server/power/PowerManagerService;->mScreenCurtainController:Lcom/android/server/power/ScreenCurtainController;

    .line 52
    .line 53
    if-eqz p0, :cond_1

    .line 54
    .line 55
    const-string v0, "getPackageNameOnScreenCurtainLocked: "

    .line 56
    .line 57
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :try_start_1
    const-string v2, "ScreenCurtainController"

    .line 59
    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/android/server/power/ScreenCurtainController;->mPackageNameOnScreenCurtain:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/android/server/power/ScreenCurtainController;->mPackageNameOnScreenCurtain:Ljava/lang/String;

    .line 78
    .line 79
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 80
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    return-object v0

    .line 82
    :catchall_1
    move-exception v0

    .line 83
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 84
    :try_start_4
    throw v0

    .line 85
    :cond_1
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 86
    const-string p0, ""

    .line 87
    .line 88
    return-object p0

    .line 89
    :goto_0
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 90
    throw p0
.end method

.method public final getPowerSaveModeTrigger()I
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v2, "automatic_power_save_mode"

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static {p0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    .line 22
    .line 23
    return p0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 26
    .line 27
    .line 28
    throw p0
.end method

.method public final getPowerSaveState(I)Landroid/os/PowerSaveState;
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 6
    .line 7
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverSupported:Z

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getBatterySaverPolicy(I)Landroid/os/PowerSaveState;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    new-instance p0, Landroid/os/PowerSaveState$Builder;

    .line 25
    .line 26
    invoke-direct {p0}, Landroid/os/PowerSaveState$Builder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    .line 30
    .line 31
    .line 32
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    .line 35
    .line 36
    return-object p0

    .line 37
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    .line 39
    .line 40
    throw p0
.end method

.method public final getWakeLockPackageList()[Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "android.permission.DEVICE_POWER"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v1

    .line 21
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 40
    .line 41
    iget-object v2, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    new-instance v0, Lcom/android/server/power/PowerManagerService$BinderService$$ExternalSyntheticLambda1;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    check-cast p0, [Ljava/lang/String;

    .line 64
    .line 65
    return-object p0

    .line 66
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    throw p0
.end method

.method public final goToSleep(JII)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[api] goToSleep"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v1}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString(Z)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, " eventTime = "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "PowerManagerService"

    .line 29
    .line 30
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 34
    .line 35
    sget-object v3, Lcom/android/server/power/PowerManagerService;->DEFAULT_DISPLAY_GROUP_IDS:Landroid/util/IntArray;

    .line 36
    .line 37
    move-wide v4, p1

    .line 38
    move v6, p3

    .line 39
    move v7, p4

    .line 40
    invoke-static/range {v2 .. v7}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mgoToSleepInternal(Lcom/android/server/power/PowerManagerService;Landroid/util/IntArray;JII)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final goToSleepWithDisplayId(IJII)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[api] goToSleepWithDisplayId"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v1}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString(Z)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, " for displayId = "

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, " eventTime = "

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v2, "PowerManagerService"

    .line 37
    .line 38
    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    const/4 v0, -0x1

    .line 42
    if-ne p1, v0, :cond_0

    .line 43
    .line 44
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 45
    .line 46
    iget-object p1, p1, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayGroupIds()Landroid/util/IntArray;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    :goto_0
    move-object v1, p1

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 55
    .line 56
    iget-object v2, v2, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 57
    .line 58
    invoke-virtual {v2, p1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    if-eqz v2, :cond_1

    .line 63
    .line 64
    const/4 v1, 0x1

    .line 65
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const-string v3, "display ID(%d) doesn\'t exist"

    .line 74
    .line 75
    invoke-static {v1, v3, p1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    iget p1, v2, Landroid/view/DisplayInfo;->displayGroupId:I

    .line 79
    .line 80
    if-eq p1, v0, :cond_2

    .line 81
    .line 82
    filled-new-array {p1}, [I

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {p1}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    goto :goto_0

    .line 91
    :goto_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 92
    .line 93
    move-wide v2, p2

    .line 94
    move v4, p4

    .line 95
    move v5, p5

    .line 96
    invoke-static/range {v0 .. v5}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mgoToSleepInternal(Lcom/android/server/power/PowerManagerService;Landroid/util/IntArray;JII)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 101
    .line 102
    const-string p1, "invalid display group ID"

    .line 103
    .line 104
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p0
.end method

.method public final isAmbientDisplayAvailable()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "android.permission.READ_DREAM_STATE"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->ambientDisplayAvailable()Z

    .line 20
    .line 21
    .line 22
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 24
    .line 25
    .line 26
    return p0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 29
    .line 30
    .line 31
    throw p0
.end method

.method public final isAmbientDisplaySuppressed()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "android.permission.READ_DREAM_STATE"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mAmbientDisplaySuppressionController:Lcom/android/server/power/AmbientDisplaySuppressionController;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/power/AmbientDisplaySuppressionController;->isSuppressed()Z

    .line 20
    .line 21
    .line 22
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 24
    .line 25
    .line 26
    return p0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 29
    .line 30
    .line 31
    throw p0
.end method

.method public final isAmbientDisplaySuppressedForToken(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "android.permission.READ_DREAM_STATE"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mAmbientDisplaySuppressionController:Lcom/android/server/power/AmbientDisplaySuppressionController;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressionTokens:Ljava/util/Set;

    .line 24
    .line 25
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 41
    .line 42
    .line 43
    return p0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    .line 47
    .line 48
    throw p0
.end method

.method public final isAmbientDisplaySuppressedForTokenByApp(Ljava/lang/String;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "android.permission.READ_DREAM_STATE"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    const-string v1, "android.permission.READ_DREAM_SUPPRESSION"

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$BinderService;->isAmbientDisplayAvailable()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mAmbientDisplaySuppressionController:Lcom/android/server/power/AmbientDisplaySuppressionController;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressionTokens:Ljava/util/Set;

    .line 35
    .line 36
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    if-eqz p0, :cond_0

    .line 52
    .line 53
    const/4 p0, 0x1

    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    const/4 p0, 0x0

    .line 58
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 59
    .line 60
    .line 61
    return p0

    .line 62
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    .line 64
    .line 65
    throw p0
.end method

.method public final isBatteryDischargePredictionPersonalized()Z
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargeTimeLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 11
    .line 12
    iget-object v3, v3, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    invoke-virtual {p0, v3, v4}, Lcom/android/server/power/PowerManagerService$BinderService;->isEnhancedDischargePredictionValidLocked(J)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 28
    .line 29
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargePredictionIsPersonalized:Z

    .line 30
    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    const/4 p0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    const/4 p0, 0x0

    .line 38
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    .line 41
    .line 42
    return p0

    .line 43
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 45
    :catchall_1
    move-exception p0

    .line 46
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 47
    .line 48
    .line 49
    throw p0
.end method

.method public final isBatterySaverSupported()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 6
    .line 7
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverSupported:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 10
    .line 11
    .line 12
    return p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 15
    .line 16
    .line 17
    throw p0
.end method

.method public final isDeviceIdleMode()Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    .line 11
    .line 12
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 14
    .line 15
    .line 16
    return p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 20
    :catchall_1
    move-exception p0

    .line 21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    throw p0
.end method

.method public final isDisplayInteractive(I)Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 10
    .line 11
    invoke-static {p0, p1, v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$misInteractiveInternal(Lcom/android/server/power/PowerManagerService;II)Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    .line 17
    .line 18
    return p0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    .line 22
    .line 23
    throw p0
.end method

.method public final isDozeAfterScreenOff()Z
    .locals 3

    .line 1
    const-string v0, "PowerManagerService"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "[api] isDozeAfterScreenOff "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v0, v1, v2}, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    const-string v1, "android.permission.DEVICE_POWER"

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 31
    .line 32
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 33
    :try_start_1
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOff:Z

    .line 34
    .line 35
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 37
    .line 38
    .line 39
    return p0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 43
    :catchall_1
    move-exception p0

    .line 44
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 45
    .line 46
    .line 47
    throw p0
.end method

.method public final isEnhancedDischargePredictionValidLocked(J)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastEnhancedDischargeTimeUpdatedElapsed:J

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v2, v0, v2

    .line 8
    .line 9
    if-lez v2, :cond_0

    .line 10
    .line 11
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargeTimeElapsed:J

    .line 12
    .line 13
    cmp-long p0, p1, v2

    .line 14
    .line 15
    if-gez p0, :cond_0

    .line 16
    .line 17
    sub-long/2addr p1, v0

    .line 18
    const-wide/32 v0, 0x1b7740

    .line 19
    .line 20
    .line 21
    cmp-long p0, p1, v0

    .line 22
    .line 23
    if-gez p0, :cond_0

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    :goto_0
    return p0
.end method

.method public final isExemptFromLowPowerStandby()Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyController:Lcom/android/server/power/LowPowerStandbyController;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/android/server/power/LowPowerStandbyController;->isPackageExempt(I)Z

    .line 14
    .line 15
    .line 16
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18
    .line 19
    .line 20
    return p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public final isFeatureAllowedInLowPowerStandby(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyController:Lcom/android/server/power/LowPowerStandbyController;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :try_start_1
    iget-boolean v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    monitor-exit v2

    .line 18
    goto :goto_1

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_2

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->isEnabled()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getAllowedFeatures()Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 v4, 0x0

    .line 43
    :cond_2
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 45
    .line 46
    .line 47
    return v4

    .line 48
    :goto_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 50
    :catchall_1
    move-exception p0

    .line 51
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    .line 53
    .line 54
    throw p0
.end method

.method public final isInteractive()Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 6
    .line 7
    sget-object v2, Lcom/android/server/power/PowerManagerService;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    invoke-static {p0}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    return p0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 28
    :catchall_1
    move-exception p0

    .line 29
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 30
    .line 31
    .line 32
    throw p0
.end method

.method public final isInteractiveForDisplay(I)Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 10
    .line 11
    invoke-static {p0, p1, v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$misInteractiveForDisplayInternal(Lcom/android/server/power/PowerManagerService;II)Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    .line 17
    .line 18
    return p0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    .line 22
    .line 23
    throw p0
.end method

.method public final isLightDeviceIdleMode()Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    .line 11
    .line 12
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 14
    .line 15
    .line 16
    return p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 20
    :catchall_1
    move-exception p0

    .line 21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    throw p0
.end method

.method public final isLowPowerStandbyEnabled()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyController:Lcom/android/server/power/LowPowerStandbyController;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->isEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 14
    .line 15
    .line 16
    return p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19
    .line 20
    .line 21
    throw p0
.end method

.method public final isLowPowerStandbySupported()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "android.permission.DEVICE_POWER"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    const-string v1, "android.permission.MANAGE_LOW_POWER_STANDBY"

    .line 18
    .line 19
    const-string v2, "isLowPowerStandbySupported"

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyController:Lcom/android/server/power/LowPowerStandbyController;

    .line 31
    .line 32
    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 35
    :try_start_1
    iget-boolean p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    .line 36
    .line 37
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 39
    .line 40
    .line 41
    return p0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 45
    :catchall_1
    move-exception p0

    .line 46
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 47
    .line 48
    .line 49
    throw p0
.end method

.method public final isPowerSaveMode()Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 6
    .line 7
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverSupported:Z

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->isEnabled()Z

    .line 16
    .line 17
    .line 18
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 27
    .line 28
    .line 29
    return p0

    .line 30
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    .line 32
    .line 33
    throw p0
.end method

.method public final isReasonAllowedInLowPowerStandby(I)Z
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyController:Lcom/android/server/power/LowPowerStandbyController;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->isEnabled()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    const/4 v4, 0x1

    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    monitor-exit v2

    .line 20
    goto :goto_1

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_2

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getAllowedReasons()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    and-int/2addr p0, p1

    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v4, 0x0

    .line 36
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    .line 39
    .line 40
    return v4

    .line 41
    :goto_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 43
    :catchall_1
    move-exception p0

    .line 44
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 45
    .line 46
    .line 47
    throw p0
.end method

.method public final isScreenBrightnessBoosted()Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    .line 11
    .line 12
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 14
    .line 15
    .line 16
    return p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 20
    :catchall_1
    move-exception p0

    .line 21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    throw p0
.end method

.method public final isScreenCurtainEnabled()Z
    .locals 5

    .line 1
    const-string v0, "isScreenCurtainEnabled: mSafeMode: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string v2, "android.permission.DEVICE_POWER"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 19
    .line 20
    iget-boolean v3, v2, Lcom/android/server/power/PowerManagerService;->mSafeMode:Z

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    const-string v2, "PowerManagerService"

    .line 26
    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 33
    .line 34
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mSafeMode:Z

    .line 35
    .line 36
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {v2, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    monitor-exit v1

    .line 47
    return v4

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object p0, v2, Lcom/android/server/power/PowerManagerService;->mScreenCurtainController:Lcom/android/server/power/ScreenCurtainController;

    .line 51
    .line 52
    if-eqz p0, :cond_1

    .line 53
    .line 54
    iget-boolean p0, p0, Lcom/android/server/power/ScreenCurtainController;->mScreenCurtainEnabled:Z

    .line 55
    .line 56
    monitor-exit v1

    .line 57
    return p0

    .line 58
    :cond_1
    monitor-exit v1

    .line 59
    return v4

    .line 60
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p0
.end method

.method public final isScreenCurtainEntryAvailable()Z
    .locals 6

    .line 1
    const-string v0, "isScreenCurtainEntryAvailable: mSafeMode: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string v2, "android.permission.DEVICE_POWER"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 19
    .line 20
    iget-boolean v3, v2, Lcom/android/server/power/PowerManagerService;->mSafeMode:Z

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    const-string v2, "PowerManagerService"

    .line 26
    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 33
    .line 34
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mSafeMode:Z

    .line 35
    .line 36
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {v2, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    monitor-exit v1

    .line 47
    return v4

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_2

    .line 50
    :cond_0
    iget-object p0, v2, Lcom/android/server/power/PowerManagerService;->mScreenCurtainController:Lcom/android/server/power/ScreenCurtainController;

    .line 51
    .line 52
    if-eqz p0, :cond_3

    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    new-instance v0, Lcom/samsung/android/game/SemGameManager;

    .line 58
    .line 59
    invoke-direct {v0}, Lcom/samsung/android/game/SemGameManager;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    const/4 v2, 0x1

    .line 63
    const/4 v3, 0x0

    .line 64
    :try_start_1
    invoke-virtual {v0}, Lcom/samsung/android/game/SemGameManager;->isForegroundGame()Z

    .line 65
    .line 66
    .line 67
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    :try_start_2
    iget-object p0, p0, Lcom/android/server/power/ScreenCurtainController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCallState()I

    .line 71
    .line 72
    .line 73
    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    if-eqz p0, :cond_1

    .line 75
    .line 76
    move p0, v2

    .line 77
    goto :goto_0

    .line 78
    :catch_0
    move v0, v3

    .line 79
    :catch_1
    :cond_1
    move p0, v3

    .line 80
    :goto_0
    if-nez v0, :cond_2

    .line 81
    .line 82
    if-nez p0, :cond_2

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    move v2, v3

    .line 86
    :goto_1
    :try_start_3
    const-string v3, "isScreenCurtainAvailableLocked: "

    .line 87
    .line 88
    const-string v4, ", game="

    .line 89
    .line 90
    const-string v5, ", callActive="

    .line 91
    .line 92
    invoke-static {v3, v2, v4, v0, v5}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    const-string v0, "ScreenCurtainController"

    .line 104
    .line 105
    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    monitor-exit v1

    .line 109
    return v2

    .line 110
    :cond_3
    monitor-exit v1

    .line 111
    return v4

    .line 112
    :goto_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 113
    throw p0
.end method

.method public final isWakeLockLevelSupported(I)Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 6
    .line 7
    invoke-static {p0, p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$misWakeLockLevelSupportedInternal(Lcom/android/server/power/PowerManagerService;I)Z

    .line 8
    .line 9
    .line 10
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 12
    .line 13
    .line 14
    return p0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public final nap(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    cmp-long v2, p1, v0

    .line 13
    .line 14
    const-string v3, "PowerManagerService"

    .line 15
    .line 16
    if-gtz v2, :cond_0

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v1, "[api] nap"

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-static {v1}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString(Z)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, " eventTime = "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v3, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    const-string v1, "android.permission.DEVICE_POWER"

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 63
    .line 64
    .line 65
    move-result-wide v1

    .line 66
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 67
    .line 68
    const/4 v3, 0x0

    .line 69
    invoke-virtual {p0, v0, p1, p2, v3}, Lcom/android/server/power/PowerManagerService;->napInternal(IJZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 78
    .line 79
    .line 80
    throw p0

    .line 81
    :cond_0
    const-string p0, "Event time "

    .line 82
    .line 83
    const-string v2, " cannot be newer than "

    .line 84
    .line 85
    invoke-static {p0, p1, p2, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-static {v3, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 100
    .line 101
    const-string p1, "event time must not be in the future"

    .line 102
    .line 103
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->mShellCommand:Lcom/android/server/power/PowerManagerShellCommand;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    move-object v2, p1

    .line 5
    move-object v3, p2

    .line 6
    move-object v4, p3

    .line 7
    move-object v5, p4

    .line 8
    move-object v6, p5

    .line 9
    move-object v7, p6

    .line 10
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final reboot(ZLjava/lang/String;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->-$$Nest$smcallerInfoWithProcessName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iput-object v1, v0, Lcom/android/server/power/PowerManagerService;->mShutdownOrRebootCaller:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, " reason: "

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v2, " confirm: "

    .line 34
    .line 35
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v2, " wait: "

    .line 51
    .line 52
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 66
    .line 67
    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mShutdownOrRebootCaller:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v2, "[api] "

    .line 75
    .line 76
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {v0}, Lcom/android/server/power/Slog;->dk(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    if-nez p2, :cond_0

    .line 94
    .line 95
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 96
    .line 97
    iget-object p2, p2, Lcom/android/server/power/PowerManagerService;->mShutdownOrRebootCaller:Ljava/lang/String;

    .line 98
    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 100
    .line 101
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 102
    .line 103
    const-string v1, "android.permission.REBOOT"

    .line 104
    .line 105
    const/4 v2, 0x0

    .line 106
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const-string/jumbo v0, "recovery"

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-nez v0, :cond_1

    .line 117
    .line 118
    const-string/jumbo v0, "recovery-update"

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_2

    .line 126
    .line 127
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 128
    .line 129
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 130
    .line 131
    const-string v1, "android.permission.RECOVERY"

    .line 132
    .line 133
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    sget-object v1, Lcom/android/server/power/ShutdownCheckPoints;->INSTANCE:Lcom/android/server/power/ShutdownCheckPoints;

    .line 141
    .line 142
    invoke-virtual {v1, v0, p2}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPointInternal(ILjava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 146
    .line 147
    .line 148
    move-result-wide v0

    .line 149
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 150
    .line 151
    const/4 v2, 0x1

    .line 152
    invoke-static {p0, v2, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mshutdownOrRebootInternal(Lcom/android/server/power/PowerManagerService;IZLjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    .line 154
    .line 155
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :catchall_0
    move-exception p0

    .line 160
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 161
    .line 162
    .line 163
    throw p0
.end method

.method public final rebootSafeMode(ZZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "android.permission.REBOOT"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sget-object v1, Lcom/android/server/power/ShutdownCheckPoints;->INSTANCE:Lcom/android/server/power/ShutdownCheckPoints;

    .line 16
    .line 17
    const-string/jumbo v2, "safemode"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0, v2}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPointInternal(ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 28
    .line 29
    const/4 v3, 0x2

    .line 30
    invoke-static {p0, v3, p1, v2, p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mshutdownOrRebootInternal(Lcom/android/server/power/PowerManagerService;IZLjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 39
    .line 40
    .line 41
    throw p0
.end method

.method public final releaseLowPowerStandbyPorts(Landroid/os/IBinder;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "android.permission.SET_LOW_POWER_STANDBY_PORTS"

    .line 6
    .line 7
    const-string/jumbo v2, "releaseLowPowerStandbyPorts"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyController:Lcom/android/server/power/LowPowerStandbyController;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->releaseStandbyPorts(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 30
    .line 31
    .line 32
    throw p0
.end method

.method public final releaseWakeLock(Landroid/os/IBinder;I)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string v1, "android.permission.WAKE_LOCK"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 18
    .line 19
    invoke-static {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mreleaseWakeLockInternal(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 28
    .line 29
    .line 30
    throw p0

    .line 31
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    const-string p1, "lock must not be null"

    .line 34
    .line 35
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p0
.end method

.method public final releaseWakeLockAsync(Landroid/os/IBinder;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/PowerManagerService$BinderService;->releaseWakeLock(Landroid/os/IBinder;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final removeAdaptiveScreenOffTimeoutConfig(Ljava/util/List;)V
    .locals 4

    .line 1
    const-string/jumbo v0, "removeAdaptiveScreenOffTimeoutConfig: mSafeMode: "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    const-string v2, "android.permission.DEVICE_POWER"

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v1

    .line 19
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 20
    .line 21
    iget-boolean v3, v2, Lcom/android/server/power/PowerManagerService;->mSafeMode:Z

    .line 22
    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    const-string p1, "PowerManagerService"

    .line 26
    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 33
    .line 34
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mSafeMode:Z

    .line 35
    .line 36
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    monitor-exit v1

    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object p0, v2, Lcom/android/server/power/PowerManagerService;->mAdaptiveScreenOffTimeoutController:Lcom/android/server/power/AdaptiveScreenOffTimeoutController;

    .line 51
    .line 52
    if-eqz p0, :cond_1

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Lcom/android/server/power/AdaptiveScreenOffTimeoutController;->removeAdaptiveScreenOffTimeoutConfigLocked(Ljava/util/List;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    monitor-exit v1

    .line 58
    return-void

    .line 59
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw p0
.end method

.method public final setAdaptivePowerSaveEnabled(Z)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "android.permission.POWER_SAVER"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    const-string v1, "android.permission.DEVICE_POWER"

    .line 18
    .line 19
    const-string/jumbo v2, "setAdaptivePowerSaveEnabled"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 30
    .line 31
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverSupported:Z

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    if-eqz v2, :cond_6

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    .line 39
    .line 40
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 41
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 42
    .line 43
    .line 44
    move-result-wide v4

    .line 45
    iput-wide v4, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastAdaptiveBatterySaverChangedExternallyElapsed:J

    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 48
    .line 49
    iget-boolean v4, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptiveEnabledRaw:Z

    .line 50
    .line 51
    const/4 v5, 0x1

    .line 52
    if-ne v4, p1, :cond_2

    .line 53
    .line 54
    :cond_1
    move p0, v3

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    if-ne v4, p1, :cond_3

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    invoke-static {}, Landroid/os/PowerManager;->invalidatePowerSaveModeCaches()V

    .line 60
    .line 61
    .line 62
    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptiveEnabledRaw:Z

    .line 63
    .line 64
    :goto_0
    iget-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullEnabledRaw:Z

    .line 65
    .line 66
    iget-object v4, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    .line 67
    .line 68
    if-eqz p1, :cond_4

    .line 69
    .line 70
    const/4 p1, 0x2

    .line 71
    invoke-virtual {v4, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->setPolicyLevel(I)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    goto :goto_1

    .line 76
    :cond_4
    iget-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptiveEnabledRaw:Z

    .line 77
    .line 78
    if-eqz p1, :cond_5

    .line 79
    .line 80
    invoke-virtual {v4, v5}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->setPolicyLevel(I)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    goto :goto_1

    .line 85
    :cond_5
    invoke-virtual {v4, v3}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->setPolicyLevel(I)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    :goto_1
    if-eqz p1, :cond_1

    .line 90
    .line 91
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    .line 92
    .line 93
    const/16 p1, 0xb

    .line 94
    .line 95
    invoke-virtual {p0, p1, v5}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postStateChanged(IZ)V

    .line 96
    .line 97
    .line 98
    move p0, v5

    .line 99
    :goto_2
    monitor-exit v2

    .line 100
    if-eqz p0, :cond_6

    .line 101
    .line 102
    move v3, v5

    .line 103
    goto :goto_3

    .line 104
    :catchall_0
    move-exception p0

    .line 105
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 107
    :cond_6
    :goto_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 108
    .line 109
    .line 110
    return v3

    .line 111
    :catchall_1
    move-exception p0

    .line 112
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 113
    .line 114
    .line 115
    throw p0
.end method

.method public final setAdaptivePowerSavePolicy(Landroid/os/BatterySaverPolicyConfig;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "android.permission.POWER_SAVER"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    const-string v1, "android.permission.DEVICE_POWER"

    .line 18
    .line 19
    const-string/jumbo v2, "setAdaptivePowerSavePolicy"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 30
    .line 31
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverSupported:Z

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    .line 38
    .line 39
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 40
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 41
    .line 42
    .line 43
    move-result-wide v3

    .line 44
    iput-wide v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastAdaptiveBatterySaverChangedExternallyElapsed:J

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lcom/android/server/power/batterysaver/BatterySaverController;->setAdaptivePolicyLocked(Landroid/os/BatterySaverPolicyConfig;)Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    monitor-exit v2

    .line 53
    if-eqz p0, :cond_1

    .line 54
    .line 55
    const/4 p0, 0x1

    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 60
    :cond_1
    const/4 p0, 0x0

    .line 61
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 62
    .line 63
    .line 64
    return p0

    .line 65
    :catchall_1
    move-exception p0

    .line 66
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 67
    .line 68
    .line 69
    throw p0
.end method

.method public final setAttentionLight(ZI)V
    .locals 4

    .line 1
    const-string v0, "PowerManagerService"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "[api] setAttentionLight: on: "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, " color: "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-static {v0, v1, v2}, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    const-string v1, "android.permission.DEVICE_POWER"

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 44
    :try_start_1
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    .line 45
    .line 46
    if-nez v3, :cond_0

    .line 47
    .line 48
    monitor-exit v2

    .line 49
    goto :goto_1

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_2

    .line 52
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mAttentionLight:Lcom/android/server/lights/LightsService$LightImpl;

    .line 53
    .line 54
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    if-eqz p0, :cond_2

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    if-eqz p1, :cond_1

    .line 59
    .line 60
    const/4 p1, 0x3

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    move p1, v2

    .line 63
    :goto_0
    const/4 v3, 0x2

    .line 64
    :try_start_2
    invoke-virtual {p0, p2, v3, p1, v2}, Lcom/android/server/lights/LightsService$LightImpl;->setFlashing(IIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 65
    .line 66
    .line 67
    :cond_2
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :goto_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 72
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 73
    :catchall_1
    move-exception p0

    .line 74
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 75
    .line 76
    .line 77
    throw p0
.end method

.method public final setAutoBrightnessLimit(IIZ)V
    .locals 6

    .line 1
    const-string v0, "[api] setAutoBrightnessLimit : lowerLimit "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string v2, "android.permission.CONTROL_DISPLAY_BRIGHTNESS"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, -0x1

    .line 15
    if-lt p1, v2, :cond_3

    .line 16
    .line 17
    if-lt p2, v2, :cond_3

    .line 18
    .line 19
    if-le p1, p2, :cond_0

    .line 20
    .line 21
    if-ltz p2, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 25
    .line 26
    iget-object v2, v2, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 27
    .line 28
    monitor-enter v2

    .line 29
    :try_start_0
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 30
    .line 31
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v4

    .line 35
    iput-wide v4, v3, Lcom/android/server/power/PowerManagerService;->mLastAutoBrightnessLimitTime:J

    .line 36
    .line 37
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 38
    .line 39
    iget v4, v3, Lcom/android/server/power/PowerManagerService;->mAutoBrightnessLowerLimit:I

    .line 40
    .line 41
    if-ne v4, p1, :cond_1

    .line 42
    .line 43
    iget v3, v3, Lcom/android/server/power/PowerManagerService;->mAutoBrightnessUpperLimit:I

    .line 44
    .line 45
    if-eq v3, p2, :cond_2

    .line 46
    .line 47
    :cond_1
    const-string v3, "PowerManagerService"

    .line 48
    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v0, "   upperLimit : "

    .line 58
    .line 59
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v0, "   slowChange : "

    .line 66
    .line 67
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-static {v1}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString(Z)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {v3, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 88
    .line 89
    iput p1, v0, Lcom/android/server/power/PowerManagerService;->mAutoBrightnessLowerLimit:I

    .line 90
    .line 91
    iput p2, v0, Lcom/android/server/power/PowerManagerService;->mAutoBrightnessUpperLimit:I

    .line 92
    .line 93
    const/4 p1, 0x0

    .line 94
    invoke-static {p1}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString(Z)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    iput-object p1, v0, Lcom/android/server/power/PowerManagerService;->mAutoBrightnessLimitLastCaller:Ljava/lang/String;

    .line 99
    .line 100
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 101
    .line 102
    iput-boolean p3, p0, Lcom/android/server/power/PowerManagerService;->mForceSlowChange:Z

    .line 103
    .line 104
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 105
    .line 106
    or-int/lit8 p1, p1, 0x20

    .line 107
    .line 108
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 111
    .line 112
    .line 113
    :cond_2
    monitor-exit v2

    .line 114
    return-void

    .line 115
    :catchall_0
    move-exception p0

    .line 116
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    throw p0

    .line 118
    :cond_3
    :goto_0
    const-string p0, "PowerManagerService"

    .line 119
    .line 120
    new-instance p3, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string v0, "[api] setAutoBrightnessLimit : invalid Limits : "

    .line 123
    .line 124
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string p1, ", "

    .line 131
    .line 132
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-static {p0, p3, v1}, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 139
    .line 140
    .line 141
    return-void
.end method

.method public final setBatteryDischargePrediction(Landroid/os/ParcelDuration;Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 13
    .line 14
    iget-object v2, v2, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    const-string v3, "android.permission.BATTERY_PREDICTION"

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 25
    .line 26
    iget-object v2, v2, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    const-string v3, "android.permission.DEVICE_POWER"

    .line 29
    .line 30
    const-string/jumbo v4, "setBatteryDischargePrediction"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p1}, Landroid/os/ParcelDuration;->getDuration()Ljava/time/Duration;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    .line 41
    .line 42
    .line 43
    move-result-wide v2

    .line 44
    long-to-float p1, v2

    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v5, "Given time remaining is not positive: "

    .line 48
    .line 49
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-static {p1, v4}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(FLjava/lang/String;)F

    .line 60
    .line 61
    .line 62
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 63
    .line 64
    .line 65
    move-result-wide v4

    .line 66
    :try_start_0
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 67
    .line 68
    iget-object p1, p1, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 69
    .line 70
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 71
    :try_start_1
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 72
    .line 73
    iget-boolean v7, v6, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    .line 74
    .line 75
    if-nez v7, :cond_2

    .line 76
    .line 77
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 78
    :try_start_2
    iget-object p1, v6, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargeTimeLock:Ljava/lang/Object;

    .line 79
    .line 80
    monitor-enter p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 81
    :try_start_3
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 82
    .line 83
    iget-wide v6, v6, Lcom/android/server/power/PowerManagerService;->mLastEnhancedDischargeTimeUpdatedElapsed:J

    .line 84
    .line 85
    cmp-long v8, v6, v0

    .line 86
    .line 87
    if-lez v8, :cond_1

    .line 88
    .line 89
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 90
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :catchall_0
    move-exception p0

    .line 95
    goto :goto_0

    .line 96
    :cond_1
    sub-long v6, v0, v6

    .line 97
    .line 98
    const-wide/32 v8, 0xea60

    .line 99
    .line 100
    .line 101
    sub-long/2addr v8, v6

    .line 102
    const-wide/16 v6, 0x0

    .line 103
    .line 104
    :try_start_4
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 105
    .line 106
    .line 107
    move-result-wide v6

    .line 108
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 109
    .line 110
    add-long/2addr v2, v0

    .line 111
    iput-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargeTimeElapsed:J

    .line 112
    .line 113
    iput-boolean p2, p0, Lcom/android/server/power/PowerManagerService;->mEnhancedDischargePredictionIsPersonalized:Z

    .line 114
    .line 115
    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastEnhancedDischargeTimeUpdatedElapsed:J

    .line 116
    .line 117
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 118
    :try_start_5
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    .line 119
    .line 120
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    .line 121
    .line 122
    const/4 p1, 0x4

    .line 123
    invoke-virtual {p0, p1, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 124
    .line 125
    .line 126
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :goto_0
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 131
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 132
    :catchall_1
    move-exception p0

    .line 133
    goto :goto_2

    .line 134
    :catchall_2
    move-exception p0

    .line 135
    goto :goto_1

    .line 136
    :cond_2
    :try_start_8
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 137
    .line 138
    const-string p2, "Discharge prediction can\'t be set while the device is charging"

    .line 139
    .line 140
    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw p0

    .line 144
    :goto_1
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 145
    :try_start_9
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 146
    :goto_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 147
    .line 148
    .line 149
    throw p0
.end method

.method public final setCoverType(I)V
    .locals 5

    .line 1
    const-string/jumbo v0, "setCoverType = "

    .line 2
    .line 3
    .line 4
    const-string v1, "PowerManagerService"

    .line 5
    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v3, "[api] setCoverType: "

    .line 9
    .line 10
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    const-string v2, "android.permission.DEVICE_POWER"

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 34
    .line 35
    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 36
    .line 37
    monitor-enter v1

    .line 38
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 39
    .line 40
    iput p1, v2, Lcom/android/server/power/PowerManagerService;->mCoverType:I

    .line 41
    .line 42
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 43
    .line 44
    .line 45
    move-result-wide v2

    .line 46
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 47
    .line 48
    iput-wide v2, v4, Lcom/android/server/power/PowerManagerService;->mlastSetCoverTypeTime:J

    .line 49
    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iput-object p1, v4, Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverTypeReason:Ljava/lang/String;

    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 65
    .line 66
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 67
    .line 68
    or-int/lit8 p1, p1, 0x20

    .line 69
    .line 70
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 73
    .line 74
    .line 75
    monitor-exit v1

    .line 76
    return-void

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    throw p0
.end method

.method public final setDozeAfterScreenOff(Z)V
    .locals 3

    .line 1
    const-string v0, "PowerManagerService"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "[api] setDozeAfterScreenOff: "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {v0, v1, v2}, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    const-string v1, "android.permission.DEVICE_POWER"

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 34
    .line 35
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 36
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOff:Z

    .line 37
    .line 38
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 46
    :catchall_1
    move-exception p0

    .line 47
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    .line 49
    .line 50
    throw p0
.end method

.method public final setDynamicPowerSaveHint(ZI)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "android.permission.POWER_SAVER"

    .line 6
    .line 7
    const-string/jumbo v2, "updateDynamicPowerSavings"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string v2, "dynamic_power_savings_disable_threshold"

    .line 26
    .line 27
    invoke-static {p0, v2, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-eqz p2, :cond_0

    .line 32
    .line 33
    const-string v2, "dynamic_power_savings_enabled"

    .line 34
    .line 35
    invoke-static {p0, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 36
    .line 37
    .line 38
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    and-int/2addr p2, p0

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    .line 45
    .line 46
    return p2

    .line 47
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    .line 49
    .line 50
    throw p0
.end method

.method public final setEarlyWakeUp(Z)V
    .locals 3

    .line 1
    const-string v0, "PowerManagerService"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "[api] setEarlyWakeUp: enable: "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    const-string v1, "android.permission.DEVICE_POWER"

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter v0

    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    iput v2, v1, Lcom/android/server/power/PowerManagerService;->mLastWakeUpReason:I

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerService;->isWakeUpPreventionNeededLocked()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    monitor-exit v0

    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 51
    .line 52
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 53
    .line 54
    or-int/lit8 v1, v1, 0x20

    .line 55
    .line 56
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 57
    .line 58
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mEarlyWakeUp:Z

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 61
    .line 62
    .line 63
    monitor-exit v0

    .line 64
    return-void

    .line 65
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p0
.end method

.method public final setFreezingScreenBrightness(Z)V
    .locals 3

    .line 1
    const-string v0, "PowerManagerService"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "[api] setFreezingScreenBrightness: freezing: "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {v0, v1, v2}, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    const-string v1, "android.permission.DEVICE_POWER"

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v0

    .line 32
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 33
    .line 34
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mFreezingScreenBrightness:Z

    .line 35
    .line 36
    if-eq p1, v1, :cond_0

    .line 37
    .line 38
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mFreezingScreenBrightness:Z

    .line 39
    .line 40
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 41
    .line 42
    or-int/lit8 p1, p1, 0x20

    .line 43
    .line 44
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 47
    .line 48
    .line 49
    :cond_0
    monitor-exit v0

    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p0
.end method

.method public final setFullPowerSavePolicy(Landroid/os/BatterySaverPolicyConfig;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "android.permission.POWER_SAVER"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    const-string v1, "android.permission.DEVICE_POWER"

    .line 18
    .line 19
    const-string/jumbo v2, "setFullPowerSavePolicy"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 30
    .line 31
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverSupported:Z

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    .line 38
    .line 39
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 40
    :try_start_1
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lcom/android/server/power/batterysaver/BatterySaverController;->setFullPolicyLocked(Landroid/os/BatterySaverPolicyConfig;)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    monitor-exit v2

    .line 47
    if-eqz p0, :cond_1

    .line 48
    .line 49
    const/4 p0, 0x1

    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 54
    :cond_1
    const/4 p0, 0x0

    .line 55
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    .line 57
    .line 58
    return p0

    .line 59
    :catchall_1
    move-exception p0

    .line 60
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 61
    .line 62
    .line 63
    throw p0
.end method

.method public final setHdrBrightnessLimit(Landroid/os/IBinder;II)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "android.permission.CONTROL_DISPLAY_BRIGHTNESS"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 12
    .line 13
    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenExtendedBrightnessMaximum:I

    .line 14
    .line 15
    const/16 v1, 0xff

    .line 16
    .line 17
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, -0x1

    .line 22
    if-eq p2, v1, :cond_1

    .line 23
    .line 24
    if-ltz p2, :cond_0

    .line 25
    .line 26
    if-gt p2, v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    const-string/jumbo p1, "setHdrBrightnessLimit : invalid upperLimit"

    .line 32
    .line 33
    .line 34
    invoke-static {p2, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p0

    .line 42
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 51
    .line 52
    .line 53
    move-result-wide v6

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 55
    .line 56
    move-object v1, p1

    .line 57
    move v2, p2

    .line 58
    move v3, p3

    .line 59
    invoke-static/range {v0 .. v5}, Lcom/android/server/power/PowerManagerService;->-$$Nest$msetHdrBrightnessLimitInternal(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 68
    .line 69
    .line 70
    throw p0
.end method

.method public final setLCDFlashMode(ZLandroid/os/IBinder;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[api] setLCDFlashMode: enable: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    const-string v2, "PowerManagerService"

    .line 13
    .line 14
    invoke-static {v2, v0, v1}, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    const-string v1, "android.permission.DEVICE_POWER"

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 28
    .line 29
    invoke-virtual {p0, p2, p1}, Lcom/android/server/power/PowerManagerService;->setLCDFlashModeInternal(Landroid/os/IBinder;Z)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final setLowPowerStandbyActiveDuringMaintenance(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "android.permission.DEVICE_POWER"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    const-string v1, "android.permission.MANAGE_LOW_POWER_STANDBY"

    .line 18
    .line 19
    const-string/jumbo v2, "setLowPowerStandbyActiveDuringMaintenance"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyController:Lcom/android/server/power/LowPowerStandbyController;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->setActiveDuringMaintenance(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 42
    .line 43
    .line 44
    throw p0
.end method

.method public final setLowPowerStandbyEnabled(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "android.permission.DEVICE_POWER"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    const-string v1, "android.permission.MANAGE_LOW_POWER_STANDBY"

    .line 18
    .line 19
    const-string/jumbo v2, "setLowPowerStandbyEnabled"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyController:Lcom/android/server/power/LowPowerStandbyController;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->setEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 42
    .line 43
    .line 44
    throw p0
.end method

.method public final setLowPowerStandbyPolicy(Landroid/os/IPowerManager$LowPowerStandbyPolicy;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "android.permission.DEVICE_POWER"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    const-string v1, "android.permission.MANAGE_LOW_POWER_STANDBY"

    .line 18
    .line 19
    const-string/jumbo v2, "setLowPowerStandbyPolicy"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyController:Lcom/android/server/power/LowPowerStandbyController;

    .line 32
    .line 33
    invoke-static {p1}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->fromParcelable(Landroid/os/IPowerManager$LowPowerStandbyPolicy;)Landroid/os/PowerManager$LowPowerStandbyPolicy;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->setPolicy(Landroid/os/PowerManager$LowPowerStandbyPolicy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    .line 47
    .line 48
    throw p0
.end method

.method public final setMasterBrightnessLimit(III)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "android.permission.CONTROL_DISPLAY_BRIGHTNESS"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 12
    .line 13
    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mScreenExtendedBrightnessMaximum:I

    .line 14
    .line 15
    const/16 v1, 0xff

    .line 16
    .line 17
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, -0x1

    .line 22
    if-eq p1, v1, :cond_1

    .line 23
    .line 24
    if-ltz p1, :cond_0

    .line 25
    .line 26
    if-gt p1, v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    const-string/jumbo p2, "setMasterBrightnessLimit : invalid lowerLimit : "

    .line 32
    .line 33
    .line 34
    invoke-static {p1, p2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p0

    .line 42
    :cond_1
    :goto_0
    if-eq p2, v1, :cond_3

    .line 43
    .line 44
    if-ltz p2, :cond_2

    .line 45
    .line 46
    if-gt p2, v0, :cond_2

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 50
    .line 51
    const-string/jumbo p1, "setMasterBrightnessLimit : invalid upperLimit"

    .line 52
    .line 53
    .line 54
    invoke-static {p2, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p0

    .line 62
    :cond_3
    :goto_1
    if-eq p1, v1, :cond_5

    .line 63
    .line 64
    if-eq p2, v1, :cond_5

    .line 65
    .line 66
    if-gt p1, p2, :cond_4

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 70
    .line 71
    const-string/jumbo p3, "setMasterBrightnessLimit : lowerLimit "

    .line 72
    .line 73
    .line 74
    const-string v0, " > upperLimit "

    .line 75
    .line 76
    invoke-static {p1, p2, p3, v0}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p0

    .line 84
    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 85
    .line 86
    const-string v0, "[api] setMasterBrightnessLimit : lowerLimit : "

    .line 87
    .line 88
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 89
    .line 90
    monitor-enter v2

    .line 91
    :try_start_0
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessLowerLimit:I

    .line 92
    .line 93
    iput p2, p0, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessUpperLimit:I

    .line 94
    .line 95
    iput p3, p0, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessLimitPeriod:I

    .line 96
    .line 97
    const/4 p3, 0x0

    .line 98
    invoke-static {p3}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString(Z)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    iput-object v3, p0, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessLimitLastCaller:Ljava/lang/String;

    .line 103
    .line 104
    const-string v3, "PowerManagerService"

    .line 105
    .line 106
    new-instance v4, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string p1, "  upperLimit : "

    .line 115
    .line 116
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string p1, "  mMasterBrightnessLimitPeriod : "

    .line 123
    .line 124
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessLimitPeriod:I

    .line 128
    .line 129
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-static {p3}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString(Z)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-static {v3, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessLimitPeriod:I

    .line 147
    .line 148
    if-lez p1, :cond_7

    .line 149
    .line 150
    const/4 p1, 0x1

    .line 151
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessLimitRunning:Z

    .line 152
    .line 153
    if-eq p2, v1, :cond_6

    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_6
    iget p2, p0, Lcom/android/server/power/PowerManagerService;->mScreenExtendedBrightnessMaximum:I

    .line 157
    .line 158
    :goto_3
    iput p2, p0, Lcom/android/server/power/PowerManagerService;->mTargetBrightnessForLimit:I

    .line 159
    .line 160
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mLastRequestedLimitationOfBrightness:I

    .line 161
    .line 162
    invoke-virtual {p0, p2, p1}, Lcom/android/server/power/PowerManagerService;->getStartingLimitationOfBrightness(II)I

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mLastRequestedLimitationOfBrightness:I

    .line 167
    .line 168
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    .line 169
    .line 170
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService;->mBrightnessLimitRunnable:Lcom/android/server/power/PowerManagerService$6;

    .line 171
    .line 172
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 173
    .line 174
    .line 175
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    .line 176
    .line 177
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService;->mBrightnessLimitRunnable:Lcom/android/server/power/PowerManagerService$6;

    .line 178
    .line 179
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    .line 180
    .line 181
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 185
    .line 186
    .line 187
    move-result-wide v0

    .line 188
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 189
    .line 190
    .line 191
    goto :goto_4

    .line 192
    :catchall_0
    move-exception p0

    .line 193
    goto :goto_5

    .line 194
    :cond_7
    iput-boolean p3, p0, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessLimitRunning:Z

    .line 195
    .line 196
    iput p2, p0, Lcom/android/server/power/PowerManagerService;->mLastRequestedLimitationOfBrightness:I

    .line 197
    .line 198
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    .line 199
    .line 200
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService;->mBrightnessLimitRunnable:Lcom/android/server/power/PowerManagerService$6;

    .line 201
    .line 202
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 203
    .line 204
    .line 205
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 206
    .line 207
    or-int/lit8 p1, p1, 0x20

    .line 208
    .line 209
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 210
    .line 211
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 212
    .line 213
    .line 214
    :goto_4
    monitor-exit v2

    .line 215
    return-void

    .line 216
    :goto_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    throw p0
.end method

.method public final setPowerBoost(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    const-string v1, "android.permission.DEVICE_POWER"

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v1, "[api] setPowerBoost(B) boost:"

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", durationMs:"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, ", caller"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    invoke-static {v1}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString(Z)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v1, "PowerManagerService"

    .line 52
    .line 53
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-static {p1, p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$smnativeSetPowerBoost(II)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final setPowerMode(IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    const-string v1, "android.permission.DEVICE_POWER"

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 17
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setPowerModeInternal(IZ)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final setPowerModeChecked(IZ)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const-string v1, "android.permission.DEVICE_POWER"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 18
    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setPowerModeInternal(IZ)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public final setPowerSaveModeEnabled(Z)Z
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[api] setPowerSaveModeEnabled: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    const-string v2, "PowerManagerService"

    .line 13
    .line 14
    invoke-static {v2, v0, v1}, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    const-string v2, "android.permission.POWER_SAVER"

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    const-string v2, "android.permission.DEVICE_POWER"

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 44
    .line 45
    invoke-static {p0, p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$msetLowPowerModeInternal(Lcom/android/server/power/PowerManagerService;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    return v1

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 54
    .line 55
    .line 56
    throw p0
.end method

.method public final setProximityDebounceTime(Landroid/os/IBinder;II)V
    .locals 3

    .line 1
    const-string v0, "PowerManagerService"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "[api] setProximityDebounceTime: Positive = "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, ", Negative = "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    const-string v1, "android.permission.WAKE_LOCK"

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    const-string v1, "android.permission.DEVICE_POWER"

    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    .line 50
    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 54
    .line 55
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_0

    .line 62
    .line 63
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->isSpeg(I)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    .line 73
    const-string p0, "SPEG"

    .line 74
    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string p2, "App "

    .line 78
    .line 79
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string p2, " tries to setProximityDebounceTime. Ignore"

    .line 90
    .line 91
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 103
    .line 104
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 105
    .line 106
    monitor-enter v0

    .line 107
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    check-cast p1, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 118
    .line 119
    iput p2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mProximityPositiveDebounce:I

    .line 120
    .line 121
    iput p3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mProximityNegativeDebounce:I

    .line 122
    .line 123
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 124
    .line 125
    or-int/lit8 p1, p1, 0x1

    .line 126
    .line 127
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 130
    .line 131
    .line 132
    monitor-exit v0

    .line 133
    return-void

    .line 134
    :catchall_0
    move-exception p0

    .line 135
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    throw p0

    .line 137
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 138
    .line 139
    const-string p1, "lock must not be null"

    .line 140
    .line 141
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw p0
.end method

.method public final setScreenBrightnessScaleFactor(FLandroid/os/IBinder;)V
    .locals 3

    .line 1
    const-string v0, "PowerManagerService"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "[api] setScreenBrightnessScaleFactor: scaleFactor: "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {v0, v1, v2}, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 15
    .line 16
    .line 17
    const/high16 v0, -0x40800000    # -1.0f

    .line 18
    .line 19
    cmpl-float v0, p1, v0

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    cmpg-float v0, p1, v0

    .line 25
    .line 26
    if-ltz v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    new-instance p2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string/jumbo v0, "setScreenBrightnessScaleFactor: scaleFactor:"

    .line 34
    .line 35
    .line 36
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p0

    .line 50
    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 51
    .line 52
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 53
    .line 54
    iget-object p2, p2, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 55
    .line 56
    const-string v0, "android.permission.DEVICE_POWER"

    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 63
    .line 64
    iget-object p2, p2, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 65
    .line 66
    monitor-enter p2

    .line 67
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 68
    .line 69
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessScaleFactor:F

    .line 70
    .line 71
    cmpl-float v0, p1, v0

    .line 72
    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessScaleFactor:F

    .line 76
    .line 77
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 78
    .line 79
    or-int/lit8 p1, p1, 0x20

    .line 80
    .line 81
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 84
    .line 85
    .line 86
    :cond_2
    monitor-exit p2

    .line 87
    return-void

    .line 88
    :catchall_0
    move-exception p0

    .line 89
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    throw p0

    .line 91
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 92
    .line 93
    const-string p1, "lock must not be null"

    .line 94
    .line 95
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p0
.end method

.method public final setScreenCurtainEnabled(Landroid/os/IBinder;ZI)V
    .locals 3

    .line 1
    const-string v0, "[api] setScreenCurtainEnabled: enable: "

    .line 2
    .line 3
    const-string v1, " state: "

    .line 4
    .line 5
    invoke-static {v0, v1, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p3}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, " token: "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-static {v1}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString(Z)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "PowerManagerService"

    .line 37
    .line 38
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    const-string v1, "android.permission.DEVICE_POWER"

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 56
    .line 57
    .line 58
    move-result-wide v1

    .line 59
    :try_start_0
    invoke-virtual {p0, v0, p3, p1, p2}, Lcom/android/server/power/PowerManagerService$BinderService;->setScreenCurtainEnabledInternal(IILandroid/os/IBinder;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 68
    .line 69
    .line 70
    throw p0
.end method

.method public final setScreenCurtainEnabledInternal(IILandroid/os/IBinder;Z)V
    .locals 4

    .line 1
    const-string/jumbo v0, "setScreenCurtainEnabledInternal: mSafeMode: "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 10
    .line 11
    iget-boolean v3, v2, Lcom/android/server/power/PowerManagerService;->mSafeMode:Z

    .line 12
    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    const-string p1, "PowerManagerService"

    .line 16
    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 23
    .line 24
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mSafeMode:Z

    .line 25
    .line 26
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    monitor-exit v1

    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, v2, Lcom/android/server/power/PowerManagerService;->mScreenCurtainController:Lcom/android/server/power/ScreenCurtainController;

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/power/ScreenCurtainController;->setScreenCurtainEnabledLocked(IILandroid/os/IBinder;Z)V

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 48
    .line 49
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 50
    .line 51
    or-int/lit8 p1, p1, 0x20

    .line 52
    .line 53
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 56
    .line 57
    .line 58
    :cond_1
    monitor-exit v1

    .line 59
    return-void

    .line 60
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p0
.end method

.method public final setStayOnSetting(I)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[api] setStayOnSetting: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {v1}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString(Z)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v2, "PowerManagerService"

    .line 24
    .line 25
    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 35
    .line 36
    iget-object v3, v3, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    invoke-static {v3, v0}, Landroid/provider/Settings;->getPackageNameForUid(Landroid/content/Context;I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    const/4 v5, 0x0

    .line 43
    invoke-static {v3, v0, v4, v5, v1}, Landroid/provider/Settings;->checkAndNoteWriteSettingsOperation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_0

    .line 48
    .line 49
    const-string p0, "[api] setStayOnSetting: checkAndNoteWriteSettingsOperation() false"

    .line 50
    .line 51
    invoke-static {v2, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 56
    .line 57
    .line 58
    move-result-wide v0

    .line 59
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    const-string/jumbo v2, "stay_on_while_plugged_in"

    .line 68
    .line 69
    .line 70
    invoke-static {p0, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    .line 73
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 79
    .line 80
    .line 81
    throw p0
.end method

.method public final shutdown(ZLjava/lang/String;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->-$$Nest$smcallerInfoWithProcessName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iput-object v1, v0, Lcom/android/server/power/PowerManagerService;->mShutdownOrRebootCaller:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v1, " shutdown"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, " reason: "

    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v2, " confirm: "

    .line 36
    .line 37
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v2, " wait: "

    .line 53
    .line 54
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 68
    .line 69
    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mShutdownOrRebootCaller:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v2, "[api] "

    .line 77
    .line 78
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {v0}, Lcom/android/server/power/Slog;->dk(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    if-nez p2, :cond_0

    .line 96
    .line 97
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 98
    .line 99
    iget-object p2, p2, Lcom/android/server/power/PowerManagerService;->mShutdownOrRebootCaller:Ljava/lang/String;

    .line 100
    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 102
    .line 103
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 104
    .line 105
    const-string v1, "android.permission.REBOOT"

    .line 106
    .line 107
    const/4 v2, 0x0

    .line 108
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    sget-object v1, Lcom/android/server/power/ShutdownCheckPoints;->INSTANCE:Lcom/android/server/power/ShutdownCheckPoints;

    .line 116
    .line 117
    invoke-virtual {v1, v0, p2}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPointInternal(ILjava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 121
    .line 122
    .line 123
    move-result-wide v0

    .line 124
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 125
    .line 126
    const/4 v2, 0x0

    .line 127
    invoke-static {p0, v2, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mshutdownOrRebootInternal(Lcom/android/server/power/PowerManagerService;IZLjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    .line 129
    .line 130
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :catchall_0
    move-exception p0

    .line 135
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 136
    .line 137
    .line 138
    throw p0
.end method

.method public final suppressAmbientDisplay(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "android.permission.WRITE_DREAM_STATE"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mAmbientDisplaySuppressionController:Lcom/android/server/power/AmbientDisplaySuppressionController;

    .line 22
    .line 23
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/power/AmbientDisplaySuppressionController;->suppress(ILjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 32
    .line 33
    .line 34
    throw p0
.end method

.method public final switchForceLcdBacklightOffState()V
    .locals 4

    .line 1
    const-string v0, "PowerManagerService"

    .line 2
    .line 3
    const-string v1, "[api] switchForceLcdBacklightOffState()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    const-string v1, "android.permission.DEVICE_POWER"

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/android/server/power/PowerGroup;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 32
    .line 33
    iget-object v2, v2, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 34
    .line 35
    monitor-enter v2

    .line 36
    :try_start_0
    iget-boolean v3, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceLcdBacklightOffEnabled:Z

    .line 37
    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    iput-boolean v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceLcdBacklightOffEnabled:Z

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    const/4 v1, 0x1

    .line 46
    iput-boolean v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceLcdBacklightOffEnabled:Z

    .line 47
    .line 48
    :goto_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 49
    .line 50
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 51
    .line 52
    or-int/lit8 v0, v0, 0x20

    .line 53
    .line 54
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 57
    .line 58
    .line 59
    monitor-exit v2

    .line 60
    return-void

    .line 61
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    throw p0
.end method

.method public final updateCoverState(Z)V
    .locals 9

    .line 1
    const-string/jumbo v0, "updateCoverState called on closed = "

    .line 2
    .line 3
    .line 4
    const-string v1, "PowerManagerService"

    .line 5
    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v3, "[api] updateCoverState: closed: "

    .line 9
    .line 10
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v1

    .line 28
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 29
    .line 30
    iput-boolean p1, v2, Lcom/android/server/power/PowerManagerService;->mIsCoverClosed:Z

    .line 31
    .line 32
    iget-boolean v3, v2, Lcom/android/server/power/PowerManagerService;->mCoverAuthReady:Z

    .line 33
    .line 34
    if-nez v3, :cond_0

    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    iput-boolean v3, v2, Lcom/android/server/power/PowerManagerService;->mCoverAuthReady:Z

    .line 38
    .line 39
    iget-object v3, v2, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    .line 40
    .line 41
    iget-object v2, v2, Lcom/android/server/power/PowerManagerService;->mCoverAuthReadyRunnable:Ljava/lang/Runnable;

    .line 42
    .line 43
    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    iput-object v3, v2, Lcom/android/server/power/PowerManagerService;->mCoverAuthReadyRunnable:Ljava/lang/Runnable;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 55
    .line 56
    iget v3, v2, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 57
    .line 58
    or-int/lit8 v3, v3, 0x20

    .line 59
    .line 60
    iput v3, v2, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 61
    .line 62
    iget-object v2, v2, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 68
    .line 69
    .line 70
    move-result-wide v7

    .line 71
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 72
    .line 73
    iput-wide v7, v2, Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverStateTime:J

    .line 74
    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iput-object p1, v2, Lcom/android/server/power/PowerManagerService;->mlastUpdateCoverStateReason:Ljava/lang/String;

    .line 88
    .line 89
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 90
    .line 91
    const/4 v5, 0x0

    .line 92
    const/16 v6, 0x3e8

    .line 93
    .line 94
    const/4 v4, 0x0

    .line 95
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(IIIJ)Z

    .line 96
    .line 97
    .line 98
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 101
    .line 102
    .line 103
    monitor-exit v1

    .line 104
    return-void

    .line 105
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    throw p0
.end method

.method public final updateWakeLockCallback(Landroid/os/IBinder;Landroid/os/IWakeLockCallback;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string v1, "android.permission.WAKE_LOCK"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 22
    .line 23
    invoke-static {p0, p1, p2, v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mupdateWakeLockCallbackInternal(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;Landroid/os/IWakeLockCallback;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 32
    .line 33
    .line 34
    throw p0

    .line 35
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    const-string p1, "lock must not be null"

    .line 38
    .line 39
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p0
.end method

.method public final updateWakeLockUids(Landroid/os/IBinder;[I)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    new-instance v1, Landroid/os/WorkSource;

    .line 5
    .line 6
    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    .line 7
    .line 8
    .line 9
    array-length v2, p2

    .line 10
    const/4 v3, 0x0

    .line 11
    :goto_0
    if-ge v3, v2, :cond_1

    .line 12
    .line 13
    aget v4, p2, v3

    .line 14
    .line 15
    invoke-virtual {v1, v4}, Landroid/os/WorkSource;->add(I)Z

    .line 16
    .line 17
    .line 18
    add-int/lit8 v3, v3, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v1, v0

    .line 22
    :cond_1
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/power/PowerManagerService$BinderService;->updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final updateWakeLockUidsAsync(Landroid/os/IBinder;[I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/PowerManagerService$BinderService;->updateWakeLockUids(Landroid/os/IBinder;[I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string v1, "android.permission.WAKE_LOCK"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/os/WorkSource;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object p2, v2

    .line 32
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 41
    .line 42
    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mupdateWakeLockWorkSourceInternal(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 55
    .line 56
    const-string p1, "lock must not be null"

    .line 57
    .line 58
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p0
.end method

.method public final userActivity(IJII)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "Ignoring call to PowerManager.userActivity() because the caller does not have DEVICE_POWER or USER_ACTIVITY permission.  Please fix your app!   pid="

    .line 3
    .line 4
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 5
    .line 6
    iget-object v2, v2, Lcom/android/server/power/PowerManagerService;->mIsUserActivityInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    const-string v2, "PowerManagerService"

    .line 16
    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v4, "[api] userActivity : "

    .line 20
    .line 21
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p4}, Landroid/os/PowerManager;->userActivityEventToString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    if-nez p5, :cond_0

    .line 32
    .line 33
    const-string v4, ""

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-string v4, ","

    .line 37
    .line 38
    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-static {p5}, Landroid/os/PowerManager;->userActivityFlagsToString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString(Z)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v4, " displayId="

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v4, " eventTime="

    .line 64
    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 79
    .line 80
    iget-object v3, v2, Lcom/android/server/power/PowerManagerService;->mHandlerPmsMisc:Landroid/os/Handler;

    .line 81
    .line 82
    new-instance v4, Lcom/android/server/power/PowerManagerService$LocalService$$ExternalSyntheticLambda0;

    .line 83
    .line 84
    invoke-direct {v4, v0, p0}, Lcom/android/server/power/PowerManagerService$LocalService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, v2, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 93
    .line 94
    .line 95
    move-result-wide v5

    .line 96
    const-wide/16 v7, 0x3e8

    .line 97
    .line 98
    add-long/2addr v5, v7

    .line 99
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 100
    .line 101
    .line 102
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 103
    .line 104
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 110
    .line 111
    .line 112
    move-result-wide v2

    .line 113
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 114
    .line 115
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 116
    .line 117
    const-string v4, "android.permission.DEVICE_POWER"

    .line 118
    .line 119
    invoke-virtual {v0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_3

    .line 124
    .line 125
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 126
    .line 127
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 128
    .line 129
    const-string v4, "android.permission.USER_ACTIVITY"

    .line 130
    .line 131
    invoke-virtual {v0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-eqz v0, :cond_3

    .line 136
    .line 137
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 138
    .line 139
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 140
    .line 141
    monitor-enter v0

    .line 142
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 143
    .line 144
    iget-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    .line 145
    .line 146
    const-wide/32 p3, 0x493e0

    .line 147
    .line 148
    .line 149
    add-long/2addr p1, p3

    .line 150
    cmp-long p1, v2, p1

    .line 151
    .line 152
    if-ltz p1, :cond_2

    .line 153
    .line 154
    iput-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    .line 155
    .line 156
    const-string p0, "PowerManagerService"

    .line 157
    .line 158
    new-instance p1, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 164
    .line 165
    .line 166
    move-result p2

    .line 167
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string p2, " uid="

    .line 171
    .line 172
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 176
    .line 177
    .line 178
    move-result p2

    .line 179
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    goto :goto_1

    .line 190
    :catchall_0
    move-exception p0

    .line 191
    goto :goto_2

    .line 192
    :cond_2
    :goto_1
    monitor-exit v0

    .line 193
    return-void

    .line 194
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    throw p0

    .line 196
    :cond_3
    cmp-long v0, p2, v2

    .line 197
    .line 198
    if-lez v0, :cond_4

    .line 199
    .line 200
    const-string p0, "PowerManagerService"

    .line 201
    .line 202
    const-string v0, "Event cannot be newer than the current time (now="

    .line 203
    .line 204
    const-string v1, ", eventTime="

    .line 205
    .line 206
    invoke-static {v0, v2, v3, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string p2, ", displayId="

    .line 214
    .line 215
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const-string p1, ", event="

    .line 222
    .line 223
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-static {p4}, Landroid/os/PowerManager;->userActivityEventToString(I)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    const-string p1, ", flags="

    .line 234
    .line 235
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    const-string p1, ")"

    .line 242
    .line 243
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    sget p2, Lcom/android/server/power/Slog;->$r8$clinit:I

    .line 251
    .line 252
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .line 254
    .line 255
    return-void

    .line 256
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 257
    .line 258
    .line 259
    move-result v4

    .line 260
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 261
    .line 262
    .line 263
    move-result-wide v7

    .line 264
    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 265
    .line 266
    move v1, p1

    .line 267
    move v2, p4

    .line 268
    move v3, p5

    .line 269
    move-wide v5, p2

    .line 270
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityInternal(IIIIJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 271
    .line 272
    .line 273
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 274
    .line 275
    .line 276
    return-void

    .line 277
    :catchall_1
    move-exception p0

    .line 278
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 279
    .line 280
    .line 281
    throw p0
.end method

.method public final wakeUp(JILjava/lang/String;Ljava/lang/String;)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-wide v2, p1

    .line 3
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v4

    .line 14
    cmp-long v1, v2, v4

    .line 15
    .line 16
    if-gtz v1, :cond_2

    .line 17
    .line 18
    const-string v1, "PowerManagerService"

    .line 19
    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v5, "[api] wakeUp"

    .line 23
    .line 24
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    invoke-static {v5}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString(Z)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v6, " eventTime = "

    .line 36
    .line 37
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 51
    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v6, " wakeUp: "

    .line 55
    .line 56
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    if-nez p3, :cond_0

    .line 60
    .line 61
    const/4 v6, 0x1

    .line 62
    invoke-static {v6}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString(Z)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    invoke-static {v5}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString(Z)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    :goto_0
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    iput-object v4, v1, Lcom/android/server/power/PowerManagerService;->mScreenOnReason:Ljava/lang/String;

    .line 79
    .line 80
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 81
    .line 82
    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 83
    .line 84
    const-string v4, "android.permission.DEVICE_POWER"

    .line 85
    .line 86
    const/4 v6, 0x0

    .line 87
    invoke-virtual {v1, v4, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 95
    .line 96
    .line 97
    move-result-wide v10

    .line 98
    :try_start_0
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 99
    .line 100
    iget-object v12, v1, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 101
    .line 102
    monitor-enter v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 103
    :try_start_1
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 104
    .line 105
    iget-boolean v1, v0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    .line 106
    .line 107
    if-nez v1, :cond_1

    .line 108
    .line 109
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->sQuiescent:Z

    .line 110
    .line 111
    if-eqz v1, :cond_1

    .line 112
    .line 113
    iget v1, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 114
    .line 115
    or-int/lit16 v1, v1, 0x1000

    .line 116
    .line 117
    iput v1, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 120
    .line 121
    .line 122
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :catchall_0
    move-exception v0

    .line 128
    goto :goto_1

    .line 129
    :cond_1
    :try_start_2
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    .line 130
    .line 131
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    check-cast v1, Lcom/android/server/power/PowerGroup;

    .line 136
    .line 137
    const/4 v9, 0x0

    .line 138
    move-wide v2, p1

    .line 139
    move/from16 v4, p3

    .line 140
    .line 141
    move-object/from16 v5, p4

    .line 142
    .line 143
    move v6, v8

    .line 144
    move-object/from16 v7, p5

    .line 145
    .line 146
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/power/PowerManagerService;->wakePowerGroupLocked(Lcom/android/server/power/PowerGroup;JILjava/lang/String;ILjava/lang/String;IZ)V

    .line 147
    .line 148
    .line 149
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :goto_1
    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 155
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 156
    :catchall_1
    move-exception v0

    .line 157
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 158
    .line 159
    .line 160
    throw v0

    .line 161
    :cond_2
    const-string v0, "PowerManagerService"

    .line 162
    .line 163
    const-string v1, "Event time "

    .line 164
    .line 165
    const-string v6, " cannot be newer than "

    .line 166
    .line 167
    invoke-static {v1, p1, p2, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 182
    .line 183
    const-string v1, "event time must not be in the future"

    .line 184
    .line 185
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw v0
.end method
