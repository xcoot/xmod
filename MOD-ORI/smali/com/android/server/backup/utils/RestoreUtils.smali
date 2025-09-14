.class public abstract Lcom/android/server/backup/utils/RestoreUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static mPrivilegeApp:Z = false


# direct methods
.method public static createSession(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallerPackageName(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    const-string p1, "Exception in session id created"

    .line 25
    .line 26
    const-string v0, "BackupManagerService"

    .line 27
    .line 28
    invoke-static {p0, p1, v0}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    :goto_0
    return p0
.end method

.method public static installApk(Ljava/io/InputStream;Landroid/content/Context;Lcom/android/server/backup/restore/RestoreDeleteObserver;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/server/backup/FileMetadata;Ljava/lang/String;Lcom/android/server/backup/restore/FullRestoreEngine$$ExternalSyntheticLambda0;I)Z
    .locals 21

    .line 1
    move-object/from16 v1, p2

    .line 2
    .line 3
    move-object/from16 v2, p5

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v3, "Installing from backup: "

    .line 8
    .line 9
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v3, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 13
    .line 14
    const-string v4, "BackupManagerService"

    .line 15
    .line 16
    invoke-static {v0, v3, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    :try_start_0
    new-instance v5, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;

    .line 21
    .line 22
    invoke-direct {v5}, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 26
    .line 27
    .line 28
    move-result-object v13

    .line 29
    invoke-virtual {v13}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    .line 34
    .line 35
    const/4 v14, 0x1

    .line 36
    invoke-direct {v0, v14}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 37
    .line 38
    .line 39
    move-object/from16 v7, p6

    .line 40
    .line 41
    invoke-virtual {v0, v7}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallerPackageName(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v6, v0}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    .line 45
    .line 46
    .line 47
    move-result v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8

    .line 48
    :try_start_1
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    .line 49
    .line 50
    .line 51
    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 52
    :try_start_2
    iget-object v0, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 53
    .line 54
    iget-wide v10, v2, Lcom/android/server/backup/FileMetadata;->size:J

    .line 55
    .line 56
    const-wide/16 v17, 0x0

    .line 57
    .line 58
    move-object v15, v8

    .line 59
    move-object/from16 v16, v0

    .line 60
    .line 61
    move-wide/from16 v19, v10

    .line 62
    .line 63
    invoke-virtual/range {v15 .. v20}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    .line 64
    .line 65
    .line 66
    move-result-object v10
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 67
    :try_start_3
    invoke-static {}, Lcom/android/server/backup/Flags;->enableMaxSizeWritesToPipes()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    .line 73
    const/high16 v0, 0x10000

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    const v0, 0x8000

    .line 77
    .line 78
    .line 79
    :goto_0
    new-array v11, v0, [B

    .line 80
    .line 81
    iget-wide v14, v2, Lcom/android/server/backup/FileMetadata;->size:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 82
    .line 83
    :goto_1
    const-wide/16 v16, 0x0

    .line 84
    .line 85
    cmp-long v12, v14, v16

    .line 86
    .line 87
    if-lez v12, :cond_2

    .line 88
    .line 89
    move-object v12, v10

    .line 90
    int-to-long v9, v0

    .line 91
    cmp-long v16, v9, v14

    .line 92
    .line 93
    if-gez v16, :cond_1

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_1
    move-wide v9, v14

    .line 97
    :goto_2
    long-to-int v9, v9

    .line 98
    move-object/from16 v10, p0

    .line 99
    .line 100
    :try_start_4
    invoke-virtual {v10, v11, v3, v9}, Ljava/io/InputStream;->read([BII)I

    .line 101
    .line 102
    .line 103
    move-result v9

    .line 104
    invoke-virtual {v12, v11, v3, v9}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 105
    .line 106
    .line 107
    move-object/from16 v16, v4

    .line 108
    .line 109
    int-to-long v3, v9

    .line 110
    sub-long/2addr v14, v3

    .line 111
    move-object v10, v12

    .line 112
    move-object/from16 v4, v16

    .line 113
    .line 114
    const/4 v3, 0x0

    .line 115
    goto :goto_1

    .line 116
    :catchall_0
    move-exception v0

    .line 117
    move-object/from16 v16, v4

    .line 118
    .line 119
    :goto_3
    move-object v3, v0

    .line 120
    goto :goto_6

    .line 121
    :cond_2
    move-object/from16 v16, v4

    .line 122
    .line 123
    move-object v12, v10

    .line 124
    if-eqz v12, :cond_3

    .line 125
    .line 126
    :try_start_5
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/InterruptedIOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 127
    .line 128
    .line 129
    goto :goto_5

    .line 130
    :catchall_1
    move-exception v0

    .line 131
    :goto_4
    move-object v1, v0

    .line 132
    move-object/from16 v3, v16

    .line 133
    .line 134
    const/4 v9, 0x0

    .line 135
    goto/16 :goto_10

    .line 136
    .line 137
    :catch_0
    move-exception v0

    .line 138
    goto :goto_8

    .line 139
    :cond_3
    :goto_5
    move-object/from16 v3, v16

    .line 140
    .line 141
    goto :goto_9

    .line 142
    :catchall_2
    move-exception v0

    .line 143
    move-object/from16 v16, v4

    .line 144
    .line 145
    move-object v12, v10

    .line 146
    goto :goto_3

    .line 147
    :goto_6
    if-eqz v12, :cond_4

    .line 148
    .line 149
    :try_start_6
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 150
    .line 151
    .line 152
    goto :goto_7

    .line 153
    :catchall_3
    move-exception v0

    .line 154
    move-object v4, v0

    .line 155
    :try_start_7
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 156
    .line 157
    .line 158
    :cond_4
    :goto_7
    throw v3
    :try_end_7
    .catch Ljava/io/InterruptedIOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 159
    :catchall_4
    move-exception v0

    .line 160
    move-object/from16 v16, v4

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :catch_1
    move-exception v0

    .line 164
    move-object/from16 v16, v4

    .line 165
    .line 166
    :goto_8
    :try_start_8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    const-string v4, " InterruptedIOException in apkStream.close()"

    .line 172
    .line 173
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    .line 183
    move-object/from16 v3, v16

    .line 184
    .line 185
    :try_start_9
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    :goto_9
    const-string v0, "Entering Session Commit"

    .line 189
    .line 190
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 191
    .line 192
    .line 193
    :try_start_a
    new-instance v0, Landroid/content/IntentSender;

    .line 194
    .line 195
    iget-object v4, v5, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->mLocalSender:Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver$1;

    .line 196
    .line 197
    invoke-direct {v0, v4}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 198
    .line 199
    .line 200
    :try_start_b
    invoke-virtual {v8, v0}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 201
    .line 202
    .line 203
    :try_start_c
    invoke-virtual {v8}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    .line 204
    .line 205
    .line 206
    :try_start_d
    invoke-virtual {v5}, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    const-string v4, "android.content.pm.extra.STATUS"

    .line 211
    .line 212
    const/4 v5, 0x1

    .line 213
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 214
    .line 215
    .line 216
    move-result v4

    .line 217
    if-eqz v4, :cond_6

    .line 218
    .line 219
    iget-object v0, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 220
    .line 221
    move-object/from16 v1, p4

    .line 222
    .line 223
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    sget-object v1, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    .line 228
    .line 229
    if-eq v0, v1, :cond_5

    .line 230
    .line 231
    const/4 v3, 0x0

    .line 232
    goto/16 :goto_14

    .line 233
    .line 234
    :cond_5
    :goto_a
    move v3, v5

    .line 235
    goto/16 :goto_14

    .line 236
    .line 237
    :catch_2
    move-exception v0

    .line 238
    const/4 v9, 0x0

    .line 239
    goto/16 :goto_13

    .line 240
    .line 241
    :cond_6
    const-string v4, "android.content.pm.extra.PACKAGE_NAME"

    .line 242
    .line 243
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    iget-object v4, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 248
    .line 249
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v4

    .line 253
    if-nez v4, :cond_7

    .line 254
    .line 255
    new-instance v4, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    .line 259
    .line 260
    const-string v6, "Restore stream claimed to include apk for "

    .line 261
    .line 262
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    iget-object v2, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 266
    .line 267
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    const-string v2, " but apk was really "

    .line 271
    .line 272
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    .line 283
    .line 284
    .line 285
    :goto_b
    move v14, v5

    .line 286
    const/4 v5, 0x0

    .line 287
    goto/16 :goto_d

    .line 288
    .line 289
    :cond_7
    :try_start_e
    iget-object v4, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 290
    .line 291
    const/high16 v6, 0x8000000

    .line 292
    .line 293
    move/from16 v9, p8

    .line 294
    .line 295
    invoke-virtual {v13, v4, v6, v9}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 296
    .line 297
    .line 298
    move-result-object v4

    .line 299
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 300
    .line 301
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 302
    .line 303
    const v7, 0x8000

    .line 304
    .line 305
    .line 306
    and-int/2addr v6, v7

    .line 307
    if-nez v6, :cond_8

    .line 308
    .line 309
    sget-boolean v6, Lcom/android/server/backup/utils/RestoreUtils;->mPrivilegeApp:Z

    .line 310
    .line 311
    if-nez v6, :cond_8

    .line 312
    .line 313
    new-instance v4, Ljava/lang/StringBuilder;

    .line 314
    .line 315
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    .line 317
    .line 318
    const-string v5, "Restore stream contains apk of package "

    .line 319
    .line 320
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    iget-object v5, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 324
    .line 325
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    const-string v5, " but it disallows backup/restore"

    .line 329
    .line 330
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v4

    .line 337
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    .line 339
    .line 340
    goto/16 :goto_c

    .line 341
    .line 342
    :cond_8
    iget-object v6, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 343
    .line 344
    move-object/from16 v7, p3

    .line 345
    .line 346
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v6

    .line 350
    move-object v14, v6

    .line 351
    check-cast v14, [Landroid/content/pm/Signature;

    .line 352
    .line 353
    const-class v6, Landroid/content/pm/PackageManagerInternal;

    .line 354
    .line 355
    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v6

    .line 359
    move-object v8, v6

    .line 360
    check-cast v8, Landroid/content/pm/PackageManagerInternal;

    .line 361
    .line 362
    new-instance v15, Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 363
    .line 364
    const/4 v12, 0x0

    .line 365
    const/4 v11, 0x0

    .line 366
    move-object v6, v15

    .line 367
    move-object v7, v13

    .line 368
    move/from16 v9, p8

    .line 369
    .line 370
    move-object/from16 v10, p1

    .line 371
    .line 372
    invoke-direct/range {v6 .. v12}, Lcom/android/server/backup/utils/BackupEligibilityRules;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageManagerInternal;ILandroid/content/Context;IZ)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v15, v14, v4}, Lcom/android/server/backup/utils/BackupEligibilityRules;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z

    .line 376
    .line 377
    .line 378
    move-result v6
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    .line 379
    const-string v7, "Installed app "

    .line 380
    .line 381
    if-eqz v6, :cond_9

    .line 382
    .line 383
    :try_start_f
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 384
    .line 385
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 386
    .line 387
    invoke-static {v6}, Landroid/os/UserHandle;->isCore(I)Z

    .line 388
    .line 389
    .line 390
    move-result v6

    .line 391
    if-eqz v6, :cond_a

    .line 392
    .line 393
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 394
    .line 395
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 396
    .line 397
    if-nez v4, :cond_a

    .line 398
    .line 399
    new-instance v4, Ljava/lang/StringBuilder;

    .line 400
    .line 401
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    iget-object v5, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 408
    .line 409
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    const-string v5, " has restricted uid and no agent"

    .line 413
    .line 414
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v4

    .line 421
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    .line 423
    .line 424
    goto :goto_c

    .line 425
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 426
    .line 427
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    iget-object v6, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 434
    .line 435
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    const-string v6, " signatures do not match restore manifest"

    .line 439
    .line 440
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v4

    .line 447
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    .line 448
    .line 449
    .line 450
    goto/16 :goto_b

    .line 451
    .line 452
    :catch_3
    :try_start_10
    new-instance v4, Ljava/lang/StringBuilder;

    .line 453
    .line 454
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 455
    .line 456
    .line 457
    const-string v5, "Install of package "

    .line 458
    .line 459
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    iget-object v2, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 463
    .line 464
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    const-string v2, " succeeded but now not found"

    .line 468
    .line 469
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v2

    .line 476
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    .line 478
    .line 479
    :goto_c
    const/4 v5, 0x0

    .line 480
    :cond_a
    const/4 v14, 0x0

    .line 481
    :goto_d
    if-eqz v14, :cond_5

    .line 482
    .line 483
    iget-object v2, v1, Lcom/android/server/backup/restore/RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 484
    .line 485
    monitor-enter v2
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2

    .line 486
    :try_start_11
    iget-object v4, v1, Lcom/android/server/backup/restore/RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 487
    .line 488
    const/4 v9, 0x0

    .line 489
    :try_start_12
    invoke-virtual {v4, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 490
    .line 491
    .line 492
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 493
    :try_start_13
    invoke-virtual {v13, v0, v1, v9}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 494
    .line 495
    .line 496
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/backup/restore/RestoreDeleteObserver;->waitForCompletion()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_4

    .line 497
    .line 498
    .line 499
    goto/16 :goto_a

    .line 500
    .line 501
    :catch_4
    move-exception v0

    .line 502
    goto :goto_13

    .line 503
    :catchall_5
    move-exception v0

    .line 504
    goto :goto_e

    .line 505
    :catchall_6
    move-exception v0

    .line 506
    const/4 v9, 0x0

    .line 507
    :goto_e
    :try_start_14
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 508
    :try_start_15
    throw v0
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_4

    .line 509
    :catch_5
    move-exception v0

    .line 510
    const/4 v9, 0x0

    .line 511
    goto :goto_12

    .line 512
    :catchall_7
    move-exception v0

    .line 513
    :goto_f
    const/4 v9, 0x0

    .line 514
    move-object v1, v0

    .line 515
    goto :goto_10

    .line 516
    :catchall_8
    move-exception v0

    .line 517
    goto :goto_f

    .line 518
    :catchall_9
    move-exception v0

    .line 519
    move-object/from16 v3, v16

    .line 520
    .line 521
    goto :goto_f

    .line 522
    :goto_10
    if-eqz v8, :cond_b

    .line 523
    .line 524
    :try_start_16
    invoke-virtual {v8}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    .line 525
    .line 526
    .line 527
    goto :goto_11

    .line 528
    :catchall_a
    move-exception v0

    .line 529
    move-object v2, v0

    .line 530
    :try_start_17
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 531
    .line 532
    .line 533
    goto :goto_11

    .line 534
    :catch_6
    move-exception v0

    .line 535
    goto :goto_12

    .line 536
    :cond_b
    :goto_11
    throw v1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_6

    .line 537
    :catch_7
    move-exception v0

    .line 538
    move v9, v3

    .line 539
    move-object v3, v4

    .line 540
    :goto_12
    :try_start_18
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageInstaller;->abandonSession(I)V

    .line 541
    .line 542
    .line 543
    throw v0
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_4

    .line 544
    :catch_8
    move-exception v0

    .line 545
    move v9, v3

    .line 546
    move-object v3, v4

    .line 547
    :goto_13
    const-string v1, "Unable to transcribe restored apk for install"

    .line 548
    .line 549
    invoke-static {v1, v0, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    move v3, v9

    .line 553
    :goto_14
    return v3
.end method

.method public static installApkSplitSupport(Landroid/content/Context;Lcom/android/server/backup/restore/RestoreDeleteObserver;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/server/backup/FileMetadata;II)Z
    .locals 20

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    move/from16 v2, p6

    .line 6
    .line 7
    const-string v3, "Install of package "

    .line 8
    .line 9
    const-string v4, "Restore stream contains apk of package "

    .line 10
    .line 11
    const-string v5, "Restore stream claimed to include apk for "

    .line 12
    .line 13
    new-instance v6, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v7, "Installing from backup: "

    .line 16
    .line 17
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v7, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 21
    .line 22
    const-string v8, "BackupManagerService"

    .line 23
    .line 24
    invoke-static {v6, v7, v8}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 v6, 0x0

    .line 28
    :try_start_0
    new-instance v7, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;

    .line 29
    .line 30
    invoke-direct {v7}, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 34
    .line 35
    .line 36
    move-result-object v15

    .line 37
    invoke-virtual {v15}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    .line 38
    .line 39
    .line 40
    move-result-object v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :try_start_1
    invoke-virtual {v9, v2}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    .line 42
    .line 43
    .line 44
    move-result-object v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 45
    :try_start_2
    const-string v11, "Entering Session Commit"

    .line 46
    .line 47
    invoke-static {v8, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    new-instance v11, Landroid/content/IntentSender;

    .line 51
    .line 52
    iget-object v12, v7, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->mLocalSender:Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver$1;

    .line 53
    .line 54
    invoke-direct {v11, v12}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v10, v11}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 58
    .line 59
    .line 60
    :try_start_3
    invoke-virtual {v10}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 61
    .line 62
    .line 63
    :try_start_4
    invoke-virtual {v7}, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    const-string v7, "android.content.pm.extra.STATUS"

    .line 68
    .line 69
    const/4 v14, 0x1

    .line 70
    invoke-virtual {v2, v7, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    if-eqz v7, :cond_1

    .line 75
    .line 76
    iget-object v0, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 77
    .line 78
    move-object/from16 v1, p3

    .line 79
    .line 80
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    sget-object v1, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    .line 85
    .line 86
    if-eq v0, v1, :cond_0

    .line 87
    .line 88
    goto/16 :goto_8

    .line 89
    .line 90
    :cond_0
    move v6, v14

    .line 91
    goto/16 :goto_8

    .line 92
    .line 93
    :catch_0
    move-exception v0

    .line 94
    goto/16 :goto_7

    .line 95
    .line 96
    :cond_1
    const-string v7, "android.content.pm.extra.PACKAGE_NAME"

    .line 97
    .line 98
    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    iget-object v7, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    if-nez v7, :cond_2

    .line 109
    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-object v1, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v1, " but apk was really "

    .line 121
    .line 122
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-static {v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 133
    .line 134
    .line 135
    move/from16 v18, v6

    .line 136
    .line 137
    :goto_0
    move-object/from16 v19, v15

    .line 138
    .line 139
    goto/16 :goto_3

    .line 140
    .line 141
    :cond_2
    :try_start_5
    iget-object v5, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 142
    .line 143
    const/high16 v7, 0x8000000

    .line 144
    .line 145
    move/from16 v12, p5

    .line 146
    .line 147
    invoke-virtual {v15, v5, v7, v12}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 152
    .line 153
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 154
    .line 155
    const v9, 0x8000

    .line 156
    .line 157
    .line 158
    and-int/2addr v7, v9

    .line 159
    if-nez v7, :cond_3

    .line 160
    .line 161
    sget-boolean v7, Lcom/android/server/backup/utils/RestoreUtils;->mPrivilegeApp:Z

    .line 162
    .line 163
    if-nez v7, :cond_3

    .line 164
    .line 165
    new-instance v5, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    iget-object v4, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v4, " but it disallows backup/restore"

    .line 176
    .line 177
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    invoke-static {v8, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    move v14, v6

    .line 188
    move/from16 v18, v14

    .line 189
    .line 190
    goto :goto_0

    .line 191
    :catch_1
    move-object/from16 v19, v15

    .line 192
    .line 193
    goto/16 :goto_1

    .line 194
    .line 195
    :cond_3
    iget-object v4, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 196
    .line 197
    move-object/from16 v7, p2

    .line 198
    .line 199
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    check-cast v4, [Landroid/content/pm/Signature;

    .line 204
    .line 205
    const-class v7, Landroid/content/pm/PackageManagerInternal;

    .line 206
    .line 207
    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v7

    .line 211
    move-object v11, v7

    .line 212
    check-cast v11, Landroid/content/pm/PackageManagerInternal;

    .line 213
    .line 214
    new-instance v7, Lcom/android/server/backup/utils/BackupEligibilityRules;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 215
    .line 216
    const/16 v16, 0x0

    .line 217
    .line 218
    const/16 v17, 0x0

    .line 219
    .line 220
    move-object v9, v7

    .line 221
    move-object v10, v15

    .line 222
    move/from16 v12, p5

    .line 223
    .line 224
    move-object/from16 v13, p0

    .line 225
    .line 226
    move/from16 v18, v14

    .line 227
    .line 228
    move/from16 v14, v17

    .line 229
    .line 230
    move-object/from16 v19, v15

    .line 231
    .line 232
    move/from16 v15, v16

    .line 233
    .line 234
    :try_start_6
    invoke-direct/range {v9 .. v15}, Lcom/android/server/backup/utils/BackupEligibilityRules;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageManagerInternal;ILandroid/content/Context;IZ)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v7, v4, v5}, Lcom/android/server/backup/utils/BackupEligibilityRules;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z

    .line 238
    .line 239
    .line 240
    move-result v4
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 241
    const-string v7, "Installed app "

    .line 242
    .line 243
    if-eqz v4, :cond_5

    .line 244
    .line 245
    :try_start_7
    iget-object v4, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 246
    .line 247
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 248
    .line 249
    invoke-static {v4}, Landroid/os/UserHandle;->isCore(I)Z

    .line 250
    .line 251
    .line 252
    move-result v4

    .line 253
    if-eqz v4, :cond_4

    .line 254
    .line 255
    iget-object v4, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 256
    .line 257
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 258
    .line 259
    if-nez v4, :cond_4

    .line 260
    .line 261
    new-instance v4, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    iget-object v5, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 267
    .line 268
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    const-string v5, " has restricted uid and no agent"

    .line 272
    .line 273
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v4

    .line 280
    invoke-static {v8, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    .line 282
    .line 283
    goto :goto_2

    .line 284
    :cond_4
    move v14, v6

    .line 285
    goto :goto_3

    .line 286
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    iget-object v5, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 292
    .line 293
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    const-string v5, " signatures do not match restore manifest"

    .line 297
    .line 298
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    invoke-static {v8, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 306
    .line 307
    .line 308
    move/from16 v14, v18

    .line 309
    .line 310
    move/from16 v18, v6

    .line 311
    .line 312
    goto :goto_3

    .line 313
    :catch_2
    :goto_1
    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    .line 314
    .line 315
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    iget-object v1, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 319
    .line 320
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    const-string v1, " succeeded but now not found"

    .line 324
    .line 325
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    invoke-static {v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    .line 334
    .line 335
    :goto_2
    move v14, v6

    .line 336
    move/from16 v18, v14

    .line 337
    .line 338
    :goto_3
    if-eqz v14, :cond_6

    .line 339
    .line 340
    iget-object v1, v0, Lcom/android/server/backup/restore/RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 341
    .line 342
    monitor-enter v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 343
    :try_start_9
    iget-object v3, v0, Lcom/android/server/backup/restore/RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 344
    .line 345
    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 346
    .line 347
    .line 348
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 349
    move-object/from16 v1, v19

    .line 350
    .line 351
    :try_start_a
    invoke-virtual {v1, v2, v0, v6}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 352
    .line 353
    .line 354
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/restore/RestoreDeleteObserver;->waitForCompletion()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    .line 355
    .line 356
    .line 357
    goto :goto_4

    .line 358
    :catchall_0
    move-exception v0

    .line 359
    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 360
    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    .line 361
    :cond_6
    :goto_4
    move/from16 v6, v18

    .line 362
    .line 363
    goto :goto_8

    .line 364
    :catch_3
    move-exception v0

    .line 365
    goto :goto_6

    .line 366
    :catchall_1
    move-exception v0

    .line 367
    move-object v1, v0

    .line 368
    if-eqz v10, :cond_7

    .line 369
    .line 370
    :try_start_d
    invoke-virtual {v10}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 371
    .line 372
    .line 373
    goto :goto_5

    .line 374
    :catchall_2
    move-exception v0

    .line 375
    move-object v3, v0

    .line 376
    :try_start_e
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 377
    .line 378
    .line 379
    :cond_7
    :goto_5
    throw v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    .line 380
    :goto_6
    :try_start_f
    invoke-virtual {v9, v2}, Landroid/content/pm/PackageInstaller;->abandonSession(I)V

    .line 381
    .line 382
    .line 383
    throw v0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0

    .line 384
    :goto_7
    const-string v1, "Unable to transcribe restored apk for install"

    .line 385
    .line 386
    invoke-static {v1, v0, v8}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    :goto_8
    return v6
.end method

.method public static setPrivilegeApp(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/android/server/backup/utils/RestoreUtils;->mPrivilegeApp:Z

    .line 2
    .line 3
    return-void
.end method

.method public static writeSession(Landroid/content/Context;Ljava/io/InputStream;Lcom/android/server/backup/FileMetadata;Lcom/android/server/backup/restore/FullRestoreEngine$$ExternalSyntheticLambda0;I)Z
    .locals 7

    .line 1
    const-string p3, "BackupManagerService"

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v0, 0x0

    .line 12
    :try_start_0
    invoke-virtual {p0, p4}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    .line 13
    .line 14
    .line 15
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 16
    :try_start_1
    iget-object v2, p2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 17
    .line 18
    iget-wide v5, p2, Lcom/android/server/backup/FileMetadata;->size:J

    .line 19
    .line 20
    const-wide/16 v3, 0x0

    .line 21
    .line 22
    move-object v1, p0

    .line 23
    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    .line 24
    .line 25
    .line 26
    move-result-object p4
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 27
    const v1, 0x8000

    .line 28
    .line 29
    .line 30
    :try_start_2
    new-array v2, v1, [B

    .line 31
    .line 32
    iget-wide v3, p2, Lcom/android/server/backup/FileMetadata;->size:J

    .line 33
    .line 34
    :goto_0
    const-wide/16 v5, 0x0

    .line 35
    .line 36
    cmp-long p2, v3, v5

    .line 37
    .line 38
    if-lez p2, :cond_1

    .line 39
    .line 40
    int-to-long v5, v1

    .line 41
    cmp-long p2, v5, v3

    .line 42
    .line 43
    if-gez p2, :cond_0

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    move-wide v5, v3

    .line 47
    :goto_1
    long-to-int p2, v5

    .line 48
    invoke-virtual {p1, v2, v0, p2}, Ljava/io/InputStream;->read([BII)I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    invoke-virtual {p4, v2, v0, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 53
    .line 54
    .line 55
    int-to-long v5, p2

    .line 56
    sub-long/2addr v3, v5

    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    goto :goto_2

    .line 60
    :cond_1
    invoke-virtual {p0, p4}, Landroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    .line 62
    .line 63
    if-eqz p4, :cond_3

    .line 64
    .line 65
    :try_start_3
    invoke-virtual {p4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 66
    .line 67
    .line 68
    goto :goto_5

    .line 69
    :catchall_1
    move-exception p1

    .line 70
    goto :goto_7

    .line 71
    :catch_0
    move-exception p1

    .line 72
    goto :goto_4

    .line 73
    :goto_2
    if-eqz p4, :cond_2

    .line 74
    .line 75
    :try_start_4
    invoke-virtual {p4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 76
    .line 77
    .line 78
    goto :goto_3

    .line 79
    :catchall_2
    move-exception p2

    .line 80
    :try_start_5
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    :cond_2
    :goto_3
    throw p1
    :try_end_5
    .catch Ljava/io/InterruptedIOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 84
    :goto_4
    :try_start_6
    new-instance p2, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string p4, " InterruptedIOException in apkStream.close()"

    .line 90
    .line 91
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-static {p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 102
    .line 103
    .line 104
    :cond_3
    :goto_5
    if-eqz p0, :cond_4

    .line 105
    .line 106
    :try_start_7
    invoke-virtual {p0}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 107
    .line 108
    .line 109
    goto :goto_6

    .line 110
    :catch_1
    move-exception p0

    .line 111
    goto :goto_9

    .line 112
    :cond_4
    :goto_6
    const/4 v0, 0x1

    .line 113
    goto :goto_a

    .line 114
    :goto_7
    if-eqz p0, :cond_5

    .line 115
    .line 116
    :try_start_8
    invoke-virtual {p0}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 117
    .line 118
    .line 119
    goto :goto_8

    .line 120
    :catchall_3
    move-exception p0

    .line 121
    :try_start_9
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 122
    .line 123
    .line 124
    :cond_5
    :goto_8
    throw p1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 125
    :goto_9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string p2, " Exception in writeSession "

    .line 128
    .line 129
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-static {p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 143
    .line 144
    .line 145
    :goto_a
    return v0
.end method
