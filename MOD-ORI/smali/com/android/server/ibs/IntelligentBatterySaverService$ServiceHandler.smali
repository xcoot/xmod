.class public final Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/ibs/IntelligentBatterySaverService;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/IntelligentBatterySaverService;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverService;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 13

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x2

    .line 5
    if-eq p1, v0, :cond_4

    .line 6
    .line 7
    if-eq p1, v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_a

    .line 10
    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverService;

    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSFastDrainPolicy:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mHandler:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x4

    .line 20
    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSGoogleAppPolicy:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

    .line 28
    .line 29
    const-string p1, "IntelligentBatterySaverGoogleAppPolicy"

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string/jumbo v2, "setGoogAppNetworkForceReset mNetworkLimited = "

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-boolean v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mNetworkLimited:Z

    .line 40
    .line 41
    invoke-static {p1, v1, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 45
    .line 46
    if-nez p1, :cond_2

    .line 47
    .line 48
    const-string p0, "IntelligentBatterySaverGoogleAppPolicy"

    .line 49
    .line 50
    const-string/jumbo p1, "failed to get NetworkManagementService instance"

    .line 51
    .line 52
    .line 53
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    goto/16 :goto_a

    .line 57
    .line 58
    :cond_2
    iget-boolean p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mNetworkLimited:Z

    .line 59
    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->setGoogleAppsNetworkAllow(Z)V

    .line 63
    .line 64
    .line 65
    :cond_3
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mLockGoogleAppsList:Ljava/lang/Object;

    .line 66
    .line 67
    monitor-enter p1

    .line 68
    :try_start_0
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mGoogleAppsList:Landroid/util/ArrayMap;

    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 71
    .line 72
    .line 73
    monitor-exit p1

    .line 74
    goto/16 :goto_a

    .line 75
    .line 76
    :catchall_0
    move-exception p0

    .line 77
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    throw p0

    .line 79
    :cond_4
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverService;

    .line 80
    .line 81
    iget-object p1, p1, Lcom/android/server/ibs/IntelligentBatterySaverService;->mServiceHandler:Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;

    .line 82
    .line 83
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 84
    .line 85
    .line 86
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverService;

    .line 87
    .line 88
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSScpmManager:Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;

    .line 89
    .line 90
    if-eqz p1, :cond_b

    .line 91
    .line 92
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSFastDrainPolicy:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 93
    .line 94
    const-string/jumbo v2, "updateSCPMParametersFromDB"

    .line 95
    .line 96
    .line 97
    const-string v3, "IntelligentBatterySaverScpmManager"

    .line 98
    .line 99
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    const-string/jumbo v2, "policy filterId : "

    .line 103
    .line 104
    .line 105
    const-string/jumbo v4, "cannot get new policy : "

    .line 106
    .line 107
    .line 108
    const-string/jumbo v5, "uri: "

    .line 109
    .line 110
    .line 111
    const-string v6, "/ibs"

    .line 112
    .line 113
    const-string/jumbo v7, "content://com.samsung.android.scpm.policy/"

    .line 114
    .line 115
    .line 116
    const-string/jumbo v8, "getData"

    .line 117
    .line 118
    .line 119
    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    iget-object v8, p1, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mContext:Landroid/content/Context;

    .line 123
    .line 124
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    const-string/jumbo v9, "com.samsung.android.scpm.policy"

    .line 129
    .line 130
    .line 131
    const/4 v10, 0x0

    .line 132
    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    if-eqz v8, :cond_5

    .line 137
    .line 138
    move v8, v0

    .line 139
    goto :goto_0

    .line 140
    :cond_5
    move v8, v10

    .line 141
    :goto_0
    if-eqz v8, :cond_8

    .line 142
    .line 143
    iget-object v8, p1, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mContext:Landroid/content/Context;

    .line 144
    .line 145
    const-string/jumbo v9, "ibs_prefs"

    .line 146
    .line 147
    .line 148
    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    iput-object v8, p1, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mPref:Landroid/content/SharedPreferences;

    .line 153
    .line 154
    new-instance v8, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    const-string v9, "SCPMToken - "

    .line 157
    .line 158
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    iget-object v9, p1, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mPref:Landroid/content/SharedPreferences;

    .line 162
    .line 163
    const-string v11, "SCPMToken"

    .line 164
    .line 165
    const/4 v12, 0x0

    .line 166
    invoke-interface {v9, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v9

    .line 170
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v8

    .line 177
    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    iget-object v8, p1, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mPref:Landroid/content/SharedPreferences;

    .line 181
    .line 182
    invoke-interface {v8, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v8

    .line 186
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 202
    .line 203
    .line 204
    move-result-object v6
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 205
    :try_start_2
    iget-object v7, p1, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mContext:Landroid/content/Context;

    .line 206
    .line 207
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 208
    .line 209
    .line 210
    move-result-object v7

    .line 211
    const-string/jumbo v9, "r"

    .line 212
    .line 213
    .line 214
    invoke-virtual {v7, v6, v9}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 215
    .line 216
    .line 217
    move-result-object v12

    .line 218
    new-instance v7, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 231
    .line 232
    .line 233
    goto :goto_3

    .line 234
    :catch_0
    move-exception v5

    .line 235
    goto :goto_1

    .line 236
    :catch_1
    move-exception v5

    .line 237
    goto :goto_2

    .line 238
    :catch_2
    move-exception v5

    .line 239
    move-object v6, v12

    .line 240
    goto :goto_1

    .line 241
    :catch_3
    move-exception v5

    .line 242
    move-object v6, v12

    .line 243
    goto :goto_2

    .line 244
    :goto_1
    const-string v7, "Open file fail!"

    .line 245
    .line 246
    invoke-static {v3, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    .line 248
    .line 249
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 250
    .line 251
    .line 252
    goto :goto_3

    .line 253
    :goto_2
    const-string v7, "File not found!"

    .line 254
    .line 255
    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 259
    .line 260
    .line 261
    :goto_3
    const-string/jumbo v5, "token"

    .line 262
    .line 263
    .line 264
    invoke-static {v5, v8}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 265
    .line 266
    .line 267
    move-result-object v5

    .line 268
    const-string v7, "android"

    .line 269
    .line 270
    if-nez v12, :cond_6

    .line 271
    .line 272
    :try_start_3
    iget-object v2, p1, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mContext:Landroid/content/Context;

    .line 273
    .line 274
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    const-string/jumbo v8, "getLastError"

    .line 279
    .line 280
    .line 281
    invoke-virtual {v2, v6, v8, v7, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    const-string/jumbo v5, "rcode"

    .line 286
    .line 287
    .line 288
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 289
    .line 290
    .line 291
    move-result v5

    .line 292
    const-string/jumbo v6, "rmsg"

    .line 293
    .line 294
    .line 295
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    new-instance v6, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    const-string v4, ", "

    .line 308
    .line 309
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    .line 321
    .line 322
    goto :goto_4

    .line 323
    :catchall_1
    move-exception p0

    .line 324
    goto :goto_6

    .line 325
    :catch_4
    move-exception v2

    .line 326
    goto :goto_5

    .line 327
    :cond_6
    iget-object v4, p1, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mContext:Landroid/content/Context;

    .line 328
    .line 329
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 330
    .line 331
    .line 332
    move-result-object v4

    .line 333
    const-string/jumbo v8, "getStatus"

    .line 334
    .line 335
    .line 336
    invoke-virtual {v4, v6, v8, v7, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 337
    .line 338
    .line 339
    move-result-object v4

    .line 340
    const-string/jumbo v5, "filterId"

    .line 341
    .line 342
    .line 343
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v4

    .line 347
    new-instance v5, Ljava/lang/StringBuilder;

    .line 348
    .line 349
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v2

    .line 359
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    .line 361
    .line 362
    invoke-virtual {p1, v12}, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->parseData(Landroid/os/ParcelFileDescriptor;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 363
    .line 364
    .line 365
    :goto_4
    if-eqz v12, :cond_8

    .line 366
    .line 367
    :try_start_4
    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 368
    .line 369
    .line 370
    goto :goto_8

    .line 371
    :catch_5
    move-exception v2

    .line 372
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 373
    .line 374
    .line 375
    goto :goto_8

    .line 376
    :goto_5
    :try_start_5
    const-string/jumbo v4, "getData fail because of exception!"

    .line 377
    .line 378
    .line 379
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 380
    .line 381
    .line 382
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 383
    .line 384
    .line 385
    if-eqz v12, :cond_8

    .line 386
    .line 387
    :try_start_6
    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 388
    .line 389
    .line 390
    goto :goto_8

    .line 391
    :goto_6
    if-eqz v12, :cond_7

    .line 392
    .line 393
    :try_start_7
    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 394
    .line 395
    .line 396
    goto :goto_7

    .line 397
    :catch_6
    move-exception p1

    .line 398
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 399
    .line 400
    .line 401
    :cond_7
    :goto_7
    throw p0

    .line 402
    :cond_8
    :goto_8
    const-string/jumbo v2, "fast_drain_policy"

    .line 403
    .line 404
    .line 405
    iget-object v4, p1, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mContext:Landroid/content/Context;

    .line 406
    .line 407
    const-string/jumbo v5, "ibs_prefs"

    .line 408
    .line 409
    .line 410
    invoke-virtual {v4, v5, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 411
    .line 412
    .line 413
    move-result-object v4

    .line 414
    iput-object v4, p1, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mPref:Landroid/content/SharedPreferences;

    .line 415
    .line 416
    invoke-interface {v4, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 417
    .line 418
    .line 419
    move-result v2

    .line 420
    if-ne v2, v0, :cond_9

    .line 421
    .line 422
    const-string v2, "Enable fast drain policy!"

    .line 423
    .line 424
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    .line 426
    .line 427
    iget v2, p1, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mPolicyControlSwitch:I

    .line 428
    .line 429
    or-int/2addr v2, v0

    .line 430
    iput v2, p1, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mPolicyControlSwitch:I

    .line 431
    .line 432
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->setIBSFastDrainPolicyEnable(Z)V

    .line 433
    .line 434
    .line 435
    goto :goto_9

    .line 436
    :cond_9
    const-string v2, "Disable fast drain policy!"

    .line 437
    .line 438
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    .line 440
    .line 441
    iget v2, p1, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mPolicyControlSwitch:I

    .line 442
    .line 443
    and-int/lit8 v2, v2, -0x2

    .line 444
    .line 445
    iput v2, p1, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mPolicyControlSwitch:I

    .line 446
    .line 447
    invoke-virtual {p0, v10}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->setIBSFastDrainPolicyEnable(Z)V

    .line 448
    .line 449
    .line 450
    :goto_9
    const-string/jumbo p0, "google_app_policy"

    .line 451
    .line 452
    .line 453
    iget-object v2, p1, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mContext:Landroid/content/Context;

    .line 454
    .line 455
    const-string/jumbo v4, "ibs_prefs"

    .line 456
    .line 457
    .line 458
    invoke-virtual {v2, v4, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 459
    .line 460
    .line 461
    move-result-object v2

    .line 462
    iput-object v2, p1, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mPref:Landroid/content/SharedPreferences;

    .line 463
    .line 464
    invoke-interface {v2, p0, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 465
    .line 466
    .line 467
    move-result p0

    .line 468
    if-ne p0, v0, :cond_a

    .line 469
    .line 470
    const-string p0, "Enable google app policy!"

    .line 471
    .line 472
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    .line 474
    .line 475
    iget p0, p1, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mPolicyControlSwitch:I

    .line 476
    .line 477
    or-int/2addr p0, v1

    .line 478
    iput p0, p1, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mPolicyControlSwitch:I

    .line 479
    .line 480
    goto :goto_a

    .line 481
    :cond_a
    const-string p0, "Disable google app policy!"

    .line 482
    .line 483
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    .line 485
    .line 486
    iget p0, p1, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mPolicyControlSwitch:I

    .line 487
    .line 488
    and-int/lit8 p0, p0, -0x3

    .line 489
    .line 490
    iput p0, p1, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mPolicyControlSwitch:I

    .line 491
    .line 492
    :cond_b
    :goto_a
    return-void
.end method
