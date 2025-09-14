.class public final synthetic Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda0;->f$1:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 9
    .line 10
    iget v2, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda0;->f$1:I

    .line 11
    .line 12
    iget-object v0, v1, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    .line 13
    .line 14
    check-cast v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    new-array v3, v0, [I

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    :goto_0
    if-ge v4, v0, :cond_0

    .line 24
    .line 25
    iget-object v5, v1, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    .line 26
    .line 27
    check-cast v5, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    check-cast v5, Lcom/android/server/rollback/Rollback;

    .line 34
    .line 35
    iget-object v5, v5, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 36
    .line 37
    invoke-virtual {v5}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    aput v5, v3, v4

    .line 42
    .line 43
    add-int/lit8 v4, v4, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-interface {v0, v2, v3}, Landroid/apex/IApexService;->destroyCeSnapshotsNotSpecified(I[I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :catch_0
    move-exception v0

    .line 64
    const-string v4, "ApexManager"

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    .line 72
    .line 73
    :goto_1
    :try_start_1
    iget-object v0, v1, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mInstaller:Lcom/android/server/pm/Installer;

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    .line 76
    .line 77
    .line 78
    move-result v1
    :try_end_1
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 79
    if-nez v1, :cond_1

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_1
    const/4 v1, 0x0

    .line 83
    :try_start_2
    iget-object v0, v0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 84
    .line 85
    invoke-interface {v0, v1, v2, v3}, Landroid/os/IInstalld;->destroyCeSnapshotsNotSpecified(Ljava/lang/String;I[I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :catch_1
    move-exception v0

    .line 90
    :try_start_3
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    .line 91
    .line 92
    .line 93
    throw v1
    :try_end_3
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_3 .. :try_end_3} :catch_2

    .line 94
    :catch_2
    move-exception v0

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v3, "Failed to delete snapshots for user: "

    .line 98
    .line 99
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    const-string v2, "RollbackManager"

    .line 110
    .line 111
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    .line 113
    .line 114
    :goto_2
    return-void

    .line 115
    :pswitch_0
    iget-object v1, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 116
    .line 117
    iget v0, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda0;->f$1:I

    .line 118
    .line 119
    invoke-virtual {v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 120
    .line 121
    .line 122
    new-instance v9, Ljava/util/ArrayList;

    .line 123
    .line 124
    iget-object v2, v1, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    .line 125
    .line 126
    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 127
    .line 128
    .line 129
    const/4 v11, 0x0

    .line 130
    :goto_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-ge v11, v2, :cond_9

    .line 135
    .line 136
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    move-object v12, v2

    .line 141
    check-cast v12, Lcom/android/server/rollback/Rollback;

    .line 142
    .line 143
    iget-object v13, v1, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAppDataRollbackHelper:Lcom/android/server/rollback/AppDataRollbackHelper;

    .line 144
    .line 145
    invoke-virtual {v12}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    iget-object v2, v12, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 152
    .line 153
    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 158
    .line 159
    .line 160
    move-result-object v14

    .line 161
    const/4 v2, 0x0

    .line 162
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    if-eqz v3, :cond_7

    .line 167
    .line 168
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    move-object v15, v3

    .line 173
    check-cast v15, Landroid/content/rollback/PackageRollbackInfo;

    .line 174
    .line 175
    invoke-virtual {v15}, Landroid/content/rollback/PackageRollbackInfo;->getPendingBackups()Ljava/util/List;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    const/4 v4, 0x1

    .line 180
    if-eqz v3, :cond_2

    .line 181
    .line 182
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    invoke-interface {v3, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 187
    .line 188
    .line 189
    move-result v5

    .line 190
    const/4 v6, -0x1

    .line 191
    if-eq v5, v6, :cond_2

    .line 192
    .line 193
    move v2, v4

    .line 194
    move v5, v2

    .line 195
    goto :goto_5

    .line 196
    :cond_2
    const/4 v5, 0x0

    .line 197
    :goto_5
    invoke-virtual {v15, v0}, Landroid/content/rollback/PackageRollbackInfo;->getRestoreInfo(I)Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;

    .line 198
    .line 199
    .line 200
    move-result-object v8

    .line 201
    if-eqz v8, :cond_3

    .line 202
    .line 203
    move/from16 v16, v4

    .line 204
    .line 205
    goto :goto_6

    .line 206
    :cond_3
    move/from16 v16, v2

    .line 207
    .line 208
    const/4 v4, 0x0

    .line 209
    :goto_6
    if-eqz v5, :cond_4

    .line 210
    .line 211
    if-eqz v4, :cond_4

    .line 212
    .line 213
    invoke-virtual {v15, v0}, Landroid/content/rollback/PackageRollbackInfo;->removePendingBackup(I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v15, v0}, Landroid/content/rollback/PackageRollbackInfo;->removePendingRestoreInfo(I)V

    .line 217
    .line 218
    .line 219
    goto :goto_7

    .line 220
    :cond_4
    if-eqz v5, :cond_5

    .line 221
    .line 222
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    iget-object v5, v12, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 231
    .line 232
    invoke-virtual {v5}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    .line 233
    .line 234
    .line 235
    move-result v5

    .line 236
    const/4 v6, 0x2

    .line 237
    invoke-virtual {v13, v15, v0, v5, v6}, Lcom/android/server/rollback/AppDataRollbackHelper;->doSnapshot(Landroid/content/rollback/PackageRollbackInfo;III)Z

    .line 238
    .line 239
    .line 240
    move-result v5

    .line 241
    if-eqz v5, :cond_5

    .line 242
    .line 243
    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    :cond_5
    if-eqz v4, :cond_6

    .line 247
    .line 248
    iget-object v2, v12, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 249
    .line 250
    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    .line 251
    .line 252
    .line 253
    move-result v5

    .line 254
    iget v6, v8, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;->appId:I

    .line 255
    .line 256
    iget-object v7, v8, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;->seInfo:Ljava/lang/String;

    .line 257
    .line 258
    const/16 v17, 0x2

    .line 259
    .line 260
    move-object v2, v13

    .line 261
    move-object v3, v15

    .line 262
    move v4, v0

    .line 263
    move-object v10, v8

    .line 264
    move/from16 v8, v17

    .line 265
    .line 266
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/rollback/AppDataRollbackHelper;->doRestoreOrWipe(Landroid/content/rollback/PackageRollbackInfo;IIILjava/lang/String;I)Z

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    if-eqz v2, :cond_6

    .line 271
    .line 272
    invoke-virtual {v15, v10}, Landroid/content/rollback/PackageRollbackInfo;->removeRestoreInfo(Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;)V

    .line 273
    .line 274
    .line 275
    :cond_6
    :goto_7
    move/from16 v2, v16

    .line 276
    .line 277
    goto :goto_4

    .line 278
    :cond_7
    if-eqz v2, :cond_8

    .line 279
    .line 280
    iget-object v2, v12, Lcom/android/server/rollback/Rollback;->mBackupDir:Ljava/io/File;

    .line 281
    .line 282
    invoke-static {v12, v2}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;Ljava/io/File;)V

    .line 283
    .line 284
    .line 285
    :cond_8
    add-int/lit8 v11, v11, 0x1

    .line 286
    .line 287
    goto/16 :goto_3

    .line 288
    .line 289
    :cond_9
    return-void

    .line 290
    nop

    .line 291
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
