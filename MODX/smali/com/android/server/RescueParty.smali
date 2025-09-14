.class public abstract Lcom/android/server/RescueParty;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final DEFAULT_FACTORY_RESET_THROTTLE_DURATION_MIN:J = 0x5a0L

.field static final DEFAULT_OBSERVING_DURATION_MS:J

.field static final DEFAULT_RESCUE_NON_REBOOT_LEVEL_LIMIT:I = 0x2

.field static final DEVICE_CONFIG_RESET_MODE:I = 0x4

.field static final LEVEL_ERASE_NON_APPDATA:I = 0x7

.field static final LEVEL_FACTORY_RESET:I = 0x8

.field public static final LEVEL_ISRB_BOOT:I = 0x6

.field static final LEVEL_NONE:I = 0x0

.field static final LEVEL_RESET_OTHERS:I = 0x5

.field static final LEVEL_RESET_SETTINGS_TRUSTED_DEFAULTS:I = 0x3

.field static final LEVEL_RESET_SETTINGS_UNTRUSTED_CHANGES:I = 0x2

.field static final LEVEL_RESET_SETTINGS_UNTRUSTED_DEFAULTS:I = 0x1

.field static final LEVEL_WARM_REBOOT:I = 0x4

.field static final NAMESPACE_CONFIGURATION:Ljava/lang/String; = "configuration"

.field static final NAMESPACE_TO_PACKAGE_MAPPING_FLAG:Ljava/lang/String; = "namespace_to_package_mapping"

.field static final PROP_ENABLE_RESCUE:Ljava/lang/String; = "persist.sys.enable_rescue"

.field static final RESCUE_LEVEL_ALL_DEVICE_CONFIG_RESET:I = 0x2

.field static final RESCUE_LEVEL_ERASE_NON_APPDATA:I = 0x9

.field static final RESCUE_LEVEL_FACTORY_RESET:I = 0xa

.field static final RESCUE_LEVEL_ISRB_BOOT:I = 0x8

.field static final RESCUE_LEVEL_NONE:I = 0x0

.field static final RESCUE_LEVEL_RESET_OTHERS:I = 0x7

.field static final RESCUE_LEVEL_RESET_SETTINGS_TRUSTED_DEFAULTS:I = 0x6

.field static final RESCUE_LEVEL_RESET_SETTINGS_UNTRUSTED_CHANGES:I = 0x5

.field static final RESCUE_LEVEL_RESET_SETTINGS_UNTRUSTED_DEFAULTS:I = 0x4

.field static final RESCUE_LEVEL_SCOPED_DEVICE_CONFIG_RESET:I = 0x1

.field static final RESCUE_LEVEL_WARM_REBOOT:I = 0x3

.field static final RESCUE_NON_REBOOT_LEVEL_LIMIT:Ljava/lang/String; = "persist.sys.rescue_non_reboot_level_limit"

.field static final TAG:Ljava/lang/String; = "RescueParty"

.field public static isUnrecoverable:Z


