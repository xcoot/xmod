.class public final Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
.super Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static final RCS_PROJ:[Ljava/lang/String;

.field public static final RCS_URI:Landroid/net/Uri;


# instance fields
.field public final mBroadcastReceiver:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;

.field public final mContext:Landroid/content/Context;

.field public mDataCheckboxPreviousState:Z

.field public mDataLimitEnabled:Z

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public final mEnterpriseSimPin:Lcom/android/server/enterprise/restriction/EnterpriseSimPin;

.field public volatile mIsPhoneShuttingDown:Z

.field public mKeyguardManager:Landroid/app/KeyguardManager;

.field public final mRcsReceiver:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;

.field public final mReceiver:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;

.field public final mSimDbProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

.field public final mSimLockBroadcast:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;

.field public final mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

.field public mSubMgr:Landroid/telephony/SubscriptionManager;

.field public final mTelMgr:Landroid/telephony/TelephonyManager;

.field public final subChangedReceiver:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;


# direct methods
.method public static -$$Nest$mdeliveryBlockedMsgs(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;I)V
    .locals 10

    .line 1
    const-string/jumbo v0, "cvList size "

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    const-string v1, "PhoneRestrictionPolicy"

    .line 6
    .line 7
    const-string v2, " >>>> deliveryBlockedMsgs"

    .line 8
    .line 9
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    const-string/jumbo v3, "smsMmsBlockedRowId"

    .line 13
    .line 14
    .line 15
    const-string/jumbo v4, "smsMmsSendType"

    .line 16
    .line 17
    .line 18
    const-string/jumbo v5, "smsMmsPdu"

    .line 19
    .line 20
    .line 21
    const-string/jumbo v6, "smsMmsTimeStamp"

    .line 22
    .line 23
    .line 24
    const-string/jumbo v7, "smsMmsOrigAddress"

    .line 25
    .line 26
    .line 27
    const-string/jumbo v8, "smsMmsMessageId"

    .line 28
    .line 29
    .line 30
    const-string/jumbo v9, "smsMmsSubId"

    .line 31
    .line 32
    .line 33
    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-nez p1, :cond_0

    .line 38
    .line 39
    const-string v2, "1"

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto/16 :goto_7

    .line 44
    .line 45
    :cond_0
    const-string v2, "0"

    .line 46
    .line 47
    :goto_0
    new-instance v3, Landroid/content/ContentValues;

    .line 48
    .line 49
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string/jumbo v4, "smsMmsType"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 59
    .line 60
    const-string v4, "SMSMMSBlockedDelivery"

    .line 61
    .line 62
    invoke-virtual {v2, v4, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const-string v2, "PhoneRestrictionPolicy"

    .line 67
    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    check-cast v1, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 90
    .line 91
    .line 92
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    if-eqz v0, :cond_1

    .line 94
    .line 95
    monitor-exit p0

    .line 96
    goto/16 :goto_6

    .line 97
    .line 98
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_d

    .line 107
    .line 108
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    check-cast v1, Landroid/content/ContentValues;

    .line 113
    .line 114
    iget-boolean v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mIsPhoneShuttingDown:Z

    .line 115
    .line 116
    if-eqz v2, :cond_3

    .line 117
    .line 118
    const-string p1, "PhoneRestrictionPolicy"

    .line 119
    .line 120
    const-string v0, "Phone is shutting down ...quitting"

    .line 121
    .line 122
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    .line 124
    .line 125
    monitor-exit p0

    .line 126
    goto/16 :goto_6

    .line 127
    .line 128
    :cond_3
    :try_start_2
    new-instance v2, Landroid/content/Intent;

    .line 129
    .line 130
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 131
    .line 132
    .line 133
    const/4 v3, 0x1

    .line 134
    const/4 v4, 0x0

    .line 135
    if-nez p1, :cond_7

    .line 136
    .line 137
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockSmsWithStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    if-eqz v5, :cond_4

    .line 142
    .line 143
    const-string p1, "PhoneRestrictionPolicy"

    .line 144
    .line 145
    const-string v0, "Block SMS with storage applies... quitting"

    .line 146
    .line 147
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 148
    .line 149
    .line 150
    monitor-exit p0

    .line 151
    goto/16 :goto_6

    .line 152
    .line 153
    :cond_4
    :try_start_3
    const-string/jumbo v5, "smsMmsOrigAddress"

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    invoke-virtual {p0, v4, v3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEmergencyCallOnly(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    if-nez v3, :cond_6

    .line 165
    .line 166
    const-string v3, "allowIncomingSms"

    .line 167
    .line 168
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getSmsMmsAllowed(Ljava/lang/String;)Z

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    if-eqz v3, :cond_6

    .line 173
    .line 174
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canIncomingSms(Ljava/lang/String;)Z

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    if-nez v3, :cond_5

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_5
    const-string/jumbo v3, "com.samsung.android.knox.intent.action.SEND_BLOCKED_SMS_INTERNAL"

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    .line 186
    .line 187
    goto/16 :goto_3

    .line 188
    .line 189
    :cond_6
    :goto_2
    const-string v2, "PhoneRestrictionPolicy"

    .line 190
    .line 191
    const-string v3, "Other incoming SMS policies apply... delete message and continue"

    .line 192
    .line 193
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    const-string/jumbo v2, "smsMmsBlockedRowId"

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    const-string/jumbo v2, "smsMmsBlockedRowId"

    .line 204
    .line 205
    .line 206
    filled-new-array {v2}, [Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    filled-new-array {v1}, [Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 215
    .line 216
    const-string v4, "SMSMMSBlockedDelivery"

    .line 217
    .line 218
    invoke-virtual {v3, v4, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 219
    .line 220
    .line 221
    goto :goto_1

    .line 222
    :cond_7
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockMmsWithStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 223
    .line 224
    .line 225
    move-result v5

    .line 226
    if-eqz v5, :cond_8

    .line 227
    .line 228
    const-string p1, "PhoneRestrictionPolicy"

    .line 229
    .line 230
    const-string v0, "Block MMS with storage applies... quitting"

    .line 231
    .line 232
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 233
    .line 234
    .line 235
    monitor-exit p0

    .line 236
    goto/16 :goto_6

    .line 237
    .line 238
    :cond_8
    :try_start_4
    invoke-virtual {p0, v4, v3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEmergencyCallOnly(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 239
    .line 240
    .line 241
    move-result v3

    .line 242
    if-nez v3, :cond_c

    .line 243
    .line 244
    const-string v3, "allowIncomingMms"

    .line 245
    .line 246
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getSmsMmsAllowed(Ljava/lang/String;)Z

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    if-eqz v3, :cond_c

    .line 251
    .line 252
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 253
    .line 254
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    .line 255
    .line 256
    .line 257
    move-result v3

    .line 258
    if-eqz v3, :cond_9

    .line 259
    .line 260
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 261
    .line 262
    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRoamingPolicy()Lcom/samsung/android/knox/restriction/RoamingPolicy;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    invoke-virtual {v3}, Lcom/samsung/android/knox/restriction/RoamingPolicy;->isRoamingPushEnabled()Z

    .line 267
    .line 268
    .line 269
    move-result v3

    .line 270
    if-eqz v3, :cond_c

    .line 271
    .line 272
    :cond_9
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 273
    .line 274
    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    invoke-virtual {v3}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->isWapPushAllowed()Z

    .line 279
    .line 280
    .line 281
    move-result v3

    .line 282
    if-nez v3, :cond_a

    .line 283
    .line 284
    goto/16 :goto_5

    .line 285
    .line 286
    :cond_a
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.TIME_STAMP_INTERNAL"

    .line 287
    .line 288
    .line 289
    const-string/jumbo v4, "smsMmsTimeStamp"

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v4

    .line 296
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    .line 298
    .line 299
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.ORIG_ADDRESS_INTERNAL"

    .line 300
    .line 301
    .line 302
    const-string/jumbo v4, "smsMmsOrigAddress"

    .line 303
    .line 304
    .line 305
    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v4

    .line 309
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    .line 311
    .line 312
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.MESSAGE_ID_INTERNAL"

    .line 313
    .line 314
    .line 315
    const-string/jumbo v4, "smsMmsMessageId"

    .line 316
    .line 317
    .line 318
    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v4

    .line 322
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    .line 324
    .line 325
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.SUB_ID_INTERNAL"

    .line 326
    .line 327
    .line 328
    const-string/jumbo v4, "smsMmsSubId"

    .line 329
    .line 330
    .line 331
    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v4

    .line 335
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    .line 337
    .line 338
    const-string/jumbo v3, "com.samsung.android.knox.intent.action.SEND_BLOCKED_MMS_INTERNAL"

    .line 339
    .line 340
    .line 341
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    .line 343
    .line 344
    :goto_3
    const-string/jumbo v3, "smsMmsBlockedRowId"

    .line 345
    .line 346
    .line 347
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v3

    .line 351
    const-string/jumbo v4, "smsMmsBlockedRowId"

    .line 352
    .line 353
    .line 354
    filled-new-array {v4}, [Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v4

    .line 358
    filled-new-array {v3}, [Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v3

    .line 362
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 363
    .line 364
    const-string v6, "SMSMMSBlockedDelivery"

    .line 365
    .line 366
    invoke-virtual {v5, v6, v4, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 367
    .line 368
    .line 369
    const-string/jumbo v3, "smsMmsPdu"

    .line 370
    .line 371
    .line 372
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v3

    .line 376
    if-eqz v3, :cond_2

    .line 377
    .line 378
    invoke-static {v3}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    .line 379
    .line 380
    .line 381
    move-result-object v3

    .line 382
    const-string/jumbo v4, "smsMmsSendType"

    .line 383
    .line 384
    .line 385
    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    if-eqz v1, :cond_b

    .line 390
    .line 391
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 392
    .line 393
    .line 394
    move-result v1

    .line 395
    goto :goto_4

    .line 396
    :cond_b
    const/4 v1, -0x1

    .line 397
    :goto_4
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.PDU_INTERNAL"

    .line 398
    .line 399
    .line 400
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 401
    .line 402
    .line 403
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.SEND_TYPE_INTERNAL"

    .line 404
    .line 405
    .line 406
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 407
    .line 408
    .line 409
    new-instance v9, Ljava/lang/Object;

    .line 410
    .line 411
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 412
    .line 413
    .line 414
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    .line 415
    .line 416
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_RECEIVE_BLOCKED_SMS_MMS_INTERNAL"

    .line 417
    .line 418
    .line 419
    new-instance v4, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;

    .line 420
    .line 421
    const/4 v5, 0x5

    .line 422
    invoke-direct {v4, v5, v9}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;-><init>(ILjava/lang/Object;)V

    .line 423
    .line 424
    .line 425
    const/4 v7, 0x0

    .line 426
    const/4 v8, 0x0

    .line 427
    const/4 v5, 0x0

    .line 428
    const/4 v6, -0x1

    .line 429
    invoke-virtual/range {v1 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 430
    .line 431
    .line 432
    :try_start_5
    monitor-enter v9
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 433
    const-wide/16 v1, 0x1f4

    .line 434
    .line 435
    :try_start_6
    invoke-virtual {v9, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 436
    .line 437
    .line 438
    monitor-exit v9

    .line 439
    goto/16 :goto_1

    .line 440
    .line 441
    :catchall_1
    move-exception v1

    .line 442
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 443
    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 444
    :catch_0
    move-exception v1

    .line 445
    :try_start_8
    const-string v2, "PhoneRestrictionPolicy"

    .line 446
    .line 447
    const-string v3, ""

    .line 448
    .line 449
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 450
    .line 451
    .line 452
    goto/16 :goto_1

    .line 453
    .line 454
    :cond_c
    :goto_5
    const-string v2, "PhoneRestrictionPolicy"

    .line 455
    .line 456
    const-string v3, "Other incoming MMS policies apply... delete message and continue"

    .line 457
    .line 458
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    .line 460
    .line 461
    const-string/jumbo v2, "smsMmsBlockedRowId"

    .line 462
    .line 463
    .line 464
    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v1

    .line 468
    const-string/jumbo v2, "smsMmsBlockedRowId"

    .line 469
    .line 470
    .line 471
    filled-new-array {v2}, [Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v2

    .line 475
    filled-new-array {v1}, [Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 480
    .line 481
    const-string v4, "SMSMMSBlockedDelivery"

    .line 482
    .line 483
    invoke-virtual {v3, v4, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 484
    .line 485
    .line 486
    goto/16 :goto_1

    .line 487
    .line 488
    :cond_d
    const-string p1, "PhoneRestrictionPolicy"

    .line 489
    .line 490
    const-string v0, " deliveryBlockedMsgs >>>> "

    .line 491
    .line 492
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 493
    .line 494
    .line 495
    monitor-exit p0

    .line 496
    :goto_6
    return-void

    .line 497
    :goto_7
    monitor-exit p0

    .line 498
    throw p1
.end method

.method static constructor <clinit>()V
    .locals 11

    .line 1
    const-string/jumbo v0, "content://com.samsung.rcs.im/message"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->RCS_URI:Landroid/net/Uri;

    .line 9
    .line 10
    const-string/jumbo v9, "file_path"

    .line 11
    .line 12
    .line 13
    const-string/jumbo v10, "thumbnail_path"

    .line 14
    .line 15
    .line 16
    const-string/jumbo v1, "is_filetransfer"

    .line 17
    .line 18
    .line 19
    const-string/jumbo v2, "remote_uri"

    .line 20
    .line 21
    .line 22
    const-string/jumbo v3, "sender_alias"

    .line 23
    .line 24
    .line 25
    const-string/jumbo v4, "content_type"

    .line 26
    .line 27
    .line 28
    const-string/jumbo v5, "body"

    .line 29
    .line 30
    .line 31
    const-string/jumbo v6, "inserted_timestamp"

    .line 32
    .line 33
    .line 34
    const-string/jumbo v7, "sent_timestamp"

    .line 35
    .line 36
    .line 37
    const-string/jumbo v8, "direction"

    .line 38
    .line 39
    .line 40
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    sput-object v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->RCS_PROJ:[Ljava/lang/String;

    .line 45
    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    .line 9
    .line 10
    iput-boolean v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    .line 11
    .line 12
    new-instance v2, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    .line 13
    .line 14
    invoke-direct {v2, p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;-><init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V

    .line 15
    .line 16
    .line 17
    iput-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    .line 18
    .line 19
    iput-boolean v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mIsPhoneShuttingDown:Z

    .line 20
    .line 21
    new-instance v2, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-direct {v2, v3, p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;-><init>(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    new-instance v5, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    invoke-direct {v5, v3, p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;-><init>(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    new-instance v3, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;

    .line 34
    .line 35
    const/4 v4, 0x2

    .line 36
    invoke-direct {v3, v4, p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;-><init>(ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    new-instance v4, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;

    .line 40
    .line 41
    const/4 v6, 0x3

    .line 42
    invoke-direct {v4, v6, p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;-><init>(ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    new-instance v6, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;

    .line 46
    .line 47
    const/4 v7, 0x4

    .line 48
    invoke-direct {v6, v7, p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;-><init>(ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    const-string v7, "PhoneRestrictionPolicy"

    .line 52
    .line 53
    const-string v8, " >>> PhoneRestrictionPolicy.PhoneRestrictionPolicy()"

    .line 54
    .line 55
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    new-instance v7, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 64
    .line 65
    invoke-direct {v7, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 66
    .line 67
    .line 68
    iput-object v7, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 69
    .line 70
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getDataCallLimitEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    iput-boolean v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    .line 75
    .line 76
    const-string/jumbo v0, "dataCallPacketDataCheckBox"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v7, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    iput-boolean v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    .line 88
    .line 89
    const-string/jumbo v0, "phone"

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 97
    .line 98
    iput-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 99
    .line 100
    new-instance v1, Landroid/content/IntentFilter;

    .line 101
    .line 102
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string v7, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 106
    .line 107
    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const-string v8, "android.intent.action.ACTION_SHUTDOWN"

    .line 111
    .line 112
    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const-string v8, "android.intent.action.REBOOT"

    .line 116
    .line 117
    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const-string/jumbo v8, "com.samsung.android.knox.intent.action.PHONE_READY_INTERNAL"

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    const/4 v10, 0x2

    .line 127
    invoke-virtual {p1, v4, v1, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 128
    .line 129
    .line 130
    sget-object v1, Lcom/android/server/enterprise/restriction/SimDBProxy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    .line 131
    .line 132
    if-nez v1, :cond_0

    .line 133
    .line 134
    new-instance v1, Lcom/android/server/enterprise/restriction/SimDBProxy;

    .line 135
    .line 136
    invoke-direct {v1, p1}, Lcom/android/server/enterprise/restriction/SimDBProxy;-><init>(Landroid/content/Context;)V

    .line 137
    .line 138
    .line 139
    sput-object v1, Lcom/android/server/enterprise/restriction/SimDBProxy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    .line 140
    .line 141
    :cond_0
    sget-object v1, Lcom/android/server/enterprise/restriction/SimDBProxy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    .line 142
    .line 143
    iput-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDbProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    .line 144
    .line 145
    const-string/jumbo v1, "telephony_subscription_service"

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    check-cast v4, Landroid/telephony/SubscriptionManager;

    .line 153
    .line 154
    iput-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSubMgr:Landroid/telephony/SubscriptionManager;

    .line 155
    .line 156
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 161
    .line 162
    new-instance v0, Landroid/content/IntentFilter;

    .line 163
    .line 164
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    .line 174
    .line 175
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, v6, v0, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 179
    .line 180
    .line 181
    new-instance v0, Landroid/content/IntentFilter;

    .line 182
    .line 183
    const-string/jumbo v4, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    .line 184
    .line 185
    .line 186
    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1, v2, v0, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 190
    .line 191
    .line 192
    new-instance v6, Landroid/content/IntentFilter;

    .line 193
    .line 194
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 195
    .line 196
    .line 197
    const-string/jumbo v0, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    .line 198
    .line 199
    .line 200
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    const-string/jumbo v0, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_NEW_MESSAGE"

    .line 204
    .line 205
    .line 206
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    const-string/jumbo v0, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_SEND_MESSAGE_RESPONSE"

    .line 210
    .line 211
    .line 212
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    const-string/jumbo v0, "com.samsung.rcs.framework.filetransfer.category.NOTIFICATION"

    .line 216
    .line 217
    .line 218
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    const-string/jumbo v0, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_INCOMING"

    .line 222
    .line 223
    .line 224
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    const-string/jumbo v0, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_COMPLETED"

    .line 228
    .line 229
    .line 230
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    const-string/jumbo v7, "com.samsung.rcs.im.READ_PERMISSION"

    .line 234
    .line 235
    .line 236
    const/4 v8, 0x0

    .line 237
    const/4 v9, 0x2

    .line 238
    move-object v4, p1

    .line 239
    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 240
    .line 241
    .line 242
    const-string v0, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 243
    .line 244
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    new-instance v2, Lcom/android/server/enterprise/restriction/EnterpriseSimPin;

    .line 249
    .line 250
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 251
    .line 252
    .line 253
    const-class v4, Landroid/telephony/TelephonyManager;

    .line 254
    .line 255
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v4

    .line 259
    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 260
    .line 261
    iput-object v4, v2, Lcom/android/server/enterprise/restriction/EnterpriseSimPin;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 262
    .line 263
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    check-cast v1, Landroid/telephony/SubscriptionManager;

    .line 268
    .line 269
    iput-object v1, v2, Lcom/android/server/enterprise/restriction/EnterpriseSimPin;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 270
    .line 271
    iput-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEnterpriseSimPin:Lcom/android/server/enterprise/restriction/EnterpriseSimPin;

    .line 272
    .line 273
    invoke-virtual {p1, v3, v0, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 274
    .line 275
    .line 276
    return-void
.end method

.method public static enforcePhoneApp()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x3e9

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 15
    .line 16
    const-string v1, "Can only be called by internal phone"

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method public static enforceSms()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x3e9

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 15
    .line 16
    const-string v1, "Can only receive SMS by internal phone"

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method public static enforceSystemUser$2()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 13
    .line 14
    const-string v1, "Can only be called by system user"

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public static logError(I)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    const-string v1, "PhoneRestrictionPolicy"

    .line 3
    .line 4
    if-eq p0, v0, :cond_4

    .line 5
    .line 6
    const/16 v0, 0x64

    .line 7
    .line 8
    if-eq p0, v0, :cond_3

    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    if-eq p0, v0, :cond_2

    .line 12
    .line 13
    const/4 v0, 0x5

    .line 14
    if-eq p0, v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x6

    .line 17
    if-eq p0, v0, :cond_0

    .line 18
    .line 19
    packed-switch p0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :pswitch_0
    const-string/jumbo p0, "lockUnlockCorporateSimCard Sim not inserted"

    .line 24
    .line 25
    .line 26
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :pswitch_1
    const-string/jumbo p0, "lockUnlockCorporateSimCard Sim pin owned by another admin"

    .line 31
    .line 32
    .line 33
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :pswitch_2
    const-string/jumbo p0, "lockUnlockCorporateSimCard Sim pin already locked by admin"

    .line 38
    .line 39
    .line 40
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :pswitch_3
    const-string/jumbo p0, "lockUnlockCorporateSimCard Sim pin database error"

    .line 45
    .line 46
    .line 47
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :pswitch_4
    const-string/jumbo p0, "lockUnlockCorporateSimCard Sim not ready"

    .line 52
    .line 53
    .line 54
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :pswitch_5
    const-string/jumbo p0, "lockUnlockCorporateSimCard Sim pin exceeded max retries"

    .line 59
    .line 60
    .line 61
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    const-string/jumbo p0, "lockUnlockCorporateSimCard Sim pin blocked by puk"

    .line 66
    .line 67
    .line 68
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const-string/jumbo p0, "lockUnlockCorporateSimCard Sim pin already unlocked"

    .line 73
    .line 74
    .line 75
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    const-string/jumbo p0, "lockUnlockCorporateSimCard Sim pin already locked"

    .line 80
    .line 81
    .line 82
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    const-string/jumbo p0, "lockUnlockCorporateSimCard Sim pin unknown"

    .line 87
    .line 88
    .line 89
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_4
    const-string/jumbo p0, "lockUnlockCorporateSimCard invalid pincode"

    .line 94
    .line 95
    .line 96
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    :goto_0
    return-void

    .line 100
    nop

    .line 101
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static removeWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const-string v0, "\\s+"

    .line 4
    .line 5
    const-string v1, ""

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :cond_0
    return-object p0
.end method

.method public static validatePinCode(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x4

    .line 9
    if-lt v1, v2, :cond_2

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/16 v2, 0x8

    .line 16
    .line 17
    if-le v1, v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    if-gez p0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x1

    .line 28
    :catch_0
    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public final addIncomingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, "PhoneRestrictionPolicy"

    .line 2
    .line 3
    const-string v1, ">>> PhoneRestrictionPolicy.addIncomingCallExceptionPattern()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getIncomingCallExceptionPatterns(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const-string v1, "\\s+"

    .line 26
    .line 27
    const-string v2, ""

    .line 28
    .line 29
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    const-string/jumbo v1, "|"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    return p0

    .line 49
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    return p0
.end method

.method public final addIncomingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, "PhoneRestrictionPolicy"

    .line 2
    .line 3
    const-string v1, ">>> PhoneRestrictionPolicy.addIncomingCallRestriction()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getIncomingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const-string v1, "\\s+"

    .line 26
    .line 27
    const-string v2, ""

    .line 28
    .line 29
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    const-string/jumbo v1, "|"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    return p0

    .line 49
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    return p0
.end method

.method public final addIncomingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, "PhoneRestrictionPolicy"

    .line 2
    .line 3
    const-string v1, ">>> PhoneRestrictionPolicy.addIncomingSmsExceptionPattern()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getIncomingSmsExceptionPatterns(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const-string v1, "\\s+"

    .line 26
    .line 27
    const-string v2, ""

    .line 28
    .line 29
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    const-string/jumbo v1, "|"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    return p0

    .line 49
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    return p0
.end method

.method public final addIncomingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const-string/jumbo v1, "smsRestrictionIncomingPattern"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getRestrictionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const-string v1, "\\s+"

    .line 22
    .line 23
    const-string v2, ""

    .line 24
    .line 25
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const-string/jumbo v1, "|"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    return p0

    .line 45
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    return p0
.end method

.method public final addNumberOfIncomingCalls()Z
    .locals 9

    .line 1
    const-string v0, "PhoneRestrictionPolicy"

    .line 2
    .line 3
    const-string v1, ">>> PhoneRestrictionPolicy.addNumberOfIncomingCalls()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforcePhoneApp()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    return v2

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfCallsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    return v2

    .line 29
    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 30
    .line 31
    const-string/jumbo v3, "incomingCallCountDay"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 39
    .line 40
    const-string/jumbo v5, "incomingCallCountWeek"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v2, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 48
    .line 49
    const-string/jumbo v7, "incomingCallCountMonth"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v6, v2, v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    if-eqz v4, :cond_2

    .line 59
    .line 60
    if-eqz v6, :cond_2

    .line 61
    .line 62
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 66
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 70
    :try_start_2
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v6
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 74
    goto :goto_1

    .line 75
    :catch_0
    move v4, v2

    .line 76
    goto :goto_0

    .line 77
    :catch_1
    move v1, v2

    .line 78
    move v4, v1

    .line 79
    :catch_2
    :goto_0
    const-string v6, "addNumberOfIncomingCalls - exception"

    .line 80
    .line 81
    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move v6, v2

    .line 85
    goto :goto_1

    .line 86
    :cond_2
    move v1, v2

    .line 87
    move v4, v1

    .line 88
    move v6, v4

    .line 89
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 90
    .line 91
    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 92
    .line 93
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v8, v2, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    add-int/lit8 v4, v4, 0x1

    .line 102
    .line 103
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 104
    .line 105
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v3, v2, v5, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    and-int/2addr v1, v3

    .line 114
    add-int/lit8 v6, v6, 0x1

    .line 115
    .line 116
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 117
    .line 118
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-virtual {p0, v2, v7, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 123
    .line 124
    .line 125
    move-result p0

    .line 126
    and-int/2addr p0, v1

    .line 127
    const-string v1, "PhoneRestrictionPolicy.addNumberOfIncomingCalls() >>>"

    .line 128
    .line 129
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    return p0
.end method

.method public final addNumberOfIncomingSms()Z
    .locals 6

    .line 1
    const-string v0, "PhoneRestrictionPolicy"

    .line 2
    .line 3
    const-string v1, ">>> SMSRestrictionPolicy.addNumberOfIncomingSMS()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceSms()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    return v2

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 21
    .line 22
    const-string/jumbo v3, "incomingSmsCountDay"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 36
    .line 37
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v4, v2, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 46
    .line 47
    const-string/jumbo v4, "incomingSmsCountWeek"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v2, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    add-int/lit8 v3, v3, 0x1

    .line 59
    .line 60
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 61
    .line 62
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v5, v2, v4, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    and-int/2addr v1, v3

    .line 71
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 72
    .line 73
    const-string/jumbo v4, "incomingSmsCountMonth"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v2, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    add-int/lit8 v3, v3, 0x1

    .line 85
    .line 86
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 87
    .line 88
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {p0, v2, v4, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    and-int/2addr p0, v1

    .line 97
    const-string v1, "SMSRestrictionPolicy.addNumberOfIncomingSMS() >>>"

    .line 98
    .line 99
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    return p0
.end method

.method public final addNumberOfOutgoingCalls()Z
    .locals 9

    .line 1
    const-string v0, "PhoneRestrictionPolicy"

    .line 2
    .line 3
    const-string v1, ">>> PhoneRestrictionPolicy.addNumberOfOutgoingCalls()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforcePhoneApp()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    return v2

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfCallsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    return v2

    .line 29
    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 30
    .line 31
    const-string/jumbo v3, "outgoingCallCountDay"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 39
    .line 40
    const-string/jumbo v5, "outgoingCallCountWeek"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v2, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 48
    .line 49
    const-string/jumbo v7, "outgoingCallCountMonth"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v6, v2, v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    if-eqz v4, :cond_2

    .line 59
    .line 60
    if-eqz v6, :cond_2

    .line 61
    .line 62
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 66
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 70
    :try_start_2
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v6
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 74
    goto :goto_1

    .line 75
    :catch_0
    move v4, v2

    .line 76
    goto :goto_0

    .line 77
    :catch_1
    move v1, v2

    .line 78
    move v4, v1

    .line 79
    :catch_2
    :goto_0
    const-string v6, "addNumberOfOutgoingCalls - exception"

    .line 80
    .line 81
    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move v6, v2

    .line 85
    goto :goto_1

    .line 86
    :cond_2
    move v1, v2

    .line 87
    move v4, v1

    .line 88
    move v6, v4

    .line 89
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 90
    .line 91
    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 92
    .line 93
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v8, v2, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    add-int/lit8 v4, v4, 0x1

    .line 102
    .line 103
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 104
    .line 105
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v3, v2, v5, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    and-int/2addr v1, v3

    .line 114
    add-int/lit8 v6, v6, 0x1

    .line 115
    .line 116
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 117
    .line 118
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-virtual {p0, v2, v7, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 123
    .line 124
    .line 125
    move-result p0

    .line 126
    and-int/2addr p0, v1

    .line 127
    const-string v1, "PhoneRestrictionPolicy.addNumberOfOutgoingCalls >>>"

    .line 128
    .line 129
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    return p0
.end method

.method public final addNumberOfOutgoingSms()Z
    .locals 6

    .line 1
    const-string v0, "PhoneRestrictionPolicy"

    .line 2
    .line 3
    const-string v1, ">>> SmsRestrictionPolicy.addNumberOfOutgoingSms()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceSms()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    return v2

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 21
    .line 22
    const-string/jumbo v3, "outgoingSmsCountDay"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 36
    .line 37
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v4, v2, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 46
    .line 47
    const-string/jumbo v4, "outgoingSmsCountWeek"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v2, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    add-int/lit8 v3, v3, 0x1

    .line 59
    .line 60
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 61
    .line 62
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v5, v2, v4, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    and-int/2addr v1, v3

    .line 71
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 72
    .line 73
    const-string/jumbo v4, "outgoingSmsCountMonth"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v2, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    add-int/lit8 v3, v3, 0x1

    .line 85
    .line 86
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 87
    .line 88
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {p0, v2, v4, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    and-int/2addr p0, v1

    .line 97
    const-string v1, "SmsRestrictionPolicy.addNumberOfOutgoingSms >>>"

    .line 98
    .line 99
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    return p0
.end method

.method public final addOutgoingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, "PhoneRestrictionPolicy"

    .line 2
    .line 3
    const-string v1, ">>> PhoneRestrictionPolicy.addOutgoingCallExceptionPattern()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getOutgoingCallExceptionPatterns(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const-string v1, "\\s+"

    .line 26
    .line 27
    const-string v2, ""

    .line 28
    .line 29
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    const-string/jumbo v1, "|"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    return p0

    .line 49
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    return p0
.end method

.method public final addOutgoingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, "PhoneRestrictionPolicy"

    .line 2
    .line 3
    const-string v1, ">>> PhoneRestrictionPolicy.addOutgoingCallRestriction()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getOutgoingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const-string v1, "\\s+"

    .line 26
    .line 27
    const-string v2, ""

    .line 28
    .line 29
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    const-string/jumbo v1, "|"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    return p0

    .line 49
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    return p0
.end method

.method public final addOutgoingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, "PhoneRestrictionPolicy"

    .line 2
    .line 3
    const-string v1, ">>> PhoneRestrictionPolicy.addOutgoingSmsExceptionPattern()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getOutgoingSmsExceptionPatterns(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const-string v1, "\\s+"

    .line 26
    .line 27
    const-string v2, ""

    .line 28
    .line 29
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    const-string/jumbo v1, "|"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    return p0

    .line 49
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    return p0
.end method

.method public final addOutgoingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const-string/jumbo v1, "smsRestrictionOutgoingPattern"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getRestrictionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const-string v1, "\\s+"

    .line 22
    .line 23
    const-string v2, ""

    .line 24
    .line 25
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const-string/jumbo v1, "|"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    return p0

    .line 45
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    return p0
.end method

.method public final allowCallerIDDisplay(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 6
    .line 7
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 8
    .line 9
    const-string v1, "PHONERESTRICTION"

    .line 10
    .line 11
    const-string v5, "allowCallerID"

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    move v3, p2

    .line 15
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    const-string p1, "PhoneRestrictionPolicy"

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    :goto_0
    return p0
.end method

.method public final allowCopyContactToSim(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    .line 9
    .line 10
    move-result-wide v6

    .line 11
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    const-string v1, "PHONERESTRICTION"

    .line 15
    .line 16
    const-string/jumbo v5, "copyContactToSimEnabled"

    .line 17
    .line 18
    .line 19
    move v3, p2

    .line 20
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const-string/jumbo p2, "content://com.sec.knox.provider2/PhoneRestrictionPolicy"

    .line 25
    .line 26
    .line 27
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    if-eqz p2, :cond_0

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    .line 45
    .line 46
    return p1
.end method

.method public final allowDataNetworkFromSimSlot(Lcom/samsung/android/knox/ContextInfo;IZ)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndSimRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setDynamicSimControl(Lcom/samsung/android/knox/ContextInfo;IZI)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSubMgr:Landroid/telephony/SubscriptionManager;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    const-string/jumbo v1, "telephony_subscription_service"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSubMgr:Landroid/telephony/SubscriptionManager;

    .line 28
    .line 29
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSubMgr:Landroid/telephony/SubscriptionManager;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-ne v0, p2, :cond_1

    .line 46
    .line 47
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    invoke-virtual {p0, p2, p3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setNetworkState(IZ)V

    .line 52
    .line 53
    .line 54
    :cond_1
    return p1
.end method

.method public final allowIncomingCallFromSimSlot(Lcom/samsung/android/knox/ContextInfo;IZ)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndSimRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x2

    .line 6
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setDynamicSimControl(Lcom/samsung/android/knox/ContextInfo;IZI)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final allowIncomingMms(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 6
    .line 7
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v1, "PHONERESTRICTION"

    .line 11
    .line 12
    const-string v5, "allowIncomingMms"

    .line 13
    .line 14
    move v3, p2

    .line 15
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final allowIncomingSms(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 6
    .line 7
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v1, "PHONERESTRICTION"

    .line 11
    .line 12
    const-string v5, "allowIncomingSms"

    .line 13
    .line 14
    move v3, p2

    .line 15
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final allowIncomingSmsFromSimSlot(Lcom/samsung/android/knox/ContextInfo;IZ)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndSimRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x4

    .line 6
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setDynamicSimControl(Lcom/samsung/android/knox/ContextInfo;IZI)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final allowMmsFromSimSlot(Lcom/samsung/android/knox/ContextInfo;IZ)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndSimRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x6

    .line 6
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setDynamicSimControl(Lcom/samsung/android/knox/ContextInfo;IZI)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final allowOutgoingCallFromSimSlot(Lcom/samsung/android/knox/ContextInfo;IZ)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndSimRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setDynamicSimControl(Lcom/samsung/android/knox/ContextInfo;IZI)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final allowOutgoingMms(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 6
    .line 7
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v1, "PHONERESTRICTION"

    .line 11
    .line 12
    const-string v5, "allowOutgoingMms"

    .line 13
    .line 14
    move v3, p2

    .line 15
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final allowOutgoingSms(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 6
    .line 7
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v1, "PHONERESTRICTION"

    .line 11
    .line 12
    const-string v5, "allowOutgoingSms"

    .line 13
    .line 14
    move v3, p2

    .line 15
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final allowOutgoingSmsFromSimSlot(Lcom/samsung/android/knox/ContextInfo;IZ)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndSimRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x5

    .line 6
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setDynamicSimControl(Lcom/samsung/android/knox/ContextInfo;IZI)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final allowWapPush(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 6
    .line 7
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v1, "PHONERESTRICTION"

    .line 11
    .line 12
    const-string/jumbo v5, "wapPushEnabled"

    .line 13
    .line 14
    .line 15
    move v3, p2

    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method public final blockMmsWithStorage(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 6
    .line 7
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v1, "PHONERESTRICTION"

    .line 11
    .line 12
    const-string/jumbo v5, "blockMmsWithStorage"

    .line 13
    .line 14
    .line 15
    move v3, p2

    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez p2, :cond_0

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockMmsWithStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    .line 31
    .line 32
    const/4 p2, 0x1

    .line 33
    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 40
    .line 41
    .line 42
    :cond_0
    return v0
.end method

.method public final blockSmsWithStorage(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 6
    .line 7
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v1, "PHONERESTRICTION"

    .line 11
    .line 12
    const-string/jumbo v5, "blockSmsWithStorage"

    .line 13
    .line 14
    .line 15
    move v3, p2

    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez p2, :cond_0

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockSmsWithStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    .line 31
    .line 32
    const/4 p2, 0x0

    .line 33
    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 40
    .line 41
    .line 42
    :cond_0
    return v0
.end method

.method public final canIncomingCall(Ljava/lang/String;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    if-nez p1, :cond_1

    .line 12
    .line 13
    return v1

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const-string v2, "PhoneRestrictionPolicy"

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEDM$22()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRoamingPolicy()Lcom/samsung/android/knox/restriction/RoamingPolicy;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/samsung/android/knox/restriction/RoamingPolicy;->isRoamingVoiceCallsEnabled()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    const-string/jumbo p0, "canIncomingCall returning false "

    .line 40
    .line 41
    .line 42
    invoke-static {v2, p0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return v3

    .line 46
    :cond_2
    const-string/jumbo v0, "incomingPattern"

    .line 47
    .line 48
    .line 49
    const-string/jumbo v4, "incomingCallExceptionPattern"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1, v0, v4}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isNumberAllowed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfCallsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_7

    .line 62
    .line 63
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 64
    .line 65
    .line 66
    move-result-wide v4

    .line 67
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->updateDateAndCounters()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0, v3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfIncomingCalls(Lcom/samsung/android/knox/ContextInfo;I)I

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    iget-object v7, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 75
    .line 76
    const-string/jumbo v8, "incomingCallCountDay"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v7, v3, v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    if-lt v7, v6, :cond_3

    .line 88
    .line 89
    if-ge v6, v1, :cond_5

    .line 90
    .line 91
    :cond_3
    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfIncomingCalls(Lcom/samsung/android/knox/ContextInfo;I)I

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    iget-object v7, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 96
    .line 97
    const-string/jumbo v8, "incomingCallCountWeek"

    .line 98
    .line 99
    .line 100
    invoke-virtual {v7, v3, v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    if-lt v7, v6, :cond_4

    .line 109
    .line 110
    if-ge v6, v1, :cond_5

    .line 111
    .line 112
    :cond_4
    const/4 v6, 0x2

    .line 113
    invoke-virtual {p0, v0, v6}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfIncomingCalls(Lcom/samsung/android/knox/ContextInfo;I)I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 118
    .line 119
    const-string/jumbo v6, "incomingCallCountMonth"

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, v3, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    if-lt p0, v0, :cond_6

    .line 131
    .line 132
    if-ge v0, v1, :cond_5

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_5
    move p0, v3

    .line 136
    goto :goto_1

    .line 137
    :cond_6
    :goto_0
    move p0, v1

    .line 138
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :catchall_0
    move-exception p0

    .line 143
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 144
    .line 145
    .line 146
    throw p0

    .line 147
    :cond_7
    const-string/jumbo p0, "underLimit set to true."

    .line 148
    .line 149
    .line 150
    invoke-static {v2, p0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    move p0, v1

    .line 154
    :goto_2
    if-eqz p1, :cond_8

    .line 155
    .line 156
    if-eqz p0, :cond_8

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_8
    move v1, v3

    .line 160
    :goto_3
    const-string p0, "PhoneRestrictionPolicy.canIncomingCall >>>>"

    .line 161
    .line 162
    invoke-static {p0, v2, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 163
    .line 164
    .line 165
    return v1
.end method

.method public final canIncomingSms(Ljava/lang/String;)Z
    .locals 10

    .line 1
    const-string v0, "PhoneRestrictionPolicy"

    .line 2
    .line 3
    const-string/jumbo v1, "canIncomingSms - countDay = "

    .line 4
    .line 5
    .line 6
    const-string/jumbo v2, "canIncomingSms - limitDay = "

    .line 7
    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return v3

    .line 13
    :cond_0
    const-string/jumbo v4, "smsRestrictionIncomingPattern"

    .line 14
    .line 15
    .line 16
    const-string/jumbo v5, "incomingSmsExceptionPattern"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1, v4, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isNumberAllowed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    const/4 v6, 0x0

    .line 29
    if-eqz v5, :cond_5

    .line 30
    .line 31
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 32
    .line 33
    .line 34
    move-result-wide v7

    .line 35
    :try_start_0
    const-string v5, "Limit of sms is enabled!!!"

    .line 36
    .line 37
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->updateDateAndCountersSms()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v4, v6}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfIncomingSms(Lcom/samsung/android/knox/ContextInfo;I)I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    new-instance v9, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 63
    .line 64
    const-string/jumbo v9, "incomingSmsCountDay"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v6, v9}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    new-instance v9, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    if-lt v2, v5, :cond_1

    .line 91
    .line 92
    if-ge v5, v3, :cond_3

    .line 93
    .line 94
    :cond_1
    invoke-virtual {p0, v4, v3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfIncomingSms(Lcom/samsung/android/knox/ContextInfo;I)I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 99
    .line 100
    const-string/jumbo v5, "incomingSmsCountWeek"

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, v6, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-lt v2, v1, :cond_2

    .line 112
    .line 113
    if-ge v1, v3, :cond_3

    .line 114
    .line 115
    :cond_2
    const/4 v1, 0x2

    .line 116
    invoke-virtual {p0, v4, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfIncomingSms(Lcom/samsung/android/knox/ContextInfo;I)I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 121
    .line 122
    const-string/jumbo v2, "incomingSmsCountMonth"

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, v6, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    move-result p0

    .line 133
    if-lt p0, v1, :cond_4

    .line 134
    .line 135
    if-ge v1, v3, :cond_3

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_3
    move p0, v6

    .line 139
    goto :goto_1

    .line 140
    :cond_4
    :goto_0
    const-string/jumbo p0, "canIncomingSms - limit = true"

    .line 141
    .line 142
    .line 143
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    .line 145
    .line 146
    move p0, v3

    .line 147
    :goto_1
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :catchall_0
    move-exception p0

    .line 152
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 153
    .line 154
    .line 155
    throw p0

    .line 156
    :cond_5
    move p0, v3

    .line 157
    :goto_2
    if-eqz p1, :cond_6

    .line 158
    .line 159
    if-eqz p0, :cond_6

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_6
    move v3, v6

    .line 163
    :goto_3
    return v3
.end method

.method public final canOutgoingCall(Ljava/lang/String;)Z
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    return v0

    .line 14
    :cond_1
    const-string/jumbo v1, "outgoingPattern"

    .line 15
    .line 16
    .line 17
    const-string/jumbo v2, "outgoingCallExceptionPattern"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isNumberAllowed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfCallsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x0

    .line 30
    if-eqz v2, :cond_6

    .line 31
    .line 32
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 33
    .line 34
    .line 35
    move-result-wide v4

    .line 36
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->updateDateAndCounters()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v1, v3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfOutgoingCalls(Lcom/samsung/android/knox/ContextInfo;I)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 44
    .line 45
    const-string/jumbo v7, "outgoingCallCountDay"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v6, v3, v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-lt v6, v2, :cond_2

    .line 57
    .line 58
    if-ge v2, v0, :cond_4

    .line 59
    .line 60
    :cond_2
    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfOutgoingCalls(Lcom/samsung/android/knox/ContextInfo;I)I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 65
    .line 66
    const-string/jumbo v7, "outgoingCallCountWeek"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v6, v3, v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    if-lt v6, v2, :cond_3

    .line 78
    .line 79
    if-ge v2, v0, :cond_4

    .line 80
    .line 81
    :cond_3
    const/4 v2, 0x2

    .line 82
    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfOutgoingCalls(Lcom/samsung/android/knox/ContextInfo;I)I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 87
    .line 88
    const-string/jumbo v2, "outgoingCallCountMonth"

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    if-lt p0, v1, :cond_5

    .line 100
    .line 101
    if-ge v1, v0, :cond_4

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_4
    move p0, v3

    .line 105
    goto :goto_1

    .line 106
    :cond_5
    :goto_0
    move p0, v0

    .line 107
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :catchall_0
    move-exception p0

    .line 112
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 113
    .line 114
    .line 115
    throw p0

    .line 116
    :cond_6
    move p0, v0

    .line 117
    :goto_2
    if-eqz p1, :cond_7

    .line 118
    .line 119
    if-eqz p0, :cond_7

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_7
    move v0, v3

    .line 123
    :goto_3
    const-string p0, "PhoneRestrictionPolicy.canOutgoingCall >>>> "

    .line 124
    .line 125
    const-string p1, "PhoneRestrictionPolicy"

    .line 126
    .line 127
    invoke-static {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 128
    .line 129
    .line 130
    return v0
.end method

.method public final canOutgoingSms(Ljava/lang/String;)Z
    .locals 10

    .line 1
    const-string/jumbo v0, "canOutgoingSms - countDay = "

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "canOutgoingSms - limitDay = "

    .line 5
    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    const-string/jumbo v3, "smsRestrictionOutgoingPattern"

    .line 12
    .line 13
    .line 14
    const-string/jumbo v4, "outgoingSmsExceptionPattern"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isNumberAllowed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    const-string v5, "PhoneRestrictionPolicy"

    .line 27
    .line 28
    const/4 v6, 0x0

    .line 29
    if-eqz v4, :cond_5

    .line 30
    .line 31
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 32
    .line 33
    .line 34
    move-result-wide v7

    .line 35
    :try_start_0
    const-string v4, "Limit of sms is enabled!!!"

    .line 36
    .line 37
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->updateDateAndCountersSms()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v3, v6}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfOutgoingSms(Lcom/samsung/android/knox/ContextInfo;I)I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    new-instance v9, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 63
    .line 64
    const-string/jumbo v9, "outgoingSmsCountDay"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v6, v9}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    new-instance v9, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    if-lt v1, v4, :cond_1

    .line 91
    .line 92
    if-ge v4, v2, :cond_3

    .line 93
    .line 94
    :cond_1
    invoke-virtual {p0, v3, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfOutgoingSms(Lcom/samsung/android/knox/ContextInfo;I)I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 99
    .line 100
    const-string/jumbo v4, "outgoingSmsCountWeek"

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v6, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-lt v1, v0, :cond_2

    .line 112
    .line 113
    if-ge v0, v2, :cond_3

    .line 114
    .line 115
    :cond_2
    const/4 v0, 0x2

    .line 116
    invoke-virtual {p0, v3, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfOutgoingSms(Lcom/samsung/android/knox/ContextInfo;I)I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 121
    .line 122
    const-string/jumbo v1, "outgoingSmsCountMonth"

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    move-result p0

    .line 133
    if-lt p0, v0, :cond_4

    .line 134
    .line 135
    if-ge v0, v2, :cond_3

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_3
    move p0, v6

    .line 139
    goto :goto_1

    .line 140
    :cond_4
    :goto_0
    const-string/jumbo p0, "canOutgoingSms - limit = true"

    .line 141
    .line 142
    .line 143
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    .line 145
    .line 146
    move p0, v2

    .line 147
    :goto_1
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :catchall_0
    move-exception p0

    .line 152
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 153
    .line 154
    .line 155
    throw p0

    .line 156
    :cond_5
    move p0, v2

    .line 157
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    const-string v1, "SmsRestrictionPolicy.canOutgoingSms >>>>"

    .line 160
    .line 161
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string v1, " >>> "

    .line 168
    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    if-eqz p1, :cond_6

    .line 183
    .line 184
    if-eqz p0, :cond_6

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_6
    move v2, v6

    .line 188
    :goto_3
    return v2
.end method

.method public final changeSimPinCode(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 6
    .line 7
    invoke-static {p3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->validatePinCode(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_8

    .line 12
    .line 13
    invoke-static {p4}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->validatePinCode(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto/16 :goto_3

    .line 20
    .line 21
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const-string v2, "PhoneRestrictionPolicy"

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSubMgr:Landroid/telephony/SubscriptionManager;

    .line 34
    .line 35
    invoke-virtual {v0, p2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    const/16 v0, 0x9

    .line 40
    .line 41
    if-nez p2, :cond_1

    .line 42
    .line 43
    return v0

    .line 44
    :cond_1
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    if-nez p2, :cond_2

    .line 49
    .line 50
    const-string/jumbo p0, "lockUnlockCorporateSimCard Sim not inserted"

    .line 51
    .line 52
    .line 53
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    return v0

    .line 57
    :cond_2
    move-object v5, p2

    .line 58
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getSimSubId(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    const-string/jumbo v0, "lockUnlockCorporateSimCard Sim subscription ID "

    .line 63
    .line 64
    .line 65
    invoke-static {p2, v0, v2}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const/4 v0, -0x1

    .line 69
    if-ne p2, v0, :cond_3

    .line 70
    .line 71
    const/16 p0, 0xd

    .line 72
    .line 73
    return p0

    .line 74
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isSimLocked(I)Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-nez v3, :cond_4

    .line 79
    .line 80
    const/4 p0, 0x5

    .line 81
    return p0

    .line 82
    :cond_4
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDbProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    .line 83
    .line 84
    iget-object v3, v3, Lcom/android/server/enterprise/restriction/SimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 85
    .line 86
    const-string v4, "SimTable"

    .line 87
    .line 88
    const-string v6, "SimIccId"

    .line 89
    .line 90
    invoke-virtual {v3, v4, v6, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-eq v3, v0, :cond_5

    .line 95
    .line 96
    if-eq v3, v1, :cond_5

    .line 97
    .line 98
    const/16 p0, 0xc

    .line 99
    .line 100
    return p0

    .line 101
    :cond_5
    const-string v0, "Failed to changeSimPinCodeService: "

    .line 102
    .line 103
    const-string/jumbo v3, "changeSimPinCodeService"

    .line 104
    .line 105
    .line 106
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 110
    .line 111
    .line 112
    move-result-wide v3

    .line 113
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEnterpriseSimPin:Lcom/android/server/enterprise/restriction/EnterpriseSimPin;

    .line 114
    .line 115
    invoke-virtual {v6, p2, p3, p4}, Lcom/android/server/enterprise/restriction/EnterpriseSimPin;->changeSimPinCode(ILjava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    move-result p2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :catchall_0
    move-exception p0

    .line 124
    goto :goto_2

    .line 125
    :catch_0
    move-exception p2

    .line 126
    :try_start_1
    new-instance p3, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    .line 144
    .line 145
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 146
    .line 147
    .line 148
    const/16 p2, 0x64

    .line 149
    .line 150
    :goto_0
    if-nez p2, :cond_7

    .line 151
    .line 152
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isSimLockedByAdmin(Ljava/lang/String;)Z

    .line 153
    .line 154
    .line 155
    move-result p3

    .line 156
    if-nez p3, :cond_6

    .line 157
    .line 158
    iget-object p3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDbProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    .line 159
    .line 160
    invoke-virtual {p3, v1, v5, p4}, Lcom/android/server/enterprise/restriction/SimDBProxy;->addSimcard(ILjava/lang/String;Ljava/lang/String;)Z

    .line 161
    .line 162
    .line 163
    move-result p3

    .line 164
    goto :goto_1

    .line 165
    :cond_6
    iget-object p3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDbProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    .line 166
    .line 167
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    new-instance v2, Landroid/content/ContentValues;

    .line 171
    .line 172
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 173
    .line 174
    .line 175
    const-string v0, "SimPinCode"

    .line 176
    .line 177
    invoke-virtual {v2, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    iget-object v0, p3, Lcom/android/server/enterprise/restriction/SimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 181
    .line 182
    const-string v3, "SimTable"

    .line 183
    .line 184
    const-string v4, "SimIccId"

    .line 185
    .line 186
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesForAdminAndField(ILandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 187
    .line 188
    .line 189
    move-result p3

    .line 190
    :goto_1
    if-nez p3, :cond_7

    .line 191
    .line 192
    const/16 p0, 0xa

    .line 193
    .line 194
    return p0

    .line 195
    :cond_7
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 196
    .line 197
    .line 198
    const/4 p1, 0x0

    .line 199
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setLockedIccIdsSystemUI(I)V

    .line 200
    .line 201
    .line 202
    return p2

    .line 203
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 204
    .line 205
    .line 206
    throw p0

    .line 207
    :cond_8
    :goto_3
    const/4 p0, 0x2

    .line 208
    return p0
.end method

.method public final checkDataCallLimit()Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "Could not read from Storage"

    .line 4
    .line 5
    const-string v2, "PhoneRestrictionPolicy"

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceSystemUser$2()V

    .line 8
    .line 9
    .line 10
    iget-boolean v3, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    return v4

    .line 16
    :cond_0
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v0, v3, v4}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfDataCalls(Lcom/samsung/android/knox/ContextInfo;I)J

    .line 18
    .line 19
    .line 20
    move-result-wide v5

    .line 21
    const/4 v7, 0x1

    .line 22
    invoke-virtual {v0, v3, v7}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfDataCalls(Lcom/samsung/android/knox/ContextInfo;I)J

    .line 23
    .line 24
    .line 25
    move-result-wide v8

    .line 26
    const/4 v10, 0x2

    .line 27
    invoke-virtual {v0, v3, v10}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfDataCalls(Lcom/samsung/android/knox/ContextInfo;I)J

    .line 28
    .line 29
    .line 30
    move-result-wide v10

    .line 31
    const-wide/16 v12, 0x0

    .line 32
    .line 33
    :try_start_0
    iget-object v3, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 34
    .line 35
    const-string/jumbo v14, "dataCallBytesCountByDay"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v4, v14}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 43
    .line 44
    .line 45
    move-result-wide v14
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    goto :goto_0

    .line 47
    :catch_0
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-wide v14, v12

    .line 51
    :goto_0
    :try_start_1
    iget-object v3, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 52
    .line 53
    const-string/jumbo v7, "dataCallBytesCountByWeek"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v4, v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v16
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 64
    goto :goto_1

    .line 65
    :catch_1
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-wide/from16 v16, v12

    .line 69
    .line 70
    :goto_1
    :try_start_2
    iget-object v0, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 71
    .line 72
    const-string/jumbo v3, "dataCallByteCountByMonth"

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v4, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 80
    .line 81
    .line 82
    move-result-wide v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 83
    goto :goto_2

    .line 84
    :catch_2
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-wide v0, v12

    .line 88
    :goto_2
    cmp-long v2, v12, v5

    .line 89
    .line 90
    if-gez v2, :cond_1

    .line 91
    .line 92
    cmp-long v2, v14, v5

    .line 93
    .line 94
    if-gtz v2, :cond_3

    .line 95
    .line 96
    :cond_1
    cmp-long v2, v12, v8

    .line 97
    .line 98
    if-gez v2, :cond_2

    .line 99
    .line 100
    cmp-long v2, v16, v8

    .line 101
    .line 102
    if-gtz v2, :cond_3

    .line 103
    .line 104
    :cond_2
    cmp-long v2, v12, v10

    .line 105
    .line 106
    if-gez v2, :cond_4

    .line 107
    .line 108
    cmp-long v0, v0, v10

    .line 109
    .line 110
    if-lez v0, :cond_4

    .line 111
    .line 112
    :cond_3
    const/4 v4, 0x1

    .line 113
    :cond_4
    return v4
.end method

.method public final checkEnableUseOfPacketData(Z)Z
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    invoke-virtual {p0, v2, v3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->updateDateAndDataCallCounters(J)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->checkDataCallLimit()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEDM$22()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isCellularDataAllowed()Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-nez p0, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p0, 0x1

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 34
    .line 35
    const p0, 0x1040407

    .line 36
    .line 37
    .line 38
    invoke-static {p0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 39
    .line 40
    .line 41
    :cond_2
    const/4 p0, 0x0

    .line 42
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 43
    .line 44
    .line 45
    return p0
.end method

.method public final clearStoredBlockedMms(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    const-string/jumbo p1, "smsMmsType"

    .line 5
    .line 6
    .line 7
    filled-new-array {p1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v0, "0"

    .line 12
    .line 13
    filled-new-array {v0}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 18
    .line 19
    const-string v1, "SMSMMSBlockedDelivery"

    .line 20
    .line 21
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0
.end method

.method public final clearStoredBlockedSms(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    const-string/jumbo p1, "smsMmsType"

    .line 5
    .line 6
    .line 7
    filled-new-array {p1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v0, "1"

    .line 12
    .line 13
    filled-new-array {v0}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 18
    .line 19
    const-string v1, "SMSMMSBlockedDelivery"

    .line 20
    .line 21
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0
.end method

.method public final dataLimitCounter(JLjava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    .line 4
    invoke-virtual {v1, v0, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 9
    .line 10
    .line 11
    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    const-wide/16 v1, 0x0

    .line 14
    .line 15
    :goto_0
    add-long/2addr v1, p1

    .line 16
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 17
    .line 18
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, v0, p3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final decreaseNumberOfOutgoingSms()Z
    .locals 6

    .line 1
    const-string v0, "PhoneRestrictionPolicy"

    .line 2
    .line 3
    const-string v1, ">>> SmsRestrictionPolicy.decreaseNumberOfOutgoingSms()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceSms()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    return v2

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 21
    .line 22
    const-string/jumbo v3, "outgoingSmsCountDay"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/lit8 v1, v1, -0x1

    .line 34
    .line 35
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 36
    .line 37
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v4, v2, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 46
    .line 47
    const-string/jumbo v4, "outgoingSmsCountWeek"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v2, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    add-int/lit8 v3, v3, -0x1

    .line 59
    .line 60
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 61
    .line 62
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v5, v2, v4, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    and-int/2addr v1, v3

    .line 71
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 72
    .line 73
    const-string/jumbo v4, "outgoingSmsCountMonth"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v2, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    add-int/lit8 v3, v3, -0x1

    .line 85
    .line 86
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 87
    .line 88
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {p0, v2, v4, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    and-int/2addr p0, v1

    .line 97
    const-string v1, "SmsRestrictionPolicy.addNumberOfOutgoingSms >>>"

    .line 98
    .line 99
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    return p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string p3, "android.permission.DUMP"

    .line 4
    .line 5
    invoke-virtual {p1, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const-class p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 12
    .line 13
    const-string p0, "Permission Denial: can\'t dump PhoneRestrictionPolicy"

    .line 14
    .line 15
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p1, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    .line 20
    .line 21
    iget-object p3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-direct {p1, p3}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    const-string p3, "adminUid"

    .line 27
    .line 28
    const-string v0, "SimIccId"

    .line 29
    .line 30
    filled-new-array {p3, v0}, [Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    const-string v0, "SimTable"

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {p1, p2, v0, p3, v1}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->dumpTable(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    move p3, p1

    .line 42
    :goto_0
    const/4 v0, 0x2

    .line 43
    if-ge p3, v0, :cond_1

    .line 44
    .line 45
    const-string v0, "RCSEnabled for sim slot "

    .line 46
    .line 47
    const-string v2, ": "

    .line 48
    .line 49
    invoke-static {p3, v0, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const/4 v2, 0x1

    .line 54
    invoke-virtual {p0, v1, v2, p1, p3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isRCSEnabledBySimSlot(Lcom/samsung/android/knox/ContextInfo;IZI)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    add-int/lit8 p3, p3, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    return-void
.end method

.method public final enableLimitNumberOfCalls(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 11

    .line 1
    const-string v0, "PhoneRestrictionPolicy"

    .line 2
    .line 3
    const-string v1, " >>>> enableLimitNumberOfCalls "

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    return v2

    .line 22
    :cond_0
    const/4 v1, 0x1

    .line 23
    if-eqz p2, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfCallsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->resetCallsCount(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 32
    .line 33
    .line 34
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const/16 v4, 0xb

    .line 39
    .line 40
    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 41
    .line 42
    .line 43
    const/16 v4, 0xc

    .line 44
    .line 45
    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 46
    .line 47
    .line 48
    const/16 v4, 0xd

    .line 49
    .line 50
    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 51
    .line 52
    .line 53
    const/16 v4, 0xe

    .line 54
    .line 55
    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 59
    .line 60
    .line 61
    move-result-wide v3

    .line 62
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 63
    .line 64
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    const-string/jumbo v7, "dateDay"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5, v2, v7, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_1

    .line 76
    .line 77
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 78
    .line 79
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    const-string/jumbo v7, "dateWeek"

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5, v2, v7, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    if-eqz v5, :cond_1

    .line 91
    .line 92
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 93
    .line 94
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    const-string/jumbo v4, "dateMonth"

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5, v2, v4, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    if-eqz v3, :cond_1

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_1
    move v3, v2

    .line 109
    goto :goto_1

    .line 110
    :cond_2
    :goto_0
    move v3, v1

    .line 111
    :goto_1
    const-string/jumbo v4, "enableLimitNumberOfCalls  >>>>>"

    .line 112
    .line 113
    .line 114
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    if-eqz v3, :cond_3

    .line 118
    .line 119
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 120
    .line 121
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 122
    .line 123
    const-string v6, "PHONERESTRICTION"

    .line 124
    .line 125
    const-string/jumbo v10, "limitCallEnable"

    .line 126
    .line 127
    .line 128
    const/4 v9, 0x0

    .line 129
    move v8, p2

    .line 130
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    move-result p0

    .line 134
    if-eqz p0, :cond_3

    .line 135
    .line 136
    move v2, v1

    .line 137
    :cond_3
    return v2
.end method

.method public final enableLimitNumberOfSms(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 11

    .line 1
    const-string v0, "PhoneRestrictionPolicy"

    .line 2
    .line 3
    const-string v1, " >>>> enableLimitNumberOfSMS "

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->resetSmsCount(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 23
    .line 24
    .line 25
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const/16 v4, 0xb

    .line 30
    .line 31
    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 32
    .line 33
    .line 34
    const/16 v4, 0xc

    .line 35
    .line 36
    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 37
    .line 38
    .line 39
    const/16 v4, 0xd

    .line 40
    .line 41
    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 42
    .line 43
    .line 44
    const/16 v4, 0xe

    .line 45
    .line 46
    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 50
    .line 51
    .line 52
    move-result-wide v3

    .line 53
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 54
    .line 55
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    const-string/jumbo v7, "smsDateDay"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5, v1, v7, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-eqz v5, :cond_0

    .line 67
    .line 68
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 69
    .line 70
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    const-string/jumbo v7, "smsDateWeek"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5, v1, v7, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-eqz v5, :cond_0

    .line 82
    .line 83
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 84
    .line 85
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    const-string/jumbo v4, "smsDateMonth"

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5, v1, v4, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-eqz v3, :cond_0

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_0
    move v3, v1

    .line 100
    goto :goto_1

    .line 101
    :cond_1
    :goto_0
    move v3, v2

    .line 102
    :goto_1
    const-string/jumbo v4, "enableLimitNumberOfSMS  >>>>>"

    .line 103
    .line 104
    .line 105
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    if-eqz v3, :cond_2

    .line 109
    .line 110
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 111
    .line 112
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 113
    .line 114
    const-string v6, "PHONERESTRICTION"

    .line 115
    .line 116
    const-string/jumbo v10, "limitSmsEnable"

    .line 117
    .line 118
    .line 119
    const/4 v9, 0x0

    .line 120
    move v8, p2

    .line 121
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 122
    .line 123
    .line 124
    move-result p0

    .line 125
    if-eqz p0, :cond_2

    .line 126
    .line 127
    move v1, v2

    .line 128
    :cond_2
    return v1
.end method

.method public final enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEDM$22()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_PHONE_RESTRICTION"

    .line 8
    .line 9
    .line 10
    filled-new-array {v1}, [Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final enforceOwnerOnlyAndSimRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEDM$22()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_SIM_RESTRICTION"

    .line 8
    .line 9
    .line 10
    filled-new-array {v1}, [Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final enforcePhoneAppOrOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-direct {p1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 13
    .line 14
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/16 v1, 0x3e9

    .line 19
    .line 20
    if-eq v0, v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public final getDataCallLimitEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2
    .line 3
    const-string p1, "PHONERESTRICTION"

    .line 4
    .line 5
    const-string/jumbo v0, "enableLimitDataCall"

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/4 v0, 0x1

    .line 34
    if-ne p1, v0, :cond_0

    .line 35
    .line 36
    move v1, p1

    .line 37
    :cond_1
    return v1
.end method

.method public final getDisclaimerText(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string p1, "PhoneRestrictionPolicy"

    .line 2
    .line 3
    const-string v0, ">>> PhoneRestrictionPolicy.getDisclaimerText()"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 9
    .line 10
    const-string p1, "PHONERESTRICTION"

    .line 11
    .line 12
    const-string/jumbo v0, "disclaimerText"

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getStringListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Ljava/lang/String;

    .line 37
    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    return-object p1

    .line 41
    :cond_1
    const/4 p0, 0x0

    .line 42
    return-object p0
.end method

.method public final getEDM$22()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 14
    .line 15
    return-object p0
.end method

.method public final getEmergencyCallOnly(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    const-string/jumbo v0, "emergencyCallOnly"

    .line 12
    .line 13
    .line 14
    const-string v2, "PHONERESTRICTION"

    .line 15
    .line 16
    if-nez p2, :cond_4

    .line 17
    .line 18
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    .line 25
    .line 26
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-direct {p1, v3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-boolean v3, p1, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    .line 34
    .line 35
    if-eqz v3, :cond_2

    .line 36
    .line 37
    sget p1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->$r8$clinit:I

    .line 38
    .line 39
    sget-object p1, Lcom/android/server/enterprise/EnterpriseService;->sEdmsInstance:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    .line 42
    .line 43
    check-cast p1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 44
    .line 45
    iget p1, p1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 48
    .line 49
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    return p0

    .line 54
    :cond_2
    if-nez p2, :cond_3

    .line 55
    .line 56
    iget p2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 57
    .line 58
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-nez p2, :cond_3

    .line 63
    .line 64
    iget p2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 65
    .line 66
    if-gtz p2, :cond_3

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 69
    .line 70
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 71
    .line 72
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    goto :goto_0

    .line 77
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 78
    .line 79
    const-string p1, "Operation supported only on owner space"

    .line 80
    .line 81
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p0

    .line 85
    :cond_4
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 86
    .line 87
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_6

    .line 100
    .line 101
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    check-cast p1, Ljava/lang/Boolean;

    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 108
    .line 109
    .line 110
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    if-eqz p1, :cond_5

    .line 112
    .line 113
    const/4 p0, 0x1

    .line 114
    return p0

    .line 115
    :catch_0
    :cond_6
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string/jumbo p1, "getEmergencyCall >>"

    .line 118
    .line 119
    .line 120
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    const-string p1, "PhoneRestrictionPolicy"

    .line 131
    .line 132
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    return v1
.end method

.method public final getIncomingCallExceptionPatterns(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "PhoneRestrictionPolicy"

    .line 2
    .line 3
    const-string v1, ">>> PhoneRestrictionPolicy.getIncomingCallExceptionPatterns()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return-object p0

    .line 22
    :cond_0
    const/4 v0, 0x1

    .line 23
    const-string/jumbo v1, "incomingCallExceptionPattern"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getRestrictionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public final getIncomingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "PhoneRestrictionPolicy"

    .line 2
    .line 3
    const-string v1, ">>> PhoneRestrictionPolicy.getIncomingCallRestriction()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return-object p0

    .line 22
    :cond_0
    const-string/jumbo v0, "incomingPattern"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getRestrictionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public final getIncomingSmsExceptionPatterns(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "PhoneRestrictionPolicy"

    .line 2
    .line 3
    const-string v1, ">>> PhoneRestrictionPolicy.getIncomingSmsExceptionPatterns()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return-object p0

    .line 22
    :cond_0
    const/4 v0, 0x1

    .line 23
    const-string/jumbo v1, "incomingSmsExceptionPattern"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getRestrictionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public final getIncomingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :cond_0
    const-string/jumbo v0, "smsRestrictionIncomingPattern"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getRestrictionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public final getLimitOfDataCalls(Lcom/samsung/android/knox/ContextInfo;I)J
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    const-string v0, "PHONERESTRICTION"

    .line 6
    .line 7
    if-eqz p2, :cond_2

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq p2, v1, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq p2, v1, :cond_0

    .line 14
    .line 15
    const-wide/16 p0, -0x1

    .line 16
    .line 17
    return-wide p0

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 19
    .line 20
    const-string/jumbo p2, "dataCallByMonth"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getLongListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 29
    .line 30
    const-string/jumbo p2, "dataCallByWeek"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getLongListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 39
    .line 40
    const-string/jumbo p2, "dataCallByDay"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getLongListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    const-wide/16 v0, 0x0

    .line 52
    .line 53
    if-nez p1, :cond_6

    .line 54
    .line 55
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    move-wide p1, v0

    .line 60
    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_5

    .line 65
    .line 66
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    check-cast v2, Ljava/lang/Long;

    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 73
    .line 74
    .line 75
    move-result-wide v2

    .line 76
    cmp-long v4, v2, v0

    .line 77
    .line 78
    if-eqz v4, :cond_3

    .line 79
    .line 80
    cmp-long v4, v2, p1

    .line 81
    .line 82
    if-ltz v4, :cond_4

    .line 83
    .line 84
    cmp-long v4, p1, v0

    .line 85
    .line 86
    if-nez v4, :cond_3

    .line 87
    .line 88
    :cond_4
    move-wide p1, v2

    .line 89
    goto :goto_1

    .line 90
    :cond_5
    move-wide v0, p1

    .line 91
    :cond_6
    return-wide v0
.end method

.method public final getLimitOfIncomingCalls(Lcom/samsung/android/knox/ContextInfo;I)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforcePhoneAppOrOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 v0, -0x1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    const-string p1, "PHONERESTRICTION"

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz p2, :cond_3

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    if-eq p2, v2, :cond_2

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    if-eq p2, v2, :cond_1

    .line 24
    .line 25
    return v0

    .line 26
    :cond_1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 27
    .line 28
    const-string/jumbo p2, "incomingCallByMonth"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v1, v1, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 37
    .line 38
    const-string/jumbo p2, "incomingCallByWeek"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v1, v1, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    goto :goto_0

    .line 46
    :cond_3
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 47
    .line 48
    const-string/jumbo p2, "incomingCallByDay"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v1, v1, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-nez p1, :cond_6

    .line 60
    .line 61
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_6

    .line 70
    .line 71
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Ljava/lang/Integer;

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    if-eqz p2, :cond_4

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    if-lt p2, v1, :cond_5

    .line 88
    .line 89
    if-nez v1, :cond_4

    .line 90
    .line 91
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    move v1, p1

    .line 96
    goto :goto_1

    .line 97
    :cond_6
    return v1
.end method

.method public final getLimitOfIncomingSms(Lcom/samsung/android/knox/ContextInfo;I)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforcePhoneAppOrOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)V

    .line 2
    .line 3
    .line 4
    const-string p1, "PHONERESTRICTION"

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-eqz p2, :cond_2

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq p2, v1, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq p2, v1, :cond_0

    .line 14
    .line 15
    const/4 p0, -0x1

    .line 16
    return p0

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 18
    .line 19
    const-string/jumbo p2, "incomingSmsByMonth"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0, v0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 28
    .line 29
    const-string/jumbo p2, "incomingSmsByWeek"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0, v0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 38
    .line 39
    const-string/jumbo p2, "incomingSmsByDay"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0, v0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-nez p1, :cond_5

    .line 51
    .line 52
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_5

    .line 61
    .line 62
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Ljava/lang/Integer;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    if-eqz p2, :cond_3

    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    if-lt p2, v0, :cond_4

    .line 79
    .line 80
    if-nez v0, :cond_3

    .line 81
    .line 82
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    move v0, p1

    .line 87
    goto :goto_1

    .line 88
    :cond_5
    return v0
.end method

.method public final getLimitOfOutgoingCalls(Lcom/samsung/android/knox/ContextInfo;I)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforcePhoneAppOrOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 v0, -0x1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    const-string p1, "PHONERESTRICTION"

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz p2, :cond_3

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    if-eq p2, v2, :cond_2

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    if-eq p2, v2, :cond_1

    .line 24
    .line 25
    return v0

    .line 26
    :cond_1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 27
    .line 28
    const-string/jumbo p2, "outgoingCallByMonth"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v1, v1, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 37
    .line 38
    const-string/jumbo p2, "outgoingCallByWeek"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v1, v1, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    goto :goto_0

    .line 46
    :cond_3
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 47
    .line 48
    const-string/jumbo p2, "outgoingCallByDay"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v1, v1, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-nez p1, :cond_6

    .line 60
    .line 61
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_6

    .line 70
    .line 71
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Ljava/lang/Integer;

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    if-eqz p2, :cond_4

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    if-lt p2, v1, :cond_5

    .line 88
    .line 89
    if-nez v1, :cond_4

    .line 90
    .line 91
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    move v1, p1

    .line 96
    goto :goto_1

    .line 97
    :cond_6
    return v1
.end method

.method public final getLimitOfOutgoingSms(Lcom/samsung/android/knox/ContextInfo;I)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforcePhoneAppOrOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)V

    .line 2
    .line 3
    .line 4
    const-string p1, "PHONERESTRICTION"

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-eqz p2, :cond_2

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq p2, v1, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq p2, v1, :cond_0

    .line 14
    .line 15
    const/4 p0, -0x1

    .line 16
    return p0

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 18
    .line 19
    const-string/jumbo p2, "outgoingSmsByMonth"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0, v0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 28
    .line 29
    const-string/jumbo p2, "outgoingSmsByWeek"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0, v0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 38
    .line 39
    const-string/jumbo p2, "outgoingSmsByDay"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0, v0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-nez p1, :cond_5

    .line 51
    .line 52
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_5

    .line 61
    .line 62
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Ljava/lang/Integer;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    if-eqz p2, :cond_3

    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    if-lt p2, v0, :cond_4

    .line 79
    .line 80
    if-nez v0, :cond_3

    .line 81
    .line 82
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    move v0, p1

    .line 87
    goto :goto_1

    .line 88
    :cond_5
    return v0
.end method

.method public final getOutgoingCallExceptionPatterns(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "PhoneRestrictionPolicy"

    .line 2
    .line 3
    const-string v1, ">>> PhoneRestrictionPolicy.getOutgoingCallExceptionPatterns()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return-object p0

    .line 22
    :cond_0
    const/4 v0, 0x1

    .line 23
    const-string/jumbo v1, "outgoingCallExceptionPattern"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getRestrictionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public final getOutgoingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "PhoneRestrictionPolicy"

    .line 2
    .line 3
    const-string v1, ">>> PhoneRestrictionPolicy.getOutgoingCallRestriction()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return-object p0

    .line 22
    :cond_0
    const-string/jumbo v0, "outgoingPattern"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getRestrictionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public final getOutgoingSmsExceptionPatterns(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "PhoneRestrictionPolicy"

    .line 2
    .line 3
    const-string v1, ">>> PhoneRestrictionPolicy.getOutgoingSmsExceptionPatterns()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return-object p0

    .line 22
    :cond_0
    const/4 v0, 0x1

    .line 23
    const-string/jumbo v1, "outgoingSmsExceptionPattern"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getRestrictionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public final getOutgoingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :cond_0
    const-string/jumbo v0, "smsRestrictionOutgoingPattern"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getRestrictionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public final getPinCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const-string/jumbo v4, "com.android.systemui"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v3

    .line 22
    const-string v4, "PhoneRestrictionPolicy"

    .line 23
    .line 24
    const-string v5, "Unable to resolve SystemUI\'s UID."

    .line 25
    .line 26
    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    .line 28
    .line 29
    move v3, v1

    .line 30
    :goto_0
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    if-eqz v5, :cond_1

    .line 45
    .line 46
    const-string v6, ":"

    .line 47
    .line 48
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-eq v6, v1, :cond_0

    .line 53
    .line 54
    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    :cond_0
    const-string v1, "android.uid.systemui"

    .line 59
    .line 60
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    if-ne v4, v3, :cond_1

    .line 67
    .line 68
    const/4 v2, 0x1

    .line 69
    :cond_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eq v0, v1, :cond_3

    .line 74
    .line 75
    const/16 v1, 0x3e9

    .line 76
    .line 77
    if-eq v0, v1, :cond_3

    .line 78
    .line 79
    if-eqz v2, :cond_2

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 83
    .line 84
    const-string p1, "Can only be called by System, Phone or System UI"

    .line 85
    .line 86
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p0

    .line 90
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDbProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    .line 91
    .line 92
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/SimDBProxy;->getPincode(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0
.end method

.method public final getRCSMessage(Lcom/samsung/android/knox/ContextInfo;J)Landroid/os/Bundle;
    .locals 9

    .line 1
    const-string/jumbo v0, "body"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "getRCS, Start"

    .line 5
    .line 6
    .line 7
    const-string v2, "PhoneRestrictionPolicy"

    .line 8
    .line 9
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEDM$22()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v3, Ljava/util/ArrayList;

    .line 17
    .line 18
    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    .line 19
    .line 20
    .line 21
    filled-new-array {v4}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1, v3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 33
    .line 34
    .line 35
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    filled-new-array {p1}, [Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    const-string/jumbo p1, "getRCS, Start query"

    .line 44
    .line 45
    .line 46
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 50
    .line 51
    .line 52
    move-result-wide p1

    .line 53
    const/4 p3, 0x0

    .line 54
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    sget-object v4, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->RCS_URI:Landroid/net/Uri;

    .line 61
    .line 62
    sget-object v5, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->RCS_PROJ:[Ljava/lang/String;

    .line 63
    .line 64
    const-string v6, "_id=?"

    .line 65
    .line 66
    const/4 v8, 0x0

    .line 67
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 68
    .line 69
    .line 70
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 71
    if-eqz p0, :cond_2

    .line 72
    .line 73
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_2

    .line 78
    .line 79
    const-string/jumbo v1, "getRCS, collect data"

    .line 80
    .line 81
    .line 82
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    new-instance v1, Landroid/os/Bundle;

    .line 86
    .line 87
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string/jumbo v3, "remote-uri"

    .line 91
    .line 92
    .line 93
    const-string/jumbo v4, "remote_uri"

    .line 94
    .line 95
    .line 96
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    const-string/jumbo v3, "sender-alias"

    .line 108
    .line 109
    .line 110
    const-string/jumbo v4, "sender_alias"

    .line 111
    .line 112
    .line 113
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    const-string/jumbo v3, "content-type"

    .line 125
    .line 126
    .line 127
    const-string/jumbo v4, "content_type"

    .line 128
    .line 129
    .line 130
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    const-string/jumbo v0, "direction"

    .line 153
    .line 154
    .line 155
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 160
    .line 161
    .line 162
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    const-string/jumbo v3, "timestamp"

    .line 164
    .line 165
    .line 166
    if-nez v0, :cond_0

    .line 167
    .line 168
    :try_start_2
    const-string/jumbo v0, "inserted_timestamp"

    .line 169
    .line 170
    .line 171
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 176
    .line 177
    .line 178
    move-result-wide v4

    .line 179
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 180
    .line 181
    .line 182
    goto :goto_0

    .line 183
    :catchall_0
    move-exception v0

    .line 184
    goto :goto_1

    .line 185
    :cond_0
    const-string/jumbo v0, "sent_timestamp"

    .line 186
    .line 187
    .line 188
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 193
    .line 194
    .line 195
    move-result-wide v4

    .line 196
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 197
    .line 198
    .line 199
    :goto_0
    const-string/jumbo v0, "is_filetransfer"

    .line 200
    .line 201
    .line 202
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    const/4 v3, 0x1

    .line 211
    if-ne v0, v3, :cond_1

    .line 212
    .line 213
    const-string/jumbo v0, "file-path"

    .line 214
    .line 215
    .line 216
    const-string/jumbo v3, "file_path"

    .line 217
    .line 218
    .line 219
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    const-string/jumbo v0, "thumbnail-path"

    .line 231
    .line 232
    .line 233
    const-string/jumbo v3, "thumbnail_path"

    .line 234
    .line 235
    .line 236
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 237
    .line 238
    .line 239
    move-result v3

    .line 240
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 245
    .line 246
    .line 247
    :cond_1
    move-object p3, v1

    .line 248
    goto :goto_3

    .line 249
    :goto_1
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 250
    .line 251
    .line 252
    goto :goto_2

    .line 253
    :catchall_1
    move-exception p0

    .line 254
    :try_start_4
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 255
    .line 256
    .line 257
    :goto_2
    throw v0

    .line 258
    :catchall_2
    move-exception p0

    .line 259
    goto :goto_7

    .line 260
    :catch_0
    move-exception p0

    .line 261
    goto :goto_5

    .line 262
    :cond_2
    :goto_3
    if-eqz p0, :cond_3

    .line 263
    .line 264
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 265
    .line 266
    .line 267
    :cond_3
    :goto_4
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 268
    .line 269
    .line 270
    goto :goto_6

    .line 271
    :goto_5
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p0

    .line 275
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 276
    .line 277
    .line 278
    goto :goto_4

    .line 279
    :goto_6
    const-string/jumbo p0, "getRCS, End"

    .line 280
    .line 281
    .line 282
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .line 284
    .line 285
    return-object p3

    .line 286
    :goto_7
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 287
    .line 288
    .line 289
    throw p0
.end method

.method public final getRestrictionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "PHONERESTRICTION"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p3, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 11
    .line 12
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 13
    .line 14
    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 20
    .line 21
    invoke-virtual {p0, v1, v0, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getStringListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const-string p1, ""

    .line 32
    .line 33
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    const-string/jumbo p3, "|"

    .line 38
    .line 39
    .line 40
    if-eqz p2, :cond_2

    .line 41
    .line 42
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    check-cast p2, Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_1

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {p1, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    if-eqz p0, :cond_3

    .line 68
    .line 69
    const/4 p0, 0x1

    .line 70
    invoke-static {p0, v1, p1}, Lcom/android/server/DropBoxManagerService$EntryFile$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    const/4 p0, 0x0

    .line 76
    :goto_1
    return-object p0
.end method

.method public final getSimSubId(Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSubMgr:Landroid/telephony/SubscriptionManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    return p0

    .line 40
    :cond_1
    const/4 p0, -0x1

    .line 41
    return p0
.end method

.method public final getSmsMmsAllowed(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const-string v1, "PHONERESTRICTION"

    .line 5
    .line 6
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Ljava/lang/Boolean;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 p1, 0x1

    .line 34
    :goto_0
    return p1
.end method

.method public final isBlockMmsWithStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2
    .line 3
    const-string p1, "PHONERESTRICTION"

    .line 4
    .line 5
    const-string/jumbo v0, "blockMmsWithStorage"

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final isBlockSmsWithStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2
    .line 3
    const-string p1, "PHONERESTRICTION"

    .line 4
    .line 5
    const-string/jumbo v0, "blockSmsWithStorage"

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final isCallerIDDisplayAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3

    .line 1
    const/4 p1, 0x1

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    .line 4
    const-string v0, "PHONERESTRICTION"

    .line 5
    .line 6
    const-string v1, "allowCallerID"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    move p1, v0

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    const-string v0, "PhoneRestrictionPolicy"

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    :cond_1
    :goto_0
    return p1
.end method

.method public final isCopyContactToSimAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3

    .line 1
    const/4 p1, 0x1

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    .line 4
    const-string v0, "PHONERESTRICTION"

    .line 5
    .line 6
    const-string/jumbo v1, "copyContactToSimEnabled"

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    move p1, v0

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    const-string v0, "PhoneRestrictionPolicy"

    .line 40
    .line 41
    const-string v1, "Error on isCopyContactToSimAllowed. "

    .line 42
    .line 43
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_0
    return p1
.end method

.method public final isDataAllowedFromSimSlot(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOperationAllowed(II)Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public final isIncomingCallAllowedFromSimSlot(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOperationAllowed(II)Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public final isIncomingMmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 0

    .line 1
    const-string p1, "allowIncomingMms"

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getSmsMmsAllowed(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isIncomingSmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 0

    .line 1
    const-string p1, "allowIncomingSms"

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getSmsMmsAllowed(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isIncomingSmsAllowedFromSimSlot(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOperationAllowed(II)Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public final isLimitNumberOfCallsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 12
    .line 13
    const-string p1, "PHONERESTRICTION"

    .line 14
    .line 15
    const-string/jumbo v1, "limitCallEnable"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Ljava/lang/Boolean;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    const/4 p0, 0x1

    .line 51
    return p0

    .line 52
    :cond_2
    return v0
.end method

.method public final isLimitNumberOfSmsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2
    .line 3
    const-string p1, "PHONERESTRICTION"

    .line 4
    .line 5
    const-string/jumbo v0, "limitSmsEnable"

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    const/4 p0, 0x1

    .line 42
    return p0

    .line 43
    :cond_1
    return v1
.end method

.method public final isMmsAllowedFromSimSlot(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOperationAllowed(II)Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public final isNumberAllowed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    .line 1
    const-string v0, "PhoneRestrictionPolicy"

    .line 2
    .line 3
    const-string v1, "adminUid"

    .line 4
    .line 5
    filled-new-array {v1, p2}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const-string v5, "PHONERESTRICTION"

    .line 13
    .line 14
    invoke-virtual {v3, v4, v4, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValuesListAsUser(IILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    const/4 v6, 0x1

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    return v6

    .line 28
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_5

    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Landroid/content/ContentValues;

    .line 43
    .line 44
    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    if-nez v7, :cond_2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {v3, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    if-eqz v8, :cond_3

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    :try_start_0
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 63
    .line 64
    .line 65
    move-result-object v3
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 66
    invoke-static {p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->removeWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_1

    .line 79
    .line 80
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 81
    .line 82
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    invoke-virtual {v3, v7, v4, v5, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    if-eqz v7, :cond_4

    .line 95
    .line 96
    return v4

    .line 97
    :cond_4
    :try_start_1
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 98
    .line 99
    .line 100
    move-result-object v3
    :try_end_1
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    .line 101
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-nez v3, :cond_1

    .line 110
    .line 111
    return v4

    .line 112
    :catch_0
    const-string/jumbo p0, "failed to compile pattern for exception"

    .line 113
    .line 114
    .line 115
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    return v4

    .line 119
    :catch_1
    const-string/jumbo v3, "failed to compile pattern for restriction"

    .line 120
    .line 121
    .line 122
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_5
    return v6
.end method

.method public final isOperationAllowed(II)Z
    .locals 13

    .line 1
    const-string v0, "allowData"

    .line 2
    .line 3
    const-string v1, "PhoneRestrictionPolicy"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    if-eq p2, v2, :cond_0

    .line 9
    .line 10
    const-string p0, ">>> PhoneRestrictionPolicy.isOperationAllowed() was failed - SlotID is invalid "

    .line 11
    .line 12
    invoke-static {p2, p0, v1}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return v2

    .line 16
    :cond_0
    const-string/jumbo v3, "isOperationAllowed >>> slotNum: "

    .line 17
    .line 18
    .line 19
    const-string v4, " function: "

    .line 20
    .line 21
    invoke-static {p2, p1, v3, v4, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v9, "allowIncomingSMS"

    .line 25
    .line 26
    const-string v10, "allowOutgoingSMS"

    .line 27
    .line 28
    const-string/jumbo v5, "slotId"

    .line 29
    .line 30
    .line 31
    const-string v6, "allowData"

    .line 32
    .line 33
    const-string v7, "allowIncomingCall"

    .line 34
    .line 35
    const-string v8, "allowOutgoingCall"

    .line 36
    .line 37
    const-string v11, "allowMMS"

    .line 38
    .line 39
    const-string v12, "adminUid"

    .line 40
    .line 41
    filled-new-array/range {v5 .. v12}, [Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    new-instance v4, Landroid/content/ContentValues;

    .line 46
    .line 47
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    const-string/jumbo v5, "slotId"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 61
    .line 62
    const-string p2, "PHONERESTRICTION_SLOTID"

    .line 63
    .line 64
    invoke-virtual {p0, p2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Landroid/database/Cursor;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    if-nez p0, :cond_1

    .line 69
    .line 70
    const-string p0, ">>> PhoneRestrictionPolicy.isOperationAllowed() Cursor is Null"

    .line 71
    .line 72
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    return v2

    .line 76
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 77
    .line 78
    .line 79
    move p2, v2

    .line 80
    :goto_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-nez v3, :cond_e

    .line 85
    .line 86
    const-string v3, ">>> PhoneRestrictionPolicy.isOperationAllowed() - dB have some valid values"

    .line 87
    .line 88
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    const/4 v3, 0x0

    .line 92
    if-ne p1, v2, :cond_3

    .line 93
    .line 94
    new-instance v4, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v5, ">>> PhoneRestrictionPolicy.isOperationAllowed() - Result is - "

    .line 100
    .line 101
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    if-eqz p2, :cond_2

    .line 123
    .line 124
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 129
    .line 130
    .line 131
    move-result p2

    .line 132
    if-lez p2, :cond_2

    .line 133
    .line 134
    move p2, v2

    .line 135
    goto :goto_1

    .line 136
    :catchall_0
    move-exception p1

    .line 137
    goto/16 :goto_9

    .line 138
    .line 139
    :catch_0
    move-exception p1

    .line 140
    goto/16 :goto_7

    .line 141
    .line 142
    :cond_2
    move p2, v3

    .line 143
    :cond_3
    :goto_1
    const/4 v4, 0x2

    .line 144
    if-ne p1, v4, :cond_5

    .line 145
    .line 146
    if-eqz p2, :cond_4

    .line 147
    .line 148
    const-string v4, "allowIncomingCall"

    .line 149
    .line 150
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 155
    .line 156
    .line 157
    move-result p2

    .line 158
    if-lez p2, :cond_4

    .line 159
    .line 160
    move p2, v2

    .line 161
    goto :goto_2

    .line 162
    :cond_4
    move p2, v3

    .line 163
    :cond_5
    :goto_2
    const/4 v4, 0x3

    .line 164
    if-ne p1, v4, :cond_7

    .line 165
    .line 166
    if-eqz p2, :cond_6

    .line 167
    .line 168
    const-string v4, "allowOutgoingCall"

    .line 169
    .line 170
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 175
    .line 176
    .line 177
    move-result p2

    .line 178
    if-lez p2, :cond_6

    .line 179
    .line 180
    move p2, v2

    .line 181
    goto :goto_3

    .line 182
    :cond_6
    move p2, v3

    .line 183
    :cond_7
    :goto_3
    const/4 v4, 0x4

    .line 184
    if-ne p1, v4, :cond_9

    .line 185
    .line 186
    if-eqz p2, :cond_8

    .line 187
    .line 188
    const-string v4, "allowIncomingSMS"

    .line 189
    .line 190
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 195
    .line 196
    .line 197
    move-result p2

    .line 198
    if-lez p2, :cond_8

    .line 199
    .line 200
    move p2, v2

    .line 201
    goto :goto_4

    .line 202
    :cond_8
    move p2, v3

    .line 203
    :cond_9
    :goto_4
    const/4 v4, 0x5

    .line 204
    if-ne p1, v4, :cond_b

    .line 205
    .line 206
    if-eqz p2, :cond_a

    .line 207
    .line 208
    const-string v4, "allowOutgoingSMS"

    .line 209
    .line 210
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    move-result v4

    .line 214
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 215
    .line 216
    .line 217
    move-result p2

    .line 218
    if-lez p2, :cond_a

    .line 219
    .line 220
    move p2, v2

    .line 221
    goto :goto_5

    .line 222
    :cond_a
    move p2, v3

    .line 223
    :cond_b
    :goto_5
    const/4 v4, 0x6

    .line 224
    if-ne p1, v4, :cond_d

    .line 225
    .line 226
    if-eqz p2, :cond_c

    .line 227
    .line 228
    const-string v4, "allowMMS"

    .line 229
    .line 230
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 235
    .line 236
    .line 237
    move-result p2

    .line 238
    if-lez p2, :cond_c

    .line 239
    .line 240
    move v3, v2

    .line 241
    :cond_c
    move p2, v3

    .line 242
    :cond_d
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    .line 244
    .line 245
    goto/16 :goto_0

    .line 246
    .line 247
    :cond_e
    :goto_6
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 248
    .line 249
    .line 250
    goto :goto_8

    .line 251
    :goto_7
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    .line 255
    .line 256
    const-string v2, "Exception occurred accessing Enterprise db "

    .line 257
    .line 258
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {p1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    .line 274
    .line 275
    goto :goto_6

    .line 276
    :goto_8
    return p2

    .line 277
    :goto_9
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 278
    .line 279
    .line 280
    throw p1
.end method

.method public final isOutgoingCallAllowedFromSimSlot(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOperationAllowed(II)Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public final isOutgoingMmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEmergencyCallOnly(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    const-string p1, "allowOutgoingMms"

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getSmsMmsAllowed(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public final isOutgoingSmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 0

    .line 1
    const-string p1, "allowOutgoingSms"

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getSmsMmsAllowed(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isOutgoingSmsAllowedFromSimSlot(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOperationAllowed(II)Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public final isRCSEnabled(Lcom/samsung/android/knox/ContextInfo;IZ)Z
    .locals 0

    .line 1
    const-string/jumbo p1, "enableRCS"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isRCSEnabledInternal(ILjava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final isRCSEnabledBySimSlot(Lcom/samsung/android/knox/ContextInfo;IZI)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    if-eqz p4, :cond_0

    .line 3
    .line 4
    if-eq p4, p1, :cond_0

    .line 5
    .line 6
    const-string/jumbo p0, "isRCSEnabledBySimSlot(): failed. invalid simSlotId : "

    .line 7
    .line 8
    .line 9
    const-string p1, "PhoneRestrictionPolicy"

    .line 10
    .line 11
    invoke-static {p4, p0, p1}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :cond_0
    if-ne p4, p1, :cond_1

    .line 17
    .line 18
    const-string/jumbo p1, "enableRCSForSimSlot1"

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const-string/jumbo p1, "enableRCSForSimSlot0"

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isRCSEnabledInternal(ILjava/lang/String;Z)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0
.end method

.method public final isRCSEnabledInternal(ILjava/lang/String;Z)Z
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "isRCSEnabledInternal(), showMsg: "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, ", columnName: "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "PhoneRestrictionPolicy"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    const/4 v2, 0x1

    .line 31
    if-ne p1, v2, :cond_0

    .line 32
    .line 33
    move v3, v2

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v3, v0

    .line 36
    :goto_0
    if-nez v3, :cond_1

    .line 37
    .line 38
    const-string/jumbo p0, "isRCSEnabledInternal(): allowed. not support feature = "

    .line 39
    .line 40
    .line 41
    invoke-static {p1, p0, v1}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return v2

    .line 45
    :cond_1
    const/4 v3, 0x0

    .line 46
    invoke-virtual {p0, v3, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEmergencyCallOnly(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    const v4, 0x1040cc3

    .line 51
    .line 52
    .line 53
    if-eqz v3, :cond_3

    .line 54
    .line 55
    if-eqz p3, :cond_2

    .line 56
    .line 57
    invoke-static {v4}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 58
    .line 59
    .line 60
    :cond_2
    return v0

    .line 61
    :cond_3
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 62
    .line 63
    const-string v3, "PHONERESTRICTION"

    .line 64
    .line 65
    invoke-virtual {p0, v0, v0, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-eqz p2, :cond_7

    .line 78
    .line 79
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    check-cast p2, Ljava/lang/Integer;

    .line 84
    .line 85
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-gez v3, :cond_5

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    and-int/2addr p2, p1

    .line 97
    if-eq p2, p1, :cond_4

    .line 98
    .line 99
    const-string/jumbo p0, "isRCSEnabledInternal(): disallowed by EDM"

    .line 100
    .line 101
    .line 102
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    if-eqz p3, :cond_6

    .line 106
    .line 107
    invoke-static {v4}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 108
    .line 109
    .line 110
    :cond_6
    return v0

    .line 111
    :cond_7
    return v2
.end method

.method public final isSimLocked(I)Z
    .locals 5

    .line 1
    const-string v0, "Failed to check isSimLocked: "

    .line 2
    .line 3
    const-string/jumbo v1, "isSimLocked"

    .line 4
    .line 5
    .line 6
    const-string v2, "PhoneRestrictionPolicy"

    .line 7
    .line 8
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEnterpriseSimPin:Lcom/android/server/enterprise/restriction/EnterpriseSimPin;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/EnterpriseSimPin;->isSimLocked(I)Z

    .line 18
    .line 19
    .line 20
    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    return p0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .line 46
    .line 47
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    .line 49
    .line 50
    const/4 p0, 0x0

    .line 51
    return p0

    .line 52
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    .line 54
    .line 55
    throw p0
.end method

.method public final isSimLockedByAdmin(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDbProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/SimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 8
    .line 9
    const-string p1, "SimTable"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-lez p0, :cond_0

    .line 17
    .line 18
    move v0, v1

    .line 19
    :cond_0
    return v0

    .line 20
    :cond_1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDbProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/SimDBProxy;->getPincode(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-eqz p0, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-nez p0, :cond_2

    .line 33
    .line 34
    move v0, v1

    .line 35
    :cond_2
    return v0
.end method

.method public final isSmsPatternCheckRequired()Z
    .locals 8

    .line 1
    const-string v0, "adminUid"

    .line 2
    .line 3
    const-string/jumbo v1, "smsRestrictionIncomingPattern"

    .line 4
    .line 5
    .line 6
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    const-string v5, "PHONERESTRICTION"

    .line 14
    .line 15
    invoke-virtual {v3, v4, v4, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValuesListAsUser(IILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const/4 v6, 0x1

    .line 26
    if-nez v3, :cond_2

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Landroid/content/ContentValues;

    .line 43
    .line 44
    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    if-nez v7, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-nez v3, :cond_0

    .line 60
    .line 61
    return v6

    .line 62
    :cond_2
    const-string/jumbo v1, "smsRestrictionOutgoingPattern"

    .line 63
    .line 64
    .line 65
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 70
    .line 71
    invoke-virtual {p0, v4, v4, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValuesListAsUser(IILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    check-cast p0, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-nez v2, :cond_5

    .line 82
    .line 83
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-eqz v2, :cond_5

    .line 92
    .line 93
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    check-cast v2, Landroid/content/ContentValues;

    .line 98
    .line 99
    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    if-nez v3, :cond_4

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_4
    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-nez v2, :cond_3

    .line 115
    .line 116
    return v6

    .line 117
    :cond_5
    return v4
.end method

.method public final isSubIdLockedByAdmin(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSubMgr:Landroid/telephony/SubscriptionManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isSimLockedByAdmin(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final isWapPushAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2
    .line 3
    const-string p1, "PHONERESTRICTION"

    .line 4
    .line 5
    const-string/jumbo v0, "wapPushEnabled"

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 p1, 0x1

    .line 37
    :goto_0
    const-string/jumbo p0, "isWapPushAllowed : "

    .line 38
    .line 39
    .line 40
    const-string v0, "PhoneRestrictionPolicy"

    .line 41
    .line 42
    invoke-static {p0, v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    return p1
.end method

.method public final declared-synchronized lockUnlockCorporateSimCard(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 9

    .line 1
    const-string/jumbo v0, "lockUnlockCorporateSimCard isSimLocked  "

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "lockUnlockCorporateSimCard Sim owner "

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "lockUnlockCorporateSimCard Sim subscription ID "

    .line 8
    .line 9
    .line 10
    const-string/jumbo v3, "lockUnlockCorporateSimCard lock "

    .line 11
    .line 12
    .line 13
    monitor-enter p0

    .line 14
    :try_start_0
    const-string v4, "PhoneRestrictionPolicy"

    .line 15
    .line 16
    new-instance v5, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v3, " iccId "

    .line 25
    .line 26
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 44
    .line 45
    invoke-static {p3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->validatePinCode(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-nez v3, :cond_0

    .line 50
    .line 51
    const/4 p1, 0x2

    .line 52
    invoke-static {p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->logError(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    monitor-exit p0

    .line 56
    return p1

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    goto/16 :goto_2

    .line 59
    .line 60
    :cond_0
    :try_start_1
    const-string v3, "PhoneRestrictionPolicy"

    .line 61
    .line 62
    const-string/jumbo v5, "lockUnlockCorporateSimCard valid pincode"

    .line 63
    .line 64
    .line 65
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_2

    .line 73
    .line 74
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSubMgr:Landroid/telephony/SubscriptionManager;

    .line 79
    .line 80
    invoke-virtual {v3, p2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    .line 81
    .line 82
    .line 83
    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    const/16 v3, 0x9

    .line 85
    .line 86
    if-nez p2, :cond_1

    .line 87
    .line 88
    monitor-exit p0

    .line 89
    return v3

    .line 90
    :cond_1
    :try_start_2
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    if-nez p2, :cond_2

    .line 95
    .line 96
    invoke-static {v3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->logError(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    .line 98
    .line 99
    monitor-exit p0

    .line 100
    return v3

    .line 101
    :cond_2
    move-object v8, p2

    .line 102
    :try_start_3
    invoke-virtual {p0, v8}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getSimSubId(Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    const-string v3, "PhoneRestrictionPolicy"

    .line 107
    .line 108
    new-instance v5, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    const/4 v2, -0x1

    .line 124
    if-ne p2, v2, :cond_3

    .line 125
    .line 126
    const/16 p1, 0xd

    .line 127
    .line 128
    invoke-static {p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->logError(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 129
    .line 130
    .line 131
    monitor-exit p0

    .line 132
    return p1

    .line 133
    :cond_3
    :try_start_4
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDbProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    .line 134
    .line 135
    iget-object v3, v3, Lcom/android/server/enterprise/restriction/SimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 136
    .line 137
    const-string v5, "SimTable"

    .line 138
    .line 139
    const-string v6, "SimIccId"

    .line 140
    .line 141
    invoke-virtual {v3, v5, v6, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    const-string v5, "PhoneRestrictionPolicy"

    .line 146
    .line 147
    new-instance v6, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isSimLocked(I)Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    const-string v5, "PhoneRestrictionPolicy"

    .line 167
    .line 168
    new-instance v6, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    const/16 v0, 0xc

    .line 184
    .line 185
    if-eqz p4, :cond_9

    .line 186
    .line 187
    if-eqz v1, :cond_6

    .line 188
    .line 189
    if-ne v3, v2, :cond_4

    .line 190
    .line 191
    const/4 p1, 0x4

    .line 192
    invoke-static {p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->logError(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 193
    .line 194
    .line 195
    monitor-exit p0

    .line 196
    return p1

    .line 197
    :cond_4
    if-ne v3, v4, :cond_5

    .line 198
    .line 199
    const/16 p1, 0xb

    .line 200
    .line 201
    :try_start_5
    invoke-static {p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->logError(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 202
    .line 203
    .line 204
    monitor-exit p0

    .line 205
    return p1

    .line 206
    :cond_5
    if-eq v3, v4, :cond_f

    .line 207
    .line 208
    :try_start_6
    invoke-static {v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->logError(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 209
    .line 210
    .line 211
    monitor-exit p0

    .line 212
    return v0

    .line 213
    :cond_6
    if-ne v3, v2, :cond_7

    .line 214
    .line 215
    goto :goto_0

    .line 216
    :cond_7
    if-ne v3, v4, :cond_8

    .line 217
    .line 218
    :try_start_7
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDbProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    .line 219
    .line 220
    iget-object v0, v0, Lcom/android/server/enterprise/restriction/SimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 221
    .line 222
    const-string v1, "SimTable"

    .line 223
    .line 224
    const-string v5, "SimIccId"

    .line 225
    .line 226
    invoke-virtual {v0, v4, v1, v5, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdminAndField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 227
    .line 228
    .line 229
    goto :goto_0

    .line 230
    :cond_8
    if-eq v3, v4, :cond_f

    .line 231
    .line 232
    invoke-static {v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->logError(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 233
    .line 234
    .line 235
    monitor-exit p0

    .line 236
    return v0

    .line 237
    :cond_9
    if-eqz v1, :cond_c

    .line 238
    .line 239
    if-ne v3, v2, :cond_a

    .line 240
    .line 241
    goto :goto_0

    .line 242
    :cond_a
    if-ne v3, v4, :cond_b

    .line 243
    .line 244
    goto :goto_0

    .line 245
    :cond_b
    if-eq v3, v4, :cond_f

    .line 246
    .line 247
    :try_start_8
    invoke-static {v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->logError(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 248
    .line 249
    .line 250
    monitor-exit p0

    .line 251
    return v0

    .line 252
    :cond_c
    const/4 v0, 0x5

    .line 253
    :try_start_9
    invoke-static {v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->logError(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 254
    .line 255
    .line 256
    if-ne v3, v2, :cond_d

    .line 257
    .line 258
    monitor-exit p0

    .line 259
    return v0

    .line 260
    :cond_d
    if-ne v3, v4, :cond_e

    .line 261
    .line 262
    :try_start_a
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDbProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    .line 263
    .line 264
    iget-object p1, p1, Lcom/android/server/enterprise/restriction/SimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 265
    .line 266
    const-string p2, "SimTable"

    .line 267
    .line 268
    const-string p3, "SimIccId"

    .line 269
    .line 270
    invoke-virtual {p1, v4, p2, p3, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdminAndField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 271
    .line 272
    .line 273
    monitor-exit p0

    .line 274
    return v0

    .line 275
    :cond_e
    if-eq v3, v4, :cond_f

    .line 276
    .line 277
    monitor-exit p0

    .line 278
    return v0

    .line 279
    :cond_f
    :goto_0
    :try_start_b
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setSubIdLockEnabled(ILjava/lang/String;Z)I

    .line 280
    .line 281
    .line 282
    move-result p2

    .line 283
    invoke-static {p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->logError(I)V

    .line 284
    .line 285
    .line 286
    if-nez p2, :cond_13

    .line 287
    .line 288
    if-eqz p4, :cond_11

    .line 289
    .line 290
    if-ne v3, v2, :cond_10

    .line 291
    .line 292
    iget-object p4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDbProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    .line 293
    .line 294
    invoke-virtual {p4, v4, v8, p3}, Lcom/android/server/enterprise/restriction/SimDBProxy;->addSimcard(ILjava/lang/String;Ljava/lang/String;)Z

    .line 295
    .line 296
    .line 297
    move-result p3

    .line 298
    goto :goto_1

    .line 299
    :cond_10
    iget-object p4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDbProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    .line 300
    .line 301
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 302
    .line 303
    .line 304
    new-instance v5, Landroid/content/ContentValues;

    .line 305
    .line 306
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 307
    .line 308
    .line 309
    const-string v0, "SimPinCode"

    .line 310
    .line 311
    invoke-virtual {v5, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    iget-object v3, p4, Lcom/android/server/enterprise/restriction/SimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 315
    .line 316
    const-string v6, "SimTable"

    .line 317
    .line 318
    const-string v7, "SimIccId"

    .line 319
    .line 320
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesForAdminAndField(ILandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 321
    .line 322
    .line 323
    move-result p3

    .line 324
    goto :goto_1

    .line 325
    :cond_11
    if-eq v3, v2, :cond_12

    .line 326
    .line 327
    iget-object p3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDbProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    .line 328
    .line 329
    iget-object p3, p3, Lcom/android/server/enterprise/restriction/SimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 330
    .line 331
    const-string p4, "SimTable"

    .line 332
    .line 333
    const-string v0, "SimIccId"

    .line 334
    .line 335
    invoke-virtual {p3, v4, p4, v0, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdminAndField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 336
    .line 337
    .line 338
    move-result p3

    .line 339
    goto :goto_1

    .line 340
    :cond_12
    const/4 p3, 0x1

    .line 341
    :goto_1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 342
    .line 343
    .line 344
    move-result p1

    .line 345
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setLockedIccIdsSystemUI(I)V

    .line 346
    .line 347
    .line 348
    if-nez p3, :cond_13

    .line 349
    .line 350
    const/16 p1, 0xa

    .line 351
    .line 352
    invoke-static {p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->logError(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 353
    .line 354
    .line 355
    monitor-exit p0

    .line 356
    return p1

    .line 357
    :cond_13
    monitor-exit p0

    .line 358
    return p2

    .line 359
    :goto_2
    monitor-exit p0

    .line 360
    throw p1
.end method

.method public final logToKnoxsdkFile$2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 7

    .line 1
    const-string v0, ", api: "

    .line 2
    .line 3
    const-string v1, "PhoneRestrictionPolicy"

    .line 4
    .line 5
    const-string v2, ", result: "

    .line 6
    .line 7
    const-string v3, ", param: "

    .line 8
    .line 9
    const-string/jumbo v4, "callerId: "

    .line 10
    .line 11
    .line 12
    new-instance v5, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    new-instance v6, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p1, ", pkgName: "

    .line 36
    .line 37
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    if-eqz p3, :cond_0

    .line 58
    .line 59
    invoke-virtual {v3, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception p0

    .line 68
    goto :goto_1

    .line 69
    :cond_0
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :goto_1
    const-string/jumbo p1, "logToKnoxsdkFile failed due to unexpected exception"

    .line 86
    .line 87
    .line 88
    invoke-static {v1, p1, p0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-static {v1, p0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public final notifySmsPatternCheck()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string/jumbo v1, "com.samsung.android.knox.intent.action.REQUEST_SMS_PATTERN_CHECK_INTERNAL"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string/jumbo v1, "state"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isSmsPatternCheckRequired()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    .line 35
    .line 36
    throw p0
.end method

.method public final notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAdminAdded(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAdminRemoved(I)V
    .locals 4

    .line 1
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->updateDataLimitState()V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    .line 15
    .line 16
    const/4 v3, 0x2

    .line 17
    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    .line 22
    .line 23
    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDbProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    .line 27
    .line 28
    iget-object v2, v2, Lcom/android/server/enterprise/restriction/SimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 29
    .line 30
    const-string v3, "SimTable"

    .line 31
    .line 32
    invoke-virtual {v2, p1, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->removeByAdmin(IILjava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-ne v0, p1, :cond_0

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setLockedIccIdsSystemUI(I)V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    const-string/jumbo p1, "content://com.sec.knox.provider2/PhoneRestrictionPolicy/isRCSEnabled"

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p0, p1}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final onPreAdminRemoval(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final removeIncomingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    const-string v0, "PhoneRestrictionPolicy"

    .line 2
    .line 3
    const-string v1, ">>> PhoneRestrictionPolicy.removeIncomingCallExceptionPattern()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final removeIncomingCallRestriction(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    const-string v0, "PhoneRestrictionPolicy"

    .line 2
    .line 3
    const-string v1, ">>> PhoneRestrictionPolicy.removeIncomingCallRestriction()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final removeIncomingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    const-string v0, "PhoneRestrictionPolicy"

    .line 2
    .line 3
    const-string v1, ">>> PhoneRestrictionPolicy.removeIncomingSmsExceptionPattern()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final removeIncomingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final removeOutgoingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    const-string v0, "PhoneRestrictionPolicy"

    .line 2
    .line 3
    const-string v1, ">>> PhoneRestrictionPolicy.removeOutgoingCallExceptionPattern()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final removeOutgoingCallRestriction(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    const-string v0, "PhoneRestrictionPolicy"

    .line 2
    .line 3
    const-string v1, ">>> PhoneRestrictionPolicy.removeOutgoingCallRestriction()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final removeOutgoingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    const-string v0, "PhoneRestrictionPolicy"

    .line 2
    .line 3
    const-string v1, ">>> PhoneRestrictionPolicy.removeOutgoingSmsExceptionPattern()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final removeOutgoingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final resetCallsCount(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 v0, 0x0

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 15
    .line 16
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string/jumbo v2, "incomingCallCountDay"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 28
    .line 29
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-string/jumbo v3, "outgoingCallCountDay"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    and-int/2addr p1, v1

    .line 41
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 42
    .line 43
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const-string/jumbo v3, "incomingCallCountWeek"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v0, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    and-int/2addr p1, v1

    .line 55
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 56
    .line 57
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    const-string/jumbo v3, "outgoingCallCountWeek"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v0, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    and-int/2addr p1, v1

    .line 69
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 70
    .line 71
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    const-string/jumbo v3, "incomingCallCountMonth"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v0, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    and-int/2addr p1, v1

    .line 83
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 84
    .line 85
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    const-string/jumbo v2, "outgoingCallCountMonth"

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    and-int/2addr p0, p1

    .line 97
    return p0
.end method

.method public final resetDataCallLimitCounter(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string/jumbo v2, "dataCallBytesCountByDay"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string/jumbo v3, "dataCallBytesCountByWeek"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    and-int/2addr p1, v1

    .line 32
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 33
    .line 34
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string/jumbo v2, "dataCallByteCountByMonth"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    and-int/2addr p0, p1

    .line 46
    return p0
.end method

.method public final resetSmsCount(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string/jumbo v2, "incomingSmsCountDay"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string/jumbo v3, "outgoingSmsCountDay"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    and-int/2addr p1, v1

    .line 32
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 33
    .line 34
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const-string/jumbo v3, "incomingSmsCountWeek"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v0, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    and-int/2addr p1, v1

    .line 46
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 47
    .line 48
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const-string/jumbo v3, "outgoingSmsCountWeek"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v0, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    and-int/2addr p1, v1

    .line 60
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 61
    .line 62
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    const-string/jumbo v3, "incomingSmsCountMonth"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v0, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    and-int/2addr p1, v1

    .line 74
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 75
    .line 76
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const-string/jumbo v2, "outgoingSmsCountMonth"

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    and-int/2addr p0, p1

    .line 88
    return p0
.end method

.method public final restorePacketDataNetworkSetting()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEDM$22()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isCellularDataAllowed()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    const-string/jumbo v1, "phone"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 29
    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    const-string p0, "PhoneRestrictionPolicy"

    .line 33
    .line 34
    const-string v0, "Failed to get Telephony Manager"

    .line 35
    .line 36
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_1

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 48
    .line 49
    .line 50
    :cond_1
    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 54
    .line 55
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const-string/jumbo v2, "dataCallPacketDataCheckBox"

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    :cond_2
    return-void
.end method

.method public final setDataCallLimitEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->resetDataCallLimitCounter(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 12
    .line 13
    .line 14
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/16 v1, 0xb

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 22
    .line 23
    .line 24
    const/16 v1, 0xc

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 27
    .line 28
    .line 29
    const/16 v1, 0xd

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 32
    .line 33
    .line 34
    const/16 v1, 0xe

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 44
    .line 45
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    const-string/jumbo v5, "dataCallDateDay"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v2, v5, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 57
    .line 58
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    const-string/jumbo v6, "dataCallDateWeek"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, v2, v6, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    and-int/2addr v3, v4

    .line 70
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 71
    .line 72
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const-string/jumbo v1, "dataCallDateMonth"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, v2, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    and-int/2addr v0, v3

    .line 84
    goto :goto_0

    .line 85
    :cond_0
    const/4 v0, 0x1

    .line 86
    :goto_0
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 87
    .line 88
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 89
    .line 90
    const-string v2, "PHONERESTRICTION"

    .line 91
    .line 92
    const-string/jumbo v6, "enableLimitDataCall"

    .line 93
    .line 94
    .line 95
    const/4 v5, 0x0

    .line 96
    move v4, p2

    .line 97
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    and-int/2addr v0, v1

    .line 102
    if-eqz v0, :cond_2

    .line 103
    .line 104
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getDataCallLimitEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    iput-boolean v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    .line 109
    .line 110
    if-nez v1, :cond_1

    .line 111
    .line 112
    const-string v1, "PhoneRestrictionPolicy"

    .line 113
    .line 114
    const-string v2, "DataLimitEnabled so restoring data netwotk setting"

    .line 115
    .line 116
    invoke-static {v1, v2}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 120
    .line 121
    .line 122
    move-result-wide v1

    .line 123
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->restorePacketDataNetworkSetting()V

    .line 124
    .line 125
    .line 126
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 127
    .line 128
    .line 129
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEDM$22()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getDeviceInventory()Lcom/samsung/android/knox/deviceinfo/DeviceInventory;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v1}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->dataUsageTimerActivation()V

    .line 138
    .line 139
    .line 140
    :cond_2
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 141
    .line 142
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    const-string/jumbo v2, "setDataCallLimitEnabled"

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->logToKnoxsdkFile$2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 154
    .line 155
    .line 156
    return v0
.end method

.method public final setDisclaimerText(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 9

    .line 1
    const-string v0, ">>> PhoneRestrictionPolicy.setDisclaimerText()"

    .line 2
    .line 3
    const-string v1, "PhoneRestrictionPolicy"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getDisclaimerText(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/16 v4, 0x3c

    .line 24
    .line 25
    if-le v3, v4, :cond_0

    .line 26
    .line 27
    const-string p0, ">>> PhoneRestrictionPolicy.setDisclaimerText() was failed - text is over 60 char"

    .line 28
    .line 29
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    return v2

    .line 33
    :cond_0
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 36
    .line 37
    const-string v4, "PHONERESTRICTION"

    .line 38
    .line 39
    const-string/jumbo v5, "disclaimerText"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 47
    .line 48
    if-ne v4, v0, :cond_1

    .line 49
    .line 50
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 51
    .line 52
    const/4 v5, 0x0

    .line 53
    const-string v6, "PHONERESTRICTION"

    .line 54
    .line 55
    const-string/jumbo v7, "disclaimerText"

    .line 56
    .line 57
    .line 58
    move-object v8, p2

    .line 59
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const-string v0, ">>> PhoneRestrictionPolicy.setDisclaimerText() was failed - other admin already set text"

    .line 65
    .line 66
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 71
    .line 72
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 73
    .line 74
    const/4 v5, 0x0

    .line 75
    const-string v6, "PHONERESTRICTION"

    .line 76
    .line 77
    const-string/jumbo v7, "disclaimerText"

    .line 78
    .line 79
    .line 80
    move-object v8, p2

    .line 81
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    :goto_0
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 86
    .line 87
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const-string/jumbo v1, "setDisclaimerText"

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->logToKnoxsdkFile$2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 95
    .line 96
    .line 97
    return v2
.end method

.method public final setDynamicSimControl(Lcom/samsung/android/knox/ContextInfo;IZI)I
    .locals 11

    .line 1
    const-string/jumbo v0, "setDynamicSimControl >>> slotNum: "

    .line 2
    .line 3
    .line 4
    const-string v1, " function: "

    .line 5
    .line 6
    const-string v2, " state: "

    .line 7
    .line 8
    invoke-static {p2, p4, v0, v1, v2}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "PhoneRestrictionPolicy"

    .line 13
    .line 14
    invoke-static {v1, v0, p3}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    if-eq p2, v0, :cond_0

    .line 21
    .line 22
    const-string p0, ">>> PhoneRestrictionPolicy.setDynamicSimControl() was failed - SlotID is invalid"

    .line 23
    .line 24
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    const/4 p0, -0x1

    .line 28
    return p0

    .line 29
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    const-string/jumbo v3, "phone"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 39
    .line 40
    new-instance v3, Landroid/content/ContentValues;

    .line 41
    .line 42
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 43
    .line 44
    .line 45
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSubMgr:Landroid/telephony/SubscriptionManager;

    .line 46
    .line 47
    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const/4 v5, -0x2

    .line 52
    if-eqz v4, :cond_d

    .line 53
    .line 54
    const/4 v6, 0x0

    .line 55
    move v8, v0

    .line 56
    move v7, v6

    .line 57
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 58
    .line 59
    .line 60
    move-result v9

    .line 61
    if-ge v7, v9, :cond_3

    .line 62
    .line 63
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    check-cast v8, Landroid/telephony/SubscriptionInfo;

    .line 68
    .line 69
    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    .line 70
    .line 71
    .line 72
    move-result v8

    .line 73
    if-ne v8, p2, :cond_2

    .line 74
    .line 75
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 80
    .line 81
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-nez p3, :cond_1

    .line 86
    .line 87
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    if-ne v7, v4, :cond_1

    .line 92
    .line 93
    if-ne p4, v0, :cond_1

    .line 94
    .line 95
    if-eqz v2, :cond_1

    .line 96
    .line 97
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-eqz v4, :cond_1

    .line 102
    .line 103
    const-string v4, "Current Sim "

    .line 104
    .line 105
    const-string/jumbo v7, "is request for Data Block"

    .line 106
    .line 107
    .line 108
    invoke-static {v8, v4, v7, v1}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, v6}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    .line 115
    .line 116
    .line 117
    move-result v7

    .line 118
    if-eqz v7, :cond_1

    .line 119
    .line 120
    const-string v7, " is on roaming."

    .line 121
    .line 122
    invoke-static {v8, v4, v7, v1}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2, v6}, Landroid/telephony/TelephonyManager;->setDataRoamingEnabled(Z)V

    .line 126
    .line 127
    .line 128
    :cond_1
    move v8, v0

    .line 129
    goto :goto_1

    .line 130
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string v10, "Current Sim is "

    .line 133
    .line 134
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v8, ". Requested block Sim is not present in SlotId"

    .line 141
    .line 142
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    add-int/lit8 v7, v7, 0x1

    .line 156
    .line 157
    move v8, v6

    .line 158
    goto :goto_0

    .line 159
    :cond_3
    :goto_1
    if-ne p4, v0, :cond_4

    .line 160
    .line 161
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    const-string v4, "allowData"

    .line 166
    .line 167
    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 168
    .line 169
    .line 170
    :cond_4
    const/4 v2, 0x2

    .line 171
    if-ne p4, v2, :cond_5

    .line 172
    .line 173
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    const-string v4, "allowIncomingCall"

    .line 178
    .line 179
    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 180
    .line 181
    .line 182
    :cond_5
    const/4 v2, 0x3

    .line 183
    if-ne p4, v2, :cond_6

    .line 184
    .line 185
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    const-string v4, "allowOutgoingCall"

    .line 190
    .line 191
    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 192
    .line 193
    .line 194
    :cond_6
    const/4 v2, 0x4

    .line 195
    if-ne p4, v2, :cond_7

    .line 196
    .line 197
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    const-string v4, "allowIncomingSMS"

    .line 202
    .line 203
    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 204
    .line 205
    .line 206
    :cond_7
    const/4 v2, 0x5

    .line 207
    if-ne p4, v2, :cond_8

    .line 208
    .line 209
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    const-string v4, "allowOutgoingSMS"

    .line 214
    .line 215
    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 216
    .line 217
    .line 218
    :cond_8
    const/4 v2, 0x6

    .line 219
    if-ne p4, v2, :cond_9

    .line 220
    .line 221
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    const-string v7, "allowMMS"

    .line 226
    .line 227
    invoke-virtual {v3, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 228
    .line 229
    .line 230
    :cond_9
    new-instance v4, Landroid/content/ContentValues;

    .line 231
    .line 232
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 233
    .line 234
    .line 235
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 236
    .line 237
    const-string v7, "adminUid"

    .line 238
    .line 239
    const-string/jumbo v9, "slotId"

    .line 240
    .line 241
    .line 242
    invoke-static {p1, v4, v7, p2, v9}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;ILjava/lang/String;)V

    .line 243
    .line 244
    .line 245
    if-eqz v8, :cond_a

    .line 246
    .line 247
    :try_start_0
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 248
    .line 249
    const-string v7, "PHONERESTRICTION_SLOTID"

    .line 250
    .line 251
    invoke-virtual {p1, v7, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 252
    .line 253
    .line 254
    move-result p1

    .line 255
    if-eqz p1, :cond_a

    .line 256
    .line 257
    goto :goto_2

    .line 258
    :catch_0
    move-exception p0

    .line 259
    goto :goto_3

    .line 260
    :cond_a
    move v0, v6

    .line 261
    :goto_2
    if-ne p4, v2, :cond_b

    .line 262
    .line 263
    new-instance p1, Landroid/content/Intent;

    .line 264
    .line 265
    const-string/jumbo p4, "com.samsung.knox.action.KNOX_MMS_CONTROL"

    .line 266
    .line 267
    .line 268
    invoke-direct {p1, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    const-string/jumbo p4, "setPhoneId"

    .line 272
    .line 273
    .line 274
    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 275
    .line 276
    .line 277
    const-string/jumbo p4, "setMmsControlFlag"

    .line 278
    .line 279
    .line 280
    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 281
    .line 282
    .line 283
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    .line 284
    .line 285
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 286
    .line 287
    .line 288
    const-string/jumbo p0, "setDynamicSimControl >>> sendBroadcast: com.samsung.knox.action.KNOX_MMS_CONTROL"

    .line 289
    .line 290
    .line 291
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    .line 293
    .line 294
    new-instance p0, Ljava/lang/StringBuilder;

    .line 295
    .line 296
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    .line 298
    .line 299
    const-string/jumbo p1, "setPhoneId: "

    .line 300
    .line 301
    .line 302
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    const-string p1, ", setMmsControlFlag: "

    .line 309
    .line 310
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object p0

    .line 320
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    .line 322
    .line 323
    goto :goto_4

    .line 324
    :goto_3
    const-string/jumbo p1, "setDynamicSimControl(): failed. unexpected exception - dB error"

    .line 325
    .line 326
    .line 327
    invoke-static {v1, p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 328
    .line 329
    .line 330
    const/4 p0, -0x4

    .line 331
    return p0

    .line 332
    :cond_b
    :goto_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 333
    .line 334
    const-string/jumbo p1, "setDynamicSimControl result "

    .line 335
    .line 336
    .line 337
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object p0

    .line 347
    invoke-static {v1, p0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    if-eqz v0, :cond_c

    .line 351
    .line 352
    move v5, v6

    .line 353
    :cond_c
    return v5

    .line 354
    :cond_d
    const-string p0, "CurrentSims list is null"

    .line 355
    .line 356
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    .line 358
    .line 359
    return v5
.end method

.method public final setEmergencyCallOnly(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return p0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 16
    .line 17
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 18
    .line 19
    const-string v1, "PHONERESTRICTION"

    .line 20
    .line 21
    const-string/jumbo v5, "emergencyCallOnly"

    .line 22
    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    move v3, p2

    .line 26
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 31
    .line 32
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string/jumbo v2, "setEmergencyCallOnly"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->logToKnoxsdkFile$2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    const-string/jumbo p1, "content://com.sec.knox.provider2/PhoneRestrictionPolicy/isRCSEnabled"

    .line 49
    .line 50
    .line 51
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p0, p1}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 56
    .line 57
    .line 58
    return v0
.end method

.method public final setIncomingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 6

    .line 1
    const-string v0, "PhoneRestrictionPolicy"

    .line 2
    .line 3
    const-string v1, ">>> PhoneRestrictionPolicy.setIncomingCallExceptionPattern()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return p0

    .line 22
    :cond_0
    invoke-static {p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->removeWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 27
    .line 28
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 29
    .line 30
    const-string v3, "PHONERESTRICTION"

    .line 31
    .line 32
    const-string/jumbo v4, "incomingCallExceptionPattern"

    .line 33
    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    move-object v5, p2

    .line 37
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 42
    .line 43
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string/jumbo v2, "setIncomingCallExceptionPattern"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->logToKnoxsdkFile$2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 51
    .line 52
    .line 53
    return v0
.end method

.method public final setIncomingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 6

    .line 1
    const-string v0, "PhoneRestrictionPolicy"

    .line 2
    .line 3
    const-string v1, ">>> PhoneRestrictionPolicy.setIncomingCallRestriction()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return p0

    .line 22
    :cond_0
    invoke-static {p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->removeWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 27
    .line 28
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 29
    .line 30
    const-string v3, "PHONERESTRICTION"

    .line 31
    .line 32
    const-string/jumbo v4, "incomingPattern"

    .line 33
    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    move-object v5, p2

    .line 37
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 42
    .line 43
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string/jumbo v2, "setIncomingCallRestriction"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->logToKnoxsdkFile$2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 51
    .line 52
    .line 53
    return v0
.end method

.method public final setIncomingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 6

    .line 1
    const-string v0, "PhoneRestrictionPolicy"

    .line 2
    .line 3
    const-string v1, ">>> PhoneRestrictionPolicy.setOutgoingSmsExceptionPattern()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return p0

    .line 22
    :cond_0
    invoke-static {p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->removeWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 27
    .line 28
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 29
    .line 30
    const-string v3, "PHONERESTRICTION"

    .line 31
    .line 32
    const-string/jumbo v4, "incomingSmsExceptionPattern"

    .line 33
    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    move-object v5, p2

    .line 37
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 42
    .line 43
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string/jumbo v2, "setIncomingSmsExceptionPattern"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->logToKnoxsdkFile$2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 51
    .line 52
    .line 53
    return v0
.end method

.method public final setIncomingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->removeWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 10
    .line 11
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 12
    .line 13
    const-string v3, "PHONERESTRICTION"

    .line 14
    .line 15
    const-string/jumbo v4, "smsRestrictionIncomingPattern"

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    move-object v5, p2

    .line 20
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 25
    .line 26
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string/jumbo v2, "setIncomingSmsRestriction"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->logToKnoxsdkFile$2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->notifySmsPatternCheck()V

    .line 37
    .line 38
    .line 39
    return v0
.end method

.method public final setLimitOfDataCalls(Lcom/samsung/android/knox/ContextInfo;JJJ)Z
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    cmp-long v2, p2, v0

    .line 10
    .line 11
    if-ltz v2, :cond_1

    .line 12
    .line 13
    cmp-long v2, p4, v0

    .line 14
    .line 15
    if-ltz v2, :cond_1

    .line 16
    .line 17
    cmp-long v0, p6, v0

    .line 18
    .line 19
    if-gez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 23
    .line 24
    const-string v2, "PHONERESTRICTION"

    .line 25
    .line 26
    const-string/jumbo v5, "dataCallByDay"

    .line 27
    .line 28
    .line 29
    move v1, v6

    .line 30
    move-wide v3, p2

    .line 31
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putLong(ILjava/lang/String;JLjava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 36
    .line 37
    const-string v2, "PHONERESTRICTION"

    .line 38
    .line 39
    const-string/jumbo v5, "dataCallByWeek"

    .line 40
    .line 41
    .line 42
    move-wide v3, p4

    .line 43
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putLong(ILjava/lang/String;JLjava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    and-int/2addr v7, v0

    .line 48
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 49
    .line 50
    const-string v2, "PHONERESTRICTION"

    .line 51
    .line 52
    const-string/jumbo v5, "dataCallByMonth"

    .line 53
    .line 54
    .line 55
    move-wide v3, p6

    .line 56
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putLong(ILjava/lang/String;JLjava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    and-int/2addr v0, v7

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string p2, ","

    .line 74
    .line 75
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p3

    .line 82
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-static {p6, p7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 100
    .line 101
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 102
    .line 103
    .line 104
    move-result-object p3

    .line 105
    const-string/jumbo p4, "setLimitOfDataCalls"

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, p1, p4, p2, p3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->logToKnoxsdkFile$2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 109
    .line 110
    .line 111
    return v0

    .line 112
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 113
    return p0
.end method

.method public final setLimitOfIncomingCalls(Lcom/samsung/android/knox/ContextInfo;III)Z
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v7, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return v7

    .line 17
    :cond_0
    if-ltz p2, :cond_3

    .line 18
    .line 19
    if-ltz p3, :cond_3

    .line 20
    .line 21
    if-gez p4, :cond_1

    .line 22
    .line 23
    goto/16 :goto_1

    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    const-string v4, "PHONERESTRICTION"

    .line 29
    .line 30
    const-string/jumbo v5, "incomingCallByDay"

    .line 31
    .line 32
    .line 33
    move v1, v6

    .line 34
    move v3, p2

    .line 35
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/4 v8, 0x1

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    const-string v4, "PHONERESTRICTION"

    .line 46
    .line 47
    const-string/jumbo v5, "incomingCallByWeek"

    .line 48
    .line 49
    .line 50
    move v1, v6

    .line 51
    move v3, p3

    .line 52
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    move v0, v8

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    move v0, v7

    .line 61
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    int-to-long v2, p2

    .line 67
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string p2, ","

    .line 75
    .line 76
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    int-to-long v2, p3

    .line 80
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p3

    .line 84
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    int-to-long p2, p4

    .line 91
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 103
    .line 104
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 105
    .line 106
    .line 107
    move-result-object p3

    .line 108
    const-string/jumbo v1, "setLimitOfIncomingCalls"

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->logToKnoxsdkFile$2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 112
    .line 113
    .line 114
    if-eqz v0, :cond_3

    .line 115
    .line 116
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 117
    .line 118
    const/4 v2, 0x0

    .line 119
    const-string v4, "PHONERESTRICTION"

    .line 120
    .line 121
    const-string/jumbo v5, "incomingCallByMonth"

    .line 122
    .line 123
    .line 124
    move v1, v6

    .line 125
    move v3, p4

    .line 126
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    move-result p0

    .line 130
    if-eqz p0, :cond_3

    .line 131
    .line 132
    move v7, v8

    .line 133
    :cond_3
    :goto_1
    return v7
.end method

.method public final setLimitOfIncomingSms(Lcom/samsung/android/knox/ContextInfo;III)Z
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 6
    .line 7
    const/4 v7, 0x0

    .line 8
    if-ltz p2, :cond_2

    .line 9
    .line 10
    if-ltz p3, :cond_2

    .line 11
    .line 12
    if-gez p4, :cond_0

    .line 13
    .line 14
    goto/16 :goto_1

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    const-string v4, "PHONERESTRICTION"

    .line 20
    .line 21
    const-string/jumbo v5, "incomingSmsByDay"

    .line 22
    .line 23
    .line 24
    move v1, v6

    .line 25
    move v3, p2

    .line 26
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v8, 0x1

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    const-string v4, "PHONERESTRICTION"

    .line 37
    .line 38
    const-string/jumbo v5, "incomingSmsByWeek"

    .line 39
    .line 40
    .line 41
    move v1, v6

    .line 42
    move v3, p3

    .line 43
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    move v0, v8

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    move v0, v7

    .line 52
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    int-to-long v2, p2

    .line 58
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string p2, ","

    .line 66
    .line 67
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    int-to-long v2, p3

    .line 71
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    int-to-long p2, p4

    .line 82
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 94
    .line 95
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    const-string/jumbo v1, "setLimitOfIncomingSms"

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->logToKnoxsdkFile$2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 103
    .line 104
    .line 105
    if-eqz v0, :cond_2

    .line 106
    .line 107
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 108
    .line 109
    const/4 v2, 0x0

    .line 110
    const-string v4, "PHONERESTRICTION"

    .line 111
    .line 112
    const-string/jumbo v5, "incomingSmsByMonth"

    .line 113
    .line 114
    .line 115
    move v1, v6

    .line 116
    move v3, p4

    .line 117
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    if-eqz p0, :cond_2

    .line 122
    .line 123
    move v7, v8

    .line 124
    :cond_2
    :goto_1
    return v7
.end method

.method public final setLimitOfOutgoingCalls(Lcom/samsung/android/knox/ContextInfo;III)Z
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v7, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return v7

    .line 17
    :cond_0
    if-ltz p2, :cond_3

    .line 18
    .line 19
    if-ltz p3, :cond_3

    .line 20
    .line 21
    if-gez p4, :cond_1

    .line 22
    .line 23
    goto/16 :goto_1

    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    const-string v4, "PHONERESTRICTION"

    .line 29
    .line 30
    const-string/jumbo v5, "outgoingCallByDay"

    .line 31
    .line 32
    .line 33
    move v1, v6

    .line 34
    move v3, p2

    .line 35
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/4 v8, 0x1

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    const-string v4, "PHONERESTRICTION"

    .line 46
    .line 47
    const-string/jumbo v5, "outgoingCallByWeek"

    .line 48
    .line 49
    .line 50
    move v1, v6

    .line 51
    move v3, p3

    .line 52
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    move v0, v8

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    move v0, v7

    .line 61
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    int-to-long v2, p2

    .line 67
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string p2, ","

    .line 75
    .line 76
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    int-to-long v2, p3

    .line 80
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p3

    .line 84
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    int-to-long p2, p4

    .line 91
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 103
    .line 104
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 105
    .line 106
    .line 107
    move-result-object p3

    .line 108
    const-string/jumbo v1, "setLimitOfOutgoingCalls"

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->logToKnoxsdkFile$2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 112
    .line 113
    .line 114
    if-eqz v0, :cond_3

    .line 115
    .line 116
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 117
    .line 118
    const/4 v2, 0x0

    .line 119
    const-string v4, "PHONERESTRICTION"

    .line 120
    .line 121
    const-string/jumbo v5, "outgoingCallByMonth"

    .line 122
    .line 123
    .line 124
    move v1, v6

    .line 125
    move v3, p4

    .line 126
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    move-result p0

    .line 130
    if-eqz p0, :cond_3

    .line 131
    .line 132
    move v7, v8

    .line 133
    :cond_3
    :goto_1
    return v7
.end method

.method public final setLimitOfOutgoingSms(Lcom/samsung/android/knox/ContextInfo;III)Z
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 6
    .line 7
    const/4 v7, 0x0

    .line 8
    if-ltz p2, :cond_2

    .line 9
    .line 10
    if-ltz p3, :cond_2

    .line 11
    .line 12
    if-gez p4, :cond_0

    .line 13
    .line 14
    goto/16 :goto_1

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    const-string v4, "PHONERESTRICTION"

    .line 20
    .line 21
    const-string/jumbo v5, "outgoingSmsByDay"

    .line 22
    .line 23
    .line 24
    move v1, v6

    .line 25
    move v3, p2

    .line 26
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v8, 0x1

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    const-string v4, "PHONERESTRICTION"

    .line 37
    .line 38
    const-string/jumbo v5, "outgoingSmsByWeek"

    .line 39
    .line 40
    .line 41
    move v1, v6

    .line 42
    move v3, p3

    .line 43
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    move v0, v8

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    move v0, v7

    .line 52
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    int-to-long v2, p2

    .line 58
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string p2, ","

    .line 66
    .line 67
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    int-to-long v2, p3

    .line 71
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    int-to-long p2, p4

    .line 82
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 94
    .line 95
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    const-string/jumbo v1, "setLimitOfOutgoingSms"

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->logToKnoxsdkFile$2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 103
    .line 104
    .line 105
    if-eqz v0, :cond_2

    .line 106
    .line 107
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 108
    .line 109
    const/4 v2, 0x0

    .line 110
    const-string v4, "PHONERESTRICTION"

    .line 111
    .line 112
    const-string/jumbo v5, "outgoingSmsByMonth"

    .line 113
    .line 114
    .line 115
    move v1, v6

    .line 116
    move v3, p4

    .line 117
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    if-eqz p0, :cond_2

    .line 122
    .line 123
    move v7, v8

    .line 124
    :cond_2
    :goto_1
    return v7
.end method

.method public final setLockedIccIdsSystemUI(I)V
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDbProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    .line 6
    .line 7
    const-string v3, "SimIccId"

    .line 8
    .line 9
    filled-new-array {v3}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    iget-object v2, v2, Lcom/android/server/enterprise/restriction/SimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 14
    .line 15
    new-instance v5, Landroid/content/ContentValues;

    .line 16
    .line 17
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v6, "SimTable"

    .line 21
    .line 22
    invoke-virtual {v2, v6, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    new-array v5, v4, [Ljava/lang/String;

    .line 33
    .line 34
    const/4 v6, 0x0

    .line 35
    :goto_0
    if-ge v6, v4, :cond_0

    .line 36
    .line 37
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    check-cast v7, Landroid/content/ContentValues;

    .line 42
    .line 43
    invoke-virtual {v7, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    aput-object v7, v5, v6

    .line 48
    .line 49
    add-int/lit8 v6, v6, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p0, p1, v5}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setLockedIccIdsAsUser(I[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 67
    .line 68
    .line 69
    throw p0
.end method

.method public final setNetworkState(IZ)V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-string v2, "PhoneRestrictionPolicy"

    .line 6
    .line 7
    if-nez p2, :cond_2

    .line 8
    .line 9
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const-string/jumbo v4, "sem_wifi"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lcom/samsung/android/wifi/SemWifiManager;

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    invoke-virtual {v3}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApState()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    const/16 v5, 0xd

    .line 27
    .line 28
    if-eq v4, v5, :cond_0

    .line 29
    .line 30
    const/16 v5, 0xc

    .line 31
    .line 32
    if-ne v4, v5, :cond_2

    .line 33
    .line 34
    :cond_0
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x0

    .line 36
    invoke-virtual {v3, v5, v4}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_4

    .line 42
    :catch_0
    move-exception p0

    .line 43
    goto :goto_2

    .line 44
    :cond_1
    const-string v3, "Mobile Hotspot cannot be disabled"

    .line 45
    .line 46
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setCellularDataAllowedAsUser(IZ)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setWifiTetheringAllowedAsUser(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 62
    .line 63
    .line 64
    goto :goto_3

    .line 65
    :goto_2
    :try_start_1
    const-string/jumbo v3, "setNetworkState(%s, %d) failed "

    .line 66
    .line 67
    .line 68
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    filled-new-array {p2, p1}, [Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :goto_3
    return-void

    .line 89
    :goto_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 90
    .line 91
    .line 92
    throw p0
.end method

.method public final setOutgoingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 6

    .line 1
    const-string v0, "PhoneRestrictionPolicy"

    .line 2
    .line 3
    const-string v1, ">>> PhoneRestrictionPolicy.setOutgoingCallExceptionPattern()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return p0

    .line 22
    :cond_0
    invoke-static {p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->removeWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 27
    .line 28
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 29
    .line 30
    const-string v3, "PHONERESTRICTION"

    .line 31
    .line 32
    const-string/jumbo v4, "outgoingCallExceptionPattern"

    .line 33
    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    move-object v5, p2

    .line 37
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 42
    .line 43
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string/jumbo v2, "setOutgoingCallExceptionPattern"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->logToKnoxsdkFile$2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 51
    .line 52
    .line 53
    return v0
.end method

.method public final setOutgoingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 6

    .line 1
    const-string v0, "PhoneRestrictionPolicy"

    .line 2
    .line 3
    const-string v1, ">>> PhoneRestrictionPolicy.setOutgoingCallRestriction()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return p0

    .line 22
    :cond_0
    invoke-static {p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->removeWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 27
    .line 28
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 29
    .line 30
    const-string v3, "PHONERESTRICTION"

    .line 31
    .line 32
    const-string/jumbo v4, "outgoingPattern"

    .line 33
    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    move-object v5, p2

    .line 37
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 42
    .line 43
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string/jumbo v2, "setOutgoingCallRestriction"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->logToKnoxsdkFile$2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 51
    .line 52
    .line 53
    return v0
.end method

.method public final setOutgoingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 6

    .line 1
    const-string v0, "PhoneRestrictionPolicy"

    .line 2
    .line 3
    const-string v1, ">>> PhoneRestrictionPolicy.setOutgoingSmsExceptionPattern()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return p0

    .line 22
    :cond_0
    invoke-static {p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->removeWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 27
    .line 28
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 29
    .line 30
    const-string v3, "PHONERESTRICTION"

    .line 31
    .line 32
    const-string/jumbo v4, "outgoingSmsExceptionPattern"

    .line 33
    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    move-object v5, p2

    .line 37
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 42
    .line 43
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string/jumbo v2, "setOutgoingSmsExceptionPattern"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->logToKnoxsdkFile$2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 51
    .line 52
    .line 53
    return v0
.end method

.method public final setOutgoingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->removeWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 10
    .line 11
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 12
    .line 13
    const-string v3, "PHONERESTRICTION"

    .line 14
    .line 15
    const-string/jumbo v4, "smsRestrictionOutgoingPattern"

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    move-object v5, p2

    .line 20
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 25
    .line 26
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string/jumbo v2, "setOutgoingSmsRestriction"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->logToKnoxsdkFile$2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->notifySmsPatternCheck()V

    .line 37
    .line 38
    .line 39
    return v0
.end method

.method public final setRCSEnabled(Lcom/samsung/android/knox/ContextInfo;IZ)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "enableRCS"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setRcsEnabledInternal(Lcom/samsung/android/knox/ContextInfo;IZLjava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final setRCSEnabledBySimSlot(Lcom/samsung/android/knox/ContextInfo;IZI)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndSimRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p4, :cond_0

    .line 7
    .line 8
    if-eq p4, v0, :cond_0

    .line 9
    .line 10
    const-string/jumbo p0, "setRCSEnabledBySimSlot(): failed. invalid simSlotId : "

    .line 11
    .line 12
    .line 13
    const-string p1, "PhoneRestrictionPolicy"

    .line 14
    .line 15
    invoke-static {p4, p0, p1}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, -0x1

    .line 19
    return p0

    .line 20
    :cond_0
    if-ne p4, v0, :cond_1

    .line 21
    .line 22
    const-string/jumbo p4, "enableRCSForSimSlot1"

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const-string/jumbo p4, "enableRCSForSimSlot0"

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setRcsEnabledInternal(Lcom/samsung/android/knox/ContextInfo;IZLjava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    return p0
.end method

.method public final setRcsEnabledInternal(Lcom/samsung/android/knox/ContextInfo;IZLjava/lang/String;)I
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "setRCSEnabledInternal(): "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, ", columnName: "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "PhoneRestrictionPolicy"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    if-ne p2, v0, :cond_4

    .line 31
    .line 32
    const/16 v0, 0xff

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 36
    .line 37
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 38
    .line 39
    const-string v5, "PHONERESTRICTION"

    .line 40
    .line 41
    invoke-virtual {v3, v4, v2, v5, p4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getInt(IILjava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move v3, v0

    .line 47
    :goto_0
    if-gez v3, :cond_0

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_0
    move v0, v3

    .line 51
    :goto_1
    if-eqz p3, :cond_1

    .line 52
    .line 53
    or-int/2addr p2, v0

    .line 54
    :goto_2
    move v6, p2

    .line 55
    goto :goto_3

    .line 56
    :cond_1
    not-int p2, p2

    .line 57
    and-int/2addr p2, v0

    .line 58
    goto :goto_2

    .line 59
    :goto_3
    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 60
    .line 61
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 62
    .line 63
    const-string v7, "PHONERESTRICTION"

    .line 64
    .line 65
    const/4 v5, 0x0

    .line 66
    move-object v8, p4

    .line 67
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 71
    goto :goto_4

    .line 72
    :catch_1
    move-exception p1

    .line 73
    const-string/jumbo p2, "setRCSEnabledInternal(): failed. unexpected exception"

    .line 74
    .line 75
    .line 76
    invoke-static {v1, p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    .line 78
    .line 79
    move p1, v2

    .line 80
    :goto_4
    if-eqz p1, :cond_2

    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    .line 83
    .line 84
    const-string/jumbo p2, "content://com.sec.knox.provider2/PhoneRestrictionPolicy/isRCSEnabled"

    .line 85
    .line 86
    .line 87
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-static {p0, p2}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 92
    .line 93
    .line 94
    :cond_2
    if-eqz p1, :cond_3

    .line 95
    .line 96
    goto :goto_5

    .line 97
    :cond_3
    const/4 v2, -0x2

    .line 98
    :goto_5
    return v2

    .line 99
    :cond_4
    const-string/jumbo p0, "setRCSEnabledInternal(): failed. not support feature = "

    .line 100
    .line 101
    .line 102
    invoke-static {p2, p0, v1}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const/4 p0, -0x1

    .line 106
    return p0
.end method

.method public final setSubIdLockEnabled(ILjava/lang/String;Z)I
    .locals 5

    .line 1
    const-string v0, "Failed to setSubIdLockEnabled: "

    .line 2
    .line 3
    const-string/jumbo v1, "setSubIdLockEnabled"

    .line 4
    .line 5
    .line 6
    const-string v2, "PhoneRestrictionPolicy"

    .line 7
    .line 8
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEnterpriseSimPin:Lcom/android/server/enterprise/restriction/EnterpriseSimPin;

    .line 16
    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/restriction/EnterpriseSimPin;->setSubIdLockEnabled(ILjava/lang/String;Z)I

    .line 18
    .line 19
    .line 20
    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    return p0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .line 46
    .line 47
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    .line 49
    .line 50
    const/16 p0, 0x64

    .line 51
    .line 52
    return p0

    .line 53
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 54
    .line 55
    .line 56
    throw p0
.end method

.method public final systemReady()V
    .locals 0

    .line 1
    return-void
.end method

.method public final updateDataLimitState()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceSystemUser$2()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getDataCallLimitEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput-boolean v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    .line 10
    .line 11
    return-void
.end method

.method public final updateDateAndCounters()V
    .locals 13

    .line 1
    const-string v0, "PhoneRestrictionPolicy"

    .line 2
    .line 3
    const-string v1, ">>> PhoneRestrictionPolicy.updateDateAndCounters()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/16 v2, 0xb

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 16
    .line 17
    .line 18
    const/16 v2, 0xc

    .line 19
    .line 20
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 21
    .line 22
    .line 23
    const/16 v2, 0xd

    .line 24
    .line 25
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 26
    .line 27
    .line 28
    const/16 v2, 0xe

    .line 29
    .line 30
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 38
    .line 39
    const-string/jumbo v5, "dateDay"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v3, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 47
    .line 48
    .line 49
    move-result-wide v6

    .line 50
    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 58
    .line 59
    const-string/jumbo v7, "dateWeek"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6, v3, v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 67
    .line 68
    .line 69
    move-result-wide v8

    .line 70
    invoke-virtual {v4, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 71
    .line 72
    .line 73
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 78
    .line 79
    const-string/jumbo v9, "dateMonth"

    .line 80
    .line 81
    .line 82
    invoke-virtual {v8, v3, v9}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 87
    .line 88
    .line 89
    move-result-wide v10

    .line 90
    invoke-virtual {v6, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 94
    .line 95
    .line 96
    move-result-wide v10

    .line 97
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_3

    .line 102
    .line 103
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 104
    .line 105
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    invoke-virtual {v2, v3, v5, v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 113
    .line 114
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    const-string/jumbo v8, "incomingCallCountDay"

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, v3, v8, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 122
    .line 123
    .line 124
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 125
    .line 126
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    const-string/jumbo v8, "outgoingCallCountDay"

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2, v3, v8, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 134
    .line 135
    .line 136
    const/4 v2, 0x3

    .line 137
    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    .line 142
    .line 143
    .line 144
    move-result v8

    .line 145
    const/4 v12, 0x1

    .line 146
    if-ne v5, v8, :cond_0

    .line 147
    .line 148
    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-ne v5, v2, :cond_1

    .line 157
    .line 158
    invoke-virtual {v4, v12}, Ljava/util/Calendar;->get(I)I

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    .line 163
    .line 164
    .line 165
    move-result v5

    .line 166
    if-eq v2, v5, :cond_1

    .line 167
    .line 168
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 169
    .line 170
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    invoke-virtual {v2, v3, v7, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 175
    .line 176
    .line 177
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 178
    .line 179
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    const-string/jumbo v7, "incomingCallCountWeek"

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2, v3, v7, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 187
    .line 188
    .line 189
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 190
    .line 191
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    const-string/jumbo v7, "outgoingCallCountWeek"

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2, v3, v7, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 199
    .line 200
    .line 201
    :cond_1
    const/4 v2, 0x2

    .line 202
    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    .line 203
    .line 204
    .line 205
    move-result v5

    .line 206
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    .line 207
    .line 208
    .line 209
    move-result v6

    .line 210
    if-ne v5, v6, :cond_2

    .line 211
    .line 212
    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    .line 213
    .line 214
    .line 215
    move-result v5

    .line 216
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    if-ne v5, v2, :cond_3

    .line 221
    .line 222
    invoke-virtual {v4, v12}, Ljava/util/Calendar;->get(I)I

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    if-eq v2, v1, :cond_3

    .line 231
    .line 232
    :cond_2
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 233
    .line 234
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    invoke-virtual {v1, v3, v9, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 239
    .line 240
    .line 241
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 242
    .line 243
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    const-string/jumbo v4, "incomingCallCountMonth"

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1, v3, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 251
    .line 252
    .line 253
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 254
    .line 255
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    const-string/jumbo v2, "outgoingCallCountMonth"

    .line 260
    .line 261
    .line 262
    invoke-virtual {p0, v3, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 263
    .line 264
    .line 265
    :cond_3
    const-string p0, "PhoneRestrictionPolicy.updateDateAndCounters() >>>"

    .line 266
    .line 267
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    .line 269
    .line 270
    return-void
.end method

.method public final updateDateAndCountersSms()V
    .locals 13

    .line 1
    const-string v0, "PhoneRestrictionPolicy"

    .line 2
    .line 3
    const-string v1, ">>> SmsRestrictionPolicy.updateDateAndCountersSms()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/16 v2, 0xb

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 16
    .line 17
    .line 18
    const/16 v2, 0xc

    .line 19
    .line 20
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 21
    .line 22
    .line 23
    const/16 v2, 0xd

    .line 24
    .line 25
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 26
    .line 27
    .line 28
    const/16 v2, 0xe

    .line 29
    .line 30
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 38
    .line 39
    const-string/jumbo v5, "smsDateDay"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v3, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 47
    .line 48
    .line 49
    move-result-wide v6

    .line 50
    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 58
    .line 59
    const-string/jumbo v7, "smsDateWeek"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6, v3, v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 67
    .line 68
    .line 69
    move-result-wide v8

    .line 70
    invoke-virtual {v4, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 71
    .line 72
    .line 73
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 78
    .line 79
    const-string/jumbo v9, "smsDateMonth"

    .line 80
    .line 81
    .line 82
    invoke-virtual {v8, v3, v9}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 87
    .line 88
    .line 89
    move-result-wide v10

    .line 90
    invoke-virtual {v6, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 94
    .line 95
    .line 96
    move-result-wide v10

    .line 97
    new-instance v8, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string/jumbo v12, "current time "

    .line 100
    .line 101
    .line 102
    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_3

    .line 120
    .line 121
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 122
    .line 123
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    invoke-virtual {v2, v3, v5, v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 128
    .line 129
    .line 130
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 131
    .line 132
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    const-string/jumbo v8, "incomingSmsCountDay"

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2, v3, v8, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 140
    .line 141
    .line 142
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 143
    .line 144
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    const-string/jumbo v8, "outgoingSmsCountDay"

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2, v3, v8, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 152
    .line 153
    .line 154
    const/4 v2, 0x3

    .line 155
    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    .line 156
    .line 157
    .line 158
    move-result v5

    .line 159
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    .line 160
    .line 161
    .line 162
    move-result v8

    .line 163
    const/4 v12, 0x1

    .line 164
    if-ne v5, v8, :cond_0

    .line 165
    .line 166
    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    .line 167
    .line 168
    .line 169
    move-result v5

    .line 170
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    if-ne v5, v2, :cond_1

    .line 175
    .line 176
    invoke-virtual {v4, v12}, Ljava/util/Calendar;->get(I)I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    .line 181
    .line 182
    .line 183
    move-result v5

    .line 184
    if-eq v2, v5, :cond_1

    .line 185
    .line 186
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 187
    .line 188
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    invoke-virtual {v2, v3, v7, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 193
    .line 194
    .line 195
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 196
    .line 197
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    const-string/jumbo v7, "incomingSmsCountWeek"

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2, v3, v7, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 205
    .line 206
    .line 207
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 208
    .line 209
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    const-string/jumbo v7, "outgoingSmsCountWeek"

    .line 214
    .line 215
    .line 216
    invoke-virtual {v2, v3, v7, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 217
    .line 218
    .line 219
    :cond_1
    const/4 v2, 0x2

    .line 220
    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    .line 221
    .line 222
    .line 223
    move-result v5

    .line 224
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    .line 225
    .line 226
    .line 227
    move-result v6

    .line 228
    if-ne v5, v6, :cond_2

    .line 229
    .line 230
    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    .line 231
    .line 232
    .line 233
    move-result v5

    .line 234
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    if-ne v5, v2, :cond_3

    .line 239
    .line 240
    invoke-virtual {v4, v12}, Ljava/util/Calendar;->get(I)I

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    if-eq v2, v1, :cond_3

    .line 249
    .line 250
    :cond_2
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 251
    .line 252
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    invoke-virtual {v1, v3, v9, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 257
    .line 258
    .line 259
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 260
    .line 261
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    const-string/jumbo v4, "incomingSmsCountMonth"

    .line 266
    .line 267
    .line 268
    invoke-virtual {v1, v3, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 269
    .line 270
    .line 271
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 272
    .line 273
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    const-string/jumbo v2, "outgoingSmsCountMonth"

    .line 278
    .line 279
    .line 280
    invoke-virtual {p0, v3, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 281
    .line 282
    .line 283
    :cond_3
    const-string p0, "SmsRestrictionPolicy.updateDateAndCountersSms() >>>"

    .line 284
    .line 285
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .line 287
    .line 288
    return-void
.end method

.method public final updateDateAndDataCallCounters(J)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    const-string/jumbo v3, "dataCallDateMonth"

    .line 6
    .line 7
    .line 8
    const-string/jumbo v4, "dataCallDateWeek"

    .line 9
    .line 10
    .line 11
    const-string/jumbo v5, "dataCallDateDay"

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceSystemUser$2()V

    .line 15
    .line 16
    .line 17
    iget-boolean v6, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    .line 18
    .line 19
    if-nez v6, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    const/16 v7, 0xb

    .line 27
    .line 28
    const/4 v8, 0x0

    .line 29
    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 30
    .line 31
    .line 32
    const/16 v7, 0xc

    .line 33
    .line 34
    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 35
    .line 36
    .line 37
    const/16 v7, 0xd

    .line 38
    .line 39
    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 40
    .line 41
    .line 42
    const/16 v7, 0xe

    .line 43
    .line 44
    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 45
    .line 46
    .line 47
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    :try_start_0
    iget-object v9, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 52
    .line 53
    invoke-virtual {v9, v8, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 58
    .line 59
    .line 60
    move-result-wide v9

    .line 61
    invoke-virtual {v7, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    :catch_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    :try_start_1
    iget-object v10, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 69
    .line 70
    invoke-virtual {v10, v8, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v10

    .line 74
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 75
    .line 76
    .line 77
    move-result-wide v10

    .line 78
    invoke-virtual {v9, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 79
    .line 80
    .line 81
    :catch_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 82
    .line 83
    .line 84
    move-result-object v10

    .line 85
    :try_start_2
    iget-object v11, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 86
    .line 87
    invoke-virtual {v11, v8, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v11

    .line 91
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 92
    .line 93
    .line 94
    move-result-wide v11

    .line 95
    invoke-virtual {v10, v11, v12}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 96
    .line 97
    .line 98
    :catch_2
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 99
    .line 100
    .line 101
    move-result-wide v11

    .line 102
    invoke-virtual {v6, v7}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    const-string/jumbo v13, "dataCallByteCountByMonth"

    .line 107
    .line 108
    .line 109
    const-string/jumbo v14, "dataCallBytesCountByWeek"

    .line 110
    .line 111
    .line 112
    const-string/jumbo v15, "dataCallBytesCountByDay"

    .line 113
    .line 114
    .line 115
    if-eqz v7, :cond_4

    .line 116
    .line 117
    iget-object v7, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 118
    .line 119
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    const/4 v1, 0x0

    .line 124
    invoke-virtual {v7, v1, v5, v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 125
    .line 126
    .line 127
    iget-object v2, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 128
    .line 129
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    invoke-virtual {v2, v1, v15, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 134
    .line 135
    .line 136
    const/4 v1, 0x3

    .line 137
    invoke-virtual {v9, v1}, Ljava/util/Calendar;->get(I)I

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    if-ne v2, v5, :cond_1

    .line 146
    .line 147
    invoke-virtual {v9, v1}, Ljava/util/Calendar;->get(I)I

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-ne v2, v1, :cond_2

    .line 156
    .line 157
    const/4 v1, 0x1

    .line 158
    invoke-virtual {v9, v1}, Ljava/util/Calendar;->get(I)I

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    .line 163
    .line 164
    .line 165
    move-result v5

    .line 166
    if-eq v2, v5, :cond_2

    .line 167
    .line 168
    :cond_1
    iget-object v1, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 169
    .line 170
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    const/4 v5, 0x0

    .line 175
    invoke-virtual {v1, v5, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 176
    .line 177
    .line 178
    iget-object v1, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 179
    .line 180
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-virtual {v1, v5, v14, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 185
    .line 186
    .line 187
    :cond_2
    const/4 v1, 0x2

    .line 188
    invoke-virtual {v10, v1}, Ljava/util/Calendar;->get(I)I

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    if-ne v2, v4, :cond_3

    .line 197
    .line 198
    invoke-virtual {v9, v1}, Ljava/util/Calendar;->get(I)I

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-ne v2, v1, :cond_4

    .line 207
    .line 208
    const/4 v1, 0x1

    .line 209
    invoke-virtual {v9, v1}, Ljava/util/Calendar;->get(I)I

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    .line 214
    .line 215
    .line 216
    move-result v4

    .line 217
    if-eq v2, v4, :cond_4

    .line 218
    .line 219
    :cond_3
    iget-object v1, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 220
    .line 221
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    const/4 v4, 0x0

    .line 226
    invoke-virtual {v1, v4, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 227
    .line 228
    .line 229
    iget-object v1, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 230
    .line 231
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    invoke-virtual {v1, v4, v13, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 236
    .line 237
    .line 238
    :cond_4
    const-wide/16 v1, 0x0

    .line 239
    .line 240
    move-wide/from16 v3, p1

    .line 241
    .line 242
    cmp-long v1, v1, v3

    .line 243
    .line 244
    if-gez v1, :cond_5

    .line 245
    .line 246
    invoke-virtual {v0, v3, v4, v15}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->dataLimitCounter(JLjava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v3, v4, v14}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->dataLimitCounter(JLjava/lang/String;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, v3, v4, v13}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->dataLimitCounter(JLjava/lang/String;)V

    .line 253
    .line 254
    .line 255
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->checkDataCallLimit()Z

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    if-eqz v1, :cond_7

    .line 260
    .line 261
    iget-object v1, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    .line 262
    .line 263
    const-string/jumbo v2, "phone"

    .line 264
    .line 265
    .line 266
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 271
    .line 272
    if-nez v1, :cond_6

    .line 273
    .line 274
    const-string v0, "PhoneRestrictionPolicy"

    .line 275
    .line 276
    const-string v1, "Failed to get Telephony Manager"

    .line 277
    .line 278
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    .line 280
    .line 281
    goto :goto_0

    .line 282
    :cond_6
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    .line 283
    .line 284
    .line 285
    move-result v2

    .line 286
    if-eqz v2, :cond_8

    .line 287
    .line 288
    const/4 v2, 0x1

    .line 289
    iput-boolean v2, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    .line 290
    .line 291
    iget-object v0, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 292
    .line 293
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    const-string/jumbo v3, "dataCallPacketDataCheckBox"

    .line 298
    .line 299
    .line 300
    const/4 v4, 0x0

    .line 301
    invoke-virtual {v0, v4, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 302
    .line 303
    .line 304
    invoke-virtual {v1, v4}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 305
    .line 306
    .line 307
    goto :goto_0

    .line 308
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->restorePacketDataNetworkSetting()V

    .line 309
    .line 310
    .line 311
    :cond_8
    :goto_0
    return-void
.end method
