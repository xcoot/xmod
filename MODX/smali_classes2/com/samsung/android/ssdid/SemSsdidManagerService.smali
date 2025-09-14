.class public final Lcom/samsung/android/ssdid/SemSsdidManagerService;
.super Lcom/samsung/android/ssdid/ISemSsdidManagerService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mSsdid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/ssdid/ISemSsdidManagerService$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/samsung/android/ssdid/SemSsdidManagerService;->mSsdid:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/samsung/android/ssdid/SemSsdidManagerService;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    const-string p0, "SemSsdidManagerService"

    .line 11
    .line 12
    const-string/jumbo p1, "start"

    .line 13
    .line 14
    .line 15
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final getSsdid()Ljava/lang/String;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "invalid "

    .line 4
    .line 5
    iget-object v2, v1, Lcom/samsung/android/ssdid/SemSsdidManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string v3, "com.samsung.android.permission.READ_SSDID"

    .line 8
    .line 9
    const-string/jumbo v4, "required permissions"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v2, v1, Lcom/samsung/android/ssdid/SemSsdidManagerService;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    const-string v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 18
    .line 19
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v2, v1, Lcom/samsung/android/ssdid/SemSsdidManagerService;->mSsdid:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const-string v3, "SemSsdidManagerService"

    .line 29
    .line 30
    if-eqz v2, :cond_f

    .line 31
    .line 32
    const-string/jumbo v2, "ro.security.keystore.keytype"

    .line 33
    .line 34
    .line 35
    const-string v4, ""

    .line 36
    .line 37
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const-string/jumbo v5, "sakv2"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    const-string/jumbo v7, "sakm"

    .line 49
    .line 50
    .line 51
    const/4 v8, 0x0

    .line 52
    if-eqz v6, :cond_0

    .line 53
    .line 54
    move-object v2, v5

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_1

    .line 61
    .line 62
    const-string/jumbo v2, "ro.product.first_api_level"

    .line 63
    .line 64
    .line 65
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    const/16 v6, 0x22

    .line 70
    .line 71
    if-lt v2, v6, :cond_1

    .line 72
    .line 73
    const-string v2, "m55xq"

    .line 74
    .line 75
    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-nez v2, :cond_1

    .line 82
    .line 83
    move-object v2, v7

    .line 84
    goto :goto_0

    .line 85
    :cond_1
    move-object v2, v4

    .line 86
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    const-string v9, ","

    .line 91
    .line 92
    const/4 v10, 0x0

    .line 93
    if-nez v6, :cond_a

    .line 94
    .line 95
    :try_start_0
    new-instance v6, Lcom/samsung/android/security/keystore/AttestationUtils;

    .line 96
    .line 97
    invoke-direct {v6}, Lcom/samsung/android/security/keystore/AttestationUtils;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v11

    .line 104
    if-eqz v11, :cond_2

    .line 105
    .line 106
    new-array v0, v8, [B

    .line 107
    .line 108
    invoke-virtual {v6, v3, v0}, Lcom/samsung/android/security/keystore/AttestationUtils;->generateKeyPair(Ljava/lang/String;[B)Ljava/security/KeyPair;

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    goto/16 :goto_6

    .line 114
    .line 115
    :cond_2
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    if-eqz v7, :cond_8

    .line 120
    .line 121
    new-array v12, v8, [B

    .line 122
    .line 123
    new-instance v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 124
    .line 125
    const/4 v7, 0x4

    .line 126
    invoke-direct {v0, v3, v7}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    .line 127
    .line 128
    .line 129
    const-string v17, "SHA-384"

    .line 130
    .line 131
    const-string v18, "SHA-512"

    .line 132
    .line 133
    const-string v13, "NONE"

    .line 134
    .line 135
    const-string v14, "SHA-1"

    .line 136
    .line 137
    const-string v15, "SHA-224"

    .line 138
    .line 139
    const-string v16, "SHA-256"

    .line 140
    .line 141
    filled-new-array/range {v13 .. v18}, [Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    invoke-virtual {v0, v7}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    .line 150
    .line 151
    .line 152
    move-result-object v16

    .line 153
    new-instance v0, Lcom/samsung/android/security/keystore/AttestParameterSpec;

    .line 154
    .line 155
    const/4 v14, 0x0

    .line 156
    const/4 v15, 0x1

    .line 157
    const/4 v13, 0x0

    .line 158
    move-object v11, v0

    .line 159
    invoke-direct/range {v11 .. v16}, Lcom/samsung/android/security/keystore/AttestParameterSpec;-><init>([BZZZLandroid/security/keystore/KeyGenParameterSpec;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v6, v0}, Lcom/samsung/android/security/keystore/AttestationUtils;->generateKeyPair(Lcom/samsung/android/security/keystore/AttestParameterSpec;)Ljava/security/KeyPair;

    .line 163
    .line 164
    .line 165
    :goto_1
    invoke-static {v3}, Lcom/samsung/android/security/keystore/AttestationUtils;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    aget-object v0, v0, v8

    .line 170
    .line 171
    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 172
    .line 173
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    if-eqz v2, :cond_3

    .line 178
    .line 179
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    goto :goto_2

    .line 184
    :cond_3
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    :goto_2
    if-eqz v0, :cond_4

    .line 189
    .line 190
    invoke-interface {v0}, Ljava/security/Principal;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    goto :goto_3

    .line 199
    :cond_4
    move-object v0, v10

    .line 200
    :goto_3
    if-eqz v0, :cond_7

    .line 201
    .line 202
    array-length v2, v0

    .line 203
    :goto_4
    if-ge v8, v2, :cond_6

    .line 204
    .line 205
    aget-object v5, v0, v8

    .line 206
    .line 207
    const-string v6, "UID"

    .line 208
    .line 209
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 210
    .line 211
    .line 212
    move-result v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/ProviderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    if-eqz v6, :cond_5

    .line 214
    .line 215
    move-object v10, v5

    .line 216
    goto :goto_5

    .line 217
    :cond_5
    add-int/lit8 v8, v8, 0x1

    .line 218
    .line 219
    goto :goto_4

    .line 220
    :cond_6
    :goto_5
    const-string/jumbo v0, "sakUid: "

    .line 221
    .line 222
    .line 223
    invoke-static {v0, v10, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    if-eqz v10, :cond_9

    .line 227
    .line 228
    const-string v0, "\""

    .line 229
    .line 230
    invoke-virtual {v10, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    const-string v2, ":"

    .line 235
    .line 236
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    array-length v2, v0

    .line 241
    add-int/lit8 v2, v2, -0x1

    .line 242
    .line 243
    aget-object v4, v0, v2

    .line 244
    .line 245
    goto :goto_7

    .line 246
    :cond_7
    :try_start_1
    const-string/jumbo v0, "not found UID in sak"

    .line 247
    .line 248
    .line 249
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .line 251
    .line 252
    goto :goto_7

    .line 253
    :cond_8
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/ProviderException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 258
    .line 259
    .line 260
    goto :goto_7

    .line 261
    :goto_6
    const-string v2, "exception"

    .line 262
    .line 263
    invoke-static {v3, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    .line 265
    .line 266
    :cond_9
    :goto_7
    iput-object v4, v1, Lcom/samsung/android/ssdid/SemSsdidManagerService;->mSsdid:Ljava/lang/String;

    .line 267
    .line 268
    goto/16 :goto_d

    .line 269
    .line 270
    :cond_a
    const-string v0, "getSsdid: can not read SAK"

    .line 271
    .line 272
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .line 274
    .line 275
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    if-eqz v0, :cond_b

    .line 280
    .line 281
    const-string/jumbo v2, "unknown"

    .line 282
    .line 283
    .line 284
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result v2

    .line 288
    if-nez v2, :cond_b

    .line 289
    .line 290
    goto :goto_b

    .line 291
    :cond_b
    const-string v0, "/efs/FactoryApp/serial_no"

    .line 292
    .line 293
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    .line 294
    .line 295
    new-instance v5, Ljava/io/FileReader;

    .line 296
    .line 297
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 298
    .line 299
    invoke-direct {v5, v0, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 300
    .line 301
    .line 302
    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 303
    .line 304
    .line 305
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 309
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 310
    .line 311
    .line 312
    goto :goto_a

    .line 313
    :catch_1
    move-exception v0

    .line 314
    goto :goto_9

    .line 315
    :catchall_0
    move-exception v0

    .line 316
    move-object v5, v0

    .line 317
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 318
    .line 319
    .line 320
    goto :goto_8

    .line 321
    :catchall_1
    move-exception v0

    .line 322
    move-object v2, v0

    .line 323
    :try_start_6
    invoke-virtual {v5, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 324
    .line 325
    .line 326
    :goto_8
    throw v5
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 327
    :goto_9
    const-string v2, "exception in readFromFile"

    .line 328
    .line 329
    invoke-static {v3, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    .line 331
    .line 332
    move-object v0, v10

    .line 333
    :goto_a
    if-eqz v0, :cond_c

    .line 334
    .line 335
    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    aget-object v0, v0, v8

    .line 340
    .line 341
    goto :goto_b

    .line 342
    :cond_c
    move-object v0, v10

    .line 343
    :goto_b
    iget-object v2, v1, Lcom/samsung/android/ssdid/SemSsdidManagerService;->mContext:Landroid/content/Context;

    .line 344
    .line 345
    const-string/jumbo v5, "sem_wifi"

    .line 346
    .line 347
    .line 348
    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v2

    .line 352
    check-cast v2, Lcom/samsung/android/wifi/SemWifiManager;

    .line 353
    .line 354
    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiManager;->getFactoryMacAddress()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    if-eqz v0, :cond_e

    .line 359
    .line 360
    if-eqz v2, :cond_e

    .line 361
    .line 362
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    if-nez v0, :cond_d

    .line 367
    .line 368
    goto :goto_c

    .line 369
    :cond_d
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 370
    .line 371
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    :try_start_7
    const-string v2, "SHA-256"

    .line 376
    .line 377
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 378
    .line 379
    .line 380
    move-result-object v2

    .line 381
    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    .line 385
    .line 386
    .line 387
    move-result-object v10
    :try_end_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_2

    .line 388
    goto :goto_c

    .line 389
    :catch_2
    move-exception v0

    .line 390
    const-string v2, "exception during hash"

    .line 391
    .line 392
    invoke-static {v3, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 393
    .line 394
    .line 395
    :goto_c
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    invoke-virtual {v0, v10}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v4

    .line 403
    :cond_e
    iput-object v4, v1, Lcom/samsung/android/ssdid/SemSsdidManagerService;->mSsdid:Ljava/lang/String;

    .line 404
    .line 405
    :cond_f
    :goto_d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 406
    .line 407
    const-string v2, "getSsdid: "

    .line 408
    .line 409
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    iget-object v2, v1, Lcom/samsung/android/ssdid/SemSsdidManagerService;->mSsdid:Ljava/lang/String;

    .line 413
    .line 414
    invoke-static {v0, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    iget-object v0, v1, Lcom/samsung/android/ssdid/SemSsdidManagerService;->mSsdid:Ljava/lang/String;

    .line 418
    .line 419
    return-object v0
.end method
