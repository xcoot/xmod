.class public final Lcom/android/server/sepunion/cover/CoverServiceManager$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/CoverServiceManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    .line 26
    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 32
    .line 33
    iget-object v3, v3, Lcom/android/server/sepunion/cover/CoverServiceManager;->mCoverStateProvider:Lcom/android/server/sepunion/cover/CoverServiceManager$OnCoverStateProvider;

    .line 34
    .line 35
    invoke-interface {v3}, Lcom/android/server/sepunion/cover/CoverServiceManager$OnCoverStateProvider;->getCoverStateFromCoverServiceManager()Lcom/samsung/android/cover/CoverState;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const/4 v4, 0x0

    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    if-eqz v2, :cond_d

    .line 43
    .line 44
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    const v1, 0xc0084

    .line 49
    .line 50
    .line 51
    const/4 v5, 0x1

    .line 52
    if-nez v2, :cond_7

    .line 53
    .line 54
    if-eqz p2, :cond_3

    .line 55
    .line 56
    const-string v2, "android.intent.extra.REPLACING"

    .line 57
    .line 58
    invoke-virtual {p2, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-eqz p2, :cond_3

    .line 63
    .line 64
    goto/16 :goto_4

    .line 65
    .line 66
    :cond_3
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 67
    .line 68
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    const-string v2, "CoverManager_CoverServiceManager"

    .line 72
    .line 73
    const-string v6, "addCoverService : "

    .line 74
    .line 75
    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    invoke-static {v2, v6}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    new-instance v2, Landroid/content/Intent;

    .line 83
    .line 84
    const-string v6, "com.samsung.android.cover.CoverService"

    .line 85
    .line 86
    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    .line 91
    .line 92
    iget-object v6, p2, Lcom/android/server/sepunion/cover/CoverServiceManager;->mContext:Landroid/content/Context;

    .line 93
    .line 94
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    invoke-virtual {v6, v2, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    if-eqz v1, :cond_6

    .line 103
    .line 104
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-lez v2, :cond_6

    .line 109
    .line 110
    invoke-virtual {p2, v1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->getVerifiedCoverService(Ljava/util/List;)Landroid/util/SparseArray;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-nez v2, :cond_4

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_4
    move v6, v4

    .line 122
    move v7, v6

    .line 123
    :goto_0
    if-ge v6, v2, :cond_a

    .line 124
    .line 125
    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->keyAt(I)I

    .line 126
    .line 127
    .line 128
    move-result v8

    .line 129
    iget-object v9, p2, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    .line 130
    .line 131
    monitor-enter v9

    .line 132
    :try_start_0
    iget-object v10, p2, Lcom/android/server/sepunion/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    .line 133
    .line 134
    invoke-virtual {v10, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v10

    .line 138
    check-cast v10, Landroid/content/ComponentName;

    .line 139
    .line 140
    if-nez v10, :cond_5

    .line 141
    .line 142
    iget-object v7, p2, Lcom/android/server/sepunion/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    .line 143
    .line 144
    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v10

    .line 148
    check-cast v10, Landroid/content/ComponentName;

    .line 149
    .line 150
    invoke-virtual {v7, v8, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    move v7, v5

    .line 154
    goto :goto_1

    .line 155
    :catchall_0
    move-exception p0

    .line 156
    goto :goto_2

    .line 157
    :cond_5
    const-string v10, "CoverManager_CoverServiceManager"

    .line 158
    .line 159
    new-instance v11, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    const-string v12, "addCoverService : Cover Type("

    .line 165
    .line 166
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v8, ") is already added"

    .line 173
    .line 174
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v8

    .line 181
    invoke-static {v10, v8}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    :goto_1
    monitor-exit v9

    .line 185
    add-int/lit8 v6, v6, 0x1

    .line 186
    .line 187
    goto :goto_0

    .line 188
    :goto_2
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    throw p0

    .line 190
    :cond_6
    :goto_3
    move v7, v4

    .line 191
    goto :goto_7

    .line 192
    :cond_7
    :goto_4
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 193
    .line 194
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    .line 196
    .line 197
    const-string v2, "CoverManager_CoverServiceManager"

    .line 198
    .line 199
    const-string/jumbo v6, "updateCoverService : "

    .line 200
    .line 201
    .line 202
    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    invoke-static {v2, v6}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    new-instance v2, Landroid/content/Intent;

    .line 210
    .line 211
    const-string v6, "com.samsung.android.cover.CoverService"

    .line 212
    .line 213
    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    .line 218
    .line 219
    iget-object v6, p2, Lcom/android/server/sepunion/cover/CoverServiceManager;->mContext:Landroid/content/Context;

    .line 220
    .line 221
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 222
    .line 223
    .line 224
    move-result-object v6

    .line 225
    invoke-virtual {v6, v2, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    if-eqz v1, :cond_6

    .line 230
    .line 231
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 232
    .line 233
    .line 234
    move-result v2

    .line 235
    if-lez v2, :cond_6

    .line 236
    .line 237
    invoke-virtual {p2, v1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->getVerifiedCoverService(Ljava/util/List;)Landroid/util/SparseArray;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    if-nez v2, :cond_8

    .line 246
    .line 247
    goto :goto_3

    .line 248
    :cond_8
    iget-object v6, p2, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    .line 249
    .line 250
    monitor-enter v6

    .line 251
    move v7, v4

    .line 252
    :goto_5
    if-ge v7, v2, :cond_9

    .line 253
    .line 254
    :try_start_1
    iget-object v8, p2, Lcom/android/server/sepunion/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    .line 255
    .line 256
    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->keyAt(I)I

    .line 257
    .line 258
    .line 259
    move-result v9

    .line 260
    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v10

    .line 264
    check-cast v10, Landroid/content/ComponentName;

    .line 265
    .line 266
    invoke-virtual {v8, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    add-int/lit8 v7, v7, 0x1

    .line 270
    .line 271
    goto :goto_5

    .line 272
    :catchall_1
    move-exception p0

    .line 273
    goto :goto_6

    .line 274
    :cond_9
    monitor-exit v6

    .line 275
    move v7, v5

    .line 276
    goto :goto_7

    .line 277
    :goto_6
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 278
    throw p0

    .line 279
    :cond_a
    :goto_7
    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 280
    .line 281
    .line 282
    move-result p2

    .line 283
    const/16 v1, 0xd

    .line 284
    .line 285
    if-ne p2, v1, :cond_b

    .line 286
    .line 287
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 288
    .line 289
    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 290
    .line 291
    .line 292
    move-result v1

    .line 293
    invoke-virtual {p2, v1, v4}, Lcom/android/server/sepunion/cover/CoverServiceManager;->bindCoverService(IZ)V

    .line 294
    .line 295
    .line 296
    goto :goto_9

    .line 297
    :cond_b
    if-eqz v7, :cond_d

    .line 298
    .line 299
    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    .line 300
    .line 301
    .line 302
    move-result p2

    .line 303
    if-eqz p2, :cond_d

    .line 304
    .line 305
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 306
    .line 307
    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    invoke-virtual {p2, v1, v5, v4}, Lcom/android/server/sepunion/cover/CoverServiceManager;->getCoverServiceNameLocked(IZZ)Landroid/content/ComponentName;

    .line 312
    .line 313
    .line 314
    move-result-object p2

    .line 315
    if-eqz p2, :cond_c

    .line 316
    .line 317
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 318
    .line 319
    invoke-virtual {v1, p2}, Lcom/android/server/sepunion/cover/CoverServiceManager;->findActiveServiceByComponentLocked(Landroid/content/ComponentName;)Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    if-nez v1, :cond_c

    .line 324
    .line 325
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 326
    .line 327
    iget-object v2, v1, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    .line 328
    .line 329
    monitor-enter v2

    .line 330
    :try_start_2
    iget-object v1, v1, Lcom/android/server/sepunion/cover/CoverServiceManager;->mBindingTimestamp:Ljava/util/HashMap;

    .line 331
    .line 332
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result v1

    .line 340
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 341
    if-eqz v1, :cond_c

    .line 342
    .line 343
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 344
    .line 345
    invoke-virtual {v1, p2}, Lcom/android/server/sepunion/cover/CoverServiceManager;->removeBindingServiceLocked(Landroid/content/ComponentName;)V

    .line 346
    .line 347
    .line 348
    goto :goto_8

    .line 349
    :catchall_2
    move-exception p0

    .line 350
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 351
    throw p0

    .line 352
    :cond_c
    :goto_8
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 353
    .line 354
    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 355
    .line 356
    .line 357
    move-result v1

    .line 358
    invoke-virtual {p2, v1, v4}, Lcom/android/server/sepunion/cover/CoverServiceManager;->bindCoverService(IZ)V

    .line 359
    .line 360
    .line 361
    :cond_d
    :goto_9
    const-string p2, "com.android.systemui"

    .line 362
    .line 363
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    move-result p2

    .line 367
    if-eqz p2, :cond_e

    .line 368
    .line 369
    const-string p2, "android.intent.action.PACKAGE_REPLACED"

    .line 370
    .line 371
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    move-result p1

    .line 375
    if-eqz p1, :cond_e

    .line 376
    .line 377
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 378
    .line 379
    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 380
    .line 381
    .line 382
    move-result p1

    .line 383
    invoke-virtual {p0, p1, v4}, Lcom/android/server/sepunion/cover/CoverServiceManager;->bindCoverService(IZ)V

    .line 384
    .line 385
    .line 386
    :cond_e
    return-void
.end method
