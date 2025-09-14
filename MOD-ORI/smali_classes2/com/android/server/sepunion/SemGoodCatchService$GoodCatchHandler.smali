.class public final Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/SemGoodCatchService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 11

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    if-eqz v0, :cond_13

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v0, v2, :cond_6

    .line 8
    .line 9
    const/4 v3, 0x5

    .line 10
    const/4 v4, 0x4

    .line 11
    const/4 v5, 0x3

    .line 12
    const/4 v6, 0x2

    .line 13
    if-eq v0, v6, :cond_5

    .line 14
    .line 15
    if-eq v0, v5, :cond_2

    .line 16
    .line 17
    if-eq v0, v4, :cond_1

    .line 18
    .line 19
    if-eq v0, v3, :cond_0

    .line 20
    .line 21
    goto/16 :goto_b

    .line 22
    .line 23
    :cond_0
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureWakeUp:Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    const-string p1, "SemGoodCatchService"

    .line 31
    .line 32
    const-string v0, "function LIKE ?"

    .line 33
    .line 34
    const-string/jumbo v1, "wakeup_done"

    .line 35
    .line 36
    .line 37
    filled-new-array {v1}, [Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    new-instance v3, Landroid/content/ContentValues;

    .line 42
    .line 43
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string/jumbo v4, "module"

    .line 47
    .line 48
    .line 49
    const-string v5, "FeatureWakeUp"

    .line 50
    .line 51
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v4, "function"

    .line 55
    .line 56
    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string/jumbo v1, "value"

    .line 60
    .line 61
    .line 62
    const-string/jumbo v4, "on"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :try_start_0
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    .line 69
    .line 70
    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mContentResolver:Landroid/content/ContentResolver;

    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureSetting:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mUri:Landroid/net/Uri;

    .line 75
    .line 76
    invoke-virtual {v1, p0, v3, v0, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    sget p0, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    .line 80
    .line 81
    const-string p0, "doneTrigger()"

    .line 82
    .line 83
    invoke-static {p1, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    goto/16 :goto_b

    .line 87
    .line 88
    :catch_0
    move-exception p0

    .line 89
    sget v0, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    .line 90
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v1, "doneTrigger error : "

    .line 94
    .line 95
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-static {p1, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    goto/16 :goto_b

    .line 109
    .line 110
    :cond_1
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    .line 111
    .line 112
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureDetectAds:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    .line 113
    .line 114
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    sget p1, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    .line 118
    .line 119
    const-string/jumbo p1, "setActiveState, false"

    .line 120
    .line 121
    .line 122
    const-string v0, "SemGoodCatchService"

    .line 123
    .line 124
    invoke-static {v0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    iput-boolean v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mActiveState:Z

    .line 128
    .line 129
    goto/16 :goto_b

    .line 130
    .line 131
    :cond_2
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    .line 132
    .line 133
    iget-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchObserver:Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchObserver;

    .line 134
    .line 135
    const-string v0, "SemGoodCatchService"

    .line 136
    .line 137
    if-nez p1, :cond_3

    .line 138
    .line 139
    const-string p1, "mGoodCatchObserver is null, trying to createObserver."

    .line 140
    .line 141
    invoke-static {v0, p1}, Lcom/samsung/android/sepunion/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    const-string v1, "mFeatureSetting.getUri() : "

    .line 147
    .line 148
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureSetting:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    .line 152
    .line 153
    iget-object v1, v1, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mUri:Landroid/net/Uri;

    .line 154
    .line 155
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v1, ", mFeatureEvent.getUri() : "

    .line 159
    .line 160
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureEvent:Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;

    .line 164
    .line 165
    iget-object v1, v1, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mUri:Landroid/net/Uri;

    .line 166
    .line 167
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string v1, "mFeatureSettingsProvider.getUri() : "

    .line 171
    .line 172
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureSettingsProvider:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSettingsProvider;

    .line 176
    .line 177
    iget-object v1, v1, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mUri:Landroid/net/Uri;

    .line 178
    .line 179
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-static {v0, p1}, Lcom/samsung/android/sepunion/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    iget-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchObserver:Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchObserver;

    .line 190
    .line 191
    if-nez p1, :cond_4

    .line 192
    .line 193
    iget-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureSetting:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    .line 194
    .line 195
    iget-object p1, p1, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mUri:Landroid/net/Uri;

    .line 196
    .line 197
    if-eqz p1, :cond_4

    .line 198
    .line 199
    iget-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureEvent:Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;

    .line 200
    .line 201
    iget-object p1, p1, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mUri:Landroid/net/Uri;

    .line 202
    .line 203
    if-eqz p1, :cond_4

    .line 204
    .line 205
    iget-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureSettingsProvider:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSettingsProvider;

    .line 206
    .line 207
    iget-object p1, p1, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mUri:Landroid/net/Uri;

    .line 208
    .line 209
    if-eqz p1, :cond_4

    .line 210
    .line 211
    new-instance p1, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchObserver;

    .line 212
    .line 213
    invoke-direct {p1, p0}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchObserver;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;)V

    .line 214
    .line 215
    .line 216
    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchObserver:Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchObserver;

    .line 217
    .line 218
    const-string p0, "created GoodCatchObserver object"

    .line 219
    .line 220
    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .line 222
    .line 223
    goto/16 :goto_b

    .line 224
    .line 225
    :cond_4
    const-string p0, "does not create GoodCatchObserver"

    .line 226
    .line 227
    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    goto/16 :goto_b

    .line 231
    .line 232
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 233
    .line 234
    check-cast p1, [Ljava/lang/String;

    .line 235
    .line 236
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    .line 237
    .line 238
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureEvent:Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;

    .line 239
    .line 240
    aget-object v0, p1, v1

    .line 241
    .line 242
    aget-object v1, p1, v2

    .line 243
    .line 244
    aget-object v2, p1, v6

    .line 245
    .line 246
    aget-object v5, p1, v5

    .line 247
    .line 248
    aget-object v4, p1, v4

    .line 249
    .line 250
    aget-object v3, p1, v3

    .line 251
    .line 252
    const/4 v6, 0x6

    .line 253
    aget-object p1, p1, v6

    .line 254
    .line 255
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    .line 257
    .line 258
    sget v6, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    .line 259
    .line 260
    new-instance v6, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    const-string/jumbo v7, "update, "

    .line 263
    .line 264
    .line 265
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    const-string v7, ", "

    .line 272
    .line 273
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v6

    .line 283
    const-string v7, "SemGoodCatchService"

    .line 284
    .line 285
    invoke-static {v7, v6}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .line 287
    .line 288
    new-instance v6, Landroid/content/ContentValues;

    .line 289
    .line 290
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 291
    .line 292
    .line 293
    const-string/jumbo v8, "module"

    .line 294
    .line 295
    .line 296
    invoke-virtual {v6, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    const-string v0, "function"

    .line 300
    .line 301
    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    const-string/jumbo v0, "package"

    .line 305
    .line 306
    .line 307
    invoke-virtual {v6, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    const-string/jumbo v0, "time"

    .line 311
    .line 312
    .line 313
    invoke-virtual {v6, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    const-string/jumbo v0, "value"

    .line 317
    .line 318
    .line 319
    invoke-virtual {v6, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    const-string/jumbo v0, "message"

    .line 323
    .line 324
    .line 325
    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    const-string v0, "extra"

    .line 329
    .line 330
    invoke-virtual {v6, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    :try_start_1
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    .line 334
    .line 335
    iget-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mContentResolver:Landroid/content/ContentResolver;

    .line 336
    .line 337
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureEvent:Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;

    .line 338
    .line 339
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mUri:Landroid/net/Uri;

    .line 340
    .line 341
    invoke-virtual {p1, p0, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 342
    .line 343
    .line 344
    goto/16 :goto_b

    .line 345
    .line 346
    :catch_1
    move-exception p0

    .line 347
    sget p1, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    .line 348
    .line 349
    new-instance p1, Ljava/lang/StringBuilder;

    .line 350
    .line 351
    const-string v0, "insertGoodCatch error : "

    .line 352
    .line 353
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object p0

    .line 363
    invoke-static {v7, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    .line 365
    .line 366
    goto/16 :goto_b

    .line 367
    .line 368
    :cond_6
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    .line 369
    .line 370
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureSetting:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    .line 371
    .line 372
    const-string/jumbo p1, "query, cur.getCount() : "

    .line 373
    .line 374
    .line 375
    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mUri:Landroid/net/Uri;

    .line 376
    .line 377
    if-nez v0, :cond_7

    .line 378
    .line 379
    sget p0, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    .line 380
    .line 381
    const-string p0, "SemGoodCatchService"

    .line 382
    .line 383
    const-string/jumbo p1, "uri is null"

    .line 384
    .line 385
    .line 386
    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    .line 388
    .line 389
    goto/16 :goto_b

    .line 390
    .line 391
    :cond_7
    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    .line 392
    .line 393
    iget-object v0, v0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchClients:Ljava/util/HashMap;

    .line 394
    .line 395
    monitor-enter v0

    .line 396
    const/4 v3, 0x0

    .line 397
    :try_start_2
    iget-object v4, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    .line 398
    .line 399
    iget-object v5, v4, Lcom/android/server/sepunion/SemGoodCatchService;->mContentResolver:Landroid/content/ContentResolver;

    .line 400
    .line 401
    iget-object v6, p0, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mUri:Landroid/net/Uri;

    .line 402
    .line 403
    const/4 v9, 0x0

    .line 404
    const/4 v10, 0x0

    .line 405
    const/4 v7, 0x0

    .line 406
    const/4 v8, 0x0

    .line 407
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 408
    .line 409
    .line 410
    move-result-object v3

    .line 411
    if-eqz v3, :cond_8

    .line 412
    .line 413
    sget v4, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    .line 414
    .line 415
    const-string v4, "SemGoodCatchService"

    .line 416
    .line 417
    new-instance v5, Ljava/lang/StringBuilder;

    .line 418
    .line 419
    invoke-direct {v5, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    .line 423
    .line 424
    .line 425
    move-result p1

    .line 426
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object p1

    .line 433
    invoke-static {v4, p1}, Lcom/samsung/android/sepunion/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    .line 435
    .line 436
    goto :goto_0

    .line 437
    :catchall_0
    move-exception p0

    .line 438
    goto/16 :goto_9

    .line 439
    .line 440
    :catch_2
    move-exception p0

    .line 441
    goto/16 :goto_7

    .line 442
    .line 443
    :cond_8
    sget p1, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    .line 444
    .line 445
    const-string p1, "SemGoodCatchService"

    .line 446
    .line 447
    const-string/jumbo v4, "query, cur is null"

    .line 448
    .line 449
    .line 450
    invoke-static {p1, v4}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    .line 452
    .line 453
    :goto_0
    move p1, v1

    .line 454
    :cond_9
    :goto_1
    if-eqz v3, :cond_10

    .line 455
    .line 456
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 457
    .line 458
    .line 459
    move-result v4

    .line 460
    if-eqz v4, :cond_10

    .line 461
    .line 462
    const-string/jumbo v4, "module"

    .line 463
    .line 464
    .line 465
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 466
    .line 467
    .line 468
    move-result v4

    .line 469
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v4

    .line 473
    const-string v5, "function"

    .line 474
    .line 475
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 476
    .line 477
    .line 478
    move-result v5

    .line 479
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v5

    .line 483
    const-string/jumbo v6, "value"

    .line 484
    .line 485
    .line 486
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 487
    .line 488
    .line 489
    move-result v6

    .line 490
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v6

    .line 494
    sget v7, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    .line 495
    .line 496
    const-string v7, "SemGoodCatchService"

    .line 497
    .line 498
    new-instance v8, Ljava/lang/StringBuilder;

    .line 499
    .line 500
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 501
    .line 502
    .line 503
    const-string/jumbo v9, "module=\'"

    .line 504
    .line 505
    .line 506
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    const-string v9, "\', function=\'"

    .line 513
    .line 514
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    const-string v9, "\', value=\'"

    .line 521
    .line 522
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    const-string v9, "\'"

    .line 529
    .line 530
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v8

    .line 537
    invoke-static {v7, v8}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    .line 539
    .line 540
    if-eqz v4, :cond_f

    .line 541
    .line 542
    if-eqz v5, :cond_f

    .line 543
    .line 544
    if-nez v6, :cond_a

    .line 545
    .line 546
    goto/16 :goto_5

    .line 547
    .line 548
    :cond_a
    iget-object v7, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    .line 549
    .line 550
    iget-object v7, v7, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchClients:Ljava/util/HashMap;

    .line 551
    .line 552
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 553
    .line 554
    .line 555
    move-result-object v7

    .line 556
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 557
    .line 558
    .line 559
    move-result-object v7

    .line 560
    :cond_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 561
    .line 562
    .line 563
    move-result v8

    .line 564
    if-eqz v8, :cond_9

    .line 565
    .line 566
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    move-result-object v8

    .line 570
    check-cast v8, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;

    .line 571
    .line 572
    invoke-virtual {v8, v4, v5}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->has(Ljava/lang/String;Ljava/lang/String;)Z

    .line 573
    .line 574
    .line 575
    move-result v9

    .line 576
    if-eqz v9, :cond_b

    .line 577
    .line 578
    const-string/jumbo v7, "on"

    .line 579
    .line 580
    .line 581
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 582
    .line 583
    .line 584
    move-result v6

    .line 585
    if-eqz v6, :cond_c

    .line 586
    .line 587
    invoke-virtual {v8, v5}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->isOn(Ljava/lang/String;)Z

    .line 588
    .line 589
    .line 590
    move-result v6

    .line 591
    if-nez v6, :cond_d

    .line 592
    .line 593
    invoke-virtual {v8, v5}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->on(Ljava/lang/String;)V

    .line 594
    .line 595
    .line 596
    :goto_2
    move p1, v2

    .line 597
    goto :goto_3

    .line 598
    :cond_c
    invoke-virtual {v8, v5}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->isOn(Ljava/lang/String;)Z

    .line 599
    .line 600
    .line 601
    move-result v6

    .line 602
    if-eqz v6, :cond_d

    .line 603
    .line 604
    invoke-virtual {v8, v5}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->off(Ljava/lang/String;)V

    .line 605
    .line 606
    .line 607
    goto :goto_2

    .line 608
    :cond_d
    :goto_3
    if-eqz p1, :cond_9

    .line 609
    .line 610
    sget p1, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    .line 611
    .line 612
    const-string p1, "SemGoodCatchService"

    .line 613
    .line 614
    new-instance v6, Ljava/lang/StringBuilder;

    .line 615
    .line 616
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 617
    .line 618
    .line 619
    const-string v7, "GoodCatchClient has module=\'"

    .line 620
    .line 621
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    .line 626
    .line 627
    const-string v4, "\', function=\'"

    .line 628
    .line 629
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    .line 631
    .line 632
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    .line 634
    .line 635
    const-string v4, "\', value -> \'"

    .line 636
    .line 637
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    .line 639
    .line 640
    invoke-virtual {v8, v5}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->isOn(Ljava/lang/String;)Z

    .line 641
    .line 642
    .line 643
    move-result v4

    .line 644
    if-eqz v4, :cond_e

    .line 645
    .line 646
    const-string/jumbo v4, "on"

    .line 647
    .line 648
    .line 649
    goto :goto_4

    .line 650
    :cond_e
    const-string/jumbo v4, "off"

    .line 651
    .line 652
    .line 653
    :goto_4
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    .line 655
    .line 656
    const-string v4, "\'"

    .line 657
    .line 658
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    .line 660
    .line 661
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object v4

    .line 665
    invoke-static {p1, v4}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    .line 667
    .line 668
    goto/16 :goto_0

    .line 669
    .line 670
    :cond_f
    :goto_5
    const-string v4, "SemGoodCatchService"

    .line 671
    .line 672
    const-string v5, "It is abnormal that query results have null string."

    .line 673
    .line 674
    invoke-static {v4, v5}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 675
    .line 676
    .line 677
    goto/16 :goto_1

    .line 678
    .line 679
    :cond_10
    if-eqz v3, :cond_11

    .line 680
    .line 681
    :goto_6
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 682
    .line 683
    .line 684
    goto :goto_8

    .line 685
    :catchall_1
    move-exception p0

    .line 686
    goto :goto_a

    .line 687
    :goto_7
    :try_start_4
    sget p1, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    .line 688
    .line 689
    const-string p1, "SemGoodCatchService"

    .line 690
    .line 691
    new-instance v1, Ljava/lang/StringBuilder;

    .line 692
    .line 693
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 694
    .line 695
    .line 696
    const-string/jumbo v2, "update error "

    .line 697
    .line 698
    .line 699
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    .line 701
    .line 702
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 703
    .line 704
    .line 705
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 706
    .line 707
    .line 708
    move-result-object p0

    .line 709
    invoke-static {p1, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 710
    .line 711
    .line 712
    if-eqz v3, :cond_11

    .line 713
    .line 714
    goto :goto_6

    .line 715
    :cond_11
    :goto_8
    :try_start_5
    monitor-exit v0

    .line 716
    goto :goto_b

    .line 717
    :goto_9
    if-eqz v3, :cond_12

    .line 718
    .line 719
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 720
    .line 721
    .line 722
    :cond_12
    throw p0

    .line 723
    :goto_a
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 724
    throw p0

    .line 725
    :cond_13
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    .line 726
    .line 727
    sget p1, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    .line 728
    .line 729
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 730
    .line 731
    .line 732
    new-instance p1, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    .line 733
    .line 734
    invoke-direct {p1, p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;)V

    .line 735
    .line 736
    .line 737
    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureSetting:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    .line 738
    .line 739
    new-instance p1, Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;

    .line 740
    .line 741
    invoke-direct {p1, p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;)V

    .line 742
    .line 743
    .line 744
    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureEvent:Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;

    .line 745
    .line 746
    new-instance p1, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    .line 747
    .line 748
    invoke-direct {p1, p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;)V

    .line 749
    .line 750
    .line 751
    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureDetectAds:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    .line 752
    .line 753
    new-instance p1, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;

    .line 754
    .line 755
    invoke-direct {p1, p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;)V

    .line 756
    .line 757
    .line 758
    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureWakeUp:Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;

    .line 759
    .line 760
    new-instance p1, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSettingsProvider;

    .line 761
    .line 762
    invoke-direct {p1, p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSettingsProvider;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;)V

    .line 763
    .line 764
    .line 765
    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureSettingsProvider:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSettingsProvider;

    .line 766
    .line 767
    :goto_b
    return-void
.end method
