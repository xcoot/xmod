.class public final synthetic Lcom/samsung/android/server/dynamicfeature/network/HttpConnector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;

.field public final synthetic f$1:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$1;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$1;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->updateHandler:Lcom/samsung/android/server/dynamicfeature/network/HttpConnector$1;

    .line 8
    .line 9
    const-string/jumbo v3, "url is "

    .line 10
    .line 11
    .line 12
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    const/4 v6, 0x3

    .line 19
    new-array v6, v6, [Ljava/lang/Object;

    .line 20
    .line 21
    const/4 v7, 0x0

    .line 22
    aput-object v0, v6, v7

    .line 23
    .line 24
    const-string v0, ""

    .line 25
    .line 26
    const/4 v8, 0x1

    .line 27
    aput-object v0, v6, v8

    .line 28
    .line 29
    const/4 v9, 0x2

    .line 30
    aput-object v4, v6, v9

    .line 31
    .line 32
    const-string v0, "Update is blocked "

    .line 33
    .line 34
    const-class v10, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;

    .line 35
    .line 36
    monitor-enter v10

    .line 37
    :try_start_0
    sget v11, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->isStopped:I

    .line 38
    .line 39
    if-lez v11, :cond_0

    .line 40
    .line 41
    const-string v11, "dynamicfeature_HttpConnector"

    .line 42
    .line 43
    new-instance v12, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 v0, 0x5

    .line 49
    invoke-static {v0}, Lcom/samsung/android/server/dynamicfeature/dlog/Dlog;->getCallers(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    .line 65
    goto/16 :goto_1a

    .line 66
    .line 67
    :cond_0
    :goto_0
    sget v0, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->isStopped:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    if-eqz v0, :cond_1

    .line 70
    .line 71
    move v0, v8

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    move v0, v7

    .line 74
    :goto_1
    monitor-exit v10

    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 78
    .line 79
    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 80
    .line 81
    .line 82
    goto/16 :goto_16

    .line 83
    .line 84
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    sget-object v11, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->server_url:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v11, "features"

    .line 95
    .line 96
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v7}, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->getParams(Z)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v11

    .line 103
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    const-string v11, "dynamicfeature_HttpConnector"

    .line 111
    .line 112
    new-instance v12, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v12, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-static {v11, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    invoke-static {v0}, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->getConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    new-instance v11, Lorg/json/JSONObject;

    .line 132
    .line 133
    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 134
    .line 135
    .line 136
    new-instance v12, Lorg/json/JSONArray;

    .line 137
    .line 138
    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 139
    .line 140
    .line 141
    iget-object v13, v1, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->mFeatures:Ljava/util/ArrayList;

    .line 142
    .line 143
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 144
    .line 145
    .line 146
    move-result-object v13

    .line 147
    :cond_3
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 148
    .line 149
    .line 150
    move-result v14

    .line 151
    if-eqz v14, :cond_6

    .line 152
    .line 153
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v14

    .line 157
    check-cast v14, Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 158
    .line 159
    iget-object v15, v14, Lcom/samsung/android/server/dynamicfeature/DFeature;->abType:Ljava/lang/String;

    .line 160
    .line 161
    if-eqz v15, :cond_3

    .line 162
    .line 163
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 164
    .line 165
    .line 166
    move-result v15

    .line 167
    if-nez v15, :cond_4

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_4
    new-instance v15, Lorg/json/JSONObject;

    .line 171
    .line 172
    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 173
    .line 174
    .line 175
    const-string/jumbo v10, "namespace"

    .line 176
    .line 177
    .line 178
    iget-object v9, v14, Lcom/samsung/android/server/dynamicfeature/DFeature;->namespace:Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {v15, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    .line 182
    .line 183
    const-string/jumbo v9, "name"

    .line 184
    .line 185
    .line 186
    iget-object v10, v14, Lcom/samsung/android/server/dynamicfeature/DFeature;->name:Ljava/lang/String;

    .line 187
    .line 188
    invoke-virtual {v15, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    .line 190
    .line 191
    const-string v9, "abType"

    .line 192
    .line 193
    iget-object v10, v14, Lcom/samsung/android/server/dynamicfeature/DFeature;->abType:Ljava/lang/String;

    .line 194
    .line 195
    invoke-virtual {v15, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    .line 197
    .line 198
    const-string/jumbo v9, "version"

    .line 199
    .line 200
    .line 201
    iget v10, v14, Lcom/samsung/android/server/dynamicfeature/DFeature;->version:I

    .line 202
    .line 203
    invoke-virtual {v15, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v14}, Lcom/samsung/android/server/dynamicfeature/DFeature;->getCommentJSONArray()Lorg/json/JSONArray;

    .line 207
    .line 208
    .line 209
    move-result-object v9

    .line 210
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    .line 211
    .line 212
    .line 213
    move-result v10

    .line 214
    if-lez v10, :cond_5

    .line 215
    .line 216
    const-string v10, "logs"

    .line 217
    .line 218
    invoke-virtual {v15, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    .line 220
    .line 221
    goto :goto_3

    .line 222
    :catchall_1
    move-exception v0

    .line 223
    move-object v1, v0

    .line 224
    const/4 v2, 0x0

    .line 225
    const/4 v10, 0x0

    .line 226
    goto/16 :goto_17

    .line 227
    .line 228
    :catch_0
    move-exception v0

    .line 229
    const/4 v1, 0x0

    .line 230
    const/4 v10, 0x0

    .line 231
    goto/16 :goto_e

    .line 232
    .line 233
    :catch_1
    move-exception v0

    .line 234
    const/4 v1, 0x0

    .line 235
    const/4 v10, 0x0

    .line 236
    goto/16 :goto_13

    .line 237
    .line 238
    :cond_5
    :goto_3
    invoke-virtual {v12, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 239
    .line 240
    .line 241
    const/4 v9, 0x2

    .line 242
    goto :goto_2

    .line 243
    :cond_6
    const-string v9, "abTest"

    .line 244
    .line 245
    invoke-virtual {v11, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    .line 247
    .line 248
    const-string/jumbo v9, "virtualId"

    .line 249
    .line 250
    .line 251
    sget-object v10, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->basicInfo:Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;

    .line 252
    .line 253
    iget-object v12, v10, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->vid:Ljava/lang/String;

    .line 254
    .line 255
    invoke-virtual {v11, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    .line 257
    .line 258
    iget-object v9, v10, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->lastUpdatedTime:Ljava/lang/String;

    .line 259
    .line 260
    sget-boolean v10, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->sParamDirty:Z

    .line 261
    .line 262
    if-eqz v10, :cond_7

    .line 263
    .line 264
    const-string v9, ""

    .line 265
    .line 266
    :cond_7
    const-string/jumbo v10, "updatedAt"

    .line 267
    .line 268
    .line 269
    invoke-virtual {v11, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    .line 271
    .line 272
    const-string v9, "dynamicfeature_HttpConnector"

    .line 273
    .line 274
    new-instance v10, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .line 278
    .line 279
    const-string/jumbo v12, "payload : "

    .line 280
    .line 281
    .line 282
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v12

    .line 289
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v10

    .line 296
    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    .line 298
    .line 299
    new-instance v9, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .line 303
    .line 304
    const-string/jumbo v10, "payload : "

    .line 305
    .line 306
    .line 307
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v10

    .line 314
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v9

    .line 321
    filled-new-array {v9}, [Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v9

    .line 325
    invoke-static {v9}, Lcom/samsung/android/server/dynamicfeature/dlog/Dlog;->event([Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 329
    .line 330
    .line 331
    move-result-object v9
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 332
    :try_start_2
    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v10

    .line 336
    const-string/jumbo v11, "utf-8"

    .line 337
    .line 338
    .line 339
    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 340
    .line 341
    .line 342
    move-result-object v10

    .line 343
    array-length v11, v10

    .line 344
    invoke-virtual {v9, v10, v7, v11}, Ljava/io/OutputStream;->write([BII)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 351
    .line 352
    .line 353
    move-result v7

    .line 354
    new-instance v10, Ljava/lang/StringBuilder;

    .line 355
    .line 356
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 357
    .line 358
    .line 359
    iput v7, v1, Lcom/samsung/android/server/dynamicfeature/network/HttpConnector;->mLastResultCode:I

    .line 360
    .line 361
    const/16 v1, 0xc8

    .line 362
    .line 363
    if-eq v7, v1, :cond_9

    .line 364
    .line 365
    const/16 v1, 0x130

    .line 366
    .line 367
    if-eq v7, v1, :cond_8

    .line 368
    .line 369
    const-string v1, "dynamicfeature_HttpConnector"

    .line 370
    .line 371
    new-instance v3, Ljava/lang/StringBuilder;

    .line 372
    .line 373
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 374
    .line 375
    .line 376
    const-string v11, "Error on connection : "

    .line 377
    .line 378
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v3

    .line 388
    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    .line 390
    .line 391
    const/4 v1, 0x0

    .line 392
    goto :goto_9

    .line 393
    :goto_4
    move-object v1, v0

    .line 394
    move-object v10, v9

    .line 395
    const/4 v2, 0x0

    .line 396
    goto/16 :goto_17

    .line 397
    .line 398
    :goto_5
    move-object v10, v9

    .line 399
    const/4 v1, 0x0

    .line 400
    goto/16 :goto_e

    .line 401
    .line 402
    :goto_6
    move-object v10, v9

    .line 403
    const/4 v1, 0x0

    .line 404
    goto/16 :goto_13

    .line 405
    .line 406
    :catchall_2
    move-exception v0

    .line 407
    goto :goto_4

    .line 408
    :catch_2
    move-exception v0

    .line 409
    goto :goto_5

    .line 410
    :catch_3
    move-exception v0

    .line 411
    goto :goto_6

    .line 412
    :cond_8
    const/4 v1, 0x0

    .line 413
    goto :goto_8

    .line 414
    :cond_9
    new-instance v1, Ljava/io/InputStreamReader;

    .line 415
    .line 416
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 417
    .line 418
    .line 419
    move-result-object v3

    .line 420
    const-string/jumbo v11, "utf-8"

    .line 421
    .line 422
    .line 423
    invoke-direct {v1, v3, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 424
    .line 425
    .line 426
    :try_start_3
    new-instance v3, Ljava/io/BufferedReader;

    .line 427
    .line 428
    invoke-direct {v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 429
    .line 430
    .line 431
    :goto_7
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v11

    .line 435
    if-eqz v11, :cond_a

    .line 436
    .line 437
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v11

    .line 441
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 442
    .line 443
    .line 444
    goto :goto_7

    .line 445
    :catchall_3
    move-exception v0

    .line 446
    move-object v7, v0

    .line 447
    goto/16 :goto_c

    .line 448
    .line 449
    :cond_a
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 450
    .line 451
    .line 452
    :goto_8
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 453
    .line 454
    :goto_9
    const-string v3, "dynamicfeature_HttpConnector"

    .line 455
    .line 456
    new-instance v11, Ljava/lang/StringBuilder;

    .line 457
    .line 458
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 459
    .line 460
    .line 461
    const-string/jumbo v12, "post result : "

    .line 462
    .line 463
    .line 464
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    const-string v12, " requestCode "

    .line 471
    .line 472
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v11

    .line 482
    invoke-static {v3, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    .line 484
    .line 485
    new-instance v3, Ljava/lang/StringBuilder;

    .line 486
    .line 487
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    const-string v0, " :: "

    .line 494
    .line 495
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v3

    .line 509
    filled-new-array {v0, v3}, [Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    invoke-static {v0}, Lcom/samsung/android/server/dynamicfeature/dlog/Dlog;->event([Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v0

    .line 520
    aput-object v0, v6, v8

    .line 521
    .line 522
    const/4 v3, 0x2

    .line 523
    aput-object v4, v6, v3

    .line 524
    .line 525
    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 526
    .line 527
    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 528
    .line 529
    .line 530
    :try_start_6
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 531
    .line 532
    .line 533
    goto :goto_a

    .line 534
    :catch_4
    move-exception v0

    .line 535
    move-object v2, v0

    .line 536
    const-string v0, "dynamicfeature_HttpConnector"

    .line 537
    .line 538
    const-string v3, "Cannot close handle : "

    .line 539
    .line 540
    invoke-static {v3, v2, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    :goto_a
    if-eqz v1, :cond_e

    .line 544
    .line 545
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 546
    .line 547
    .line 548
    goto/16 :goto_16

    .line 549
    .line 550
    :catch_5
    move-exception v0

    .line 551
    move-object v1, v0

    .line 552
    const-string v0, "dynamicfeature_HttpConnector"

    .line 553
    .line 554
    const-string v2, "Cannot close handle : "

    .line 555
    .line 556
    invoke-static {v2, v1, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    goto/16 :goto_16

    .line 560
    .line 561
    :catchall_4
    move-exception v0

    .line 562
    move-object v2, v1

    .line 563
    move-object v10, v9

    .line 564
    :goto_b
    move-object v1, v0

    .line 565
    goto/16 :goto_17

    .line 566
    .line 567
    :catch_6
    move-exception v0

    .line 568
    move-object v10, v9

    .line 569
    goto :goto_e

    .line 570
    :catch_7
    move-exception v0

    .line 571
    move-object v10, v9

    .line 572
    goto :goto_13

    .line 573
    :goto_c
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 574
    .line 575
    .line 576
    goto :goto_d

    .line 577
    :catchall_5
    move-exception v0

    .line 578
    move-object v3, v0

    .line 579
    :try_start_9
    invoke-virtual {v7, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 580
    .line 581
    .line 582
    :goto_d
    throw v7
    :try_end_9
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 583
    :goto_e
    :try_start_a
    const-string v3, "dynamicfeature_HttpConnector"

    .line 584
    .line 585
    new-instance v7, Ljava/lang/StringBuilder;

    .line 586
    .line 587
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 588
    .line 589
    .line 590
    const-string v8, "Fail to send + "

    .line 591
    .line 592
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v0

    .line 599
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    .line 601
    .line 602
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 607
    .line 608
    .line 609
    if-eqz v10, :cond_b

    .line 610
    .line 611
    :try_start_b
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 612
    .line 613
    .line 614
    goto :goto_f

    .line 615
    :catch_8
    move-exception v0

    .line 616
    move-object v3, v0

    .line 617
    const-string v0, "dynamicfeature_HttpConnector"

    .line 618
    .line 619
    const-string v7, "Cannot close handle : "

    .line 620
    .line 621
    invoke-static {v7, v3, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 622
    .line 623
    .line 624
    :cond_b
    :goto_f
    if-eqz v1, :cond_c

    .line 625
    .line 626
    :try_start_c
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 627
    .line 628
    .line 629
    goto :goto_11

    .line 630
    :catch_9
    move-exception v0

    .line 631
    move-object v1, v0

    .line 632
    const-string v0, "dynamicfeature_HttpConnector"

    .line 633
    .line 634
    const-string v3, "Cannot close handle : "

    .line 635
    .line 636
    :goto_10
    invoke-static {v3, v1, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 637
    .line 638
    .line 639
    :cond_c
    :goto_11
    const/4 v1, 0x2

    .line 640
    goto :goto_15

    .line 641
    :goto_12
    move-object v2, v1

    .line 642
    goto :goto_b

    .line 643
    :catchall_6
    move-exception v0

    .line 644
    goto :goto_12

    .line 645
    :goto_13
    :try_start_d
    const-string v3, "dynamicfeature_HttpConnector"

    .line 646
    .line 647
    new-instance v7, Ljava/lang/StringBuilder;

    .line 648
    .line 649
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 650
    .line 651
    .line 652
    const-string v8, "Fail to send + "

    .line 653
    .line 654
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    .line 656
    .line 657
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object v0

    .line 661
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    .line 663
    .line 664
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v0

    .line 668
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 669
    .line 670
    .line 671
    if-eqz v10, :cond_d

    .line 672
    .line 673
    :try_start_e
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    .line 674
    .line 675
    .line 676
    goto :goto_14

    .line 677
    :catch_a
    move-exception v0

    .line 678
    move-object v3, v0

    .line 679
    const-string v0, "dynamicfeature_HttpConnector"

    .line 680
    .line 681
    const-string v7, "Cannot close handle : "

    .line 682
    .line 683
    invoke-static {v7, v3, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 684
    .line 685
    .line 686
    :cond_d
    :goto_14
    if-eqz v1, :cond_c

    .line 687
    .line 688
    :try_start_f
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    .line 689
    .line 690
    .line 691
    goto :goto_11

    .line 692
    :catch_b
    move-exception v0

    .line 693
    move-object v1, v0

    .line 694
    const-string v0, "dynamicfeature_HttpConnector"

    .line 695
    .line 696
    const-string v3, "Cannot close handle : "

    .line 697
    .line 698
    goto :goto_10

    .line 699
    :goto_15
    aput-object v4, v6, v1

    .line 700
    .line 701
    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 702
    .line 703
    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 704
    .line 705
    .line 706
    :cond_e
    :goto_16
    return-void

    .line 707
    :goto_17
    if-eqz v10, :cond_f

    .line 708
    .line 709
    :try_start_10
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    .line 710
    .line 711
    .line 712
    goto :goto_18

    .line 713
    :catch_c
    move-exception v0

    .line 714
    move-object v3, v0

    .line 715
    const-string v0, "dynamicfeature_HttpConnector"

    .line 716
    .line 717
    const-string v4, "Cannot close handle : "

    .line 718
    .line 719
    invoke-static {v4, v3, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 720
    .line 721
    .line 722
    :cond_f
    :goto_18
    if-eqz v2, :cond_10

    .line 723
    .line 724
    :try_start_11
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d

    .line 725
    .line 726
    .line 727
    goto :goto_19

    .line 728
    :catch_d
    move-exception v0

    .line 729
    move-object v2, v0

    .line 730
    const-string v0, "dynamicfeature_HttpConnector"

    .line 731
    .line 732
    const-string v3, "Cannot close handle : "

    .line 733
    .line 734
    invoke-static {v3, v2, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 735
    .line 736
    .line 737
    :cond_10
    :goto_19
    throw v1

    .line 738
    :goto_1a
    monitor-exit v10

    .line 739
    throw v0
.end method
