.class public final Lcom/android/server/DeviceIdleController$BinderService;
.super Landroid/os/IDeviceIdleController$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    .line 3
    invoke-direct {p0}, Landroid/os/IDeviceIdleController$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final addPowerSaveTempWhitelistApp(Ljava/lang/String;JIILjava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    .line 3
    move v1, p4

    .line 4
    move v2, p5

    .line 5
    move-object v3, p1

    .line 6
    move-object v4, p6

    .line 7
    move-wide v5, p2

    .line 8
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempAllowlistAppChecked(IILjava/lang/String;Ljava/lang/String;J)V

    .line 11
    return-void
.end method

.method public final addPowerSaveTempWhitelistAppForMms(Ljava/lang/String;IILjava/lang/String;)J
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    .line 3
    iget-object p0, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 5
    iget-wide v7, p0, Lcom/android/server/DeviceIdleController$Constants;->MMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    .line 7
    move v1, p2

    .line 8
    move v2, p3

    .line 9
    move-object v3, p1

    .line 10
    move-object v4, p4

    .line 11
    move-wide v5, v7

    .line 12
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempAllowlistAppChecked(IILjava/lang/String;Ljava/lang/String;J)V

    .line 15
    return-wide v7
.end method

.method public final addPowerSaveTempWhitelistAppForSms(Ljava/lang/String;IILjava/lang/String;)J
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    .line 3
    iget-object p0, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 5
    iget-wide v7, p0, Lcom/android/server/DeviceIdleController$Constants;->SMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    .line 7
    move v1, p2

    .line 8
    move v2, p3

    .line 9
    move-object v3, p1

    .line 10
    move-object v4, p4

    .line 11
    move-wide v5, v7

    .line 12
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempAllowlistAppChecked(IILjava/lang/String;Ljava/lang/String;J)V

    .line 15
    return-wide v7
.end method

.method public final addPowerSaveWhitelistApp(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v0, "addPowerSaveWhitelistApp(name = "

    .line 7
    const-string v1, ")"

    .line 9
    const-string v2, "DeviceIdleController"

    .line 11
    invoke-static {v0, p1, v1, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController$BinderService;->addPowerSaveWhitelistApps(Ljava/util/List;)I

    .line 21
    return-void
.end method

.method public final addPowerSaveWhitelistApps(Ljava/util/List;)I
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "addPowerSaveWhitelistApps(name = "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ")"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    const-string v1, "DeviceIdleController"

    .line 22
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    .line 27
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 30
    move-result-object v0

    .line 31
    const-string v1, "android.permission.DEVICE_POWER"

    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance v0, Lcom/android/server/DeviceIdleController$TargetPkg;

    .line 39
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    .line 41
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 44
    move-result v2

    .line 45
    invoke-direct {v0, v1, v2}, Lcom/android/server/DeviceIdleController$TargetPkg;-><init>(Lcom/android/server/DeviceIdleController;I)V

    .line 48
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 51
    move-result-wide v1

    .line 52
    :try_start_0
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    .line 54
    const/4 v3, 0x0

    .line 55
    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/DeviceIdleController;->addPowerSaveWhitelistAppsInternal(Ljava/util/List;ILcom/android/server/DeviceIdleController$TargetPkg;)I

    .line 58
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 62
    return p0

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 67
    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "DeviceIdleController"

    .line 9
    invoke-static {v0, v1, p2}, Lcom/android/internal/util/jobs/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 15
    goto/16 :goto_14

    .line 17
    :cond_0
    const/4 v0, 0x1

    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz p3, :cond_6

    .line 21
    move v2, v1

    .line 22
    move v3, v2

    .line 23
    :goto_0
    array-length v4, p3

    .line 24
    if-ge v2, v4, :cond_6

    .line 26
    aget-object v4, p3, v2

    .line 28
    const-string v5, "-h"

    .line 30
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result v5

    .line 34
    if-eqz v5, :cond_1

    .line 36
    invoke-static {p2}, Lcom/android/server/DeviceIdleController;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 39
    goto/16 :goto_14

    .line 41
    :cond_1
    const-string v5, "-u"

    .line 43
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_2

    .line 49
    add-int/lit8 v2, v2, 0x1

    .line 51
    array-length v4, p3

    .line 52
    if-ge v2, v4, :cond_3

    .line 54
    aget-object v3, p3, v2

    .line 56
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 59
    move-result v3

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const-string v5, "-a"

    .line 63
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    move-result v5

    .line 67
    if-eqz v5, :cond_4

    .line 69
    :cond_3
    :goto_1
    add-int/2addr v2, v0

    .line 70
    goto :goto_0

    .line 71
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 74
    move-result v0

    .line 75
    if-lez v0, :cond_5

    .line 77
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    .line 80
    move-result v0

    .line 81
    const/16 v5, 0x2d

    .line 83
    if-ne v0, v5, :cond_5

    .line 85
    const-string p0, "Unknown option: "

    .line 87
    invoke-virtual {p0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    goto/16 :goto_14

    .line 96
    :cond_5
    new-instance v0, Lcom/android/server/DeviceIdleController$Shell;

    .line 98
    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$Shell;-><init>(Lcom/android/server/DeviceIdleController;)V

    .line 101
    iput v3, v0, Lcom/android/server/DeviceIdleController$Shell;->userId:I

    .line 103
    array-length p2, p3

    .line 104
    sub-int/2addr p2, v2

    .line 105
    new-array v5, p2, [Ljava/lang/String;

    .line 107
    array-length p2, p3

    .line 108
    sub-int/2addr p2, v2

    .line 109
    invoke-static {p3, v2, v5, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mBinderService:Lcom/android/server/DeviceIdleController$BinderService;

    .line 114
    new-instance v7, Landroid/os/ResultReceiver;

    .line 116
    const/4 p0, 0x0

    .line 117
    invoke-direct {v7, p0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 120
    const/4 v4, 0x0

    .line 121
    const/4 v6, 0x0

    .line 122
    const/4 v2, 0x0

    .line 123
    move-object v3, p1

    .line 124
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 127
    goto/16 :goto_14

    .line 129
    :cond_6
    monitor-enter p0

    .line 130
    :try_start_0
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 132
    invoke-virtual {p1, p2}, Lcom/android/server/DeviceIdleController$Constants;->dump(Ljava/io/PrintWriter;)V

    .line 135
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    .line 137
    aget p1, p1, v1

    .line 139
    if-eqz p1, :cond_e

    .line 141
    const-string p1, "  Idling history:"

    .line 143
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 149
    move-result-wide v2

    .line 150
    const/16 p1, 0x63

    .line 152
    :goto_2
    if-ltz p1, :cond_e

    .line 154
    iget-object p3, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    .line 156
    aget p3, p3, p1

    .line 158
    if-nez p3, :cond_7

    .line 160
    goto :goto_4

    .line 161
    :cond_7
    if-eq p3, v0, :cond_c

    .line 163
    const/4 v4, 0x2

    .line 164
    if-eq p3, v4, :cond_b

    .line 166
    const/4 v4, 0x3

    .line 167
    if-eq p3, v4, :cond_a

    .line 169
    const/4 v4, 0x4

    .line 170
    if-eq p3, v4, :cond_9

    .line 172
    const/4 v4, 0x5

    .line 173
    if-eq p3, v4, :cond_8

    .line 175
    const-string p3, "         ??"

    .line 177
    goto :goto_3

    .line 178
    :catchall_0
    move-exception p1

    .line 179
    goto/16 :goto_15

    .line 181
    :cond_8
    const-string p3, " deep-maint"

    .line 183
    goto :goto_3

    .line 184
    :cond_9
    const-string p3, "  deep-idle"

    .line 186
    goto :goto_3

    .line 187
    :cond_a
    const-string/jumbo p3, "light-maint"

    .line 190
    goto :goto_3

    .line 191
    :cond_b
    const-string p3, " light-idle"

    .line 193
    goto :goto_3

    .line 194
    :cond_c
    const-string p3, "     normal"

    .line 196
    :goto_3
    const-string v4, "    "

    .line 198
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 204
    const-string p3, ": "

    .line 206
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 209
    iget-object p3, p0, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    .line 211
    aget-wide v4, p3, p1

    .line 213
    invoke-static {v4, v5, v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 216
    iget-object p3, p0, Lcom/android/server/DeviceIdleController;->mEventReasons:[Ljava/lang/String;

    .line 218
    aget-object p3, p3, p1

    .line 220
    if-eqz p3, :cond_d

    .line 222
    const-string p3, " ("

    .line 224
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 227
    iget-object p3, p0, Lcom/android/server/DeviceIdleController;->mEventReasons:[Ljava/lang/String;

    .line 229
    aget-object p3, p3, p1

    .line 231
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 234
    const-string p3, ")"

    .line 236
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 239
    :cond_d
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 242
    :goto_4
    add-int/lit8 p1, p1, -0x1

    .line 244
    goto :goto_2

    .line 245
    :cond_e
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    .line 247
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 250
    move-result p1

    .line 251
    if-lez p1, :cond_f

    .line 253
    const-string p3, "  Whitelist (except idle) system apps:"

    .line 255
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 258
    move p3, v1

    .line 259
    :goto_5
    if-ge p3, p1, :cond_f

    .line 261
    const-string v2, "    "

    .line 263
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 266
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    .line 268
    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 271
    move-result-object v2

    .line 272
    check-cast v2, Ljava/lang/String;

    .line 274
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    add-int/lit8 p3, p3, 0x1

    .line 279
    goto :goto_5

    .line 280
    :cond_f
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    .line 282
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 285
    move-result p1

    .line 286
    if-lez p1, :cond_10

    .line 288
    const-string p3, "  Whitelist system apps:"

    .line 290
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 293
    move p3, v1

    .line 294
    :goto_6
    if-ge p3, p1, :cond_10

    .line 296
    const-string v2, "    "

    .line 298
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 301
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    .line 303
    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 306
    move-result-object v2

    .line 307
    check-cast v2, Ljava/lang/String;

    .line 309
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 312
    add-int/lit8 p3, p3, 0x1

    .line 314
    goto :goto_6

    .line 315
    :cond_10
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    .line 317
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 320
    move-result p1

    .line 321
    if-lez p1, :cond_11

    .line 323
    const-string p3, "  Removed from whitelist system apps:"

    .line 325
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    move p3, v1

    .line 329
    :goto_7
    if-ge p3, p1, :cond_11

    .line 331
    const-string v2, "    "

    .line 333
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 336
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    .line 338
    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 341
    move-result-object v2

    .line 342
    check-cast v2, Ljava/lang/String;

    .line 344
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 347
    add-int/lit8 p3, p3, 0x1

    .line 349
    goto :goto_7

    .line 350
    :cond_11
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 352
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 355
    move-result p1

    .line 356
    if-lez p1, :cond_12

    .line 358
    const-string p3, "  Whitelist user apps:"

    .line 360
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 363
    move p3, v1

    .line 364
    :goto_8
    if-ge p3, p1, :cond_12

    .line 366
    const-string v2, "    "

    .line 368
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 371
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 373
    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 376
    move-result-object v2

    .line 377
    check-cast v2, Ljava/lang/String;

    .line 379
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 382
    add-int/lit8 p3, p3, 0x1

    .line 384
    goto :goto_8

    .line 385
    :cond_12
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    .line 387
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    .line 390
    move-result p1

    .line 391
    if-lez p1, :cond_13

    .line 393
    const-string p3, "  Whitelist (except idle) all app ids:"

    .line 395
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 398
    move p3, v1

    .line 399
    :goto_9
    if-ge p3, p1, :cond_13

    .line 401
    const-string v2, "    "

    .line 403
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 406
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    .line 408
    invoke-virtual {v2, p3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 411
    move-result v2

    .line 412
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 415
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 418
    add-int/lit8 p3, p3, 0x1

    .line 420
    goto :goto_9

    .line 421
    :cond_13
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

    .line 423
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    .line 426
    move-result p1

    .line 427
    if-lez p1, :cond_14

    .line 429
    const-string p3, "  Whitelist user app ids:"

    .line 431
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 434
    move p3, v1

    .line 435
    :goto_a
    if-ge p3, p1, :cond_14

    .line 437
    const-string v2, "    "

    .line 439
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 442
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

    .line 444
    invoke-virtual {v2, p3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 447
    move-result v2

    .line 448
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 451
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 454
    add-int/lit8 p3, p3, 0x1

    .line 456
    goto :goto_a

    .line 457
    :cond_14
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    .line 459
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    .line 462
    move-result p1

    .line 463
    if-lez p1, :cond_15

    .line 465
    const-string p3, "  Whitelist all app ids:"

    .line 467
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 470
    move p3, v1

    .line 471
    :goto_b
    if-ge p3, p1, :cond_15

    .line 473
    const-string v2, "    "

    .line 475
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 478
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    .line 480
    invoke-virtual {v2, p3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 483
    move-result v2

    .line 484
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 487
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 490
    add-int/lit8 p3, p3, 0x1

    .line 492
    goto :goto_b

    .line 493
    :cond_15
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mAllowlistHistoryInfo:Lcom/android/internal/util/RingBuffer;

    .line 495
    invoke-virtual {p1}, Lcom/android/internal/util/RingBuffer;->size()I

    .line 498
    move-result p1

    .line 499
    if-lez p1, :cond_16

    .line 501
    const-string p3, "  Allowlist History:"

    .line 503
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 506
    new-instance p3, Ljava/lang/StringBuilder;

    .line 508
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 511
    const-string v2, "  - history count : "

    .line 513
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 522
    move-result-object p3

    .line 523
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 526
    iget-object p3, p0, Lcom/android/server/DeviceIdleController;->mAllowlistHistoryInfo:Lcom/android/internal/util/RingBuffer;

    .line 528
    invoke-virtual {p3}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    .line 531
    move-result-object p3

    .line 532
    check-cast p3, [Lcom/android/server/DeviceIdleController$AllowlistHistoryInfo;

    .line 534
    move v2, v1

    .line 535
    :goto_c
    if-ge v2, p1, :cond_16

    .line 537
    const-string v3, "    "

    .line 539
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 542
    aget-object v3, p3, v2

    .line 544
    invoke-virtual {v3}, Lcom/android/server/DeviceIdleController$AllowlistHistoryInfo;->toString()Ljava/lang/String;

    .line 547
    move-result-object v3

    .line 548
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 551
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 554
    add-int/lit8 v2, v2, 0x1

    .line 556
    goto :goto_c

    .line 557
    :cond_16
    invoke-virtual {p0, p2, v0}, Lcom/android/server/DeviceIdleController;->dumpTempWhitelistScheduleLocked(Ljava/io/PrintWriter;Z)V

    .line 560
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    .line 562
    if-eqz p1, :cond_17

    .line 564
    array-length p1, p1

    .line 565
    goto :goto_d

    .line 566
    :cond_17
    move p1, v1

    .line 567
    :goto_d
    if-lez p1, :cond_18

    .line 569
    const-string p3, "  Temp whitelist app ids:"

    .line 571
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 574
    move p3, v1

    .line 575
    :goto_e
    if-ge p3, p1, :cond_18

    .line 577
    const-string v0, "    "

    .line 579
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    .line 584
    aget v0, v0, p3

    .line 586
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 589
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 592
    add-int/lit8 p3, p3, 0x1

    .line 594
    goto :goto_e

    .line 595
    :cond_18
    const-string p1, "  Doze Allowlist Gatekeeper: false"

    .line 597
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 600
    const-string p1, "  mLightEnabled="

    .line 602
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 605
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    .line 607
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    .line 610
    const-string p1, "  mDeepEnabled="

    .line 612
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 615
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    .line 617
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 620
    const-string p1, "  mForceIdle="

    .line 622
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 625
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 627
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 630
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 632
    if-eqz p1, :cond_19

    .line 634
    const-string p1, " mForceType="

    .line 636
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 639
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mForceType:Ljava/lang/String;

    .line 641
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 644
    :cond_19
    const-string p1, "  mUseMotionSensor="

    .line 646
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 649
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mUseMotionSensor:Z

    .line 651
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    .line 654
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mUseMotionSensor:Z

    .line 656
    if-eqz p1, :cond_1a

    .line 658
    const-string p1, " mMotionSensor="

    .line 660
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 663
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    .line 665
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 668
    goto :goto_f

    .line 669
    :cond_1a
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 672
    :goto_f
    const-string p1, "  mScreenOn="

    .line 674
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 677
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    .line 679
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 682
    const-string p1, "  mScreenLocked="

    .line 684
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 687
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    .line 689
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 692
    const-string p1, "  mNetworkConnected="

    .line 694
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 697
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    .line 699
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 702
    const-string p1, "  mCharging="

    .line 704
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 707
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    .line 709
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 712
    const-string p1, "  activeEmergencyCall="

    .line 714
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 717
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mEmergencyCallListener:Lcom/android/server/DeviceIdleController$EmergencyCallListener;

    .line 719
    iget-boolean p1, p1, Lcom/android/server/DeviceIdleController$EmergencyCallListener;->mIsEmergencyCallActive:Z

    .line 721
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 724
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    .line 726
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 729
    move-result p1

    .line 730
    if-eqz p1, :cond_1d

    .line 732
    const-string p1, "  mConstraints={"

    .line 734
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 737
    :goto_10
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    .line 739
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 742
    move-result p1

    .line 743
    if-ge v1, p1, :cond_1c

    .line 745
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mConstraints:Landroid/util/ArrayMap;

    .line 747
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 750
    move-result-object p1

    .line 751
    check-cast p1, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;

    .line 753
    const-string p3, "    \""

    .line 755
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 758
    iget-object p3, p1, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->name:Ljava/lang/String;

    .line 760
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 763
    const-string p3, "\"="

    .line 765
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 768
    iget p3, p1, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->minState:I

    .line 770
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 772
    if-ne p3, v0, :cond_1b

    .line 774
    iget-boolean p1, p1, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->active:Z

    .line 776
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 779
    goto :goto_11

    .line 780
    :cond_1b
    const-string/jumbo p3, "ignored <mMinState="

    .line 783
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 786
    iget p1, p1, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->minState:I

    .line 788
    invoke-static {p1}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    .line 791
    move-result-object p1

    .line 792
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 795
    const-string p1, ">"

    .line 797
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 800
    :goto_11
    add-int/lit8 v1, v1, 0x1

    .line 802
    goto :goto_10

    .line 803
    :cond_1c
    const-string p1, "  }"

    .line 805
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 808
    :cond_1d
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mUseMotionSensor:Z

    .line 810
    if-nez p1, :cond_1e

    .line 812
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    .line 814
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 817
    move-result p1

    .line 818
    if-lez p1, :cond_1f

    .line 820
    :cond_1e
    const-string p1, "  mMotionActive="

    .line 822
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 825
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    .line 827
    iget-boolean p1, p1, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    .line 829
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 832
    const-string p1, "  mNotMoving="

    .line 834
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 837
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    .line 839
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 842
    const-string p1, "  mMotionListener.activatedTimeElapsed="

    .line 844
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 847
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    .line 849
    iget-wide v0, p1, Lcom/android/server/DeviceIdleController$MotionListener;->activatedTimeElapsed:J

    .line 851
    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 854
    const-string p1, "  mLastMotionEventElapsed="

    .line 856
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 859
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mLastMotionEventElapsed:J

    .line 861
    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 864
    const-string p1, "  "

    .line 866
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 869
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    .line 871
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 874
    move-result p1

    .line 875
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 878
    const-string p1, " stationary listeners registered"

    .line 880
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 883
    :cond_1f
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mIsLocationPrefetchEnabled:Z

    .line 885
    if-eqz p1, :cond_21

    .line 887
    const-string p1, "  mLocating="

    .line 889
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 892
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    .line 894
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    .line 897
    const-string p1, " mHasGps="

    .line 899
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 902
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    .line 904
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    .line 907
    const-string p1, " mHasFused="

    .line 909
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 912
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mHasFusedLocation:Z

    .line 914
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    .line 917
    const-string p1, " mLocated="

    .line 919
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 922
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    .line 924
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 927
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    .line 929
    if-eqz p1, :cond_20

    .line 931
    const-string p1, "  mLastGenericLocation="

    .line 933
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 936
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    .line 938
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 941
    :cond_20
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    .line 943
    if-eqz p1, :cond_22

    .line 945
    const-string p1, "  mLastGpsLocation="

    .line 947
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 950
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    .line 952
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 955
    goto :goto_12

    .line 956
    :cond_21
    const-string p1, "  Location prefetching disabled"

    .line 958
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 961
    :cond_22
    :goto_12
    const-string p1, "  mState="

    .line 963
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 966
    iget p1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 968
    invoke-static {p1}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    .line 971
    move-result-object p1

    .line 972
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 975
    const-string p1, " mLightState="

    .line 977
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 980
    iget p1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 982
    invoke-static {p1}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    .line 985
    move-result-object p1

    .line 986
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 989
    const-string p1, "  mInactiveTimeout="

    .line 991
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 994
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    .line 996
    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 999
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1002
    iget p1, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 1004
    if-eqz p1, :cond_23

    .line 1006
    const-string p1, "  mActiveIdleOpCount="

    .line 1008
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1011
    iget p1, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 1013
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    .line 1016
    :cond_23
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    .line 1018
    const-wide/16 v2, 0x0

    .line 1020
    cmp-long p1, v0, v2

    .line 1022
    if-eqz p1, :cond_24

    .line 1024
    const-string p1, "  mNextAlarmTime="

    .line 1026
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1029
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    .line 1031
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1034
    move-result-wide v4

    .line 1035
    invoke-static {v0, v1, v4, v5, p2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1038
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1041
    :cond_24
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 1043
    cmp-long p1, v0, v2

    .line 1045
    if-eqz p1, :cond_25

    .line 1047
    const-string p1, "  mNextIdlePendingDelay="

    .line 1049
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1052
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 1054
    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1057
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1060
    :cond_25
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 1062
    cmp-long p1, v0, v2

    .line 1064
    if-eqz p1, :cond_26

    .line 1066
    const-string p1, "  mNextIdleDelay="

    .line 1068
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1071
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 1073
    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1076
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1079
    :cond_26
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    .line 1081
    cmp-long p1, v0, v2

    .line 1083
    if-eqz p1, :cond_28

    .line 1085
    const-string p1, "  mNextLightIdleDelay="

    .line 1087
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1090
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    .line 1092
    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1095
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 1097
    iget-boolean p1, p1, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    .line 1099
    if-eqz p1, :cond_27

    .line 1101
    const-string p1, " (flex="

    .line 1103
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1106
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelayFlex:J

    .line 1108
    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1111
    const-string p1, ")"

    .line 1113
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1116
    goto :goto_13

    .line 1117
    :cond_27
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1120
    :cond_28
    :goto_13
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    .line 1122
    cmp-long p1, v0, v2

    .line 1124
    if-eqz p1, :cond_29

    .line 1126
    const-string p1, "  mNextLightAlarmTime="

    .line 1128
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1131
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    .line 1133
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1136
    move-result-wide v4

    .line 1137
    invoke-static {v0, v1, v4, v5, p2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1140
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1143
    :cond_29
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    .line 1145
    cmp-long p1, v0, v2

    .line 1147
    if-eqz p1, :cond_2a

    .line 1149
    const-string p1, "  mCurLightIdleBudget="

    .line 1151
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1154
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mCurLightIdleBudget:J

    .line 1156
    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1159
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1162
    :cond_2a
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 1164
    cmp-long p1, v0, v2

    .line 1166
    if-eqz p1, :cond_2b

    .line 1168
    const-string p1, "  mMaintenanceStartTime="

    .line 1170
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1173
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 1175
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1178
    move-result-wide v2

    .line 1179
    invoke-static {v0, v1, v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1182
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1185
    :cond_2b
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    .line 1187
    if-eqz p1, :cond_2c

    .line 1189
    const-string p1, "  mJobsActive="

    .line 1191
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1194
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    .line 1196
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1199
    :cond_2c
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mAlarmsActive:Z

    .line 1201
    if-eqz p1, :cond_2d

    .line 1203
    const-string p1, "  mAlarmsActive="

    .line 1205
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1208
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mAlarmsActive:Z

    .line 1210
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1213
    :cond_2d
    iget-object p1, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 1215
    iget-boolean p1, p1, Lcom/android/server/DeviceIdleController$Constants;->USE_MODE_MANAGER:Z

    .line 1217
    if-eqz p1, :cond_2e

    .line 1219
    const-string p1, "  mModeManagerRequestedQuickDoze="

    .line 1221
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1224
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mModeManagerRequestedQuickDoze:Z

    .line 1226
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1229
    const-string p1, "  mIsOffBody="

    .line 1231
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1234
    iget-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mIsOffBody:Z

    .line 1236
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1239
    :cond_2e
    monitor-exit p0

    .line 1240
    :goto_14
    return-void

    .line 1241
    :goto_15
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1242
    throw p1
.end method

.method public final exitIdle(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/os/IDeviceIdleController$Stub;->exitIdle_enforcePermission()V

    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    .line 10
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 14
    move-result v2

    .line 15
    invoke-virtual {p0, v2, p1}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(ILjava/lang/String;)V

    .line 18
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 26
    :catchall_1
    move-exception p0

    .line 27
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 30
    throw p0
.end method

.method public final getAppIdTempWhitelist()[I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    .line 6
    monitor-exit p0

    .line 7
    return-object v0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v0
.end method

.method public final getAppIdUserWhitelist()[I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    .line 6
    monitor-exit p0

    .line 7
    return-object v0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v0
.end method

.method public final getAppIdWhitelist()[I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    .line 6
    monitor-exit p0

    .line 7
    return-object v0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v0
.end method

.method public final getAppIdWhitelistExceptIdle()[I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    .line 6
    monitor-exit p0

    .line 7
    return-object v0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v0
.end method

.method public final getFullPowerWhitelist()[Ljava/lang/String;
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    move-result v0

    .line 7
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 10
    move-result v1

    .line 11
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getFullPowerWhitelistInternalUnchecked()[Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    new-instance v3, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda13;

    .line 17
    const/4 v4, 0x5

    .line 18
    invoke-direct {v3, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda13;-><init>(I)V

    .line 21
    new-instance v4, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;

    .line 23
    const/4 v5, 0x5

    .line 24
    invoke-direct {v4, p0, v0, v1, v5}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/DeviceIdleController;III)V

    .line 27
    invoke-static {v2, v3, v4}, Lcom/android/internal/util/jobs/ArrayUtils;->filter([Ljava/lang/Object;Ljava/util/function/IntFunction;Ljava/util/function/Predicate;)[Ljava/lang/Object;

    .line 30
    move-result-object p0

    .line 31
    check-cast p0, [Ljava/lang/String;

    .line 33
    return-object p0
.end method

.method public final getFullPowerWhitelistExceptIdle()[Ljava/lang/String;
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    move-result v0

    .line 7
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 10
    move-result v1

    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    .line 14
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 17
    move-result v2

    .line 18
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 20
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 23
    move-result v3

    .line 24
    add-int/2addr v2, v3

    .line 25
    new-array v2, v2, [Ljava/lang/String;

    .line 27
    const/4 v3, 0x0

    .line 28
    move v4, v3

    .line 29
    move v5, v4

    .line 30
    :goto_0
    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    .line 32
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 35
    move-result v6

    .line 36
    if-ge v4, v6, :cond_0

    .line 38
    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    .line 40
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 43
    move-result-object v6

    .line 44
    check-cast v6, Ljava/lang/String;

    .line 46
    aput-object v6, v2, v5

    .line 48
    add-int/lit8 v5, v5, 0x1

    .line 50
    add-int/lit8 v4, v4, 0x1

    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    goto :goto_2

    .line 55
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 57
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 60
    move-result v4

    .line 61
    if-ge v3, v4, :cond_1

    .line 63
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 65
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 68
    move-result-object v4

    .line 69
    check-cast v4, Ljava/lang/String;

    .line 71
    aput-object v4, v2, v5

    .line 73
    add-int/lit8 v5, v5, 0x1

    .line 75
    add-int/lit8 v3, v3, 0x1

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    new-instance v3, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda13;

    .line 81
    const/4 v4, 0x1

    .line 82
    invoke-direct {v3, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda13;-><init>(I)V

    .line 85
    new-instance v4, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;

    .line 87
    const/4 v5, 0x1

    .line 88
    invoke-direct {v4, p0, v0, v1, v5}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/DeviceIdleController;III)V

    .line 91
    invoke-static {v2, v3, v4}, Lcom/android/internal/util/jobs/ArrayUtils;->filter([Ljava/lang/Object;Ljava/util/function/IntFunction;Ljava/util/function/Predicate;)[Ljava/lang/Object;

    .line 94
    move-result-object p0

    .line 95
    check-cast p0, [Ljava/lang/String;

    .line 97
    return-object p0

    .line 98
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    throw v0
.end method

.method public final getRemovedSystemPowerWhitelistApps()[Ljava/lang/String;
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    move-result v0

    .line 7
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 10
    move-result v1

    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    .line 14
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 17
    move-result v2

    .line 18
    new-array v3, v2, [Ljava/lang/String;

    .line 20
    const/4 v4, 0x0

    .line 21
    :goto_0
    if-ge v4, v2, :cond_0

    .line 23
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    .line 25
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 28
    move-result-object v5

    .line 29
    check-cast v5, Ljava/lang/String;

    .line 31
    aput-object v5, v3, v4

    .line 33
    add-int/lit8 v4, v4, 0x1

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    new-instance v2, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda13;

    .line 41
    const/4 v4, 0x2

    .line 42
    invoke-direct {v2, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda13;-><init>(I)V

    .line 45
    new-instance v4, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;

    .line 47
    const/4 v5, 0x2

    .line 48
    invoke-direct {v4, p0, v0, v1, v5}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/DeviceIdleController;III)V

    .line 51
    invoke-static {v3, v2, v4}, Lcom/android/internal/util/jobs/ArrayUtils;->filter([Ljava/lang/Object;Ljava/util/function/IntFunction;Ljava/util/function/Predicate;)[Ljava/lang/Object;

    .line 54
    move-result-object p0

    .line 55
    check-cast p0, [Ljava/lang/String;

    .line 57
    return-object p0

    .line 58
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    throw v0
.end method

.method public final getSystemPowerWhitelist()[Ljava/lang/String;
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    move-result v0

    .line 7
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 10
    move-result v1

    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    .line 14
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 17
    move-result v2

    .line 18
    new-array v3, v2, [Ljava/lang/String;

    .line 20
    const/4 v4, 0x0

    .line 21
    :goto_0
    if-ge v4, v2, :cond_0

    .line 23
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    .line 25
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 28
    move-result-object v5

    .line 29
    check-cast v5, Ljava/lang/String;

    .line 31
    aput-object v5, v3, v4

    .line 33
    add-int/lit8 v4, v4, 0x1

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    new-instance v2, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda13;

    .line 41
    const/4 v4, 0x3

    .line 42
    invoke-direct {v2, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda13;-><init>(I)V

    .line 45
    new-instance v4, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;

    .line 47
    const/4 v5, 0x3

    .line 48
    invoke-direct {v4, p0, v0, v1, v5}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/DeviceIdleController;III)V

    .line 51
    invoke-static {v3, v2, v4}, Lcom/android/internal/util/jobs/ArrayUtils;->filter([Ljava/lang/Object;Ljava/util/function/IntFunction;Ljava/util/function/Predicate;)[Ljava/lang/Object;

    .line 54
    move-result-object p0

    .line 55
    check-cast p0, [Ljava/lang/String;

    .line 57
    return-object p0

    .line 58
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    throw v0
.end method

.method public final getSystemPowerWhitelistExceptIdle()[Ljava/lang/String;
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    move-result v0

    .line 7
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 10
    move-result v1

    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    .line 14
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 17
    move-result v2

    .line 18
    new-array v3, v2, [Ljava/lang/String;

    .line 20
    const/4 v4, 0x0

    .line 21
    :goto_0
    if-ge v4, v2, :cond_0

    .line 23
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    .line 25
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 28
    move-result-object v5

    .line 29
    check-cast v5, Ljava/lang/String;

    .line 31
    aput-object v5, v3, v4

    .line 33
    add-int/lit8 v4, v4, 0x1

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    new-instance v2, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda13;

    .line 41
    const/4 v4, 0x0

    .line 42
    invoke-direct {v2, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda13;-><init>(I)V

    .line 45
    new-instance v4, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;

    .line 47
    const/4 v5, 0x0

    .line 48
    invoke-direct {v4, p0, v0, v1, v5}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/DeviceIdleController;III)V

    .line 51
    invoke-static {v3, v2, v4}, Lcom/android/internal/util/jobs/ArrayUtils;->filter([Ljava/lang/Object;Ljava/util/function/IntFunction;Ljava/util/function/Predicate;)[Ljava/lang/Object;

    .line 54
    move-result-object p0

    .line 55
    check-cast p0, [Ljava/lang/String;

    .line 57
    return-object p0

    .line 58
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    throw v0
.end method

.method public final getUserPowerWhitelist()[Ljava/lang/String;
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    move-result v0

    .line 7
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 10
    move-result v1

    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 14
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 17
    move-result v2

    .line 18
    new-array v2, v2, [Ljava/lang/String;

    .line 20
    const/4 v3, 0x0

    .line 21
    :goto_0
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 23
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 26
    move-result v4

    .line 27
    if-ge v3, v4, :cond_0

    .line 29
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 31
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Ljava/lang/String;

    .line 37
    aput-object v4, v2, v3

    .line 39
    add-int/lit8 v3, v3, 0x1

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    new-instance v3, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda13;

    .line 47
    const/4 v4, 0x4

    .line 48
    invoke-direct {v3, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda13;-><init>(I)V

    .line 51
    new-instance v4, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;

    .line 53
    const/4 v5, 0x4

    .line 54
    invoke-direct {v4, p0, v0, v1, v5}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/DeviceIdleController;III)V

    .line 57
    invoke-static {v2, v3, v4}, Lcom/android/internal/util/jobs/ArrayUtils;->filter([Ljava/lang/Object;Ljava/util/function/IntFunction;Ljava/util/function/Predicate;)[Ljava/lang/Object;

    .line 60
    move-result-object p0

    .line 61
    check-cast p0, [Ljava/lang/String;

    .line 63
    return-object p0

    .line 64
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    throw v0
.end method

.method public final isPowerSaveWhitelistApp(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    .line 3
    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    move-result v1

    .line 9
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_0

    .line 21
    return v1

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    .line 24
    monitor-enter p0

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    .line 27
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2

    .line 33
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 35
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move v3, v1

    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    :goto_0
    monitor-exit p0

    .line 47
    return v3

    .line 48
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p1
.end method

.method public final isPowerSaveWhitelistExceptIdleApp(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    .line 3
    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    move-result v1

    .line 9
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_0

    .line 21
    return v1

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    .line 24
    monitor-enter p0

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    .line 27
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2

    .line 33
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 35
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move v3, v1

    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    :goto_0
    monitor-exit p0

    .line 47
    return v3

    .line 48
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p1
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/DeviceIdleController$Shell;

    .line 3
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    .line 5
    invoke-direct {v0, v1}, Lcom/android/server/DeviceIdleController$Shell;-><init>(Lcom/android/server/DeviceIdleController;)V

    .line 8
    move-object v1, p0

    .line 9
    move-object v2, p1

    .line 10
    move-object v3, p2

    .line 11
    move-object v4, p3

    .line 12
    move-object v5, p4

    .line 13
    move-object v6, p5

    .line 14
    move-object v7, p6

    .line 15
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 18
    return-void
.end method

.method public final removePowerSaveWhitelistApp(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string/jumbo v0, "removePowerSaveWhitelistApp(name = "

    .line 4
    const-string v1, ")"

    .line 6
    const-string v2, "DeviceIdleController"

    .line 8
    invoke-static {v0, p1, v1, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    .line 13
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 17
    const-string v1, "android.permission.DEVICE_POWER"

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/android/server/DeviceIdleController$TargetPkg;

    .line 25
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    .line 27
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 30
    move-result v2

    .line 31
    invoke-direct {v0, v1, v2}, Lcom/android/server/DeviceIdleController$TargetPkg;-><init>(Lcom/android/server/DeviceIdleController;I)V

    .line 34
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 37
    move-result-wide v1

    .line 38
    :try_start_0
    iget-object v3, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    .line 40
    const/4 v4, 0x3

    .line 41
    invoke-virtual {v3, p1, v4, v0}, Lcom/android/server/DeviceIdleController;->removePowerSaveWhitelistAppInternal(Ljava/lang/String;ILcom/android/server/DeviceIdleController$TargetPkg;)Z

    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_1

    .line 47
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    .line 49
    iget-object p0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    .line 51
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 54
    move-result p0

    .line 55
    if-nez p0, :cond_0

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 60
    const-string p1, "Cannot remove system whitelisted app"

    .line 62
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 65
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 71
    return-void

    .line 72
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 75
    throw p0
.end method

.method public final removeSystemPowerWhitelistApp(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string/jumbo v0, "removeAppFromSystemWhitelist(name = "

    .line 8
    const-string v1, ")"

    .line 10
    const-string v2, "DeviceIdleController"

    .line 12
    invoke-static {v0, p1, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    .line 17
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 20
    move-result-object v0

    .line 21
    const-string v1, "android.permission.DEVICE_POWER"

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/android/server/DeviceIdleController$TargetPkg;

    .line 29
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    .line 31
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 34
    move-result v2

    .line 35
    invoke-direct {v0, v1, v2}, Lcom/android/server/DeviceIdleController$TargetPkg;-><init>(Lcom/android/server/DeviceIdleController;I)V

    .line 38
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 41
    move-result-wide v1

    .line 42
    :try_start_0
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    .line 44
    const/16 v3, 0x8

    .line 46
    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/DeviceIdleController;->removeSystemPowerWhitelistAppInternal(Ljava/lang/String;ILcom/android/server/DeviceIdleController$TargetPkg;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    return-void

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    throw p0
.end method

.method public final restoreSystemPowerWhitelistApp(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string/jumbo v0, "restoreAppToSystemWhitelist(name = "

    .line 8
    const-string v1, ")"

    .line 10
    const-string v2, "DeviceIdleController"

    .line 12
    invoke-static {v0, p1, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    .line 17
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 20
    move-result-object v0

    .line 21
    const-string v1, "android.permission.DEVICE_POWER"

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/android/server/DeviceIdleController$TargetPkg;

    .line 29
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    .line 31
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 34
    move-result v2

    .line 35
    invoke-direct {v0, v1, v2}, Lcom/android/server/DeviceIdleController$TargetPkg;-><init>(Lcom/android/server/DeviceIdleController;I)V

    .line 38
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 41
    move-result-wide v1

    .line 42
    :try_start_0
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    .line 44
    const/4 v3, 0x6

    .line 45
    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/DeviceIdleController;->restoreSystemPowerWhitelistAppInternal(Ljava/lang/String;ILcom/android/server/DeviceIdleController$TargetPkg;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    throw p0
.end method

.method public final whitelistAppTemporarily(Ljava/lang/String;IILjava/lang/String;)J
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    .line 3
    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 5
    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_ALLOWLIST_DURATION_MS:J

    .line 7
    const-wide/16 v2, 0x2

    .line 9
    div-long/2addr v0, v2

    .line 10
    const-wide/16 v2, 0x2710

    .line 12
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 15
    move-result-wide v0

    .line 16
    iget-object v4, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    .line 18
    move v5, p2

    .line 19
    move v6, p3

    .line 20
    move-object v7, p1

    .line 21
    move-object v8, p4

    .line 22
    move-wide v9, v0

    .line 23
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempAllowlistAppChecked(IILjava/lang/String;Ljava/lang/String;J)V

    .line 26
    return-wide v0
.end method
