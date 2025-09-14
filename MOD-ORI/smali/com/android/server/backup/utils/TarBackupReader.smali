.class public final Lcom/android/server/backup/utils/TarBackupReader;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

.field public final mBytesReadListener:Lcom/android/server/backup/restore/FullRestoreEngine$$ExternalSyntheticLambda0;

.field public final mInputStream:Ljava/io/InputStream;

.field public mWidgetData:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/android/server/backup/restore/FullRestoreEngine$$ExternalSyntheticLambda0;Landroid/app/backup/IBackupManagerMonitor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mWidgetData:[B

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/restore/FullRestoreEngine$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    new-instance p1, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 12
    .line 13
    invoke-direct {p1, p3}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;-><init>(Landroid/app/backup/IBackupManagerMonitor;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 17
    .line 18
    return-void
.end method

.method public static extractLine([BI[Ljava/lang/String;)I
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    if-ge p1, v0, :cond_2

    .line 3
    .line 4
    move v1, p1

    .line 5
    :goto_0
    if-ge v1, v0, :cond_1

    .line 6
    .line 7
    aget-byte v2, p0, v1

    .line 8
    .line 9
    const/16 v3, 0xa

    .line 10
    .line 11
    if-ne v2, v3, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/String;

    .line 18
    .line 19
    sub-int v2, v1, p1

    .line 20
    .line 21
    invoke-direct {v0, p0, p1, v2}, Ljava/lang/String;-><init>([BII)V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    aput-object v0, p2, p0

    .line 26
    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    return v1

    .line 30
    :cond_2
    new-instance p0, Ljava/io/IOException;

    .line 31
    .line 32
    const-string p1, "Incomplete data"

    .line 33
    .line 34
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method public static extractRadix(III[B)J
    .locals 5

    .line 1
    add-int/2addr p1, p0

    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    :goto_0
    if-ge p0, p1, :cond_2

    .line 5
    .line 6
    aget-byte v2, p3, p0

    .line 7
    .line 8
    if-eqz v2, :cond_2

    .line 9
    .line 10
    const/16 v3, 0x20

    .line 11
    .line 12
    if-ne v2, v3, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/16 v3, 0x30

    .line 16
    .line 17
    if-lt v2, v3, :cond_1

    .line 18
    .line 19
    add-int/lit8 v3, p2, 0x2f

    .line 20
    .line 21
    if-gt v2, v3, :cond_1

    .line 22
    .line 23
    int-to-long v3, p2

    .line 24
    mul-long/2addr v3, v0

    .line 25
    add-int/lit8 v2, v2, -0x30

    .line 26
    .line 27
    int-to-long v0, v2

    .line 28
    add-long/2addr v0, v3

    .line 29
    add-int/lit8 p0, p0, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 33
    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string p3, "Invalid number in header: \'"

    .line 37
    .line 38
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    int-to-char p3, v2

    .line 42
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p3, "\' for radix "

    .line 46
    .line 47
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p0

    .line 61
    :cond_2
    :goto_1
    return-wide v0
.end method

.method public static readExactly(Ljava/io/InputStream;[BI)I
    .locals 2

    .line 1
    if-lez p2, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    :goto_0
    if-ge v0, p2, :cond_1

    .line 5
    .line 6
    sub-int v1, p2, v0

    .line 7
    .line 8
    invoke-virtual {p0, p1, v0, v1}, Ljava/io/InputStream;->read([BII)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-gtz v1, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    add-int/2addr v0, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    :goto_1
    return v0

    .line 18
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    const-string/jumbo p1, "size must be > 0"

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p0
.end method


# virtual methods
.method public final chooseRestorePolicy(Landroid/content/pm/PackageManager;ZLcom/android/server/backup/FileMetadata;[Landroid/content/pm/Signature;ILcom/android/server/backup/utils/BackupEligibilityRules;Landroid/content/Context;Z)Lcom/android/server/backup/restore/RestorePolicy;
    .locals 18

    .line 1
    move/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    move/from16 v3, p5

    .line 8
    .line 9
    move-object/from16 v4, p6

    .line 10
    .line 11
    const-string v5, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    .line 12
    .line 13
    sget-object v6, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/restore/RestorePolicy;

    .line 14
    .line 15
    move-object/from16 v7, p0

    .line 16
    .line 17
    iget-object v7, v7, Lcom/android/server/backup/utils/TarBackupReader;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 18
    .line 19
    const-string v8, "BackupManagerService"

    .line 20
    .line 21
    const-string v9, "Restore manifest signatures do not match installed application for "

    .line 22
    .line 23
    const-string v10, "Data requires newer version "

    .line 24
    .line 25
    const-string v11, "Data version "

    .line 26
    .line 27
    const-string v12, "Performing a V to U downgrade; package: "

    .line 28
    .line 29
    const-string v13, "Package "

    .line 30
    .line 31
    const-string v14, "Restore manifest from "

    .line 32
    .line 33
    sget-object v15, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    .line 34
    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    return-object v15

    .line 38
    :cond_0
    move-object/from16 p0, v15

    .line 39
    .line 40
    :try_start_0
    iget-object v15, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    move-object/from16 v16, v6

    .line 43
    .line 44
    const/high16 v6, 0x8000000

    .line 45
    .line 46
    move-object/from16 v17, v5

    .line 47
    .line 48
    move-object/from16 v5, p1

    .line 49
    .line 50
    :try_start_1
    invoke-virtual {v5, v15, v6, v3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 55
    .line 56
    iget v15, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 57
    .line 58
    invoke-virtual {v4, v6}, Lcom/android/server/backup/utils/BackupEligibilityRules;->isAppBackupAllowed(Landroid/content/pm/ApplicationInfo;)Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-nez v6, :cond_2

    .line 63
    .line 64
    if-eqz p8, :cond_1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v3, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v3, " but allowBackup=false"

    .line 78
    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-static {v8, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    const/16 v2, 0x27

    .line 90
    .line 91
    const/4 v3, 0x3

    .line 92
    const/4 v4, 0x0

    .line 93
    invoke-virtual {v7, v2, v5, v3, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 94
    .line 95
    .line 96
    goto/16 :goto_3

    .line 97
    .line 98
    :cond_2
    :goto_0
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 99
    .line 100
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 101
    .line 102
    invoke-static {v6}, Landroid/os/UserHandle;->isCore(I)Z

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    if-eqz v6, :cond_4

    .line 107
    .line 108
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 109
    .line 110
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 111
    .line 112
    if-eqz v6, :cond_3

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget-object v3, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v3, " is system level with no agent"

    .line 126
    .line 127
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-static {v8, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    const/16 v2, 0x26

    .line 138
    .line 139
    const/4 v3, 0x2

    .line 140
    const/4 v4, 0x0

    .line 141
    invoke-virtual {v7, v2, v5, v3, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 142
    .line 143
    .line 144
    goto/16 :goto_3

    .line 145
    .line 146
    :cond_4
    :goto_1
    invoke-virtual {v4, v2, v5}, Lcom/android/server/backup/utils/BackupEligibilityRules;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    if-eqz v2, :cond_a

    .line 151
    .line 152
    iget-object v2, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 153
    .line 154
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 155
    .line 156
    const/high16 v4, 0x20000

    .line 157
    .line 158
    and-int/2addr v2, v4

    .line 159
    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    .line 160
    .line 161
    if-eqz v2, :cond_5

    .line 162
    .line 163
    :try_start_2
    const-string v2, "Package has restoreAnyVersion; taking data"

    .line 164
    .line 165
    invoke-static {v8, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    const/16 v2, 0x22

    .line 169
    .line 170
    const/4 v3, 0x3

    .line 171
    const/4 v6, 0x0

    .line 172
    invoke-virtual {v7, v2, v5, v3, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 173
    .line 174
    .line 175
    :goto_2
    move-object v15, v4

    .line 176
    goto/16 :goto_4

    .line 177
    .line 178
    :cond_5
    invoke-virtual {v5}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 179
    .line 180
    .line 181
    move-result-wide v14

    .line 182
    move-object v2, v10

    .line 183
    iget-wide v9, v1, Lcom/android/server/backup/FileMetadata;->version:J

    .line 184
    .line 185
    cmp-long v6, v14, v9

    .line 186
    .line 187
    if-ltz v6, :cond_6

    .line 188
    .line 189
    const-string v2, "Sig + version match; taking data"

    .line 190
    .line 191
    invoke-static {v8, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    const/16 v2, 0x23

    .line 195
    .line 196
    const/4 v3, 0x3

    .line 197
    const/4 v6, 0x0

    .line 198
    invoke-virtual {v7, v2, v5, v3, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 199
    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_6
    invoke-virtual/range {p7 .. p7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    const-string/jumbo v9, "v_to_u_restore_allowlist"

    .line 207
    .line 208
    .line 209
    invoke-static {v6, v9, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    if-nez v3, :cond_7

    .line 214
    .line 215
    const-string v3, ""

    .line 216
    .line 217
    :cond_7
    const-string v6, ","

    .line 218
    .line 219
    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    invoke-static {}, Lcom/android/server/backup/Flags;->enableVToURestoreForSystemComponentsInAllowlist()Z

    .line 228
    .line 229
    .line 230
    move-result v6

    .line 231
    if-eqz v6, :cond_8

    .line 232
    .line 233
    invoke-virtual {v5}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 234
    .line 235
    .line 236
    move-result-wide v9

    .line 237
    const-wide/16 v14, 0x22

    .line 238
    .line 239
    cmp-long v6, v9, v14

    .line 240
    .line 241
    if-nez v6, :cond_8

    .line 242
    .line 243
    iget-wide v9, v1, Lcom/android/server/backup/FileMetadata;->version:J

    .line 244
    .line 245
    cmp-long v6, v9, v14

    .line 246
    .line 247
    if-lez v6, :cond_8

    .line 248
    .line 249
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 250
    .line 251
    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v3

    .line 255
    if-eqz v3, :cond_8

    .line 256
    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    iget-object v3, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 263
    .line 264
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    const-string v3, " is allowlisted"

    .line 268
    .line 269
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    invoke-static {v8, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .line 278
    .line 279
    const/16 v2, 0x46

    .line 280
    .line 281
    const/4 v3, 0x3

    .line 282
    const/4 v6, 0x0

    .line 283
    invoke-virtual {v7, v2, v5, v3, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 284
    .line 285
    .line 286
    goto :goto_2

    .line 287
    :cond_8
    if-eqz v0, :cond_9

    .line 288
    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    .line 290
    .line 291
    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    iget-wide v3, v1, Lcom/android/server/backup/FileMetadata;->version:J

    .line 295
    .line 296
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    const-string v3, " is newer than installed version "

    .line 300
    .line 301
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v5}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 305
    .line 306
    .line 307
    move-result-wide v3

    .line 308
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    const-string v3, " - requiring apk"

    .line 312
    .line 313
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    invoke-static {v8, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    .line 322
    .line 323
    move-object/from16 v15, v16

    .line 324
    .line 325
    goto :goto_4

    .line 326
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 327
    .line 328
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    iget-wide v9, v1, Lcom/android/server/backup/FileMetadata;->version:J

    .line 332
    .line 333
    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    const-string v2, "; ignoring"

    .line 337
    .line 338
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v2

    .line 345
    invoke-static {v8, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    .line 347
    .line 348
    const-string v2, "android.app.backup.extra.LOG_OLD_VERSION"

    .line 349
    .line 350
    iget-wide v3, v1, Lcom/android/server/backup/FileMetadata;->version:J

    .line 351
    .line 352
    new-instance v6, Landroid/os/Bundle;

    .line 353
    .line 354
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v6, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 358
    .line 359
    .line 360
    const/16 v2, 0x24

    .line 361
    .line 362
    const/4 v3, 0x3

    .line 363
    invoke-virtual {v7, v2, v5, v3, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 364
    .line 365
    .line 366
    :goto_3
    move-object/from16 v15, p0

    .line 367
    .line 368
    goto :goto_4

    .line 369
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    .line 370
    .line 371
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    iget-object v3, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 375
    .line 376
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    invoke-static {v8, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    .line 385
    .line 386
    const/16 v2, 0x25

    .line 387
    .line 388
    const/4 v3, 0x3

    .line 389
    const/4 v4, 0x0

    .line 390
    invoke-virtual {v7, v2, v5, v3, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 391
    .line 392
    .line 393
    goto :goto_3

    .line 394
    :goto_4
    move-object/from16 v0, v16

    .line 395
    .line 396
    move-object/from16 v3, v17

    .line 397
    .line 398
    goto :goto_6

    .line 399
    :catch_0
    move-object/from16 v17, v5

    .line 400
    .line 401
    move-object/from16 v16, v6

    .line 402
    .line 403
    :catch_1
    if-eqz v0, :cond_b

    .line 404
    .line 405
    new-instance v2, Ljava/lang/StringBuilder;

    .line 406
    .line 407
    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    iget-object v3, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 411
    .line 412
    const-string v4, " not installed; requiring apk in dataset"

    .line 413
    .line 414
    invoke-static {v2, v3, v4, v8}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    move-object/from16 v15, v16

    .line 418
    .line 419
    goto :goto_5

    .line 420
    :cond_b
    move-object/from16 v15, p0

    .line 421
    .line 422
    :goto_5
    iget-object v2, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 423
    .line 424
    move-object/from16 v3, v17

    .line 425
    .line 426
    invoke-static {v3, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->putMonitoringExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    const-string v4, "android.app.backup.extra.LOG_POLICY_ALLOW_APKS"

    .line 431
    .line 432
    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 433
    .line 434
    .line 435
    const/16 v0, 0x28

    .line 436
    .line 437
    const/4 v4, 0x3

    .line 438
    const/4 v5, 0x0

    .line 439
    invoke-virtual {v7, v0, v5, v4, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 440
    .line 441
    .line 442
    move-object/from16 v0, v16

    .line 443
    .line 444
    :goto_6
    if-ne v15, v0, :cond_c

    .line 445
    .line 446
    iget-boolean v0, v1, Lcom/android/server/backup/FileMetadata;->hasApk:Z

    .line 447
    .line 448
    if-nez v0, :cond_c

    .line 449
    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    .line 451
    .line 452
    const-string v2, "Cannot restore package "

    .line 453
    .line 454
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    iget-object v2, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 458
    .line 459
    const-string v4, " without the matching .apk"

    .line 460
    .line 461
    invoke-static {v0, v2, v4, v8}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    iget-object v0, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 465
    .line 466
    invoke-static {v3, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->putMonitoringExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    const/16 v1, 0x29

    .line 471
    .line 472
    const/4 v2, 0x3

    .line 473
    const/4 v3, 0x0

    .line 474
    invoke-virtual {v7, v1, v3, v2, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 475
    .line 476
    .line 477
    :cond_c
    return-object v15
.end method

.method public final getMonitor()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 4
    .line 5
    return-void
.end method

.method public final getWidgetData()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mWidgetData:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public final readAppManifestAndReturnSignatures(Lcom/android/server/backup/FileMetadata;)[Landroid/content/pm/Signature;
    .locals 13

    .line 1
    const-string v0, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 4
    .line 5
    const-string v2, "BackupManagerService"

    .line 6
    .line 7
    const-string v3, "Unknown restore manifest version "

    .line 8
    .line 9
    const-string v4, "Expected package "

    .line 10
    .line 11
    const-string v5, "Missing signature on backed-up package "

    .line 12
    .line 13
    iget-wide v6, p1, Lcom/android/server/backup/FileMetadata;->size:J

    .line 14
    .line 15
    const-wide/32 v8, 0x10000

    .line 16
    .line 17
    .line 18
    cmp-long v8, v6, v8

    .line 19
    .line 20
    if-gtz v8, :cond_7

    .line 21
    .line 22
    long-to-int v6, v6

    .line 23
    new-array v7, v6, [B

    .line 24
    .line 25
    iget-object v8, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    .line 26
    .line 27
    invoke-static {v8, v7, v6}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BI)I

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    int-to-long v8, v6

    .line 32
    iget-wide v10, p1, Lcom/android/server/backup/FileMetadata;->size:J

    .line 33
    .line 34
    cmp-long v6, v8, v10

    .line 35
    .line 36
    if-nez v6, :cond_6

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/restore/FullRestoreEngine$$ExternalSyntheticLambda0;

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    const/4 p0, 0x1

    .line 44
    new-array v6, p0, [Ljava/lang/String;

    .line 45
    .line 46
    const/4 v8, 0x0

    .line 47
    const/4 v9, 0x3

    .line 48
    const/4 v10, 0x0

    .line 49
    :try_start_0
    invoke-static {v7, v8, v6}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v11

    .line 53
    aget-object v12, v6, v8

    .line 54
    .line 55
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v12

    .line 59
    if-ne v12, p0, :cond_5

    .line 60
    .line 61
    invoke-static {v7, v11, v6}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    aget-object v11, v6, v8

    .line 66
    .line 67
    iget-object v12, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v12

    .line 73
    if-eqz v12, :cond_4

    .line 74
    .line 75
    invoke-static {v7, v3, v6}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    aget-object v4, v6, v8

    .line 80
    .line 81
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    int-to-long v11, v4

    .line 86
    iput-wide v11, p1, Lcom/android/server/backup/FileMetadata;->version:J

    .line 87
    .line 88
    invoke-static {v7, v3, v6}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    aget-object v4, v6, v8

    .line 93
    .line 94
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    invoke-static {v7, v3, v6}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    aget-object v4, v6, v8

    .line 102
    .line 103
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    if-lez v4, :cond_0

    .line 108
    .line 109
    aget-object v4, v6, v8

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :catch_0
    move-exception p0

    .line 113
    goto/16 :goto_2

    .line 114
    .line 115
    :cond_0
    move-object v4, v10

    .line 116
    :goto_0
    iput-object v4, p1, Lcom/android/server/backup/FileMetadata;->installerPackageName:Ljava/lang/String;

    .line 117
    .line 118
    invoke-static {v7, v3, v6}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    aget-object v4, v6, v8

    .line 123
    .line 124
    const-string v11, "1"

    .line 125
    .line 126
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    iput-boolean v4, p1, Lcom/android/server/backup/FileMetadata;->hasApk:Z

    .line 131
    .line 132
    sget-object v4, Lcom/android/server/backup/UserBackupManagerService;->mSplitRestoreFlag:Ljava/lang/Boolean;

    .line 133
    .line 134
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    if-ne v4, p0, :cond_1

    .line 139
    .line 140
    invoke-static {v7, v3, v6}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    aget-object p0, v6, v8

    .line 145
    .line 146
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    move-result p0

    .line 150
    iput p0, p1, Lcom/android/server/backup/FileMetadata;->splitCount:I

    .line 151
    .line 152
    :cond_1
    invoke-static {v7, v3, v6}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    move-result p0

    .line 156
    aget-object v3, v6, v8

    .line 157
    .line 158
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    if-lez v3, :cond_3

    .line 163
    .line 164
    new-array v4, v3, [Landroid/content/pm/Signature;

    .line 165
    .line 166
    move v5, v8

    .line 167
    :goto_1
    if-ge v5, v3, :cond_2

    .line 168
    .line 169
    invoke-static {v7, p0, v6}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    move-result p0

    .line 173
    new-instance v11, Landroid/content/pm/Signature;

    .line 174
    .line 175
    aget-object v12, v6, v8

    .line 176
    .line 177
    invoke-direct {v11, v12}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    aput-object v11, v4, v5

    .line 181
    .line 182
    add-int/lit8 v5, v5, 0x1

    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_2
    return-object v4

    .line 186
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    iget-object v3, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 192
    .line 193
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    iget-object p0, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 204
    .line 205
    invoke-static {v0, p0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->putMonitoringExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    const/16 v3, 0x2a

    .line 210
    .line 211
    invoke-virtual {v1, v3, v10, v9, p0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 212
    .line 213
    .line 214
    goto :goto_3

    .line 215
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    iget-object v3, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 221
    .line 222
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    const-string v3, " but restore manifest claims "

    .line 226
    .line 227
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    iget-object p0, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 241
    .line 242
    invoke-static {v0, p0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->putMonitoringExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 243
    .line 244
    .line 245
    move-result-object p0

    .line 246
    const-string v3, "android.app.backup.extra.LOG_MANIFEST_PACKAGE_NAME"

    .line 247
    .line 248
    invoke-virtual {p0, v3, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    const/16 v3, 0x2b

    .line 252
    .line 253
    invoke-virtual {v1, v3, v10, v9, p0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 254
    .line 255
    .line 256
    goto :goto_3

    .line 257
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    const-string v3, " for package "

    .line 266
    .line 267
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    iget-object v3, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 271
    .line 272
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p0

    .line 279
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    .line 281
    .line 282
    iget-object p0, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 283
    .line 284
    invoke-static {v0, p0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->putMonitoringExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 285
    .line 286
    .line 287
    move-result-object p0

    .line 288
    const-string v3, "android.app.backup.extra.LOG_EVENT_PACKAGE_VERSION"

    .line 289
    .line 290
    invoke-virtual {p0, v3, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 291
    .line 292
    .line 293
    const/16 v3, 0x2c

    .line 294
    .line 295
    invoke-virtual {v1, v3, v10, v9, p0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    .line 297
    .line 298
    goto :goto_3

    .line 299
    :goto_2
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object p0

    .line 303
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    .line 305
    .line 306
    goto :goto_3

    .line 307
    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 308
    .line 309
    const-string v3, "Corrupt restore manifest for package "

    .line 310
    .line 311
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    iget-object v3, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 315
    .line 316
    invoke-static {p0, v3, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    iget-object p0, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 320
    .line 321
    invoke-static {v0, p0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->putMonitoringExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 322
    .line 323
    .line 324
    move-result-object p0

    .line 325
    const/16 p1, 0x2e

    .line 326
    .line 327
    invoke-virtual {v1, p1, v10, v9, p0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 328
    .line 329
    .line 330
    :goto_3
    return-object v10

    .line 331
    :cond_6
    new-instance p0, Ljava/io/IOException;

    .line 332
    .line 333
    const-string p1, "Unexpected EOF in manifest"

    .line 334
    .line 335
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    throw p0

    .line 339
    :cond_7
    new-instance p0, Ljava/io/IOException;

    .line 340
    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    .line 342
    .line 343
    const-string v1, "Restore manifest too big; corrupt? size="

    .line 344
    .line 345
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    iget-wide v1, p1, Lcom/android/server/backup/FileMetadata;->size:J

    .line 349
    .line 350
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object p1

    .line 357
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    throw p0
.end method

.method public final readMetadata(Lcom/android/server/backup/FileMetadata;)V
    .locals 12

    .line 1
    iget-wide v0, p1, Lcom/android/server/backup/FileMetadata;->size:J

    .line 2
    .line 3
    const-wide/32 v2, 0x10000

    .line 4
    .line 5
    .line 6
    cmp-long v2, v0, v2

    .line 7
    .line 8
    if-gtz v2, :cond_6

    .line 9
    .line 10
    long-to-int v0, v0

    .line 11
    new-array v1, v0, [B

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    .line 14
    .line 15
    invoke-static {v2, v1, v0}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BI)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    int-to-long v2, v2

    .line 20
    iget-wide v4, p1, Lcom/android/server/backup/FileMetadata;->size:J

    .line 21
    .line 22
    cmp-long v2, v2, v4

    .line 23
    .line 24
    if-nez v2, :cond_5

    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/restore/FullRestoreEngine$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    new-array v3, v2, [Ljava/lang/String;

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-static {v1, v4, v3}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    aget-object v6, v3, v4

    .line 40
    .line 41
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    iget-object v7, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 46
    .line 47
    const/4 v8, 0x3

    .line 48
    const-string v9, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    .line 49
    .line 50
    const-string v10, "BackupManagerService"

    .line 51
    .line 52
    const/4 v11, 0x0

    .line 53
    if-ne v6, v2, :cond_3

    .line 54
    .line 55
    invoke-static {v1, v5, v3}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    aget-object v3, v3, v4

    .line 60
    .line 61
    iget-object v4, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_2

    .line 68
    .line 69
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 70
    .line 71
    sub-int/2addr v0, v2

    .line 72
    invoke-direct {v3, v1, v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 73
    .line 74
    .line 75
    new-instance v0, Ljava/io/DataInputStream;

    .line 76
    .line 77
    invoke-direct {v0, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->available()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-lez v1, :cond_4

    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    const/high16 v4, 0x10000

    .line 95
    .line 96
    if-gt v2, v4, :cond_1

    .line 97
    .line 98
    const v4, 0x1ffed01

    .line 99
    .line 100
    .line 101
    if-eq v1, v4, :cond_0

    .line 102
    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string v5, "Ignoring metadata blob "

    .line 106
    .line 107
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const-string v5, " for "

    .line 111
    .line 112
    invoke-static {v1, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-object v1, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-static {v10, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v2}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_0
    new-array v1, v2, [B

    .line 132
    .line 133
    iput-object v1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mWidgetData:[B

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->read([B)I

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 140
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string v2, "Datum "

    .line 144
    .line 145
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    const-string v2, " too big; corrupt? size="

    .line 149
    .line 150
    invoke-static {v1, v0, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    iget-wide v1, p1, Lcom/android/server/backup/FileMetadata;->size:J

    .line 154
    .line 155
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw p0

    .line 166
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    const-string v0, "Metadata mismatch: package "

    .line 169
    .line 170
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    iget-object v0, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string v0, " but widget data for "

    .line 179
    .line 180
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    invoke-static {v10, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    iget-object p0, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 194
    .line 195
    invoke-static {v9, p0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->putMonitoringExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    const-string p1, "android.app.backup.extra.LOG_WIDGET_PACKAGE_NAME"

    .line 200
    .line 201
    invoke-virtual {p0, p1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    const/16 p1, 0x2f

    .line 205
    .line 206
    invoke-virtual {v7, p1, v11, v8, p0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 207
    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_3
    const-string p0, "Unsupported metadata version "

    .line 211
    .line 212
    invoke-static {v6, p0, v10}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    iget-object p0, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 216
    .line 217
    invoke-static {v9, p0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->putMonitoringExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 218
    .line 219
    .line 220
    move-result-object p0

    .line 221
    const-string p1, "android.app.backup.extra.LOG_EVENT_PACKAGE_VERSION"

    .line 222
    .line 223
    invoke-virtual {p0, p1, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 224
    .line 225
    .line 226
    const/16 p1, 0x30

    .line 227
    .line 228
    invoke-virtual {v7, p1, v11, v8, p0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 229
    .line 230
    .line 231
    :cond_4
    :goto_1
    return-void

    .line 232
    :cond_5
    new-instance p0, Ljava/io/IOException;

    .line 233
    .line 234
    const-string p1, "Unexpected EOF in widget data"

    .line 235
    .line 236
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    throw p0

    .line 240
    :cond_6
    new-instance p0, Ljava/io/IOException;

    .line 241
    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    const-string v1, "Metadata too big; corrupt? size="

    .line 245
    .line 246
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    iget-wide v1, p1, Lcom/android/server/backup/FileMetadata;->size:J

    .line 250
    .line 251
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    throw p0
.end method

.method public final readPaxExtendedHeader(Lcom/android/server/backup/FileMetadata;)V
    .locals 10

    .line 1
    iget-wide v0, p1, Lcom/android/server/backup/FileMetadata;->size:J

    .line 2
    .line 3
    const-wide/32 v2, 0x8000

    .line 4
    .line 5
    .line 6
    cmp-long v2, v0, v2

    .line 7
    .line 8
    const-string v3, "BackupManagerService"

    .line 9
    .line 10
    if-gtz v2, :cond_8

    .line 11
    .line 12
    const-wide/16 v4, 0x1ff

    .line 13
    .line 14
    add-long/2addr v0, v4

    .line 15
    const/16 v2, 0x9

    .line 16
    .line 17
    shr-long/2addr v0, v2

    .line 18
    long-to-int v0, v0

    .line 19
    mul-int/lit16 v0, v0, 0x200

    .line 20
    .line 21
    new-array v1, v0, [B

    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    .line 24
    .line 25
    invoke-static {v2, v1, v0}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BI)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-lt v2, v0, :cond_7

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/restore/FullRestoreEngine$$ExternalSyntheticLambda0;

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    iget-wide v4, p1, Lcom/android/server/backup/FileMetadata;->size:J

    .line 37
    .line 38
    long-to-int p0, v4

    .line 39
    const/4 v0, 0x0

    .line 40
    :cond_0
    add-int/lit8 v2, v0, 0x1

    .line 41
    .line 42
    :goto_0
    if-ge v2, p0, :cond_1

    .line 43
    .line 44
    aget-byte v4, v1, v2

    .line 45
    .line 46
    const/16 v5, 0x20

    .line 47
    .line 48
    if-eq v4, v5, :cond_1

    .line 49
    .line 50
    add-int/lit8 v2, v2, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    if-ge v2, p0, :cond_6

    .line 54
    .line 55
    sub-int v4, v2, v0

    .line 56
    .line 57
    const/16 v5, 0xa

    .line 58
    .line 59
    invoke-static {v0, v4, v5, v1}, Lcom/android/server/backup/utils/TarBackupReader;->extractRadix(III[B)J

    .line 60
    .line 61
    .line 62
    move-result-wide v4

    .line 63
    long-to-int v4, v4

    .line 64
    add-int/lit8 v5, v2, 0x1

    .line 65
    .line 66
    add-int/2addr v0, v4

    .line 67
    add-int/lit8 v4, v0, -0x1

    .line 68
    .line 69
    add-int/lit8 v2, v2, 0x2

    .line 70
    .line 71
    :goto_1
    aget-byte v6, v1, v2

    .line 72
    .line 73
    const/16 v7, 0x3d

    .line 74
    .line 75
    if-eq v6, v7, :cond_2

    .line 76
    .line 77
    if-gt v2, v4, :cond_2

    .line 78
    .line 79
    add-int/lit8 v2, v2, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    if-gt v2, v4, :cond_5

    .line 83
    .line 84
    new-instance v6, Ljava/lang/String;

    .line 85
    .line 86
    sub-int v7, v2, v5

    .line 87
    .line 88
    const-string v8, "UTF-8"

    .line 89
    .line 90
    invoke-direct {v6, v1, v5, v7, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 91
    .line 92
    .line 93
    new-instance v7, Ljava/lang/String;

    .line 94
    .line 95
    add-int/lit8 v9, v2, 0x1

    .line 96
    .line 97
    sub-int/2addr v4, v2

    .line 98
    add-int/lit8 v4, v4, -0x1

    .line 99
    .line 100
    invoke-direct {v7, v1, v9, v4, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const-string/jumbo v2, "path"

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_3

    .line 111
    .line 112
    iput-object v7, p1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_3
    const-string/jumbo v2, "size"

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-eqz v2, :cond_4

    .line 123
    .line 124
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 125
    .line 126
    .line 127
    move-result-wide v4

    .line 128
    iput-wide v4, p1, Lcom/android/server/backup/FileMetadata;->size:J

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_4
    const-string v2, "Unhandled pax key: "

    .line 132
    .line 133
    invoke-static {v5, v2, v3}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    :goto_2
    if-lt v0, p0, :cond_0

    .line 137
    .line 138
    return-void

    .line 139
    :cond_5
    new-instance p0, Ljava/io/IOException;

    .line 140
    .line 141
    const-string p1, "Invalid pax declaration"

    .line 142
    .line 143
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw p0

    .line 147
    :cond_6
    new-instance p0, Ljava/io/IOException;

    .line 148
    .line 149
    const-string p1, "Invalid pax data"

    .line 150
    .line 151
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw p0

    .line 155
    :cond_7
    new-instance p0, Ljava/io/IOException;

    .line 156
    .line 157
    const-string p1, "Unable to read full pax header"

    .line 158
    .line 159
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw p0

    .line 163
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    const-string v0, "Suspiciously large pax header size "

    .line 166
    .line 167
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    iget-wide v0, p1, Lcom/android/server/backup/FileMetadata;->size:J

    .line 171
    .line 172
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v0, " - aborting"

    .line 176
    .line 177
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    new-instance p0, Ljava/io/IOException;

    .line 188
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    const-string v1, "Sanity failure: pax header size "

    .line 192
    .line 193
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    iget-wide v1, p1, Lcom/android/server/backup/FileMetadata;->size:J

    .line 197
    .line 198
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    throw p0
.end method

.method public final readTarHeaders()Lcom/android/server/backup/FileMetadata;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "US-ASCII"

    .line 4
    .line 5
    const-string v2, "BackupManagerService"

    .line 6
    .line 7
    const-string v3, "Unknown entity type "

    .line 8
    .line 9
    const-string v4, "Unknown tar entity type: "

    .line 10
    .line 11
    const-string v5, "Illegal semantic path in non-manifest "

    .line 12
    .line 13
    const-string v6, "Illegal semantic path in "

    .line 14
    .line 15
    const-string v7, "File in shared storage: "

    .line 16
    .line 17
    const/16 v8, 0x200

    .line 18
    .line 19
    new-array v9, v8, [B

    .line 20
    .line 21
    iget-object v10, v0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    .line 22
    .line 23
    invoke-static {v10, v9, v8}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BI)I

    .line 24
    .line 25
    .line 26
    move-result v10

    .line 27
    const-string v11, "Unable to read full block header"

    .line 28
    .line 29
    iget-object v12, v0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/restore/FullRestoreEngine$$ExternalSyntheticLambda0;

    .line 30
    .line 31
    const/4 v13, 0x0

    .line 32
    if-nez v10, :cond_0

    .line 33
    .line 34
    move v10, v13

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    if-lt v10, v8, :cond_11

    .line 37
    .line 38
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    const/4 v10, 0x1

    .line 42
    :goto_0
    if-eqz v10, :cond_10

    .line 43
    .line 44
    :try_start_0
    new-instance v10, Lcom/android/server/backup/FileMetadata;

    .line 45
    .line 46
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 47
    .line 48
    .line 49
    const/16 v15, 0x7c

    .line 50
    .line 51
    const/16 v14, 0xc

    .line 52
    .line 53
    const/16 v8, 0x8

    .line 54
    .line 55
    move-object/from16 v16, v5

    .line 56
    .line 57
    move-object/from16 v17, v6

    .line 58
    .line 59
    invoke-static {v15, v14, v8, v9}, Lcom/android/server/backup/utils/TarBackupReader;->extractRadix(III[B)J

    .line 60
    .line 61
    .line 62
    move-result-wide v5

    .line 63
    iput-wide v5, v10, Lcom/android/server/backup/FileMetadata;->size:J

    .line 64
    .line 65
    const/16 v5, 0x88

    .line 66
    .line 67
    invoke-static {v5, v14, v8, v9}, Lcom/android/server/backup/utils/TarBackupReader;->extractRadix(III[B)J

    .line 68
    .line 69
    .line 70
    move-result-wide v5

    .line 71
    iput-wide v5, v10, Lcom/android/server/backup/FileMetadata;->mtime:J

    .line 72
    .line 73
    const/16 v5, 0x64

    .line 74
    .line 75
    invoke-static {v5, v8, v8, v9}, Lcom/android/server/backup/utils/TarBackupReader;->extractRadix(III[B)J

    .line 76
    .line 77
    .line 78
    move-result-wide v14

    .line 79
    iput-wide v14, v10, Lcom/android/server/backup/FileMetadata;->mode:J

    .line 80
    .line 81
    const/16 v6, 0x159

    .line 82
    .line 83
    move v8, v6

    .line 84
    :goto_1
    const/16 v14, 0x1f4

    .line 85
    .line 86
    if-ge v8, v14, :cond_1

    .line 87
    .line 88
    aget-byte v14, v9, v8

    .line 89
    .line 90
    if-eqz v14, :cond_1

    .line 91
    .line 92
    add-int/lit8 v8, v8, 0x1

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_1
    new-instance v14, Ljava/lang/String;

    .line 96
    .line 97
    sub-int/2addr v8, v6

    .line 98
    invoke-direct {v14, v9, v6, v8, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iput-object v14, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 102
    .line 103
    move v6, v13

    .line 104
    :goto_2
    if-ge v6, v5, :cond_2

    .line 105
    .line 106
    aget-byte v8, v9, v6

    .line 107
    .line 108
    if-eqz v8, :cond_2

    .line 109
    .line 110
    add-int/lit8 v6, v6, 0x1

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_2
    new-instance v5, Ljava/lang/String;

    .line 114
    .line 115
    invoke-direct {v5, v9, v13, v6, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    const/16 v6, 0x2f

    .line 123
    .line 124
    if-lez v1, :cond_4

    .line 125
    .line 126
    iget-object v1, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-lez v1, :cond_3

    .line 133
    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    iget-object v8, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    iput-object v1, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :catch_0
    move-exception v0

    .line 155
    goto/16 :goto_7

    .line 156
    .line 157
    :cond_3
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    iget-object v8, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 163
    .line 164
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    iput-object v1, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 175
    .line 176
    :cond_4
    const/16 v1, 0x9c

    .line 177
    .line 178
    aget-byte v5, v9, v1

    .line 179
    .line 180
    const/16 v8, 0x78

    .line 181
    .line 182
    if-ne v5, v8, :cond_7

    .line 183
    .line 184
    invoke-virtual {v0, v10}, Lcom/android/server/backup/utils/TarBackupReader;->readPaxExtendedHeader(Lcom/android/server/backup/FileMetadata;)V

    .line 185
    .line 186
    .line 187
    iget-object v0, v0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    .line 188
    .line 189
    const/16 v5, 0x200

    .line 190
    .line 191
    invoke-static {v0, v9, v5}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BI)I

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    if-eqz v0, :cond_6

    .line 196
    .line 197
    if-lt v0, v5, :cond_5

    .line 198
    .line 199
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    aget-byte v5, v9, v1

    .line 203
    .line 204
    goto :goto_4

    .line 205
    :cond_5
    new-instance v0, Ljava/io/IOException;

    .line 206
    .line 207
    invoke-direct {v0, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    throw v0

    .line 211
    :cond_6
    new-instance v0, Ljava/io/IOException;

    .line 212
    .line 213
    const-string v1, "Bad or missing pax header"

    .line 214
    .line 215
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    throw v0

    .line 219
    :cond_7
    :goto_4
    if-eqz v5, :cond_f

    .line 220
    .line 221
    const/16 v0, 0x30

    .line 222
    .line 223
    if-eq v5, v0, :cond_9

    .line 224
    .line 225
    const/16 v0, 0x35

    .line 226
    .line 227
    if-ne v5, v0, :cond_8

    .line 228
    .line 229
    const/4 v0, 0x2

    .line 230
    iput v0, v10, Lcom/android/server/backup/FileMetadata;->type:I

    .line 231
    .line 232
    iget-wide v0, v10, Lcom/android/server/backup/FileMetadata;->size:J

    .line 233
    .line 234
    const-wide/16 v3, 0x0

    .line 235
    .line 236
    cmp-long v0, v0, v3

    .line 237
    .line 238
    if-eqz v0, :cond_a

    .line 239
    .line 240
    const-string v0, "Directory entry with nonzero size in header"

    .line 241
    .line 242
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .line 244
    .line 245
    iput-wide v3, v10, Lcom/android/server/backup/FileMetadata;->size:J

    .line 246
    .line 247
    goto :goto_5

    .line 248
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .line 262
    .line 263
    new-instance v0, Ljava/io/IOException;

    .line 264
    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    throw v0

    .line 281
    :cond_9
    const/4 v0, 0x1

    .line 282
    iput v0, v10, Lcom/android/server/backup/FileMetadata;->type:I

    .line 283
    .line 284
    :cond_a
    :goto_5
    const-string/jumbo v0, "shared/"

    .line 285
    .line 286
    .line 287
    iget-object v1, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 288
    .line 289
    const/4 v3, 0x7

    .line 290
    invoke-virtual {v0, v13, v1, v13, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    .line 291
    .line 292
    .line 293
    move-result v0

    .line 294
    if-eqz v0, :cond_b

    .line 295
    .line 296
    iget-object v0, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 297
    .line 298
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    iput-object v0, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 303
    .line 304
    const-string/jumbo v0, "com.android.sharedstoragebackup"

    .line 305
    .line 306
    .line 307
    iput-object v0, v10, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 308
    .line 309
    const-string/jumbo v0, "shared"

    .line 310
    .line 311
    .line 312
    iput-object v0, v10, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    .line 313
    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    .line 315
    .line 316
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    iget-object v1, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 320
    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    .line 330
    .line 331
    goto/16 :goto_6

    .line 332
    .line 333
    :cond_b
    const-string v0, "apps/"

    .line 334
    .line 335
    iget-object v1, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 336
    .line 337
    const/4 v3, 0x5

    .line 338
    invoke-virtual {v0, v13, v1, v13, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    .line 339
    .line 340
    .line 341
    move-result v0

    .line 342
    if-eqz v0, :cond_e

    .line 343
    .line 344
    iget-object v0, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 345
    .line 346
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    iput-object v0, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 351
    .line 352
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    if-ltz v0, :cond_d

    .line 357
    .line 358
    iget-object v1, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 359
    .line 360
    invoke-virtual {v1, v13, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    iput-object v1, v10, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 365
    .line 366
    iget-object v1, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 367
    .line 368
    const/4 v3, 0x1

    .line 369
    add-int/2addr v0, v3

    .line 370
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    iput-object v0, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 375
    .line 376
    const-string v1, "_manifest"

    .line 377
    .line 378
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result v0

    .line 382
    if-nez v0, :cond_e

    .line 383
    .line 384
    iget-object v0, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 385
    .line 386
    const-string v1, "_meta"

    .line 387
    .line 388
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    move-result v0

    .line 392
    if-nez v0, :cond_e

    .line 393
    .line 394
    iget-object v0, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 395
    .line 396
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    .line 397
    .line 398
    .line 399
    move-result v0

    .line 400
    if-ltz v0, :cond_c

    .line 401
    .line 402
    iget-object v1, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 403
    .line 404
    invoke-virtual {v1, v13, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v1

    .line 408
    iput-object v1, v10, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    .line 409
    .line 410
    iget-object v1, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 411
    .line 412
    const/4 v3, 0x1

    .line 413
    add-int/2addr v0, v3

    .line 414
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    iput-object v0, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 419
    .line 420
    goto :goto_6

    .line 421
    :cond_c
    new-instance v0, Ljava/io/IOException;

    .line 422
    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    .line 424
    .line 425
    move-object/from16 v3, v16

    .line 426
    .line 427
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    iget-object v3, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 431
    .line 432
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v1

    .line 439
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    throw v0

    .line 443
    :cond_d
    new-instance v0, Ljava/io/IOException;

    .line 444
    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    .line 446
    .line 447
    move-object/from16 v3, v17

    .line 448
    .line 449
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    iget-object v3, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 453
    .line 454
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v1

    .line 461
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    :cond_e
    :goto_6
    move-object v15, v10

    .line 466
    goto :goto_8

    .line 467
    :cond_f
    const/4 v0, 0x0

    .line 468
    return-object v0

    .line 469
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 470
    .line 471
    const-string v3, "Parse error in header: "

    .line 472
    .line 473
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v3

    .line 480
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v1

    .line 487
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    .line 489
    .line 490
    throw v0

    .line 491
    :cond_10
    const/4 v0, 0x0

    .line 492
    move-object v15, v0

    .line 493
    :goto_8
    return-object v15

    .line 494
    :cond_11
    new-instance v0, Ljava/io/IOException;

    .line 495
    .line 496
    invoke-direct {v0, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    throw v0
.end method

.method public final skipTarPadding(J)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x200

    .line 2
    .line 3
    add-long/2addr p1, v0

    .line 4
    rem-long/2addr p1, v0

    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    cmp-long v0, p1, v0

    .line 8
    .line 9
    if-lez v0, :cond_1

    .line 10
    .line 11
    long-to-int p1, p1

    .line 12
    rsub-int p1, p1, 0x200

    .line 13
    .line 14
    new-array p2, p1, [B

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    .line 17
    .line 18
    invoke-static {v0, p2, p1}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BI)I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-ne p2, p1, :cond_0

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/restore/FullRestoreEngine$$ExternalSyntheticLambda0;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 31
    .line 32
    const-string p1, "Unexpected EOF in padding"

    .line 33
    .line 34
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p0

    .line 38
    :cond_1
    :goto_0
    return-void
.end method
