.class public final Lcom/android/server/sepunion/SmartManagerService$BgWorkerHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/SmartManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SmartManagerService;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/SmartManagerService$BgWorkerHandler;->this$0:Lcom/android/server/sepunion/SmartManagerService;

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
    sget-object v0, Lcom/android/server/sepunion/SmartManagerService;->PAYMENT_SWITCH_URI:Landroid/net/Uri;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v1, "msg : "

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v1, p1, Landroid/os/Message;->what:I

    .line 12
    .line 13
    const-string v2, "SmartManagerService"

    .line 14
    .line 15
    invoke-static {v0, v1, v2}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget v0, p1, Landroid/os/Message;->what:I

    .line 19
    .line 20
    const/16 v1, 0xa

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/sepunion/SmartManagerService$BgWorkerHandler;->this$0:Lcom/android/server/sepunion/SmartManagerService;

    .line 23
    .line 24
    if-eq v0, v1, :cond_b

    .line 25
    .line 26
    const/16 v1, 0x14

    .line 27
    .line 28
    const-string/jumbo v3, "startCheck"

    .line 29
    .line 30
    .line 31
    const-string/jumbo v4, "pkg_name"

    .line 32
    .line 33
    .line 34
    const-string v5, "SmartManager app doesn\'t support payment policy, please check"

    .line 35
    .line 36
    const/4 v6, 0x0

    .line 37
    if-eq v0, v1, :cond_6

    .line 38
    .line 39
    const/16 v1, 0x28

    .line 40
    .line 41
    if-eq v0, v1, :cond_4

    .line 42
    .line 43
    const/16 v1, 0x32

    .line 44
    .line 45
    if-eq v0, v1, :cond_3

    .line 46
    .line 47
    const/16 v1, 0x3c

    .line 48
    .line 49
    if-eq v0, v1, :cond_2

    .line 50
    .line 51
    const/16 v1, 0x46

    .line 52
    .line 53
    if-eq v0, v1, :cond_1

    .line 54
    .line 55
    const/16 v1, 0x64

    .line 56
    .line 57
    if-eq v0, v1, :cond_0

    .line 58
    .line 59
    goto/16 :goto_2

    .line 60
    .line 61
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    :try_start_0
    iget-object p0, p0, Lcom/android/server/sepunion/SmartManagerService;->mContext:Landroid/content/Context;

    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    sget-object v0, Lcom/android/server/sepunion/SmartManagerService;->SM_PROVIDER_URI:Landroid/net/Uri;

    .line 75
    .line 76
    const-string/jumbo v1, "updatePrivacyLockingState"

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v0, v1, v6, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    goto/16 :goto_2

    .line 83
    .line 84
    :catch_0
    move-exception p0

    .line 85
    const-string/jumbo p1, "notify to smart manager has exception "

    .line 86
    .line 87
    .line 88
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    .line 90
    .line 91
    goto/16 :goto_2

    .line 92
    .line 93
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    :try_start_1
    new-instance p1, Lcom/android/server/sepunion/SmartManagerService$ProtectedAppChangedObserver;

    .line 97
    .line 98
    iget-object v0, p0, Lcom/android/server/sepunion/SmartManagerService;->mHandler:Lcom/android/server/sepunion/SmartManagerService$BgWorkerHandler;

    .line 99
    .line 100
    invoke-direct {p1, p0, v0}, Lcom/android/server/sepunion/SmartManagerService$ProtectedAppChangedObserver;-><init>(Lcom/android/server/sepunion/SmartManagerService;Landroid/os/Handler;)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/android/server/sepunion/SmartManagerService;->mContext:Landroid/content/Context;

    .line 104
    .line 105
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    sget-object v1, Lcom/android/server/sepunion/SmartManagerService;->PAYMENT_SWITCH_URI:Landroid/net/Uri;

    .line 110
    .line 111
    const/4 v3, 0x1

    .line 112
    invoke-virtual {v0, v1, v3, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lcom/android/server/sepunion/SmartManagerService;->mContext:Landroid/content/Context;

    .line 116
    .line 117
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    sget-object v1, Lcom/android/server/sepunion/SmartManagerService;->PAYMENT_APP_URI:Landroid/net/Uri;

    .line 122
    .line 123
    invoke-virtual {v0, v1, v3, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :catch_1
    move-exception p1

    .line 128
    const-string/jumbo v0, "registerObserver cause exception"

    .line 129
    .line 130
    .line 131
    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    .line 133
    .line 134
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/sepunion/SmartManagerService;->loadProtectedAppSet()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/android/server/sepunion/SmartManagerService;->loadImportantAppComponentList()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/android/server/sepunion/SmartManagerService;->registerWatcherForImportantComponentList()V

    .line 141
    .line 142
    .line 143
    goto/16 :goto_2

    .line 144
    .line 145
    :cond_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    :try_start_2
    iget-object p0, p0, Lcom/android/server/sepunion/SmartManagerService;->mContext:Landroid/content/Context;

    .line 153
    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    sget-object v0, Lcom/android/server/sepunion/SmartManagerService;->PAYMENT_APP_CHECK_URI:Landroid/net/Uri;

    .line 159
    .line 160
    const-string/jumbo v1, "onUserAction"

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, v0, v1, v6, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 164
    .line 165
    .line 166
    goto/16 :goto_2

    .line 167
    .line 168
    :catch_2
    move-exception p0

    .line 169
    invoke-static {v2, v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    .line 171
    .line 172
    goto/16 :goto_2

    .line 173
    .line 174
    :cond_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    :try_start_3
    iget-object p0, p0, Lcom/android/server/sepunion/SmartManagerService;->mContext:Landroid/content/Context;

    .line 182
    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    sget-object v0, Lcom/android/server/sepunion/SmartManagerService;->PAYMENT_APP_CHECK_URI:Landroid/net/Uri;

    .line 188
    .line 189
    const-string/jumbo v1, "onPkgChanged"

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0, v0, v1, v6, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 193
    .line 194
    .line 195
    goto/16 :goto_2

    .line 196
    .line 197
    :catch_3
    move-exception p0

    .line 198
    invoke-static {v2, v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    .line 200
    .line 201
    goto/16 :goto_2

    .line 202
    .line 203
    :cond_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    :try_start_4
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/android/server/sepunion/SmartManagerService;->mImportantAppLastCheckTimeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 215
    .line 216
    const-wide/16 v7, -0x1

    .line 217
    .line 218
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    invoke-virtual {v1, v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    check-cast v1, Ljava/lang/Long;

    .line 227
    .line 228
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 229
    .line 230
    .line 231
    move-result-wide v7

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 233
    .line 234
    .line 235
    move-result-wide v9

    .line 236
    sub-long/2addr v7, v9

    .line 237
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    .line 238
    .line 239
    .line 240
    move-result-wide v7

    .line 241
    const-wide/16 v11, 0xbb8

    .line 242
    .line 243
    cmp-long v1, v7, v11

    .line 244
    .line 245
    if-gez v1, :cond_5

    .line 246
    .line 247
    const-string p0, "avoid repeat check in 3 seconds"

    .line 248
    .line 249
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .line 251
    .line 252
    goto/16 :goto_2

    .line 253
    .line 254
    :catch_4
    move-exception p0

    .line 255
    goto :goto_1

    .line 256
    :cond_5
    iget-object v1, p0, Lcom/android/server/sepunion/SmartManagerService;->mImportantAppLastCheckTimeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 257
    .line 258
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    invoke-virtual {v1, v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SmartManagerService;->isProtectedApp(Ljava/lang/String;)Z

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    if-eqz v0, :cond_c

    .line 270
    .line 271
    iget-object p0, p0, Lcom/android/server/sepunion/SmartManagerService;->mContext:Landroid/content/Context;

    .line 272
    .line 273
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 274
    .line 275
    .line 276
    move-result-object p0

    .line 277
    sget-object v0, Lcom/android/server/sepunion/SmartManagerService;->PAYMENT_APP_CHECK_URI:Landroid/net/Uri;

    .line 278
    .line 279
    invoke-virtual {p0, v0, v3, v6, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 280
    .line 281
    .line 282
    goto :goto_2

    .line 283
    :goto_1
    invoke-static {v2, v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    .line 285
    .line 286
    goto :goto_2

    .line 287
    :cond_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 292
    .line 293
    .line 294
    if-nez p1, :cond_7

    .line 295
    .line 296
    goto :goto_2

    .line 297
    :cond_7
    const-string/jumbo v0, "pid"

    .line 298
    .line 299
    .line 300
    const/4 v1, 0x0

    .line 301
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    iget-object v1, p0, Lcom/android/server/sepunion/SmartManagerService;->mContext:Landroid/content/Context;

    .line 306
    .line 307
    const-string v7, "activity"

    .line 308
    .line 309
    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    check-cast v1, Landroid/app/ActivityManager;

    .line 314
    .line 315
    if-nez v1, :cond_8

    .line 316
    .line 317
    goto :goto_2

    .line 318
    :cond_8
    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SmartManagerService;->isProtectedApp(Ljava/lang/String;)Z

    .line 323
    .line 324
    .line 325
    move-result v1

    .line 326
    if-nez v1, :cond_9

    .line 327
    .line 328
    goto :goto_2

    .line 329
    :cond_9
    iget-object v1, p0, Lcom/android/server/sepunion/SmartManagerService;->mImportantAppSet:Ljava/util/HashSet;

    .line 330
    .line 331
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result v1

    .line 335
    if-eqz v1, :cond_a

    .line 336
    .line 337
    goto :goto_2

    .line 338
    :cond_a
    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    :try_start_5
    iget-object p0, p0, Lcom/android/server/sepunion/SmartManagerService;->mContext:Landroid/content/Context;

    .line 342
    .line 343
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 344
    .line 345
    .line 346
    move-result-object p0

    .line 347
    sget-object v0, Lcom/android/server/sepunion/SmartManagerService;->PAYMENT_APP_CHECK_URI:Landroid/net/Uri;

    .line 348
    .line 349
    invoke-virtual {p0, v0, v3, v6, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 350
    .line 351
    .line 352
    goto :goto_2

    .line 353
    :catch_5
    move-exception p0

    .line 354
    invoke-static {v2, v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 355
    .line 356
    .line 357
    goto :goto_2

    .line 358
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/sepunion/SmartManagerService;->loadProtectedAppSet()V

    .line 359
    .line 360
    .line 361
    invoke-virtual {p0}, Lcom/android/server/sepunion/SmartManagerService;->loadImportantAppComponentList()V

    .line 362
    .line 363
    .line 364
    invoke-virtual {p0}, Lcom/android/server/sepunion/SmartManagerService;->registerWatcherForImportantComponentList()V

    .line 365
    .line 366
    .line 367
    :cond_c
    :goto_2
    return-void
.end method
