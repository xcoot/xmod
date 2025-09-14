.class public abstract Lcom/android/server/rollback/WatchdogRollbackLogger;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static getLogPackage(Landroid/content/Context;Landroid/content/pm/VersionedPackage;)Landroid/content/pm/VersionedPackage;
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v1, 0x40000080    # 2.0000305f

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 18
    .line 19
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    :goto_0
    move-object p1, v2

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const-string v1, "android.content.pm.LOGGING_PARENT"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_1

    .line 32
    :catch_0
    move-exception v0

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v3, "Unable to discover logging parent package: "

    .line 36
    .line 37
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string v1, "WatchdogRollbackLogger"

    .line 48
    .line 49
    invoke-static {v1, p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :goto_1
    if-nez p1, :cond_1

    .line 54
    .line 55
    return-object v2

    .line 56
    :cond_1
    :try_start_1
    new-instance v0, Landroid/content/pm/VersionedPackage;

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    const/4 v1, 0x0

    .line 63
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 68
    .line 69
    .line 70
    move-result-wide v3

    .line 71
    invoke-direct {v0, p1, v3, v4}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 72
    .line 73
    .line 74
    return-object v0

    .line 75
    :catch_1
    return-object v2
.end method

.method public static logApexdRevert(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/String;

    .line 21
    .line 22
    new-instance v2, Landroid/content/pm/VersionedPackage;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-direct {v2, v1, v3}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0, v2}, Lcom/android/server/rollback/WatchdogRollbackLogger;->getLogPackage(Landroid/content/Context;Landroid/content/pm/VersionedPackage;)Landroid/content/pm/VersionedPackage;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Landroid/content/pm/VersionedPackage;

    .line 51
    .line 52
    const/4 v0, 0x2

    .line 53
    const/4 v1, 0x5

    .line 54
    invoke-static {p1, v0, v1, p2}, Lcom/android/server/rollback/WatchdogRollbackLogger;->logEvent(Landroid/content/pm/VersionedPackage;IILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    return-void
.end method

.method public static logEvent(Landroid/content/pm/VersionedPackage;IILjava/lang/String;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p3

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "Watchdog event occurred with type: "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v9, "ROLLBACK_INITIATE"

    .line 15
    .line 16
    const-string v10, "ROLLBACK_SUCCESS"

    .line 17
    .line 18
    const-string v11, "ROLLBACK_FAILURE"

    .line 19
    .line 20
    const-string v12, "ROLLBACK_BOOT_TRIGGERED"

    .line 21
    .line 22
    const-string v13, "UNKNOWN"

    .line 23
    .line 24
    const/4 v14, 0x4

    .line 25
    const/4 v15, 0x3

    .line 26
    const/4 v6, 0x2

    .line 27
    const/4 v5, 0x1

    .line 28
    if-eq v7, v5, :cond_3

    .line 29
    .line 30
    if-eq v7, v6, :cond_2

    .line 31
    .line 32
    if-eq v7, v15, :cond_1

    .line 33
    .line 34
    if-eq v7, v14, :cond_0

    .line 35
    .line 36
    move-object v2, v13

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move-object v2, v12

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move-object v2, v11

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    move-object v2, v10

    .line 43
    goto :goto_0

    .line 44
    :cond_3
    move-object v2, v9

    .line 45
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v2, " logPackage: "

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v2, " rollbackReason: "

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-static/range {p2 .. p2}, Lcom/android/server/rollback/WatchdogRollbackLogger;->rollbackReasonToString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v2, " failedPackageName: "

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const-string v2, "WatchdogRollbackLogger"

    .line 81
    .line 82
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    const/4 v4, 0x0

    .line 86
    if-eqz v0, :cond_4

    .line 87
    .line 88
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/VersionedPackage;->getVersionCode()I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    new-array v1, v4, [B

    .line 97
    .line 98
    move-object/from16 v16, v1

    .line 99
    .line 100
    move/from16 v1, p1

    .line 101
    .line 102
    move v14, v4

    .line 103
    move/from16 v4, p2

    .line 104
    .line 105
    move v15, v5

    .line 106
    move-object/from16 v5, p3

    .line 107
    .line 108
    move-object/from16 v6, v16

    .line 109
    .line 110
    invoke-static/range {v1 .. v6}, Lcom/android/server/crashrecovery/proto/CrashRecoveryStatsLog;->write(ILjava/lang/String;IILjava/lang/String;[B)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_4
    move v14, v4

    .line 115
    move v15, v5

    .line 116
    new-array v6, v14, [B

    .line 117
    .line 118
    const-string v2, ""

    .line 119
    .line 120
    const/4 v3, 0x0

    .line 121
    move/from16 v1, p1

    .line 122
    .line 123
    move/from16 v4, p2

    .line 124
    .line 125
    move-object/from16 v5, p3

    .line 126
    .line 127
    invoke-static/range {v1 .. v6}, Lcom/android/server/crashrecovery/proto/CrashRecoveryStatsLog;->write(ILjava/lang/String;IILjava/lang/String;[B)V

    .line 128
    .line 129
    .line 130
    :goto_1
    const-string/jumbo v1, "persist.sys.rollbacktest.enabled"

    .line 131
    .line 132
    .line 133
    invoke-static {v1, v14}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-nez v1, :cond_5

    .line 138
    .line 139
    goto/16 :goto_4

    .line 140
    .line 141
    :cond_5
    if-eq v7, v15, :cond_9

    .line 142
    .line 143
    const/4 v1, 0x2

    .line 144
    if-eq v7, v1, :cond_8

    .line 145
    .line 146
    const/4 v1, 0x3

    .line 147
    if-eq v7, v1, :cond_7

    .line 148
    .line 149
    const/4 v1, 0x4

    .line 150
    if-eq v7, v1, :cond_6

    .line 151
    .line 152
    move-object v9, v13

    .line 153
    goto :goto_2

    .line 154
    :cond_6
    move-object v9, v12

    .line 155
    goto :goto_2

    .line 156
    :cond_7
    move-object v9, v11

    .line 157
    goto :goto_2

    .line 158
    :cond_8
    move-object v9, v10

    .line 159
    :cond_9
    :goto_2
    const-string/jumbo v1, "persist.sys.rollbacktest."

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-static {v15}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string v3, ".logPackage"

    .line 182
    .line 183
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    if-eqz v0, :cond_a

    .line 191
    .line 192
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/VersionedPackage;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    goto :goto_3

    .line 197
    :cond_a
    const-string v0, ""

    .line 198
    .line 199
    :goto_3
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string v2, ".rollbackReason"

    .line 211
    .line 212
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-static/range {p2 .. p2}, Lcom/android/server/rollback/WatchdogRollbackLogger;->rollbackReasonToString(I)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    const-string v1, ".failedPackageName"

    .line 235
    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-static {v0, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    :goto_4
    return-void
.end method

.method public static mapFailureReasonToMetric(I)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p0, v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x5

    .line 14
    if-eq p0, v0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, 0x7

    .line 19
    return p0

    .line 20
    :cond_1
    return v0
.end method

.method public static rollbackReasonToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_5

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_4

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p0, v0, :cond_3

    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    if-eq p0, v0, :cond_2

    .line 12
    .line 13
    const/4 v0, 0x5

    .line 14
    if-eq p0, v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x7

    .line 17
    if-eq p0, v0, :cond_0

    .line 18
    .line 19
    const-string p0, "UNKNOWN"

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    const-string p0, "REASON_BOOT_LOOP"

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_1
    const-string p0, "REASON_NATIVE_CRASH_DURING_BOOT"

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_2
    const-string p0, "REASON_APP_NOT_RESPONDING"

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_3
    const-string p0, "REASON_APP_CRASH"

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_4
    const-string p0, "REASON_EXPLICIT_HEALTH_CHECK"

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_5
    const-string p0, "REASON_NATIVE_CRASH"

    .line 38
    .line 39
    return-object p0
.end method
