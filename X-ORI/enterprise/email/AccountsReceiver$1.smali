.class public final Lcom/android/server/enterprise/email/AccountsReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/email/AccountsReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/email/AccountsReceiver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

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
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const-string v2, "AccountsReceiver"

    .line 6
    .line 7
    const-string/jumbo v3, "onReceive() : failed to install cba on accountId : "

    .line 8
    .line 9
    .line 10
    const-string/jumbo v4, "onReceive() userId = "

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    const-string/jumbo v6, "user_handle_id"

    .line 18
    .line 19
    .line 20
    const/4 v7, 0x0

    .line 21
    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    const-string/jumbo v8, "com.samsung.android.knox.intent.extra.USER_HANDLE_ID_INTERNAL"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v8, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    if-nez v5, :cond_0

    .line 33
    .line 34
    sget-object v0, Lcom/android/server/enterprise/email/AccountsReceiver;->mSmimeCerticateList:Ljava/util/Map;

    .line 35
    .line 36
    const-string/jumbo v0, "onReceive() : Action is null"

    .line 37
    .line 38
    .line 39
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    move-object v11, v2

    .line 45
    goto/16 :goto_2

    .line 46
    .line 47
    :cond_0
    sget-object v8, Lcom/android/server/enterprise/email/AccountsReceiver;->mSmimeCerticateList:Ljava/util/Map;

    .line 48
    .line 49
    new-instance v8, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    const-string/jumbo v4, "com.samsung.android.knox.intent.action.CBA_INSTALL_STATUS_INTERNAL"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    const-string/jumbo v8, "com.samsung.android.knox.intent.extra.ACCOUNT_ID_INTERNAL"

    .line 72
    .line 73
    .line 74
    const-string/jumbo v9, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    .line 75
    .line 76
    .line 77
    const-wide/16 v10, -0x1

    .line 78
    .line 79
    if-eqz v4, :cond_2

    .line 80
    .line 81
    :try_start_1
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.STATUS"

    .line 82
    .line 83
    .line 84
    const/4 v5, 0x1

    .line 85
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    invoke-virtual {v1, v9, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v8, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 93
    .line 94
    .line 95
    move-result-wide v6

    .line 96
    if-ne v4, v5, :cond_1

    .line 97
    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    :cond_1
    iget-object v0, v0, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    .line 114
    .line 115
    invoke-static {v0, v6, v7, v4}, Lcom/android/server/enterprise/email/AccountsReceiver;->-$$Nest$msendClientAuthResultIntent(Lcom/android/server/enterprise/email/AccountsReceiver;JI)V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_3

    .line 119
    .line 120
    :cond_2
    const-string/jumbo v3, "edm.intent.action.sec.MDM_ACCOUNT_SETUP_RESULT"

    .line 121
    .line 122
    .line 123
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 127
    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_EMAIL"

    .line 128
    .line 129
    .line 130
    const-string/jumbo v7, "com.samsung.android.knox.intent.extra.INCOMING_SERVER_ADDRESS"

    .line 131
    .line 132
    .line 133
    const-string/jumbo v12, "com.samsung.android.knox.intent.extra.INCOMING_PROTOCOL"

    .line 134
    .line 135
    .line 136
    const-string/jumbo v13, "com.samsung.android.knox.intent.extra.RECEIVE_HOST_INTERNAL"

    .line 137
    .line 138
    .line 139
    const-string/jumbo v14, "receive_host"

    .line 140
    .line 141
    .line 142
    const-string/jumbo v15, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    .line 143
    .line 144
    .line 145
    const-string/jumbo v10, "com.samsung.android.knox.intent.extra.SERVER_ADDRESS"

    .line 146
    .line 147
    .line 148
    const-string/jumbo v11, "com.samsung.android.knox.intent.extra.SERVICE_NAME_INTERNAL"

    .line 149
    .line 150
    .line 151
    move-object/from16 p1, v2

    .line 152
    .line 153
    const-string/jumbo v2, "server_name"

    .line 154
    .line 155
    .line 156
    move-object/from16 v16, v4

    .line 157
    .line 158
    const-string/jumbo v4, "eas"

    .line 159
    .line 160
    .line 161
    move-object/from16 v17, v7

    .line 162
    .line 163
    const-string/jumbo v7, "com.samsung.android.knox.intent.extra.SERVICE_INTERNAL"

    .line 164
    .line 165
    .line 166
    move-object/from16 v18, v12

    .line 167
    .line 168
    const-string/jumbo v12, "com.samsung.android.knox.intent.extra.ACCOUNT_SETUP_RESULT_STATUS_INTERNAL"

    .line 169
    .line 170
    .line 171
    move-object/from16 v19, v13

    .line 172
    .line 173
    const-string v13, "account_id"

    .line 174
    .line 175
    move-object/from16 v20, v14

    .line 176
    .line 177
    const-string/jumbo v14, "service"

    .line 178
    .line 179
    .line 180
    move-object/from16 v21, v15

    .line 181
    .line 182
    const-string/jumbo v15, "user_id"

    .line 183
    .line 184
    .line 185
    const-string/jumbo v0, "status"

    .line 186
    .line 187
    .line 188
    move/from16 v22, v6

    .line 189
    .line 190
    const-string/jumbo v6, "containerid"

    .line 191
    .line 192
    .line 193
    move-object/from16 v23, v6

    .line 194
    .line 195
    const-string/jumbo v6, "com.samsung.android.knox.intent.extra.ACCOUNT_ID"

    .line 196
    .line 197
    .line 198
    move-object/from16 v24, v10

    .line 199
    .line 200
    const-string/jumbo v10, "com.samsung.android.knox.intent.extra.RESULT"

    .line 201
    .line 202
    .line 203
    move-object/from16 v25, v6

    .line 204
    .line 205
    const-string/jumbo v6, "com.samsung.android.knox.intent.extra.EMAIL_ADDRESS"

    .line 206
    .line 207
    .line 208
    if-nez v3, :cond_3

    .line 209
    .line 210
    :try_start_2
    const-string/jumbo v3, "com.samsung.android.knox.intent.action.MDM_ACCOUNT_SETUP_RESULT_INTERNAL"

    .line 211
    .line 212
    .line 213
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v3

    .line 217
    if-eqz v3, :cond_4

    .line 218
    .line 219
    :cond_3
    move-object/from16 v26, v16

    .line 220
    .line 221
    move-object/from16 v27, v17

    .line 222
    .line 223
    move-object/from16 v28, v18

    .line 224
    .line 225
    move-object/from16 v29, v19

    .line 226
    .line 227
    move-object/from16 v30, v20

    .line 228
    .line 229
    move-object/from16 v31, v23

    .line 230
    .line 231
    move-object/from16 v3, v25

    .line 232
    .line 233
    const/16 v5, 0x8

    .line 234
    .line 235
    goto/16 :goto_1

    .line 236
    .line 237
    :cond_4
    const-string/jumbo v3, "edm.intent.action.sec.MDM_ACCOUNT_DELETE_RESULT"

    .line 238
    .line 239
    .line 240
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v3

    .line 244
    if-nez v3, :cond_5

    .line 245
    .line 246
    const-string/jumbo v3, "com.samsung.android.knox.intent.action.MDM_ACCOUNT_DELETE_RESULT_INTERNAL"

    .line 247
    .line 248
    .line 249
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v3

    .line 253
    if-eqz v3, :cond_10

    .line 254
    .line 255
    :cond_5
    const/16 v3, 0x8

    .line 256
    .line 257
    goto :goto_0

    .line 258
    :catch_1
    move-exception v0

    .line 259
    move-object/from16 v11, p1

    .line 260
    .line 261
    goto/16 :goto_2

    .line 262
    .line 263
    :goto_0
    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    invoke-virtual {v1, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    invoke-virtual {v1, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v5

    .line 275
    const-wide/16 v14, -0x1

    .line 276
    .line 277
    invoke-virtual {v1, v13, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 278
    .line 279
    .line 280
    move-result-wide v13

    .line 281
    invoke-virtual {v1, v12, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    invoke-virtual {v1, v8, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 286
    .line 287
    .line 288
    move-result-wide v12

    .line 289
    if-nez v3, :cond_6

    .line 290
    .line 291
    invoke-virtual {v1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    :cond_6
    if-nez v5, :cond_7

    .line 296
    .line 297
    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v5

    .line 301
    :cond_7
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 302
    .line 303
    .line 304
    move-result v4

    .line 305
    if-eqz v4, :cond_9

    .line 306
    .line 307
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    if-nez v2, :cond_8

    .line 312
    .line 313
    invoke-virtual {v1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    :cond_8
    new-instance v1, Landroid/content/Intent;

    .line 318
    .line 319
    const-string/jumbo v4, "com.samsung.android.knox.intent.action.EXCHANGE_ACCOUNT_DELETE_RESULT"

    .line 320
    .line 321
    .line 322
    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v1, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 329
    .line 330
    .line 331
    move-object/from16 v4, v25

    .line 332
    .line 333
    invoke-virtual {v1, v4, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 334
    .line 335
    .line 336
    move-object/from16 v3, v24

    .line 337
    .line 338
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    .line 340
    .line 341
    move/from16 v2, v22

    .line 342
    .line 343
    move-object/from16 v7, v23

    .line 344
    .line 345
    invoke-virtual {v1, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 346
    .line 347
    .line 348
    move-object/from16 v8, p0

    .line 349
    .line 350
    iget-object v0, v8, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    .line 351
    .line 352
    iget-object v0, v0, Lcom/android/server/enterprise/email/AccountsReceiver;->mContext:Landroid/content/Context;

    .line 353
    .line 354
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 355
    .line 356
    move-object/from16 v5, v21

    .line 357
    .line 358
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    goto/16 :goto_3

    .line 362
    .line 363
    :cond_9
    move-object/from16 v8, p0

    .line 364
    .line 365
    move-object/from16 v9, v20

    .line 366
    .line 367
    move/from16 v2, v22

    .line 368
    .line 369
    move-object/from16 v7, v23

    .line 370
    .line 371
    move-object/from16 v4, v25

    .line 372
    .line 373
    invoke-virtual {v1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v9

    .line 377
    if-nez v9, :cond_a

    .line 378
    .line 379
    move-object/from16 v11, v19

    .line 380
    .line 381
    invoke-virtual {v1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v9

    .line 385
    :cond_a
    new-instance v1, Landroid/content/Intent;

    .line 386
    .line 387
    const-string/jumbo v11, "com.samsung.android.knox.intent.action.EMAIL_ACCOUNT_DELETE_RESULT"

    .line 388
    .line 389
    .line 390
    invoke-direct {v1, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v1, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v1, v4, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 400
    .line 401
    .line 402
    move-object/from16 v0, v18

    .line 403
    .line 404
    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    .line 406
    .line 407
    move-object/from16 v0, v17

    .line 408
    .line 409
    invoke-virtual {v1, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v1, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 413
    .line 414
    .line 415
    iget-object v0, v8, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    .line 416
    .line 417
    iget-object v0, v0, Lcom/android/server/enterprise/email/AccountsReceiver;->mContext:Landroid/content/Context;

    .line 418
    .line 419
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 420
    .line 421
    move-object/from16 v3, v16

    .line 422
    .line 423
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    goto/16 :goto_3

    .line 427
    .line 428
    :goto_1
    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 429
    .line 430
    .line 431
    move-result v0

    .line 432
    invoke-virtual {v1, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v5

    .line 436
    invoke-virtual {v1, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v14

    .line 440
    move-object/from16 v17, v2

    .line 441
    .line 442
    move-object/from16 v25, v3

    .line 443
    .line 444
    move-object/from16 v16, v10

    .line 445
    .line 446
    move-object v15, v11

    .line 447
    const-wide/16 v10, -0x1

    .line 448
    .line 449
    invoke-virtual {v1, v13, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 450
    .line 451
    .line 452
    move-result-wide v2

    .line 453
    invoke-virtual {v1, v12, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 454
    .line 455
    .line 456
    move-result v0

    .line 457
    invoke-virtual {v1, v8, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 458
    .line 459
    .line 460
    move-result-wide v2

    .line 461
    if-nez v5, :cond_b

    .line 462
    .line 463
    invoke-virtual {v1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v5

    .line 467
    :cond_b
    if-nez v14, :cond_c

    .line 468
    .line 469
    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v14

    .line 473
    :cond_c
    invoke-virtual {v4, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 474
    .line 475
    .line 476
    move-result v4

    .line 477
    if-eqz v4, :cond_e

    .line 478
    .line 479
    move-object/from16 v4, v17

    .line 480
    .line 481
    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v4

    .line 485
    if-nez v4, :cond_d

    .line 486
    .line 487
    move-object v7, v15

    .line 488
    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v4

    .line 492
    :cond_d
    new-instance v1, Landroid/content/Intent;

    .line 493
    .line 494
    const-string/jumbo v7, "com.samsung.android.knox.intent.action.EXCHANGE_ACCOUNT_ADD_RESULT"

    .line 495
    .line 496
    .line 497
    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 501
    .line 502
    .line 503
    move-object/from16 v7, v16

    .line 504
    .line 505
    invoke-virtual {v1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 506
    .line 507
    .line 508
    move-object/from16 v8, v25

    .line 509
    .line 510
    invoke-virtual {v1, v8, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 511
    .line 512
    .line 513
    move-object/from16 v6, v24

    .line 514
    .line 515
    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 516
    .line 517
    .line 518
    move/from16 v4, v22

    .line 519
    .line 520
    move-object/from16 v9, v31

    .line 521
    .line 522
    invoke-virtual {v1, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 523
    .line 524
    .line 525
    move v10, v4

    .line 526
    move-object/from16 v4, p0

    .line 527
    .line 528
    iget-object v4, v4, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    .line 529
    .line 530
    iget-object v4, v4, Lcom/android/server/enterprise/email/AccountsReceiver;->mContext:Landroid/content/Context;

    .line 531
    .line 532
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 533
    .line 534
    move-object/from16 v7, v21

    .line 535
    .line 536
    invoke-virtual {v4, v1, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 537
    .line 538
    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    .line 540
    .line 541
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 542
    .line 543
    .line 544
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 545
    .line 546
    .line 547
    const-string v4, "#"

    .line 548
    .line 549
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v1

    .line 559
    invoke-static {v1}, Lcom/android/server/enterprise/email/AccountsReceiver;->getSMIMECertificate(Ljava/lang/String;)Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    .line 560
    .line 561
    .line 562
    move-result-object v1

    .line 563
    if-eqz v1, :cond_10

    .line 564
    .line 565
    if-nez v0, :cond_10

    .line 566
    .line 567
    const-wide/16 v4, -0x1

    .line 568
    .line 569
    cmp-long v0, v2, v4

    .line 570
    .line 571
    if-eqz v0, :cond_10

    .line 572
    .line 573
    new-instance v0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;

    .line 574
    .line 575
    invoke-direct {v0}, Ljava/lang/Thread;-><init>()V

    .line 576
    .line 577
    .line 578
    iput-object v1, v0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mSMIMECertificate:Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    .line 579
    .line 580
    iput-wide v2, v0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mAccId:J

    .line 581
    .line 582
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 583
    .line 584
    .line 585
    const-string/jumbo v0, "onRecieve() : SMIMECertificate install called."
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 586
    .line 587
    .line 588
    move-object/from16 v11, p1

    .line 589
    .line 590
    :try_start_3
    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    .line 592
    .line 593
    goto :goto_3

    .line 594
    :catch_2
    move-exception v0

    .line 595
    goto :goto_2

    .line 596
    :cond_e
    move-object/from16 v4, p0

    .line 597
    .line 598
    move-object/from16 v11, p1

    .line 599
    .line 600
    move-object/from16 v7, v16

    .line 601
    .line 602
    move/from16 v10, v22

    .line 603
    .line 604
    move-object/from16 v8, v25

    .line 605
    .line 606
    move-object/from16 v12, v30

    .line 607
    .line 608
    move-object/from16 v9, v31

    .line 609
    .line 610
    invoke-virtual {v1, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object v12

    .line 614
    if-nez v12, :cond_f

    .line 615
    .line 616
    move-object/from16 v13, v29

    .line 617
    .line 618
    invoke-virtual {v1, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 619
    .line 620
    .line 621
    move-result-object v12

    .line 622
    :cond_f
    new-instance v1, Landroid/content/Intent;

    .line 623
    .line 624
    const-string/jumbo v13, "com.samsung.android.knox.intent.action.EMAIL_ACCOUNT_ADD_RESULT"

    .line 625
    .line 626
    .line 627
    invoke-direct {v1, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 628
    .line 629
    .line 630
    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 631
    .line 632
    .line 633
    invoke-virtual {v1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 634
    .line 635
    .line 636
    invoke-virtual {v1, v8, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 637
    .line 638
    .line 639
    move-object/from16 v0, v28

    .line 640
    .line 641
    invoke-virtual {v1, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 642
    .line 643
    .line 644
    move-object/from16 v0, v27

    .line 645
    .line 646
    invoke-virtual {v1, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 647
    .line 648
    .line 649
    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 650
    .line 651
    .line 652
    iget-object v0, v4, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    .line 653
    .line 654
    iget-object v0, v0, Lcom/android/server/enterprise/email/AccountsReceiver;->mContext:Landroid/content/Context;

    .line 655
    .line 656
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 657
    .line 658
    move-object/from16 v3, v26

    .line 659
    .line 660
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 661
    .line 662
    .line 663
    goto :goto_3

    .line 664
    :goto_2
    sget-object v1, Lcom/android/server/enterprise/email/AccountsReceiver;->mSmimeCerticateList:Ljava/util/Map;

    .line 665
    .line 666
    const-string/jumbo v1, "onRecieve() failed. "

    .line 667
    .line 668
    .line 669
    invoke-static {v11, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 670
    .line 671
    .line 672
    :cond_10
    :goto_3
    return-void
.end method
