.class public final Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/usb/IUsbCallback;


# instance fields
.field public mPortManager:Lcom/android/server/usb/UsbPortManager;

.field public mPw:Lcom/android/internal/util/IndentingPrintWriter;

.field public mUsbPortAidl:Lcom/android/server/usb/hal/port/UsbPortAidl;

.field public preDataRole:I


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 42

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    sget-object v4, Landroid/hardware/usb/IUsbCallback;->DESCRIPTOR:Ljava/lang/String;

    .line 10
    .line 11
    const v5, 0xffffff

    .line 12
    .line 13
    .line 14
    const/4 v6, 0x1

    .line 15
    if-lt v0, v6, :cond_0

    .line 16
    .line 17
    if-gt v0, v5, :cond_0

    .line 18
    .line 19
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    const v7, 0x5f4e5446

    .line 23
    .line 24
    .line 25
    if-ne v0, v7, :cond_1

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return v6

    .line 31
    :cond_1
    if-ne v0, v5, :cond_2

    .line 32
    .line 33
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x3

    .line 37
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    .line 39
    .line 40
    return v6

    .line 41
    :cond_2
    const v4, 0xfffffe

    .line 42
    .line 43
    .line 44
    if-ne v0, v4, :cond_3

    .line 45
    .line 46
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 47
    .line 48
    .line 49
    const-string v0, "7fe46e9531884739d925b8caeee9dba5c411e228"

    .line 50
    .line 51
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return v6

    .line 55
    :cond_3
    const-string v4, " enable:"

    .line 56
    .line 57
    const-string/jumbo v5, "notifyEnableUsbDataStatus: opID:"

    .line 58
    .line 59
    .line 60
    const-string v7, " successful"

    .line 61
    .line 62
    const-string v9, " failed. err:"

    .line 63
    .line 64
    const-string v10, ": opID:"

    .line 65
    .line 66
    const/4 v11, 0x6

    .line 67
    const/4 v12, 0x4

    .line 68
    packed-switch v0, :pswitch_data_0

    .line 69
    .line 70
    .line 71
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    return v0

    .line 76
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 85
    .line 86
    .line 87
    move-result-wide v13

    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 89
    .line 90
    .line 91
    if-nez v3, :cond_4

    .line 92
    .line 93
    iget-object v2, v1, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 94
    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string/jumbo v5, "notifyResetUsbPortStatus:"

    .line 98
    .line 99
    .line 100
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-static {v12, v2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_4
    iget-object v2, v1, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 121
    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-static {v11, v2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    :goto_0
    :try_start_0
    sget-object v0, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    .line 150
    .line 151
    invoke-virtual {v0, v13, v14}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    check-cast v0, Landroid/hardware/usb/IUsbOperationInternal;

    .line 156
    .line 157
    if-nez v3, :cond_5

    .line 158
    .line 159
    const/4 v8, 0x0

    .line 160
    goto :goto_1

    .line 161
    :cond_5
    move v8, v6

    .line 162
    :goto_1
    invoke-interface {v0, v8}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .line 164
    .line 165
    goto :goto_2

    .line 166
    :catch_0
    move-exception v0

    .line 167
    iget-object v1, v1, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 168
    .line 169
    const-string/jumbo v2, "notifyResetUsbPortStatus: Failed to call onOperationComplete"

    .line 170
    .line 171
    .line 172
    invoke-static {v1, v2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 173
    .line 174
    .line 175
    :cond_6
    :goto_2
    move v1, v6

    .line 176
    goto/16 :goto_18

    .line 177
    .line 178
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 183
    .line 184
    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 190
    .line 191
    .line 192
    move-result-wide v4

    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    .line 195
    .line 196
    if-nez v3, :cond_7

    .line 197
    .line 198
    iget-object v2, v1, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 199
    .line 200
    new-instance v9, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-static {v12, v2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    goto :goto_3

    .line 225
    :cond_7
    iget-object v2, v1, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 226
    .line 227
    new-instance v7, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    const-string/jumbo v0, "notifyLimitPowerTransferStatus: opID:"

    .line 236
    .line 237
    .line 238
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-static {v11, v2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    :goto_3
    :try_start_1
    sget-object v0, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    .line 258
    .line 259
    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    check-cast v2, Landroid/hardware/usb/IUsbOperationInternal;

    .line 264
    .line 265
    if-eqz v2, :cond_6

    .line 266
    .line 267
    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    check-cast v0, Landroid/hardware/usb/IUsbOperationInternal;

    .line 272
    .line 273
    if-nez v3, :cond_8

    .line 274
    .line 275
    const/4 v8, 0x0

    .line 276
    goto :goto_4

    .line 277
    :cond_8
    move v8, v6

    .line 278
    :goto_4
    invoke-interface {v0, v8}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 279
    .line 280
    .line 281
    goto :goto_2

    .line 282
    :catch_1
    move-exception v0

    .line 283
    iget-object v1, v1, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 284
    .line 285
    const-string v2, "enableLimitPowerTransfer: Failed to call onOperationComplete"

    .line 286
    .line 287
    invoke-static {v1, v2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 288
    .line 289
    .line 290
    goto :goto_2

    .line 291
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 296
    .line 297
    .line 298
    move-result v3

    .line 299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 300
    .line 301
    .line 302
    move-result-wide v4

    .line 303
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 304
    .line 305
    .line 306
    if-nez v3, :cond_9

    .line 307
    .line 308
    iget-object v1, v1, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 309
    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    .line 311
    .line 312
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    invoke-static {v12, v1, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    goto/16 :goto_2

    .line 335
    .line 336
    :cond_9
    iget-object v1, v1, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 337
    .line 338
    new-instance v2, Ljava/lang/StringBuilder;

    .line 339
    .line 340
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    invoke-static {v11, v1, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    goto/16 :goto_2

    .line 366
    .line 367
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 372
    .line 373
    .line 374
    move-result v3

    .line 375
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 376
    .line 377
    .line 378
    move-result v5

    .line 379
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 380
    .line 381
    .line 382
    move-result-wide v7

    .line 383
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 384
    .line 385
    .line 386
    if-nez v5, :cond_a

    .line 387
    .line 388
    iget-object v1, v1, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 389
    .line 390
    new-instance v2, Ljava/lang/StringBuilder;

    .line 391
    .line 392
    const-string/jumbo v5, "notifyContaminantEnabledStatus:"

    .line 393
    .line 394
    .line 395
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    invoke-static {v12, v1, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    goto/16 :goto_2

    .line 421
    .line 422
    :cond_a
    iget-object v1, v1, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 423
    .line 424
    new-instance v2, Ljava/lang/StringBuilder;

    .line 425
    .line 426
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    const-string/jumbo v0, "notifyContaminantEnabledStatus: opID:"

    .line 433
    .line 434
    .line 435
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    invoke-static {v11, v1, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    goto/16 :goto_2

    .line 455
    .line 456
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 461
    .line 462
    .line 463
    move-result v3

    .line 464
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 465
    .line 466
    .line 467
    move-result-wide v4

    .line 468
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 469
    .line 470
    .line 471
    if-nez v3, :cond_b

    .line 472
    .line 473
    iget-object v2, v1, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 474
    .line 475
    new-instance v9, Ljava/lang/StringBuilder;

    .line 476
    .line 477
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    invoke-static {v12, v2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    goto :goto_5

    .line 500
    :cond_b
    iget-object v2, v1, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 501
    .line 502
    new-instance v7, Ljava/lang/StringBuilder;

    .line 503
    .line 504
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 505
    .line 506
    .line 507
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    const-string/jumbo v0, "notifyEnableUsbDataWhileDockedStatus: opID:"

    .line 511
    .line 512
    .line 513
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    invoke-static {v11, v2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    :goto_5
    :try_start_2
    sget-object v0, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    .line 533
    .line 534
    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    move-result-object v2

    .line 538
    check-cast v2, Landroid/hardware/usb/IUsbOperationInternal;

    .line 539
    .line 540
    if-eqz v2, :cond_6

    .line 541
    .line 542
    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    check-cast v0, Landroid/hardware/usb/IUsbOperationInternal;

    .line 547
    .line 548
    if-nez v3, :cond_c

    .line 549
    .line 550
    const/4 v8, 0x0

    .line 551
    goto :goto_6

    .line 552
    :cond_c
    move v8, v6

    .line 553
    :goto_6
    invoke-interface {v0, v8}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 554
    .line 555
    .line 556
    goto/16 :goto_2

    .line 557
    .line 558
    :catch_2
    move-exception v0

    .line 559
    iget-object v1, v1, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 560
    .line 561
    const-string/jumbo v2, "notifyEnableUsbDataWhileDockedStatus: Failed to call onOperationComplete"

    .line 562
    .line 563
    .line 564
    invoke-static {v1, v2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 565
    .line 566
    .line 567
    goto/16 :goto_2

    .line 568
    .line 569
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v0

    .line 573
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 574
    .line 575
    .line 576
    move-result v3

    .line 577
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 578
    .line 579
    .line 580
    move-result v7

    .line 581
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 582
    .line 583
    .line 584
    move-result-wide v13

    .line 585
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 586
    .line 587
    .line 588
    if-nez v7, :cond_d

    .line 589
    .line 590
    iget-object v2, v1, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 591
    .line 592
    new-instance v5, Ljava/lang/StringBuilder;

    .line 593
    .line 594
    const-string/jumbo v9, "notifyEnableUsbDataStatus:"

    .line 595
    .line 596
    .line 597
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 598
    .line 599
    .line 600
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    .line 605
    .line 606
    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v0

    .line 619
    invoke-static {v12, v2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    goto :goto_7

    .line 623
    :cond_d
    iget-object v2, v1, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 624
    .line 625
    new-instance v3, Ljava/lang/StringBuilder;

    .line 626
    .line 627
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 628
    .line 629
    .line 630
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    .line 632
    .line 633
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    .line 635
    .line 636
    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 637
    .line 638
    .line 639
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    .line 641
    .line 642
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 643
    .line 644
    .line 645
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 646
    .line 647
    .line 648
    move-result-object v0

    .line 649
    invoke-static {v11, v2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 650
    .line 651
    .line 652
    :goto_7
    :try_start_3
    sget-object v0, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    .line 653
    .line 654
    invoke-virtual {v0, v13, v14}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 655
    .line 656
    .line 657
    move-result-object v0

    .line 658
    check-cast v0, Landroid/hardware/usb/IUsbOperationInternal;

    .line 659
    .line 660
    if-nez v7, :cond_e

    .line 661
    .line 662
    const/4 v8, 0x0

    .line 663
    goto :goto_8

    .line 664
    :cond_e
    move v8, v6

    .line 665
    :goto_8
    invoke-interface {v0, v8}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 666
    .line 667
    .line 668
    goto/16 :goto_2

    .line 669
    .line 670
    :catch_3
    move-exception v0

    .line 671
    iget-object v1, v1, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 672
    .line 673
    const-string/jumbo v2, "notifyEnableUsbDataStatus: Failed to call onOperationComplete"

    .line 674
    .line 675
    .line 676
    invoke-static {v1, v2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 677
    .line 678
    .line 679
    goto/16 :goto_2

    .line 680
    .line 681
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 682
    .line 683
    .line 684
    move-result-object v0

    .line 685
    sget-object v3, Landroid/hardware/usb/PortRole;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 686
    .line 687
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 688
    .line 689
    .line 690
    move-result-object v3

    .line 691
    check-cast v3, Landroid/hardware/usb/PortRole;

    .line 692
    .line 693
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 694
    .line 695
    .line 696
    move-result v3

    .line 697
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 698
    .line 699
    .line 700
    move-result-wide v4

    .line 701
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 702
    .line 703
    .line 704
    if-nez v3, :cond_f

    .line 705
    .line 706
    iget-object v1, v1, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 707
    .line 708
    new-instance v2, Ljava/lang/StringBuilder;

    .line 709
    .line 710
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 711
    .line 712
    .line 713
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    .line 715
    .line 716
    const-string v0, " role switch successful. opID:"

    .line 717
    .line 718
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    .line 720
    .line 721
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 722
    .line 723
    .line 724
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 725
    .line 726
    .line 727
    move-result-object v0

    .line 728
    invoke-static {v12, v1, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 729
    .line 730
    .line 731
    goto/16 :goto_2

    .line 732
    .line 733
    :cond_f
    iget-object v1, v1, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 734
    .line 735
    new-instance v2, Ljava/lang/StringBuilder;

    .line 736
    .line 737
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 738
    .line 739
    .line 740
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    .line 742
    .line 743
    const-string v0, " role switch failed. err:"

    .line 744
    .line 745
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    .line 747
    .line 748
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 749
    .line 750
    .line 751
    const-string/jumbo v0, "opID:"

    .line 752
    .line 753
    .line 754
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    .line 756
    .line 757
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 758
    .line 759
    .line 760
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 761
    .line 762
    .line 763
    move-result-object v0

    .line 764
    invoke-static {v11, v1, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 765
    .line 766
    .line 767
    goto/16 :goto_2

    .line 768
    .line 769
    :pswitch_7
    sget-object v0, Landroid/hardware/usb/PortStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 770
    .line 771
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 772
    .line 773
    .line 774
    move-result-object v0

    .line 775
    check-cast v0, [Landroid/hardware/usb/PortStatus;

    .line 776
    .line 777
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 778
    .line 779
    .line 780
    move-result v3

    .line 781
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 782
    .line 783
    .line 784
    iget-object v2, v1, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mUsbPortAidl:Lcom/android/server/usb/hal/port/UsbPortAidl;

    .line 785
    .line 786
    iget-boolean v2, v2, Lcom/android/server/usb/hal/port/UsbPortAidl;->mSystemReady:Z

    .line 787
    .line 788
    if-nez v2, :cond_10

    .line 789
    .line 790
    goto/16 :goto_17

    .line 791
    .line 792
    :cond_10
    if-eqz v3, :cond_11

    .line 793
    .line 794
    iget-object v0, v1, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 795
    .line 796
    const-string/jumbo v1, "port status enquiry failed"

    .line 797
    .line 798
    .line 799
    invoke-static {v11, v0, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 800
    .line 801
    .line 802
    goto/16 :goto_17

    .line 803
    .line 804
    :cond_11
    new-instance v2, Ljava/util/ArrayList;

    .line 805
    .line 806
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 807
    .line 808
    .line 809
    array-length v3, v0

    .line 810
    const/4 v4, 0x0

    .line 811
    :goto_9
    if-ge v4, v3, :cond_23

    .line 812
    .line 813
    aget-object v5, v0, v4

    .line 814
    .line 815
    new-instance v7, Lcom/android/server/usb/hal/port/RawPortInfo;

    .line 816
    .line 817
    iget-object v14, v5, Landroid/hardware/usb/PortStatus;->portName:Ljava/lang/String;

    .line 818
    .line 819
    iget-object v9, v5, Landroid/hardware/usb/PortStatus;->supportedModes:[B

    .line 820
    .line 821
    array-length v10, v9

    .line 822
    const/4 v11, 0x0

    .line 823
    const/4 v15, 0x0

    .line 824
    :goto_a
    if-ge v11, v10, :cond_12

    .line 825
    .line 826
    aget-byte v13, v9, v11

    .line 827
    .line 828
    invoke-virtual {v1, v13}, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->toPortMode(B)I

    .line 829
    .line 830
    .line 831
    move-result v13

    .line 832
    or-int/2addr v15, v13

    .line 833
    add-int/lit8 v11, v11, 0x1

    .line 834
    .line 835
    goto :goto_a

    .line 836
    :cond_12
    iget-object v9, v5, Landroid/hardware/usb/PortStatus;->supportedContaminantProtectionModes:[B

    .line 837
    .line 838
    array-length v10, v9

    .line 839
    const/4 v11, 0x0

    .line 840
    const/16 v16, 0x0

    .line 841
    .line 842
    :goto_b
    if-ge v11, v10, :cond_13

    .line 843
    .line 844
    aget-byte v13, v9, v11

    .line 845
    .line 846
    invoke-virtual {v1, v13}, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->toContaminantProtectionStatus(B)I

    .line 847
    .line 848
    .line 849
    move-result v13

    .line 850
    or-int v16, v16, v13

    .line 851
    .line 852
    add-int/lit8 v11, v11, 0x1

    .line 853
    .line 854
    goto :goto_b

    .line 855
    :cond_13
    iget-byte v9, v5, Landroid/hardware/usb/PortStatus;->currentMode:B

    .line 856
    .line 857
    invoke-virtual {v1, v9}, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->toPortMode(B)I

    .line 858
    .line 859
    .line 860
    move-result v17

    .line 861
    iget-boolean v9, v5, Landroid/hardware/usb/PortStatus;->canChangeMode:Z

    .line 862
    .line 863
    iget-byte v10, v5, Landroid/hardware/usb/PortStatus;->currentPowerRole:B

    .line 864
    .line 865
    iget-boolean v11, v5, Landroid/hardware/usb/PortStatus;->canChangePowerRole:Z

    .line 866
    .line 867
    iget-byte v13, v5, Landroid/hardware/usb/PortStatus;->currentDataRole:B

    .line 868
    .line 869
    iget-boolean v8, v5, Landroid/hardware/usb/PortStatus;->canChangeDataRole:Z

    .line 870
    .line 871
    iget-boolean v6, v5, Landroid/hardware/usb/PortStatus;->supportsEnableContaminantPresenceProtection:Z

    .line 872
    .line 873
    iget-byte v12, v5, Landroid/hardware/usb/PortStatus;->contaminantProtectionStatus:B

    .line 874
    .line 875
    invoke-virtual {v1, v12}, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->toContaminantProtectionStatus(B)I

    .line 876
    .line 877
    .line 878
    move-result v24

    .line 879
    iget-boolean v12, v5, Landroid/hardware/usb/PortStatus;->supportsEnableContaminantPresenceDetection:Z

    .line 880
    .line 881
    move-object/from16 p1, v0

    .line 882
    .line 883
    iget-byte v0, v5, Landroid/hardware/usb/PortStatus;->contaminantDetectionStatus:B

    .line 884
    .line 885
    move/from16 p2, v3

    .line 886
    .line 887
    iget-object v3, v5, Landroid/hardware/usb/PortStatus;->usbDataStatus:[B

    .line 888
    .line 889
    move-object/from16 p4, v2

    .line 890
    .line 891
    move/from16 p3, v4

    .line 892
    .line 893
    move/from16 v18, v13

    .line 894
    .line 895
    const/4 v4, 0x0

    .line 896
    const/4 v13, 0x0

    .line 897
    :goto_c
    array-length v2, v3

    .line 898
    if-ge v13, v2, :cond_14

    .line 899
    .line 900
    aget-byte v2, v3, v13

    .line 901
    .line 902
    packed-switch v2, :pswitch_data_1

    .line 903
    .line 904
    .line 905
    goto :goto_d

    .line 906
    :pswitch_8
    or-int/lit16 v4, v4, 0x88

    .line 907
    .line 908
    goto :goto_d

    .line 909
    :pswitch_9
    or-int/lit8 v4, v4, 0x48

    .line 910
    .line 911
    goto :goto_d

    .line 912
    :pswitch_a
    or-int/lit8 v4, v4, 0x20

    .line 913
    .line 914
    goto :goto_d

    .line 915
    :pswitch_b
    or-int/lit8 v4, v4, 0x10

    .line 916
    .line 917
    goto :goto_d

    .line 918
    :pswitch_c
    or-int/lit16 v4, v4, 0xc8

    .line 919
    .line 920
    goto :goto_d

    .line 921
    :pswitch_d
    or-int/lit8 v4, v4, 0x4

    .line 922
    .line 923
    goto :goto_d

    .line 924
    :pswitch_e
    or-int/lit8 v4, v4, 0x2

    .line 925
    .line 926
    goto :goto_d

    .line 927
    :pswitch_f
    or-int/lit8 v4, v4, 0x1

    .line 928
    .line 929
    :goto_d
    add-int/lit8 v13, v13, 0x1

    .line 930
    .line 931
    goto :goto_c

    .line 932
    :cond_14
    iget-object v2, v1, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 933
    .line 934
    new-instance v3, Ljava/lang/StringBuilder;

    .line 935
    .line 936
    const-string v13, "AIDL UsbDataStatus:"

    .line 937
    .line 938
    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 939
    .line 940
    .line 941
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 942
    .line 943
    .line 944
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 945
    .line 946
    .line 947
    move-result-object v3

    .line 948
    const/4 v13, 0x4

    .line 949
    invoke-static {v13, v2, v3}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 950
    .line 951
    .line 952
    iget-boolean v2, v5, Landroid/hardware/usb/PortStatus;->powerTransferLimited:Z

    .line 953
    .line 954
    iget-byte v3, v5, Landroid/hardware/usb/PortStatus;->powerBrickStatus:B

    .line 955
    .line 956
    iget-boolean v13, v5, Landroid/hardware/usb/PortStatus;->supportsComplianceWarnings:Z

    .line 957
    .line 958
    move/from16 v19, v13

    .line 959
    .line 960
    iget-object v13, v5, Landroid/hardware/usb/PortStatus;->complianceWarnings:[I

    .line 961
    .line 962
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    .line 964
    .line 965
    new-instance v1, Landroid/util/IntArray;

    .line 966
    .line 967
    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    .line 968
    .line 969
    .line 970
    invoke-static {v13}, Ljava/util/Arrays;->sort([I)V

    .line 971
    .line 972
    .line 973
    move/from16 v29, v3

    .line 974
    .line 975
    array-length v3, v13

    .line 976
    move/from16 v28, v2

    .line 977
    .line 978
    const/4 v2, 0x0

    .line 979
    :goto_e
    if-ge v2, v3, :cond_19

    .line 980
    .line 981
    move/from16 v20, v3

    .line 982
    .line 983
    aget v3, v13, v2

    .line 984
    .line 985
    move-object/from16 v21, v13

    .line 986
    .line 987
    invoke-virtual {v1, v3}, Landroid/util/IntArray;->indexOf(I)I

    .line 988
    .line 989
    .line 990
    move-result v13

    .line 991
    move/from16 v27, v4

    .line 992
    .line 993
    const/4 v4, -0x1

    .line 994
    if-ne v13, v4, :cond_18

    .line 995
    .line 996
    const/4 v4, 0x1

    .line 997
    if-lt v3, v4, :cond_18

    .line 998
    .line 999
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/Flags;->enableUsbDataComplianceWarning()Z

    .line 1000
    .line 1001
    .line 1002
    move-result v13

    .line 1003
    if-eqz v13, :cond_16

    .line 1004
    .line 1005
    const/16 v13, 0x9

    .line 1006
    .line 1007
    if-le v3, v13, :cond_15

    .line 1008
    .line 1009
    invoke-virtual {v1, v4}, Landroid/util/IntArray;->add(I)V

    .line 1010
    .line 1011
    .line 1012
    goto :goto_f

    .line 1013
    :cond_15
    invoke-virtual {v1, v3}, Landroid/util/IntArray;->add(I)V

    .line 1014
    .line 1015
    .line 1016
    goto :goto_f

    .line 1017
    :cond_16
    const/4 v13, 0x4

    .line 1018
    if-le v3, v13, :cond_17

    .line 1019
    .line 1020
    invoke-virtual {v1, v4}, Landroid/util/IntArray;->add(I)V

    .line 1021
    .line 1022
    .line 1023
    goto :goto_f

    .line 1024
    :cond_17
    invoke-virtual {v1, v3}, Landroid/util/IntArray;->add(I)V

    .line 1025
    .line 1026
    .line 1027
    :cond_18
    :goto_f
    add-int/lit8 v2, v2, 0x1

    .line 1028
    .line 1029
    move/from16 v3, v20

    .line 1030
    .line 1031
    move-object/from16 v13, v21

    .line 1032
    .line 1033
    move/from16 v4, v27

    .line 1034
    .line 1035
    goto :goto_e

    .line 1036
    :cond_19
    move/from16 v27, v4

    .line 1037
    .line 1038
    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    .line 1039
    .line 1040
    .line 1041
    move-result-object v31

    .line 1042
    iget v1, v5, Landroid/hardware/usb/PortStatus;->plugOrientation:I

    .line 1043
    .line 1044
    iget-object v2, v5, Landroid/hardware/usb/PortStatus;->supportedAltModes:[Landroid/hardware/usb/AltModeData;

    .line 1045
    .line 1046
    array-length v3, v2

    .line 1047
    const/4 v4, 0x0

    .line 1048
    const/16 v33, 0x0

    .line 1049
    .line 1050
    :goto_10
    if-ge v4, v3, :cond_1b

    .line 1051
    .line 1052
    aget-object v13, v2, v4

    .line 1053
    .line 1054
    iget v13, v13, Landroid/hardware/usb/AltModeData;->_tag:I

    .line 1055
    .line 1056
    if-eqz v13, :cond_1a

    .line 1057
    .line 1058
    goto :goto_11

    .line 1059
    :cond_1a
    const/16 v33, 0x1

    .line 1060
    .line 1061
    :goto_11
    add-int/lit8 v4, v4, 0x1

    .line 1062
    .line 1063
    goto :goto_10

    .line 1064
    :cond_1b
    iget-object v2, v5, Landroid/hardware/usb/PortStatus;->supportedAltModes:[Landroid/hardware/usb/AltModeData;

    .line 1065
    .line 1066
    array-length v3, v2

    .line 1067
    const/4 v4, 0x0

    .line 1068
    :goto_12
    if-ge v4, v3, :cond_1d

    .line 1069
    .line 1070
    aget-object v13, v2, v4

    .line 1071
    .line 1072
    move-object/from16 v21, v2

    .line 1073
    .line 1074
    iget v2, v13, Landroid/hardware/usb/AltModeData;->_tag:I

    .line 1075
    .line 1076
    if-nez v2, :cond_1c

    .line 1077
    .line 1078
    invoke-virtual {v13}, Landroid/hardware/usb/AltModeData;->getDisplayPortAltModeData()Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v2

    .line 1082
    new-instance v3, Landroid/hardware/usb/DisplayPortAltModeInfo;

    .line 1083
    .line 1084
    iget v4, v2, Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;->partnerSinkStatus:I

    .line 1085
    .line 1086
    iget v13, v2, Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;->cableStatus:I

    .line 1087
    .line 1088
    move-object/from16 v41, v5

    .line 1089
    .line 1090
    iget v5, v2, Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;->pinAssignment:I

    .line 1091
    .line 1092
    packed-switch v5, :pswitch_data_2

    .line 1093
    .line 1094
    .line 1095
    const/16 v38, 0x0

    .line 1096
    .line 1097
    goto :goto_13

    .line 1098
    :pswitch_10
    const/16 v38, 0x2

    .line 1099
    .line 1100
    goto :goto_13

    .line 1101
    :pswitch_11
    const/16 v38, 0x4

    .line 1102
    .line 1103
    :goto_13
    iget-boolean v5, v2, Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;->hpd:Z

    .line 1104
    .line 1105
    iget v2, v2, Landroid/hardware/usb/AltModeData$DisplayPortAltModeData;->linkTrainingStatus:I

    .line 1106
    .line 1107
    move-object/from16 v35, v3

    .line 1108
    .line 1109
    move/from16 v36, v4

    .line 1110
    .line 1111
    move/from16 v37, v13

    .line 1112
    .line 1113
    move/from16 v39, v5

    .line 1114
    .line 1115
    move/from16 v40, v2

    .line 1116
    .line 1117
    invoke-direct/range {v35 .. v40}, Landroid/hardware/usb/DisplayPortAltModeInfo;-><init>(IIIZI)V

    .line 1118
    .line 1119
    .line 1120
    move-object/from16 v34, v3

    .line 1121
    .line 1122
    :goto_14
    move/from16 v2, v18

    .line 1123
    .line 1124
    move/from16 v3, v19

    .line 1125
    .line 1126
    const/4 v4, 0x2

    .line 1127
    goto :goto_15

    .line 1128
    :cond_1c
    move-object/from16 v41, v5

    .line 1129
    .line 1130
    add-int/lit8 v4, v4, 0x1

    .line 1131
    .line 1132
    move-object/from16 v2, v21

    .line 1133
    .line 1134
    goto :goto_12

    .line 1135
    :cond_1d
    move-object/from16 v41, v5

    .line 1136
    .line 1137
    const/4 v2, 0x0

    .line 1138
    move-object/from16 v34, v2

    .line 1139
    .line 1140
    goto :goto_14

    .line 1141
    :goto_15
    move-object v13, v7

    .line 1142
    move/from16 v18, v9

    .line 1143
    .line 1144
    move/from16 v19, v10

    .line 1145
    .line 1146
    move/from16 v20, v11

    .line 1147
    .line 1148
    move/from16 v21, v2

    .line 1149
    .line 1150
    move/from16 v22, v8

    .line 1151
    .line 1152
    move/from16 v23, v6

    .line 1153
    .line 1154
    move/from16 v25, v12

    .line 1155
    .line 1156
    move/from16 v26, v0

    .line 1157
    .line 1158
    move/from16 v30, v3

    .line 1159
    .line 1160
    move/from16 v32, v1

    .line 1161
    .line 1162
    invoke-direct/range {v13 .. v34}, Lcom/android/server/usb/hal/port/RawPortInfo;-><init>(Ljava/lang/String;IIIZIZIZZIZIIZIZ[IIILandroid/hardware/usb/DisplayPortAltModeInfo;)V

    .line 1163
    .line 1164
    .line 1165
    move-object/from16 v0, p4

    .line 1166
    .line 1167
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1168
    .line 1169
    .line 1170
    move-object/from16 v1, v41

    .line 1171
    .line 1172
    iget-byte v2, v1, Landroid/hardware/usb/PortStatus;->currentDataRole:B

    .line 1173
    .line 1174
    const/4 v3, 0x1

    .line 1175
    if-ne v2, v3, :cond_1f

    .line 1176
    .line 1177
    move-object/from16 v3, p0

    .line 1178
    .line 1179
    iget v5, v3, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->preDataRole:I

    .line 1180
    .line 1181
    if-eqz v5, :cond_1e

    .line 1182
    .line 1183
    if-ne v5, v4, :cond_20

    .line 1184
    .line 1185
    :cond_1e
    iget-object v4, v3, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 1186
    .line 1187
    invoke-virtual {v4}, Lcom/android/server/usb/UsbPortManager;->startBoost()V

    .line 1188
    .line 1189
    .line 1190
    goto :goto_16

    .line 1191
    :cond_1f
    move-object/from16 v3, p0

    .line 1192
    .line 1193
    :cond_20
    iget v5, v3, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->preDataRole:I

    .line 1194
    .line 1195
    const/4 v6, 0x1

    .line 1196
    if-ne v5, v6, :cond_22

    .line 1197
    .line 1198
    if-eqz v2, :cond_21

    .line 1199
    .line 1200
    if-ne v2, v4, :cond_22

    .line 1201
    .line 1202
    :cond_21
    iget-object v4, v3, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 1203
    .line 1204
    invoke-virtual {v4}, Lcom/android/server/usb/UsbPortManager;->stopBoost()V

    .line 1205
    .line 1206
    .line 1207
    :cond_22
    :goto_16
    iput v2, v3, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->preDataRole:I

    .line 1208
    .line 1209
    iget-object v2, v3, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 1210
    .line 1211
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1212
    .line 1213
    const-string v5, "ClientCallback AIDL V1: "

    .line 1214
    .line 1215
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1216
    .line 1217
    .line 1218
    iget-object v1, v1, Landroid/hardware/usb/PortStatus;->portName:Ljava/lang/String;

    .line 1219
    .line 1220
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1221
    .line 1222
    .line 1223
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1224
    .line 1225
    .line 1226
    move-result-object v1

    .line 1227
    const/4 v4, 0x4

    .line 1228
    invoke-static {v4, v2, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 1229
    .line 1230
    .line 1231
    add-int/lit8 v1, p3, 0x1

    .line 1232
    .line 1233
    move-object v2, v0

    .line 1234
    move v12, v4

    .line 1235
    const/4 v6, 0x1

    .line 1236
    move-object/from16 v0, p1

    .line 1237
    .line 1238
    move v4, v1

    .line 1239
    move-object v1, v3

    .line 1240
    move/from16 v3, p2

    .line 1241
    .line 1242
    goto/16 :goto_9

    .line 1243
    .line 1244
    :cond_23
    move-object v3, v1

    .line 1245
    move-object v0, v2

    .line 1246
    iget-object v1, v3, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 1247
    .line 1248
    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbPortManager;->updatePorts(Ljava/util/ArrayList;)V

    .line 1249
    .line 1250
    .line 1251
    :goto_17
    const/4 v1, 0x1

    .line 1252
    :goto_18
    return v1

    .line 1253
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_11
        :pswitch_10
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public final toContaminantProtectionStatus(B)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-eq p1, v1, :cond_2

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    if-eq p1, v1, :cond_2

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    const/4 v2, 0x4

    .line 12
    if-eq p1, v1, :cond_1

    .line 13
    .line 14
    if-eq p1, v2, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v2, "Unrecognized aidlContaminantProtection:"

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/4 v1, 0x6

    .line 33
    invoke-static {v1, p0, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return v0

    .line 37
    :cond_0
    const/16 p0, 0x8

    .line 38
    .line 39
    return p0

    .line 40
    :cond_1
    return v2

    .line 41
    :cond_2
    return v1

    .line 42
    :cond_3
    return v0
.end method

.method public final toPortMode(B)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-eq p1, v1, :cond_1

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    if-eq p1, v1, :cond_1

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    if-eq p1, v1, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    if-eq p1, v1, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x5

    .line 17
    if-eq p1, v1, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v2, "Unrecognized aidlPortMode:"

    .line 24
    .line 25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const/4 v1, 0x6

    .line 36
    invoke-static {v1, p0, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return v0

    .line 40
    :cond_0
    const/16 p0, 0x8

    .line 41
    .line 42
    return p0

    .line 43
    :cond_1
    return v1

    .line 44
    :cond_2
    return v0
.end method