# direct methods
.method public static -$$Nest$smexecuteEraseAppData(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5

    .line 1
    const-string/jumbo v0, "reboot,RescueParty"

    .line 4
    const-string v1, "RescueParty"

    .line 6
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    .line 8
    new-instance v3, Ljava/io/File;

    .line 10
    const-string v4, "/efs/recovery/rescueparty"

    .line 12
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 17
    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :try_start_1
    const-string/jumbo v3, "emergency_reset"

    .line 23
    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V

    .line 29
    const-class v3, Landroid/os/PowerManager;

    .line 31
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Landroid/os/PowerManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    const-string v3, ""

    .line 39
    const-string v4, " by "

    .line 41
    if-eqz p0, :cond_1

    .line 43
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    if-nez p1, :cond_0

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object v3

    .line 55
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p0, v0}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 65
    goto :goto_2

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_3

    .line 68
    :cond_1
    const-string/jumbo p0, "sys.powerctl"

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    .line 73
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    if-nez p1, :cond_2

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    move-result-object v3

    .line 83
    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object v0

    .line 90
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 96
    goto :goto_6

    .line 97
    :catch_0
    move-exception p0

    .line 98
    goto :goto_5

    .line 99
    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 102
    goto :goto_4

    .line 103
    :catchall_1
    move-exception v0

    .line 104
    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 107
    :goto_4
    throw p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 108
    :goto_5
    invoke-static {p2, p1, p0}, Lcom/android/server/RescueParty;->logRescueException(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    :goto_6
    return-void
.end method

.method public static -$$Nest$smexecuteRescueLevel(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 21

    .line 1
    move-object/from16 v1, p1

    .line 3
    move/from16 v2, p2

    .line 5
    const-string v0, "Finished rescue level "

    .line 7
    invoke-static {}, Landroid/sysprop/CrashRecoveryProperties;->attemptingFactoryReset()Ljava/util/Optional;

    .line 10
    move-result-object v3

    .line 11
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 13
    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Ljava/lang/Boolean;

    .line 19
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    move-result v3

    .line 23
    const-string v4, "RescueParty"

    .line 25
    if-nez v3, :cond_7

    .line 27
    invoke-static {}, Lcom/android/server/RescueParty;->isRebootPropertySet()Z

    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_0

    .line 33
    goto/16 :goto_7

    .line 35
    :cond_0
    const-string/jumbo v3, "com.android.systemui"

    .line 38
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_1

    .line 44
    if-nez v1, :cond_5

    .line 46
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 48
    const-string v5, "!@ Attempting rescue level "

    .line 50
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-static/range {p2 .. p2}, Lcom/android/server/RescueParty;->levelToString(I)Ljava/lang/String;

    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v5, "("

    .line 62
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    const-string v5, ")"

    .line 70
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    if-nez v1, :cond_2

    .line 75
    const-string v5, ""

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    const-string v5, " by "

    .line 80
    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    move-result-object v5

    .line 84
    :goto_0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object v3

    .line 91
    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string/jumbo v3, "persist.sys.rescue_level"

    .line 97
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 100
    move-result-object v5

    .line 101
    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string/jumbo v3, "saveRescuePartyLog : logcat -v raw -b crash -t \'"

    .line 107
    const/4 v5, 0x0

    .line 108
    :try_start_0
    new-instance v6, Ljava/io/File;

    .line 110
    const-string v7, "/data/log/rescueparty_log"

    .line 112
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    new-instance v7, Ljava/io/File;

    .line 117
    const-string v8, "/cache/recovery/rescueparty_log"

    .line 119
    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 125
    move-result v8

    .line 126
    if-eqz v8, :cond_3

    .line 128
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 131
    goto :goto_1

    .line 132
    :catchall_0
    move-exception v0

    .line 133
    goto :goto_3

    .line 134
    :cond_3
    :goto_1
    new-instance v8, Ljava/text/SimpleDateFormat;

    .line 136
    const-string/jumbo v9, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 139
    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 145
    move-result-wide v9

    .line 146
    new-instance v11, Ljava/util/Date;

    .line 148
    const-wide/32 v12, 0x927c0

    .line 151
    sub-long/2addr v9, v12

    .line 152
    invoke-direct {v11, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 155
    invoke-virtual {v8, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 158
    move-result-object v8

    .line 159
    new-instance v9, Ljava/lang/StringBuilder;

    .line 161
    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string v3, "\' -f /cache/recovery/rescueparty_log"

    .line 169
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    move-result-object v3

    .line 176
    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 182
    move-result-object v3

    .line 183
    const-string/jumbo v12, "logcat"

    .line 186
    const-string v13, "-v"

    .line 188
    const-string/jumbo v14, "raw"

    .line 191
    const-string v15, "-b"

    .line 193
    const-string/jumbo v16, "crash"

    .line 196
    const-string v17, "-t"

    .line 198
    const-string v19, "-f"

    .line 200
    const-string v20, "/data/log/rescueparty_log"

    .line 202
    move-object/from16 v18, v8

    .line 204
    filled-new-array/range {v12 .. v20}, [Ljava/lang/String;

    .line 207
    move-result-object v4

    .line 208
    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    .line 211
    move-result-object v5

    .line 212
    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I

    .line 215
    invoke-static {v6, v7}, Lcom/android/server/RescueParty;->truncateAndCopyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    :goto_2
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 221
    goto :goto_4

    .line 222
    :goto_3
    if-eqz v5, :cond_4

    .line 224
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 227
    :catch_0
    :cond_4
    throw v0

    .line 228
    :catch_1
    if-eqz v5, :cond_5

    .line 230
    goto :goto_2

    .line 231
    :catch_2
    :cond_5
    :goto_4
    :try_start_3
    invoke-static/range {p0 .. p2}, Lcom/android/server/RescueParty;->executeRescueLevelInternal(Landroid/content/Context;Ljava/lang/String;I)V

    .line 234
    const/16 v3, 0xb56

    .line 236
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 239
    new-instance v3, Ljava/lang/StringBuilder;

    .line 241
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    invoke-static/range {p2 .. p2}, Lcom/android/server/RescueParty;->levelToString(I)Ljava/lang/String;

    .line 247
    move-result-object v0

    .line 248
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    move-result-object v0

    .line 255
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 258
    move-result v3

    .line 259
    if-nez v3, :cond_6

    .line 261
    new-instance v3, Ljava/lang/StringBuilder;

    .line 263
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    const-string v0, " for package "

    .line 271
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    move-result-object v0

    .line 281
    goto :goto_5

    .line 282
    :catchall_1
    move-exception v0

    .line 283
    goto :goto_6

    .line 284
    :cond_6
    :goto_5
    const/4 v3, 0x3

    .line 285
    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 288
    goto :goto_8

    .line 289
    :goto_6
    invoke-static {v2, v1, v0}, Lcom/android/server/RescueParty;->logRescueException(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 292
    goto :goto_8

    .line 293
    :cond_7
    :goto_7
    const-string v0, "!@ Reboot was already triggered, don\'t level-up"

    .line 295
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :goto_8
    return-void
.end method

.method public static -$$Nest$smgetRescueLevel(IZLandroid/content/pm/VersionedPackage;)I
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 3
    if-lez p0, :cond_0

    .line 5
    add-int/lit8 p0, p0, 0x1

    .line 7
    :cond_0
    const/4 p2, 0x1

    .line 8
    if-ne p0, p2, :cond_1

    .line 10
    goto :goto_0

    .line 11
    :cond_1
    const/4 p2, 0x2

    .line 12
    if-ne p0, p2, :cond_2

    .line 14
    goto :goto_0

    .line 15
    :cond_2
    const/4 p2, 0x3

    .line 16
    if-ne p0, p2, :cond_3

    .line 18
    invoke-static {p1}, Lcom/android/server/RescueParty;->getMaxRescueLevel(Z)I

    .line 21
    move-result p0

    .line 22
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    .line 25
    move-result p2

    .line 26
    goto :goto_0

    .line 27
    :cond_3
    const/4 p2, 0x4

    .line 28
    if-ne p0, p2, :cond_4

    .line 30
    invoke-static {p1}, Lcom/android/server/RescueParty;->getMaxRescueLevel(Z)I

    .line 33
    move-result p0

    .line 34
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    .line 37
    move-result p2

    .line 38
    goto :goto_0

    .line 39
    :cond_4
    const/4 p2, 0x5

    .line 40
    if-ne p0, p2, :cond_5

    .line 42
    invoke-static {p1}, Lcom/android/server/RescueParty;->getMaxRescueLevel(Z)I

    .line 45
    move-result p0

    .line 46
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    .line 49
    move-result p2

    .line 50
    goto :goto_0

    .line 51
    :cond_5
    const/4 p2, 0x6

    .line 52
    if-ne p0, p2, :cond_6

    .line 54
    invoke-static {p1}, Lcom/android/server/RescueParty;->getMaxRescueLevel(Z)I

    .line 57
    move-result p0

    .line 58
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    .line 61
    move-result p2

    .line 62
    goto :goto_0

    .line 63
    :cond_6
    const/4 p2, 0x7

    .line 64
    if-ne p0, p2, :cond_7

    .line 66
    invoke-static {p1}, Lcom/android/server/RescueParty;->getMaxRescueLevel(Z)I

    .line 69
    move-result p0

    .line 70
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    .line 73
    move-result p2

    .line 74
    goto :goto_0

    .line 75
    :cond_7
    const/16 p2, 0x8

    .line 77
    if-ne p0, p2, :cond_8

    .line 79
    invoke-static {p1}, Lcom/android/server/RescueParty;->getMaxRescueLevel(Z)I

    .line 82
    move-result p0

    .line 83
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    .line 86
    move-result p2

    .line 87
    goto :goto_0

    .line 88
    :cond_8
    const/16 p2, 0x9

    .line 90
    if-lt p0, p2, :cond_9

    .line 92
    invoke-static {p1}, Lcom/android/server/RescueParty;->getMaxRescueLevel(Z)I

    .line 95
    move-result p0

    .line 96
    const/16 p1, 0xa

    .line 98
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    .line 101
    move-result p2

    .line 102
    goto :goto_0

    .line 103
    :cond_9
    const/4 p2, 0x0

    .line 104
    :goto_0
    return p2
.end method

.method public static -$$Nest$smgetSecRescueLevel(IZLandroid/content/pm/VersionedPackage;)I
    .locals 7

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x4

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x1

    .line 6
    if-eqz p2, :cond_0

    .line 8
    const-string/jumbo v5, "com.android.systemui"

    .line 11
    invoke-virtual {p2}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    .line 14
    move-result-object v6

    .line 15
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v5

    .line 19
    if-eqz v5, :cond_5

    .line 21
    :cond_0
    const-string/jumbo p0, "persist.sys.rescue_level"

    .line 24
    invoke-static {p0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 27
    move-result p0

    .line 28
    if-nez p2, :cond_4

    .line 30
    if-eqz p0, :cond_3

    .line 32
    if-eq p0, v1, :cond_2

    .line 34
    if-eq p0, v2, :cond_1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move p0, v4

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    move p0, v0

    .line 40
    goto :goto_1

    .line 41
    :cond_3
    move p0, v2

    .line 42
    goto :goto_1

    .line 43
    :cond_4
    :goto_0
    add-int/2addr p0, v4

    .line 44
    :cond_5
    :goto_1
    if-ne p0, v4, :cond_6

    .line 46
    move v1, v4

    .line 47
    goto :goto_2

    .line 48
    :cond_6
    const/4 p2, 0x2

    .line 49
    if-ne p0, p2, :cond_7

    .line 51
    move v1, p2

    .line 52
    goto :goto_2

    .line 53
    :cond_7
    if-ne p0, v1, :cond_8

    .line 55
    goto :goto_2

    .line 56
    :cond_8
    if-ne p0, v2, :cond_9

    .line 58
    move v1, v2

    .line 59
    goto :goto_2

    .line 60
    :cond_9
    if-ne p0, v0, :cond_a

    .line 62
    invoke-static {p1}, Lcom/android/server/RescueParty;->getMaxRescueLevel(Z)I

    .line 65
    move-result p0

    .line 66
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    .line 69
    move-result v1

    .line 70
    goto :goto_2

    .line 71
    :cond_a
    const/4 p2, 0x6

    .line 72
    if-ne p0, p2, :cond_b

    .line 74
    invoke-static {p1}, Lcom/android/server/RescueParty;->getMaxRescueLevel(Z)I

    .line 77
    move-result p0

    .line 78
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    .line 81
    move-result v1

    .line 82
    goto :goto_2

    .line 83
    :cond_b
    const/4 p2, 0x7

    .line 84
    if-ne p0, p2, :cond_c

    .line 86
    invoke-static {p1}, Lcom/android/server/RescueParty;->getMaxRescueLevel(Z)I

    .line 89
    move-result p0

    .line 90
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    .line 93
    move-result v1

    .line 94
    goto :goto_2

    .line 95
    :cond_c
    const/16 p2, 0x8

    .line 97
    if-lt p0, p2, :cond_e

    .line 99
    if-le p0, p2, :cond_d

    .line 101
    move v3, v4

    .line 102
    :cond_d
    sput-boolean v3, Lcom/android/server/RescueParty;->isUnrecoverable:Z

    .line 104
    invoke-static {p1}, Lcom/android/server/RescueParty;->getMaxRescueLevel(Z)I

    .line 107
    move-result p0

    .line 108
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    .line 111
    move-result v1

    .line 112
    goto :goto_2

    .line 113
    :cond_e
    const-string p1, "Expected positive mitigation count, was "

    .line 115
    const-string p2, "RescueParty"

    .line 117
    invoke-static {p0, p1, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 120
    move v1, v3

    .line 121
    :goto_2
    return v1
.end method

.method public static -$$Nest$smisDisabled()Z
    .locals 4

    .line 1
    const-string/jumbo v0, "persist.sys.enable_rescue"

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_DEBUG_LEVEL_LOW:Z

    .line 14
    if-nez v0, :cond_1

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    const-string/jumbo v0, "persist.device_config.configuration.disable_rescue_party"

    .line 20
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 23
    move-result v0

    .line 24
    const/4 v2, 0x1

    .line 25
    const-string v3, "RescueParty"

    .line 27
    if-eqz v0, :cond_2

    .line 29
    const-string v0, "Disabled because of DeviceConfig flag"

    .line 31
    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :goto_0
    move v1, v2

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    const-string/jumbo v0, "persist.sys.disable_rescue"

    .line 39
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_3

    .line 45
    const-string v0, "Disabled because of manual property"

    .line 47
    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    goto :goto_0

    .line 51
    :cond_3
    :goto_1
    return v1
.end method

.method public static -$$Nest$smmapRescueLevelToUserImpact(I)I
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/Flags;->recoverabilityDetection()Z

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xa

    .line 7
    const/16 v2, 0x32

    .line 9
    const/16 v3, 0x64

    .line 11
    const/4 v4, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 14
    packed-switch p0, :pswitch_data_0

    .line 17
    :goto_0
    move v1, v4

    .line 18
    goto :goto_1

    .line 19
    :pswitch_0
    move v1, v3

    .line 20
    goto :goto_1

    .line 21
    :pswitch_1
    const/16 v1, 0x50

    .line 23
    goto :goto_1

    .line 24
    :pswitch_2
    const/16 v1, 0x4b

    .line 26
    goto :goto_1

    .line 27
    :pswitch_3
    const/16 v1, 0x47

    .line 29
    goto :goto_1

    .line 30
    :pswitch_4
    move v1, v2

    .line 31
    goto :goto_1

    .line 32
    :pswitch_5
    const/16 v1, 0x28

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    packed-switch p0, :pswitch_data_1

    .line 38
    goto :goto_0

    .line 39
    :goto_1
    :pswitch_6
    return v1

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 65
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 3
    const-wide/16 v1, 0x2

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 8
    move-result-wide v0

    .line 9
    sput-wide v0, Lcom/android/server/RescueParty;->DEFAULT_OBSERVING_DURATION_MS:J

    .line 11
    return-void
.end method

.method public static executeFactoryReset(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 3
    invoke-static {v0}, Landroid/sysprop/CrashRecoveryProperties;->attemptingFactoryReset(Ljava/lang/Boolean;)V

    .line 6
    invoke-static {}, Lcom/android/server/RescueParty;->runDumpstateAndWait()V

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    const-string/jumbo v2, "persist.sys.enable_isrb"

    .line 17
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const-string/jumbo v1, "persist.sys.rescue_mode"

    .line 23
    const-string v2, ""

    .line 25
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string/jumbo v1, "persist.sys.isrb_alertnum"

    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 41
    move-result-wide v0

    .line 42
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0}, Landroid/sysprop/CrashRecoveryProperties;->lastFactoryResetTimeMs(Ljava/lang/Long;)V

    .line 49
    new-instance v0, Lcom/android/server/RescueParty$1;

    .line 51
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/RescueParty$1;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 54
    new-instance p0, Ljava/lang/Thread;

    .line 56
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 59
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 62
    return-void
.end method

.method public static executeISRBReboot(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 5
    move-result-object v0

    .line 6
    const-string/jumbo v1, "persist.sys.enable_isrb"

    .line 9
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    const-string/jumbo v1, "persist.sys.isrb_alertnum"

    .line 20
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string v0, "RescueParty"

    .line 25
    const-string v1, "LEVEL_ISRB_BOOT rescueParty set ISRB_ENABLE."

    .line 27
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 32
    invoke-static {v0}, Landroid/sysprop/CrashRecoveryProperties;->attemptingReboot(Ljava/lang/Boolean;)V

    .line 35
    invoke-static {}, Lcom/android/server/RescueParty;->runDumpstateAndWait()V

    .line 38
    new-instance v0, Lcom/android/server/RescueParty$$ExternalSyntheticLambda0;

    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/RescueParty$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    .line 44
    new-instance p0, Ljava/lang/Thread;

    .line 46
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 49
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 52
    return-void
.end method

.method public static executeRescueLevelInternal(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/Flags;->recoverabilityDetection()Z

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x7a

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x3

    .line 11
    const/4 v6, 0x4

    .line 12
    if-eqz v0, :cond_1

    .line 14
    invoke-static {p2}, Lcom/android/server/RescueParty;->levelToString(I)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    .line 21
    move-result-object v7

    .line 22
    invoke-virtual {v7, v1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 25
    invoke-virtual {v7, p2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 28
    invoke-virtual {v7, v0}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 31
    invoke-virtual {v7}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 34
    invoke-virtual {v7}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 41
    packed-switch p2, :pswitch_data_0

    .line 44
    goto/16 :goto_4

    .line 46
    :pswitch_0
    invoke-static {}, Lcom/android/server/RescueParty;->isRebootPropertySet()Z

    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_0

    .line 52
    goto/16 :goto_4

    .line 54
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/server/RescueParty;->executeFactoryReset(Landroid/content/Context;Ljava/lang/String;I)V

    .line 57
    goto/16 :goto_4

    .line 59
    :pswitch_1
    invoke-static {p0, p1, p2}, Lcom/android/server/RescueParty;->executeISRBReboot(Landroid/content/Context;Ljava/lang/String;I)V

    .line 62
    goto/16 :goto_4

    .line 64
    :pswitch_2
    invoke-static {p0, p1}, Lcom/android/server/RescueParty;->executeResetOthers(Landroid/content/Context;Ljava/lang/String;)V

    .line 67
    goto/16 :goto_4

    .line 69
    :pswitch_3
    invoke-static {p0, v6, p2}, Lcom/android/server/RescueParty;->resetAllSettingsIfNecessary(Landroid/content/Context;II)V

    .line 72
    goto/16 :goto_4

    .line 74
    :pswitch_4
    invoke-static {p0, v5, p2}, Lcom/android/server/RescueParty;->resetAllSettingsIfNecessary(Landroid/content/Context;II)V

    .line 77
    goto/16 :goto_4

    .line 79
    :pswitch_5
    invoke-static {p0, v4, p2}, Lcom/android/server/RescueParty;->resetAllSettingsIfNecessary(Landroid/content/Context;II)V

    .line 82
    goto/16 :goto_4

    .line 84
    :pswitch_6
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 86
    invoke-static {v0}, Landroid/sysprop/CrashRecoveryProperties;->attemptingReboot(Ljava/lang/Boolean;)V

    .line 89
    invoke-static {}, Lcom/android/server/RescueParty;->runDumpstateAndWait()V

    .line 92
    new-instance v0, Lcom/android/server/RescueParty$$ExternalSyntheticLambda0;

    .line 94
    const/4 v1, 0x1

    .line 95
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/RescueParty$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    .line 98
    new-instance p0, Ljava/lang/Thread;

    .line 100
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 103
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 106
    goto/16 :goto_4

    .line 108
    :pswitch_7
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/Flags;->allowRescuePartyFlagResets()Z

    .line 111
    move-result p2

    .line 112
    if-eqz p2, :cond_4

    .line 114
    invoke-static {p0, p1, v3}, Lcom/android/server/RescueParty;->resetDeviceConfig(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 117
    goto/16 :goto_4

    .line 119
    :pswitch_8
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/Flags;->allowRescuePartyFlagResets()Z

    .line 122
    move-result p2

    .line 123
    if-eqz p2, :cond_4

    .line 125
    invoke-static {p0, p1, v2}, Lcom/android/server/RescueParty;->resetDeviceConfig(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 128
    goto/16 :goto_4

    .line 130
    :cond_1
    const-string/jumbo v0, "com.android.systemui"

    .line 133
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    move-result v0

    .line 137
    if-nez v0, :cond_2

    .line 139
    if-eqz p1, :cond_2

    .line 141
    if-lt p2, v6, :cond_2

    .line 143
    goto/16 :goto_4

    .line 145
    :cond_2
    invoke-static {p2}, Lcom/android/server/RescueParty;->levelToString(I)Ljava/lang/String;

    .line 148
    move-result-object v0

    .line 149
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    .line 152
    move-result-object v7

    .line 153
    invoke-virtual {v7, v1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 156
    invoke-virtual {v7, p2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 159
    invoke-virtual {v7, v0}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 162
    invoke-virtual {v7}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 165
    invoke-virtual {v7}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    .line 168
    move-result-object v0

    .line 169
    invoke-static {v0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 172
    const/4 v0, 0x0

    .line 173
    packed-switch p2, :pswitch_data_1

    .line 176
    goto :goto_3

    .line 177
    :pswitch_9
    invoke-static {}, Lcom/android/server/RescueParty;->isRebootPropertySet()Z

    .line 180
    move-result v1

    .line 181
    if-eqz v1, :cond_3

    .line 183
    goto :goto_4

    .line 184
    :cond_3
    invoke-static {p0, p1, p2}, Lcom/android/server/RescueParty;->executeFactoryReset(Landroid/content/Context;Ljava/lang/String;I)V

    .line 187
    goto :goto_3

    .line 188
    :pswitch_a
    invoke-static {p0, p1, p2}, Lcom/android/server/RescueParty;->executeISRBReboot(Landroid/content/Context;Ljava/lang/String;I)V

    .line 191
    goto :goto_3

    .line 192
    :pswitch_b
    invoke-static {p0, p1}, Lcom/android/server/RescueParty;->executeResetOthers(Landroid/content/Context;Ljava/lang/String;)V

    .line 195
    goto :goto_3

    .line 196
    :pswitch_c
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 198
    invoke-static {v1}, Landroid/sysprop/CrashRecoveryProperties;->attemptingReboot(Ljava/lang/Boolean;)V

    .line 201
    invoke-static {}, Lcom/android/server/RescueParty;->runDumpstateAndWait()V

    .line 204
    new-instance v1, Lcom/android/server/RescueParty$$ExternalSyntheticLambda0;

    .line 206
    const/4 v2, 0x1

    .line 207
    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/server/RescueParty$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    .line 210
    new-instance p0, Ljava/lang/Thread;

    .line 212
    invoke-direct {p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 215
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 218
    goto :goto_3

    .line 219
    :pswitch_d
    :try_start_0
    invoke-static {p0, v6, p2}, Lcom/android/server/RescueParty;->resetAllSettingsIfNecessary(Landroid/content/Context;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    :goto_0
    :try_start_1
    invoke-static {p0, p1, v3}, Lcom/android/server/RescueParty;->resetDeviceConfig(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 227
    goto :goto_3

    .line 228
    :catch_1
    move-exception v0

    .line 229
    goto :goto_3

    .line 230
    :pswitch_e
    :try_start_2
    invoke-static {p0, v5, p2}, Lcom/android/server/RescueParty;->resetAllSettingsIfNecessary(Landroid/content/Context;II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 233
    goto :goto_1

    .line 234
    :catch_2
    move-exception v0

    .line 235
    :goto_1
    :try_start_3
    invoke-static {p0, p1, v2}, Lcom/android/server/RescueParty;->resetDeviceConfig(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 238
    goto :goto_3

    .line 239
    :pswitch_f
    :try_start_4
    invoke-static {p0, v4, p2}, Lcom/android/server/RescueParty;->resetAllSettingsIfNecessary(Landroid/content/Context;II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 242
    goto :goto_2

    .line 243
    :catch_3
    move-exception v0

    .line 244
    :goto_2
    :try_start_5
    invoke-static {p0, p1, v2}, Lcom/android/server/RescueParty;->resetDeviceConfig(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 247
    :goto_3
    if-nez v0, :cond_5

    .line 249
    :cond_4
    :goto_4
    return-void

    .line 250
    :cond_5
    throw v0

    .line 251
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 275
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public static executeResetOthers(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string/jumbo v0, "com.android.systemui"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    move-result p1

    .line 8
    const/4 v0, 0x1

    .line 9
    const-string v1, "RescueParty"

    .line 11
    if-eqz p1, :cond_0

    .line 13
    const-string/jumbo p1, "setSysUiSafeMode = true"

    .line 16
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    const-class p1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 21
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 27
    check-cast p1, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 29
    iget-object p1, p1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 31
    iput-boolean v0, p1, Lcom/android/server/statusbar/StatusBarManagerService;->mSysUiSafeMode:Z

    .line 33
    :cond_0
    const-string p1, "android"

    .line 35
    const-string/jumbo v2, "reset wallpaper"

    .line 38
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const/4 v2, 0x0

    .line 42
    :try_start_0
    const-string/jumbo v3, "wallpaper"

    .line 45
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 48
    move-result-object v3

    .line 49
    invoke-static {v3}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    .line 52
    move-result-object v3

    .line 53
    if-eqz v3, :cond_1

    .line 55
    invoke-interface {v3, p1, v0, v2}, Landroid/app/IWallpaperManager;->clearWallpaper(Ljava/lang/String;II)V

    .line 58
    const/16 v0, 0x11

    .line 60
    invoke-interface {v3, p1, v0, v2}, Landroid/app/IWallpaperManager;->clearWallpaper(Ljava/lang/String;II)V

    .line 63
    const/16 v0, 0x21

    .line 65
    invoke-interface {v3, p1, v0, v2}, Landroid/app/IWallpaperManager;->clearWallpaper(Ljava/lang/String;II)V

    .line 68
    const/4 v0, 0x2

    .line 69
    invoke-interface {v3, p1, v0, v2}, Landroid/app/IWallpaperManager;->clearWallpaper(Ljava/lang/String;II)V

    .line 72
    const/16 v0, 0x12

    .line 74
    invoke-interface {v3, p1, v0, v2}, Landroid/app/IWallpaperManager;->clearWallpaper(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :catchall_0
    :cond_1
    const-string/jumbo p1, "reset dls settings"

    .line 80
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 86
    move-result-object p1

    .line 87
    const-string/jumbo v0, "dls_state"

    .line 90
    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 96
    move-result-object p1

    .line 97
    const-string/jumbo v0, "lockstar_enabled"

    .line 100
    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 106
    move-result-object p0

    .line 107
    const-string/jumbo p1, "plugin_lock_sub_enabled"

    .line 110
    invoke-static {p0, p1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 113
    invoke-static {}, Lcom/android/server/RescueParty;->getAllUserIds()[I

    .line 116
    move-result-object p0

    .line 117
    invoke-static {p0}, Lcom/samsung/android/wifi/util/SemWifiRescueParty;->resetAllWifiStoredData([I)I

    .line 120
    return-void
.end method

.method public static getAllUserIds()[I
    .locals 6

    .line 1
    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 3
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    new-array v1, v1, [I

    .line 10
    const/4 v2, 0x0

    .line 11
    aput v0, v1, v2

    .line 13
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataSystemDeDirectory()Ljava/io/File;

    .line 16
    move-result-object v3

    .line 17
    invoke-static {v3}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    .line 20
    move-result-object v3

    .line 21
    array-length v4, v3

    .line 22
    :goto_0
    if-ge v2, v4, :cond_1

    .line 24
    aget-object v5, v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 29
    move-result-object v5

    .line 30
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 33
    move-result v5

    .line 34
    if-eq v5, v0, :cond_0

    .line 36
    invoke-static {v1, v5}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    .line 39
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    goto :goto_1

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto :goto_2

    .line 43
    :catch_0
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 45
    goto :goto_0

    .line 46
    :goto_2
    const-string v2, "RescueParty"

    .line 48
    const-string v3, "Trouble discovering users"

    .line 50
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    :cond_1
    return-object v1
.end method

.method public static getElapsedRealtime()J
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static getMaxRescueLevel(Z)I
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/Flags;->recoverabilityDetection()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string/jumbo v2, "persist.device_config.configuration.disable_rescue_party_factory_reset"

    .line 9
    if-eqz v0, :cond_2

    .line 11
    if-eqz p0, :cond_1

    .line 13
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/16 p0, 0xa

    .line 22
    return p0

    .line 23
    :cond_1
    :goto_0
    const-string/jumbo p0, "persist.sys.rescue_non_reboot_level_limit"

    .line 26
    const/4 v0, 0x2

    .line 27
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 30
    move-result p0

    .line 31
    return p0

    .line 32
    :cond_2
    if-eqz p0, :cond_4

    .line 34
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 37
    move-result p0

    .line 38
    if-eqz p0, :cond_3

    .line 40
    goto :goto_1

    .line 41
    :cond_3
    const/16 p0, 0x8

    .line 43
    return p0

    .line 44
    :cond_4
    :goto_1
    const/4 p0, 0x3

    .line 45
    return p0
.end method

.method public static getRescuePartyReason()Ljava/lang/String;
    .locals 2

    .line 1
    const-string/jumbo v0, "persist.sys.rescue_level"

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Lcom/android/server/RescueParty;->levelToString(I)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public static isRebootPropertySet()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/sysprop/CrashRecoveryProperties;->attemptingReboot()Ljava/util/Optional;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public static levelToString(I)Ljava/lang/String;
    .locals 10

    .line 1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/Flags;->recoverabilityDetection()Z

    .line 4
    move-result v0

    .line 5
    const-string v1, "NONE"

    .line 7
    const-string v2, "WARM_REBOOT"

    .line 9
    const-string v3, "RESET_SETTINGS_UNTRUSTED_DEFAULTS"

    .line 11
    const-string v4, "RESET_SETTINGS_UNTRUSTED_CHANGES"

    .line 13
    const-string v5, "RESET_SETTINGS_TRUSTED_DEFAULTS"

    .line 15
    const-string v6, "RESET_OTHERS"

    .line 17
    const-string v7, "ISRB_BOOT"

    .line 19
    const-string v8, "ERASE_NON_APPDATA"

    .line 21
    const-string v9, "FACTORY_RESET"

    .line 23
    if-eqz v0, :cond_0

    .line 25
    packed-switch p0, :pswitch_data_0

    .line 28
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :pswitch_0
    return-object v9

    .line 34
    :pswitch_1
    return-object v8

    .line 35
    :pswitch_2
    return-object v7

    .line 36
    :pswitch_3
    return-object v6

    .line 37
    :pswitch_4
    return-object v5

    .line 38
    :pswitch_5
    return-object v4

    .line 39
    :pswitch_6
    return-object v3

    .line 40
    :pswitch_7
    return-object v2

    .line 41
    :pswitch_8
    const-string p0, "ALL_DEVICE_CONFIG_RESET"

    .line 43
    return-object p0

    .line 44
    :pswitch_9
    const-string p0, "SCOPED_DEVICE_CONFIG_RESET"

    .line 46
    return-object p0

    .line 47
    :pswitch_a
    return-object v1

    .line 48
    :cond_0
    packed-switch p0, :pswitch_data_1

    .line 51
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :pswitch_b
    return-object v9

    .line 57
    :pswitch_c
    return-object v8

    .line 58
    :pswitch_d
    return-object v7

    .line 59
    :pswitch_e
    return-object v6

    .line 60
    :pswitch_f
    return-object v2

    .line 61
    :pswitch_10
    return-object v5

    .line 62
    :pswitch_11
    return-object v4

    .line 63
    :pswitch_12
    return-object v3

    .line 64
    :pswitch_13
    return-object v1

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method public static logRescueException(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 16
    move-result-object p2

    .line 17
    const-string v1, ": "

    .line 19
    if-eqz p2, :cond_0

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p2

    .line 36
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v0

    .line 40
    filled-new-array {v0, p2}, [Ljava/lang/Object;

    .line 43
    move-result-object v0

    .line 44
    const/16 v2, 0xb57

    .line 46
    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    const-string v2, "Failed rescue level "

    .line 53
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-static {p0}, Lcom/android/server/RescueParty;->levelToString(I)Ljava/lang/String;

    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p0

    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_1

    .line 73
    const-string v0, " for package "

    .line 75
    invoke-static {p0, v0, p1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    move-result-object p0

    .line 79
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 81
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object p0

    .line 97
    const/4 p1, 0x6

    .line 98
    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 101
    return-void
.end method

.method public static performScopedReset(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/android/server/RescueParty$RescuePartyObserver;->getInstance(Landroid/content/Context;)Lcom/android/server/RescueParty$RescuePartyObserver;

    .line 4
    move-result-object p0

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mCallingPackageNamespaceSetMap:Ljava/util/Map;

    .line 8
    check-cast v0, Ljava/util/HashMap;

    .line 10
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    .line 17
    if-eqz v0, :cond_1

    .line 19
    const-string p0, "Performing scoped reset for package: "

    .line 21
    const-string v1, ", affected namespaces: "

    .line 23
    invoke-static {p0, p1, v1}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    move-result-object p0

    .line 27
    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    const-string p1, "RescueParty"

    .line 44
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object p0

    .line 51
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_1

    .line 57
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Ljava/lang/String;

    .line 63
    const-string/jumbo v0, "configuration"

    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_0

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    const/4 v0, 0x4

    .line 74
    invoke-static {v0, p1}, Landroid/provider/DeviceConfig;->resetToDefaults(ILjava/lang/String;)V

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    return-void

    .line 79
    :catchall_0
    move-exception p1

    .line 80
    monitor-exit p0

    .line 81
    throw p1
.end method

.method public static resetAllAffectedNamespaces(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/android/server/RescueParty$RescuePartyObserver;->getInstance(Landroid/content/Context;)Lcom/android/server/RescueParty$RescuePartyObserver;

    .line 4
    move-result-object p0

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    .line 8
    iget-object v1, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mNamespaceCallingPackageSetMap:Ljava/util/Map;

    .line 10
    check-cast v1, Ljava/util/HashMap;

    .line 12
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit p0

    .line 20
    const-string p0, "RescueParty"

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    const-string v2, "Performing reset for all affected namespaces: "

    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0}, Ljava/util/HashSet;->toArray()[Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object p0

    .line 51
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_1

    .line 57
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Ljava/lang/String;

    .line 63
    const-string/jumbo v1, "configuration"

    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_0

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    const/4 v1, 0x4

    .line 74
    invoke-static {v1, v0}, Landroid/provider/DeviceConfig;->resetToDefaults(ILjava/lang/String;)V

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    return-void

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    monitor-exit p0

    .line 81
    throw v0
.end method

.method public static resetAllSettingsIfNecessary(Landroid/content/Context;II)V
    .locals 7

    .line 1
    invoke-static {}, Landroid/sysprop/CrashRecoveryProperties;->maxRescueLevelAttempted()Ljava/util/Optional;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Integer;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 19
    move-result v0

    .line 20
    if-lt v0, p2, :cond_0

    .line 22
    return-void

    .line 23
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object p2

    .line 27
    invoke-static {p2}, Landroid/sysprop/CrashRecoveryProperties;->maxRescueLevelAttempted(Ljava/lang/Integer;)V

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 33
    move-result-object p0

    .line 34
    const/4 p2, 0x0

    .line 35
    :try_start_0
    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 37
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 40
    move-result v0

    .line 41
    invoke-static {p0, p2, p1, v0}, Landroid/provider/Settings$Global;->resetToDefaultsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    move-object v2, p2

    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    new-instance v2, Ljava/lang/RuntimeException;

    .line 49
    const-string v3, "Failed to reset global settings"

    .line 51
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    :goto_0
    invoke-static {}, Lcom/android/server/RescueParty;->getAllUserIds()[I

    .line 57
    move-result-object v0

    .line 58
    array-length v3, v0

    .line 59
    :goto_1
    if-ge v1, v3, :cond_1

    .line 61
    aget v4, v0, v1

    .line 63
    :try_start_1
    invoke-static {p0, p2, p1, v4}, Landroid/provider/Settings$Secure;->resetToDefaultsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 66
    goto :goto_2

    .line 67
    :catch_1
    move-exception v2

    .line 68
    new-instance v5, Ljava/lang/RuntimeException;

    .line 70
    const-string v6, "Failed to reset secure settings for "

    .line 72
    invoke-static {v4, v6}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 75
    move-result-object v4

    .line 76
    invoke-direct {v5, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    move-object v2, v5

    .line 80
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 82
    goto :goto_1

    .line 83
    :cond_1
    if-nez v2, :cond_2

    .line 85
    return-void

    .line 86
    :cond_2
    throw v2
.end method

.method public static resetDeviceConfig(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    if-eqz p2, :cond_1

    .line 6
    if-nez p1, :cond_0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/server/RescueParty;->performScopedReset(Landroid/content/Context;Ljava/lang/String;)V

    .line 12
    goto :goto_1

    .line 13
    :catch_0
    move-exception p0

    .line 14
    goto :goto_2

    .line 15
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/android/server/RescueParty;->resetAllAffectedNamespaces(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :goto_1
    return-void

    .line 19
    :goto_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 21
    const-string p2, "Failed to reset config settings"

    .line 23
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    throw p1
.end method

.method public static resetDeviceConfigForPackages(Ljava/util/List;)V
    .locals 8

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 6
    check-cast p0, Ljava/util/ArrayList;

    .line 8
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v1

    .line 12
    const-class v2, Lcom/android/server/RescueParty$RescuePartyObserver;

    .line 14
    monitor-enter v2

    .line 15
    :try_start_0
    sget-object v3, Lcom/android/server/RescueParty$RescuePartyObserver;->sRescuePartyObserver:Lcom/android/server/RescueParty$RescuePartyObserver;

    .line 17
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 18
    if-eqz v3, :cond_1

    .line 20
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/String;

    .line 32
    monitor-enter v3

    .line 33
    :try_start_1
    iget-object v4, v3, Lcom/android/server/RescueParty$RescuePartyObserver;->mCallingPackageNamespaceSetMap:Ljava/util/Map;

    .line 35
    check-cast v4, Ljava/util/HashMap;

    .line 37
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    monitor-exit v3

    .line 44
    if-eqz v2, :cond_0

    .line 46
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    monitor-exit v3

    .line 52
    throw p0

    .line 53
    :cond_1
    new-instance v1, Landroid/util/ArraySet;

    .line 55
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 58
    :try_start_2
    const-string/jumbo v2, "configuration"

    .line 61
    const-string/jumbo v3, "namespace_to_package_mapping"

    .line 64
    const-string v4, ""

    .line 66
    invoke-static {v2, v3, v4}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object v2

    .line 70
    const-string v3, ","

    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 75
    move-result-object v2

    .line 76
    const/4 v3, 0x0

    .line 77
    move v4, v3

    .line 78
    :goto_1
    array-length v5, v2

    .line 79
    if-ge v4, v5, :cond_5

    .line 81
    aget-object v5, v2, v4

    .line 83
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 86
    move-result v5

    .line 87
    if-eqz v5, :cond_2

    .line 89
    goto :goto_2

    .line 90
    :cond_2
    aget-object v5, v2, v4

    .line 92
    const-string v6, ":"

    .line 94
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 97
    move-result-object v5

    .line 98
    array-length v6, v5

    .line 99
    const/4 v7, 0x2

    .line 100
    if-ne v6, v7, :cond_4

    .line 102
    aget-object v6, v5, v3

    .line 104
    const/4 v7, 0x1

    .line 105
    aget-object v5, v5, v7

    .line 107
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 110
    move-result v5

    .line 111
    if-eqz v5, :cond_3

    .line 113
    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 116
    goto :goto_2

    .line 117
    :catch_0
    move-exception p0

    .line 118
    goto :goto_3

    .line 119
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 121
    goto :goto_1

    .line 122
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    .line 126
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    const-string v5, "Invalid mapping entry: "

    .line 131
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    aget-object v2, v2, v4

    .line 136
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    move-result-object v2

    .line 143
    invoke-direct {p0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 146
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 147
    :goto_3
    :try_start_3
    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 150
    const-string v2, "RescueParty"

    .line 152
    const-string v3, "Failed to read preset package to namespaces mapping."

    .line 154
    invoke-static {v2, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 157
    :catchall_1
    :cond_5
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 160
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 163
    move-result-object p0

    .line 164
    :cond_6
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 167
    move-result v0

    .line 168
    if-eqz v0, :cond_7

    .line 170
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 173
    move-result-object v0

    .line 174
    check-cast v0, Ljava/lang/String;

    .line 176
    new-instance v1, Landroid/provider/DeviceConfig$Properties$Builder;

    .line 178
    invoke-direct {v1, v0}, Landroid/provider/DeviceConfig$Properties$Builder;-><init>(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v1}, Landroid/provider/DeviceConfig$Properties$Builder;->build()Landroid/provider/DeviceConfig$Properties;

    .line 184
    move-result-object v1

    .line 185
    :try_start_4
    invoke-static {v1}, Landroid/provider/DeviceConfig;->setProperties(Landroid/provider/DeviceConfig$Properties;)Z

    .line 188
    move-result v1

    .line 189
    if-nez v1, :cond_6

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    .line 193
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    const-string v2, "Failed to clear properties under "

    .line 198
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const-string v2, ". Running `device_config get_sync_disabled_for_tests` will confirm if config-bulk-update is enabled."

    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    move-result-object v1

    .line 213
    const/4 v2, 0x6

    .line 214
    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_4
    .catch Landroid/provider/DeviceConfig$BadConfigException; {:try_start_4 .. :try_end_4} :catch_1

    .line 217
    goto :goto_4

    .line 218
    :catch_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 220
    const-string/jumbo v2, "namespace "

    .line 223
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    const-string v0, " is already banned, skip reset."

    .line 231
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    move-result-object v0

    .line 238
    const/4 v1, 0x5

    .line 239
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 242
    goto :goto_4

    .line 243
    :cond_7
    return-void

    .line 244
    :catchall_2
    move-exception p0

    .line 245
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 246
    throw p0
.end method

.method public static runDumpstateAndWait()V
    .locals 5

    .line 1
    const-string v0, "RescueParty"

    .line 3
    const-string v1, "!@ make dumpstate_sys_error for rescueparty"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    const-string/jumbo v1, "dumpstate.is_running"

    .line 11
    const-string v2, "0"

    .line 13
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    const-string v2, "1"

    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v1

    .line 23
    const-string/jumbo v2, "bugreportm"

    .line 26
    if-eqz v1, :cond_0

    .line 28
    const-string/jumbo v1, "cancel previous dumpstate, and start new one"

    .line 31
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const-string/jumbo v1, "ctl.stop"

    .line 37
    const-string/jumbo v3, "bugreportd"

    .line 40
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string/jumbo v3, "dumpstate"

    .line 49
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string/jumbo v3, "dumpstatez"

    .line 55
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_0
    const-string/jumbo v1, "bugreport.mode"

    .line 61
    const-string/jumbo v3, "sys_rescue"

    .line 64
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string/jumbo v1, "dumpstate.process"

    .line 70
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string/jumbo v1, "ctl.start"

    .line 76
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const/4 v1, 0x0

    .line 80
    :goto_0
    add-int/lit8 v2, v1, 0x1

    .line 82
    const/16 v3, 0x32

    .line 84
    if-ge v1, v3, :cond_2

    .line 86
    const-wide/16 v3, 0x3e8

    .line 88
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    goto :goto_1

    .line 92
    :catch_0
    move-exception v1

    .line 93
    const-string v3, "Failed to sleep"

    .line 95
    invoke-static {v0, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    :goto_1
    const-string/jumbo v1, "init.svc.bugreportm"

    .line 101
    const-string/jumbo v3, "stopped"

    .line 104
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_1

    .line 114
    goto :goto_2

    .line 115
    :cond_1
    move v1, v2

    .line 116
    goto :goto_0

    .line 117
    :cond_2
    :goto_2
    return-void
.end method

.method public static setISRBmode()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 5
    move-result-object v0

    .line 6
    const-string/jumbo v1, "persist.sys.isrb_havesentlog"

    .line 9
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    const-string/jumbo v0, "sys.isrblevel.callreboot"

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 22
    return-void

    .line 23
    :cond_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/Flags;->recoverabilityDetection()Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 29
    const/16 v0, 0x8

    .line 31
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/4 v0, 0x6

    .line 37
    goto :goto_0

    .line 38
    :goto_1
    const-string/jumbo v2, "persist.sys.rescue_level"

    .line 41
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string/jumbo v0, "persist.sys.enable_isrb"

    .line 47
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 50
    move-result-object v1

    .line 51
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string/jumbo v0, "persist.sys.rescue_mode"

    .line 57
    const-string/jumbo v1, "isrb_boot"

    .line 60
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static truncateAndCopyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    .line 3
    new-instance v1, Ljava/io/FileInputStream;

    .line 5
    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 8
    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    .line 13
    new-instance v2, Ljava/io/FileOutputStream;

    .line 15
    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 18
    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 21
    :try_start_2
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 24
    move-result-wide p0

    .line 25
    const-wide/32 v2, 0x10000

    .line 28
    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->min(JJ)J

    .line 31
    move-result-wide p0

    .line 32
    long-to-int p0, p0

    .line 33
    new-array p0, p0, [B

    .line 35
    invoke-virtual {v0, p0}, Ljava/io/BufferedInputStream;->read([B)I

    .line 38
    move-result p1

    .line 39
    const/4 v2, -0x1

    .line 40
    if-eq p1, v2, :cond_0

    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-virtual {v1, p0, v2, p1}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 46
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 55
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 58
    goto :goto_5

    .line 59
    :catchall_1
    move-exception p0

    .line 60
    goto :goto_3

    .line 61
    :goto_1
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 64
    goto :goto_2

    .line 65
    :catchall_2
    move-exception p1

    .line 66
    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 69
    :goto_2
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 70
    :goto_3
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 73
    goto :goto_4

    .line 74
    :catchall_3
    move-exception p1

    .line 75
    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 78
    :goto_4
    throw p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 79
    :catch_0
    :goto_5
    return-void
.end method
