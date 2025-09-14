.class public final synthetic Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->updateRollbackLifetimeDurationInMillis()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->runExpiration()V

    .line 15
    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v1, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v2, Ljava/util/HashSet;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    .line 33
    .line 34
    check-cast v3, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_8

    .line 45
    .line 46
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Lcom/android/server/rollback/Rollback;

    .line 51
    .line 52
    iget-object v5, v4, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 53
    .line 54
    invoke-virtual {v5}, Landroid/content/rollback/RollbackInfo;->isStaged()Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-nez v5, :cond_1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    iget-object v5, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    iget v6, v4, Lcom/android/server/rollback/Rollback;->mOriginalSessionId:I

    .line 72
    .line 73
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    if-eqz v5, :cond_7

    .line 78
    .line 79
    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionFailed()Z

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    if-eqz v7, :cond_2

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_2
    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionApplied()Z

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    if-eqz v5, :cond_4

    .line 91
    .line 92
    invoke-virtual {v4}, Lcom/android/server/rollback/Rollback;->isEnabling()Z

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    if-eqz v5, :cond_3

    .line 97
    .line 98
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_3
    invoke-virtual {v4}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 103
    .line 104
    .line 105
    iget-boolean v5, v4, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    .line 106
    .line 107
    if-eqz v5, :cond_4

    .line 108
    .line 109
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    :cond_4
    :goto_1
    invoke-virtual {v4}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 113
    .line 114
    .line 115
    new-instance v5, Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .line 119
    .line 120
    iget-object v4, v4, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 121
    .line 122
    invoke-virtual {v4}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    if-eqz v6, :cond_6

    .line 135
    .line 136
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    check-cast v6, Landroid/content/rollback/PackageRollbackInfo;

    .line 141
    .line 142
    invoke-virtual {v6}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    .line 143
    .line 144
    .line 145
    move-result v7

    .line 146
    if-eqz v7, :cond_5

    .line 147
    .line 148
    invoke-virtual {v6}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_6
    invoke-interface {v2, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 157
    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_7
    :goto_3
    invoke-virtual {v4}, Lcom/android/server/rollback/Rollback;->isEnabling()Z

    .line 161
    .line 162
    .line 163
    move-result v5

    .line 164
    if-eqz v5, :cond_0

    .line 165
    .line 166
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 167
    .line 168
    .line 169
    new-instance v5, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    const-string v7, "Session "

    .line 172
    .line 173
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v6, " not existed or failed"

    .line 180
    .line 181
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    invoke-virtual {p0, v4, v5}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->deleteRollback(Lcom/android/server/rollback/Rollback;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    goto/16 :goto_0

    .line 192
    .line 193
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    if-eqz v3, :cond_9

    .line 202
    .line 203
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    check-cast v3, Lcom/android/server/rollback/Rollback;

    .line 208
    .line 209
    invoke-virtual {p0, v3}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->makeRollbackAvailable(Lcom/android/server/rollback/Rollback;)V

    .line 210
    .line 211
    .line 212
    goto :goto_4

    .line 213
    :cond_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    if-eqz v1, :cond_a

    .line 222
    .line 223
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    check-cast v1, Lcom/android/server/rollback/Rollback;

    .line 228
    .line 229
    invoke-virtual {v1}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 230
    .line 231
    .line 232
    const/4 v3, 0x0

    .line 233
    iput-boolean v3, v1, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    .line 234
    .line 235
    iget-object v3, v1, Lcom/android/server/rollback/Rollback;->mBackupDir:Ljava/io/File;

    .line 236
    .line 237
    invoke-static {v1, v3}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;Ljava/io/File;)V

    .line 238
    .line 239
    .line 240
    goto :goto_5

    .line 241
    :cond_a
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    if-eqz v1, :cond_b

    .line 250
    .line 251
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    check-cast v1, Ljava/lang/String;

    .line 256
    .line 257
    invoke-virtual {p0, v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->onPackageReplaced(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    goto :goto_6

    .line 261
    :cond_b
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mPackageHealthObserver:Lcom/android/server/rollback/RollbackPackageHealthObserver;

    .line 262
    .line 263
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mHandler:Landroid/os/Handler;

    .line 264
    .line 265
    new-instance v1, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda4;

    .line 266
    .line 267
    invoke-direct {v1, p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 271
    .line 272
    .line 273
    return-void

    .line 274
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 275
    .line 276
    .line 277
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    .line 278
    .line 279
    check-cast v0, Ljava/util/ArrayList;

    .line 280
    .line 281
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 282
    .line 283
    .line 284
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    .line 285
    .line 286
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackStore:Lcom/android/server/rollback/RollbackStore;

    .line 287
    .line 288
    iget-object p0, p0, Lcom/android/server/rollback/RollbackStore;->mRollbackDataDir:Ljava/io/File;

    .line 289
    .line 290
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->loadRollbacks(Ljava/io/File;)Ljava/util/List;

    .line 291
    .line 292
    .line 293
    move-result-object p0

    .line 294
    check-cast v0, Ljava/util/ArrayList;

    .line 295
    .line 296
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 297
    .line 298
    .line 299
    return-void

    .line 300
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->runExpiration()V

    .line 301
    .line 302
    .line 303
    return-void

    .line 304
    nop

    .line 305
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
