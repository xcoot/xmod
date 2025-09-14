.class public final Lcom/samsung/accessory/manager/SAccessoryManager$4;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/accessory/manager/SAccessoryManager;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/accessory/manager/SAccessoryManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/samsung/accessory/manager/SAccessoryManager$4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/accessory/manager/SAccessoryManager$4;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    iget v0, v1, Lcom/samsung/accessory/manager/SAccessoryManager$4;->$r8$classId:I

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v5, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    .line 15
    .line 16
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_e

    .line 21
    .line 22
    const-string/jumbo v5, "misc_event"

    .line 23
    .line 24
    .line 25
    const/4 v6, 0x0

    .line 26
    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const-string/jumbo v7, "sec_plug_type"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    const/16 v9, 0x40

    .line 42
    .line 43
    and-int/2addr v8, v9

    .line 44
    if-ne v8, v9, :cond_0

    .line 45
    .line 46
    const/4 v8, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    move v8, v6

    .line 49
    :goto_0
    sget-boolean v9, Lcom/samsung/accessory/manager/SAccessoryManager;->DBG:Z

    .line 50
    .line 51
    new-instance v9, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string/jumbo v10, "onReceive: "

    .line 54
    .line 55
    .line 56
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v10

    .line 63
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v10, ", misc_event: "

    .line 67
    .line 68
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v0, ", plug event: "

    .line 75
    .line 76
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v10, "SAccessoryManager_SAccessoryManager"

    .line 80
    .line 81
    invoke-static {v9, v7, v10}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, v1, Lcom/samsung/accessory/manager/SAccessoryManager$4;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 85
    .line 86
    iget-object v0, v0, Lcom/samsung/accessory/manager/SAccessoryManager;->mLocalAuthenticator:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    if-eqz v9, :cond_8

    .line 97
    .line 98
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v9

    .line 102
    check-cast v9, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;

    .line 103
    .line 104
    instance-of v11, v9, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 105
    .line 106
    if-eqz v11, :cond_7

    .line 107
    .line 108
    const-string v11, "batteryChanged: "

    .line 109
    .line 110
    invoke-static {v7, v11, v10}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    check-cast v9, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 114
    .line 115
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 119
    .line 120
    .line 121
    move-result-wide v11

    .line 122
    iget-wide v13, v9, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAuthenticationTime:J

    .line 123
    .line 124
    const-wide/16 v3, 0x0

    .line 125
    .line 126
    cmp-long v13, v13, v3

    .line 127
    .line 128
    if-nez v13, :cond_1

    .line 129
    .line 130
    move-wide v13, v3

    .line 131
    goto :goto_2

    .line 132
    :cond_1
    iget-wide v13, v9, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAuthenticationTime:J

    .line 133
    .line 134
    sub-long v13, v11, v13

    .line 135
    .line 136
    :goto_2
    sget-boolean v16, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->USE_SCHEDULED_AUTHENTICATION_WEHN_CHARGING:Z

    .line 137
    .line 138
    const-string v15, "SAccessoryManager_CoverAuthenticator"

    .line 139
    .line 140
    if-eqz v16, :cond_5

    .line 141
    .line 142
    iget-object v6, v9, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    .line 143
    .line 144
    if-eqz v6, :cond_2

    .line 145
    .line 146
    invoke-virtual {v6}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    const/4 v3, 0x7

    .line 151
    if-ne v6, v3, :cond_2

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_2
    iget v3, v9, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentPowerSouce:I

    .line 155
    .line 156
    if-nez v3, :cond_5

    .line 157
    .line 158
    const/4 v3, 0x1

    .line 159
    and-int/lit8 v4, v7, 0x1

    .line 160
    .line 161
    if-nez v4, :cond_3

    .line 162
    .line 163
    const/4 v4, 0x2

    .line 164
    and-int/lit8 v6, v7, 0x2

    .line 165
    .line 166
    if-eqz v6, :cond_5

    .line 167
    .line 168
    :cond_3
    const-string v4, "Power connected, source = "

    .line 169
    .line 170
    invoke-static {v7, v4, v15}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    const-wide/32 v17, 0x5265c00

    .line 174
    .line 175
    .line 176
    cmp-long v4, v13, v17

    .line 177
    .line 178
    if-lez v4, :cond_6

    .line 179
    .line 180
    :cond_4
    :goto_3
    const/4 v4, 0x1

    .line 181
    goto :goto_5

    .line 182
    :cond_5
    :goto_4
    iget v4, v9, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentPowerSouce:I

    .line 183
    .line 184
    and-int/lit8 v4, v4, 0x4

    .line 185
    .line 186
    if-eqz v4, :cond_6

    .line 187
    .line 188
    and-int/lit8 v4, v7, 0x4

    .line 189
    .line 190
    if-nez v4, :cond_6

    .line 191
    .line 192
    const-string v4, "A wireless power source is disconnected"

    .line 193
    .line 194
    invoke-static {v15, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    iget-object v4, v9, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    .line 198
    .line 199
    if-eqz v4, :cond_4

    .line 200
    .line 201
    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    if-nez v4, :cond_6

    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_6
    const/4 v4, 0x0

    .line 209
    :goto_5
    const-string/jumbo v6, "plugType = "

    .line 210
    .line 211
    .line 212
    invoke-static {v7, v6, v15}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    iput v7, v9, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentPowerSouce:I

    .line 216
    .line 217
    if-eqz v4, :cond_7

    .line 218
    .line 219
    sget-boolean v4, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->sIsFelicaAllowed:Z

    .line 220
    .line 221
    if-eqz v4, :cond_7

    .line 222
    .line 223
    invoke-virtual {v9}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverSwitchState()I

    .line 224
    .line 225
    .line 226
    move-result v4

    .line 227
    const/4 v3, 0x1

    .line 228
    if-lt v4, v3, :cond_7

    .line 229
    .line 230
    const-string v4, "It will be verified soon"

    .line 231
    .line 232
    invoke-static {v15, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .line 234
    .line 235
    iput-wide v11, v9, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAuthenticationTime:J

    .line 236
    .line 237
    const/4 v4, 0x3

    .line 238
    iput v4, v9, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I

    .line 239
    .line 240
    const-wide/16 v11, 0x0

    .line 241
    .line 242
    invoke-virtual {v9, v11, v12, v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthentication(JZ)V

    .line 243
    .line 244
    .line 245
    :cond_7
    const/4 v6, 0x0

    .line 246
    goto/16 :goto_1

    .line 247
    .line 248
    :cond_8
    iget-object v0, v1, Lcom/samsung/accessory/manager/SAccessoryManager$4;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 249
    .line 250
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    .line 252
    .line 253
    const-string v3, "File read fail "

    .line 254
    .line 255
    const-string/jumbo v0, "wpc auth  mode = "

    .line 256
    .line 257
    .line 258
    const/16 v4, 0x400

    .line 259
    .line 260
    new-array v6, v4, [C

    .line 261
    .line 262
    const/4 v7, 0x0

    .line 263
    :try_start_0
    new-instance v9, Ljava/io/FileReader;

    .line 264
    .line 265
    const-string/jumbo v11, "sys/class/power_supply/battery/wpc_auth_mode"

    .line 266
    .line 267
    .line 268
    invoke-direct {v9, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 269
    .line 270
    .line 271
    const/4 v7, 0x0

    .line 272
    :try_start_1
    invoke-virtual {v9, v6, v7, v4}, Ljava/io/FileReader;->read([CII)I

    .line 273
    .line 274
    .line 275
    move-result v4

    .line 276
    new-instance v11, Ljava/lang/String;

    .line 277
    .line 278
    invoke-direct {v11, v6, v7, v4}, Ljava/lang/String;-><init>([CII)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v4

    .line 285
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 286
    .line 287
    .line 288
    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 290
    .line 291
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 302
    .line 303
    .line 304
    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 305
    .line 306
    .line 307
    goto :goto_8

    .line 308
    :catchall_0
    move-exception v0

    .line 309
    move-object v7, v9

    .line 310
    goto :goto_a

    .line 311
    :catch_0
    move-exception v0

    .line 312
    move-object v4, v0

    .line 313
    move v0, v7

    .line 314
    move-object v7, v9

    .line 315
    goto :goto_7

    .line 316
    :catch_1
    move-exception v0

    .line 317
    move-object v4, v0

    .line 318
    move-object v7, v9

    .line 319
    :goto_6
    const/4 v0, 0x0

    .line 320
    goto :goto_7

    .line 321
    :catchall_1
    move-exception v0

    .line 322
    goto :goto_a

    .line 323
    :catch_2
    move-exception v0

    .line 324
    move-object v4, v0

    .line 325
    goto :goto_6

    .line 326
    :goto_7
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    .line 327
    .line 328
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v3

    .line 338
    invoke-static {v10, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 339
    .line 340
    .line 341
    if-eqz v7, :cond_9

    .line 342
    .line 343
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 344
    .line 345
    .line 346
    :catch_3
    :cond_9
    move v7, v0

    .line 347
    :catch_4
    :goto_8
    if-eqz v7, :cond_a

    .line 348
    .line 349
    const/4 v3, 0x2

    .line 350
    if-ne v7, v3, :cond_b

    .line 351
    .line 352
    :cond_a
    const/4 v3, 0x0

    .line 353
    goto :goto_9

    .line 354
    :cond_b
    sget-boolean v0, Lcom/samsung/accessory/manager/SAccessoryManager;->DBG:Z

    .line 355
    .line 356
    const-string v0, "do not auth wireless charging"

    .line 357
    .line 358
    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    .line 360
    .line 361
    goto :goto_b

    .line 362
    :goto_9
    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 363
    .line 364
    .line 365
    move-result v0

    .line 366
    const/16 v2, 0x200

    .line 367
    .line 368
    and-int/2addr v0, v2

    .line 369
    if-ne v0, v2, :cond_c

    .line 370
    .line 371
    iget-object v0, v1, Lcom/samsung/accessory/manager/SAccessoryManager$4;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 372
    .line 373
    const/4 v2, 0x1

    .line 374
    invoke-static {v0, v2}, Lcom/samsung/accessory/manager/SAccessoryManager;->-$$Nest$mwirelessChargerConnected(Lcom/samsung/accessory/manager/SAccessoryManager;I)V

    .line 375
    .line 376
    .line 377
    goto :goto_b

    .line 378
    :cond_c
    const/4 v2, 0x1

    .line 379
    if-nez v8, :cond_e

    .line 380
    .line 381
    iget-object v0, v1, Lcom/samsung/accessory/manager/SAccessoryManager$4;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 382
    .line 383
    iget-boolean v1, v0, Lcom/samsung/accessory/manager/SAccessoryManager;->wirelesschargerState:Z

    .line 384
    .line 385
    if-ne v1, v2, :cond_e

    .line 386
    .line 387
    const/4 v1, 0x2

    .line 388
    invoke-static {v0, v1}, Lcom/samsung/accessory/manager/SAccessoryManager;->-$$Nest$mwirelessChargerConnected(Lcom/samsung/accessory/manager/SAccessoryManager;I)V

    .line 389
    .line 390
    .line 391
    goto :goto_b

    .line 392
    :goto_a
    if-eqz v7, :cond_d

    .line 393
    .line 394
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 395
    .line 396
    .line 397
    :catch_5
    :cond_d
    throw v0

    .line 398
    :cond_e
    :goto_b
    return-void

    .line 399
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    const-string v3, "com.samsung.accessory.authentication.action.TEST_AUTHENTICATION_REQUEST"

    .line 404
    .line 405
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    move-result v0

    .line 409
    if-eqz v0, :cond_f

    .line 410
    .line 411
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    iget-object v2, v1, Lcom/samsung/accessory/manager/SAccessoryManager$4;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 416
    .line 417
    iget-object v2, v2, Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthHandler:Lcom/samsung/accessory/manager/SAccessoryManager$AuthHandler;

    .line 418
    .line 419
    const/4 v3, 0x1

    .line 420
    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 421
    .line 422
    .line 423
    move-result-object v2

    .line 424
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 425
    .line 426
    .line 427
    iget-object v0, v1, Lcom/samsung/accessory/manager/SAccessoryManager$4;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 428
    .line 429
    iget-object v0, v0, Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthHandler:Lcom/samsung/accessory/manager/SAccessoryManager$AuthHandler;

    .line 430
    .line 431
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 432
    .line 433
    .line 434
    :cond_f
    return-void

    .line 435
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
