.class public final Lcom/samsung/android/security/keystore/AttestationUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mKeyStore:Landroid/security/KeyStore2;

.field public mSamsungAttestationBinder:Landroid/security/samsungattestation/ISamsungAttestation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/security/keystore/AttestationUtils;->mSamsungAttestationBinder:Landroid/security/samsungattestation/ISamsungAttestation;

    .line 6
    .line 7
    invoke-static {}, Landroid/security/KeyStore2;->getInstance()Landroid/security/KeyStore2;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/samsung/android/security/keystore/AttestationUtils;->mKeyStore:Landroid/security/KeyStore2;

    .line 12
    .line 13
    return-void
.end method

.method public static constructAttestationArguments(Lcom/samsung/android/security/keystore/AttestParameterSpec;)[Landroid/hardware/security/keymint/KeyParameter;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_11

    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec;->mChallenge:[B

    .line 16
    .line 17
    if-eqz v0, :cond_10

    .line 18
    .line 19
    new-instance v2, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    const v3, -0x6ffffd3c

    .line 25
    .line 26
    .line 27
    invoke-static {v3, v0}, Lcom/samsung/android/security/keystore/AttestationUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    iget-boolean v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec;->mDeviceAttestation:Z

    .line 35
    .line 36
    const v3, -0x6ffff7ca

    .line 37
    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    const-string/jumbo v0, "samsungDeviceIds"

    .line 42
    .line 43
    .line 44
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 45
    .line 46
    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v3, v0}, Lcom/samsung/android/security/keystore/AttestationUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const-string/jumbo v0, "samsung"

    .line 59
    .line 60
    .line 61
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 62
    .line 63
    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v3, v0}, Lcom/samsung/android/security/keystore/AttestationUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    :goto_0
    if-eqz v1, :cond_1

    .line 75
    .line 76
    const-string v0, "RFC1779"

    .line 77
    .line 78
    invoke-virtual {v1, v0}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-nez v3, :cond_1

    .line 87
    .line 88
    invoke-virtual {v1, v0}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    const v1, -0x6ffff7c9

    .line 99
    .line 100
    .line 101
    invoke-static {v1, v0}, Lcom/samsung/android/security/keystore/AttestationUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec;->mVerifiableIntegrity:Z

    .line 109
    .line 110
    const-string v1, "AttestationUtils"

    .line 111
    .line 112
    if-eqz v0, :cond_b

    .line 113
    .line 114
    const v0, 0x700008fe

    .line 115
    .line 116
    .line 117
    invoke-static {v0}, Lcom/samsung/android/security/keystore/AttestationUtils;->makeBool(I)Landroid/hardware/security/keymint/KeyParameter;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    if-eqz v0, :cond_a

    .line 129
    .line 130
    iget-object v3, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec;->mPackageName:Ljava/lang/String;

    .line 131
    .line 132
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    if-eqz v4, :cond_2

    .line 137
    .line 138
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    const/4 v5, 0x0

    .line 147
    if-eqz v4, :cond_3

    .line 148
    .line 149
    const-string/jumbo v0, "packageName is null"

    .line 150
    .line 151
    .line 152
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    goto/16 :goto_4

    .line 156
    .line 157
    :cond_3
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    const/high16 v4, 0x8000000

    .line 162
    .line 163
    const/4 v6, 0x0

    .line 164
    :try_start_0
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 165
    .line 166
    .line 167
    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 168
    if-nez v0, :cond_4

    .line 169
    .line 170
    const-string/jumbo v0, "pkgInfo is null"

    .line 171
    .line 172
    .line 173
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_4
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 178
    .line 179
    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    array-length v4, v0

    .line 184
    new-array v4, v4, [Ljava/security/PublicKey;

    .line 185
    .line 186
    array-length v7, v0

    .line 187
    move v8, v6

    .line 188
    move v9, v8

    .line 189
    :goto_1
    if-ge v8, v7, :cond_5

    .line 190
    .line 191
    aget-object v10, v0, v8

    .line 192
    .line 193
    :try_start_1
    invoke-virtual {v10}, Landroid/content/pm/Signature;->getPublicKey()Ljava/security/PublicKey;

    .line 194
    .line 195
    .line 196
    move-result-object v10

    .line 197
    aput-object v10, v4, v9
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 198
    .line 199
    add-int/lit8 v9, v9, 0x1

    .line 200
    .line 201
    add-int/lit8 v8, v8, 0x1

    .line 202
    .line 203
    goto :goto_1

    .line 204
    :catch_0
    move-exception v0

    .line 205
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    .line 206
    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_5
    move-object v5, v4

    .line 210
    goto :goto_2

    .line 211
    :catch_1
    move-exception v0

    .line 212
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 213
    .line 214
    .line 215
    :goto_2
    if-nez v5, :cond_6

    .line 216
    .line 217
    const-string/jumbo v0, "pubKeys is null"

    .line 218
    .line 219
    .line 220
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .line 222
    .line 223
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 224
    .line 225
    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    goto :goto_4

    .line 230
    :cond_6
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 231
    .line 232
    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 237
    .line 238
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 239
    .line 240
    .line 241
    array-length v4, v0

    .line 242
    invoke-virtual {v3, v0, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 243
    .line 244
    .line 245
    array-length v0, v5

    .line 246
    move v4, v6

    .line 247
    :goto_3
    if-ge v4, v0, :cond_8

    .line 248
    .line 249
    aget-object v7, v5, v4

    .line 250
    .line 251
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 252
    .line 253
    const-string v9, ":"

    .line 254
    .line 255
    invoke-virtual {v9, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 256
    .line 257
    .line 258
    move-result-object v9

    .line 259
    array-length v10, v9

    .line 260
    invoke-virtual {v3, v9, v6, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 261
    .line 262
    .line 263
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    .line 264
    .line 265
    .line 266
    move-result-object v9

    .line 267
    invoke-interface {v7}, Ljava/security/PublicKey;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v7

    .line 271
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 272
    .line 273
    .line 274
    move-result v10

    .line 275
    if-nez v10, :cond_7

    .line 276
    .line 277
    :try_start_2
    const-string v10, "SHA-256"

    .line 278
    .line 279
    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 280
    .line 281
    .line 282
    move-result-object v10
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2

    .line 283
    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 284
    .line 285
    .line 286
    move-result-object v7

    .line 287
    invoke-virtual {v10, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v10}, Ljava/security/MessageDigest;->digest()[B

    .line 291
    .line 292
    .line 293
    move-result-object v7

    .line 294
    invoke-virtual {v9, v7}, Ljava/util/Base64$Encoder;->encode([B)[B

    .line 295
    .line 296
    .line 297
    move-result-object v7

    .line 298
    array-length v8, v7

    .line 299
    invoke-virtual {v3, v7, v6, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 300
    .line 301
    .line 302
    add-int/lit8 v4, v4, 0x1

    .line 303
    .line 304
    goto :goto_3

    .line 305
    :catch_2
    move-exception p0

    .line 306
    new-instance v0, Ljava/security/ProviderException;

    .line 307
    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    .line 309
    .line 310
    const-string v2, "NoSuchAlgorithmException : "

    .line 311
    .line 312
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object p0

    .line 319
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object p0

    .line 326
    invoke-direct {v0, p0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    throw v0

    .line 330
    :cond_7
    new-instance p0, Ljava/lang/NullPointerException;

    .line 331
    .line 332
    const-string/jumbo v0, "msg == null"

    .line 333
    .line 334
    .line 335
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    throw p0

    .line 339
    :cond_8
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 340
    .line 341
    .line 342
    move-result-object v5

    .line 343
    :goto_4
    if-eqz v5, :cond_9

    .line 344
    .line 345
    const v0, -0x6ffff701

    .line 346
    .line 347
    .line 348
    invoke-static {v0, v5}, Lcom/samsung/android/security/keystore/AttestationUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    goto :goto_5

    .line 356
    :cond_9
    const-string v0, "constructAttestationArguments : Auth package byte is null"

    .line 357
    .line 358
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    .line 360
    .line 361
    goto :goto_5

    .line 362
    :cond_a
    const-string v0, "constructAttestationArguments : could not found application"

    .line 363
    .line 364
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    .line 366
    .line 367
    :cond_b
    :goto_5
    iget-boolean v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec;->mDevicePropertiesAttestationIncluded:Z

    .line 368
    .line 369
    if-eqz v0, :cond_c

    .line 370
    .line 371
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 372
    .line 373
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 374
    .line 375
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    const v4, -0x6ffffd3a

    .line 380
    .line 381
    .line 382
    invoke-static {v4, v0}, Lcom/samsung/android/security/keystore/AttestationUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 390
    .line 391
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    const v4, -0x6ffffd39

    .line 396
    .line 397
    .line 398
    invoke-static {v4, v0}, Lcom/samsung/android/security/keystore/AttestationUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 406
    .line 407
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    const v4, -0x6ffffd38

    .line 412
    .line 413
    .line 414
    invoke-static {v4, v0}, Lcom/samsung/android/security/keystore/AttestationUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    .line 420
    .line 421
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 422
    .line 423
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    const v4, -0x6ffffd34

    .line 428
    .line 429
    .line 430
    invoke-static {v4, v0}, Lcom/samsung/android/security/keystore/AttestationUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 438
    .line 439
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    const v3, -0x6ffffd33

    .line 444
    .line 445
    .line 446
    invoke-static {v3, v0}, Lcom/samsung/android/security/keystore/AttestationUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    .line 452
    .line 453
    :cond_c
    iget-boolean v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec;->mSAKUidRequired:Z

    .line 454
    .line 455
    if-eqz v0, :cond_e

    .line 456
    .line 457
    const-string v0, "constructAttestationArguments : set SAK UID required"

    .line 458
    .line 459
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    .line 461
    .line 462
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    const-string/jumbo v3, "samsung.software.sakm_uid"

    .line 475
    .line 476
    .line 477
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 478
    .line 479
    .line 480
    move-result v0

    .line 481
    if-nez v0, :cond_d

    .line 482
    .line 483
    const-string v0, "constructAttestationArguments : setSAKUidRequired API does not be supported in this model. This API is supported only in JDM models and the first API level needs to be higher than 34."

    .line 484
    .line 485
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    .line 487
    .line 488
    goto :goto_6

    .line 489
    :cond_d
    const v0, 0x700009c4

    .line 490
    .line 491
    .line 492
    invoke-static {v0}, Lcom/samsung/android/security/keystore/AttestationUtils;->makeBool(I)Landroid/hardware/security/keymint/KeyParameter;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    .line 498
    .line 499
    :cond_e
    :goto_6
    iget-object p0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec;->mExtendedKeyUsage:Ljava/lang/String;

    .line 500
    .line 501
    if-eqz p0, :cond_f

    .line 502
    .line 503
    const-string v0, "constructAttestationArguments : EKU is setted with "

    .line 504
    .line 505
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v0

    .line 509
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    .line 511
    .line 512
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 513
    .line 514
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 515
    .line 516
    .line 517
    move-result-object p0

    .line 518
    const v0, -0x6ffff7c7

    .line 519
    .line 520
    .line 521
    invoke-static {v0, p0}, Lcom/samsung/android/security/keystore/AttestationUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    .line 522
    .line 523
    .line 524
    move-result-object p0

    .line 525
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    .line 527
    .line 528
    :cond_f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 529
    .line 530
    .line 531
    move-result p0

    .line 532
    new-array p0, p0, [Landroid/hardware/security/keymint/KeyParameter;

    .line 533
    .line 534
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    move-result-object p0

    .line 538
    check-cast p0, [Landroid/hardware/security/keymint/KeyParameter;

    .line 539
    .line 540
    return-object p0

    .line 541
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 542
    .line 543
    const-string v0, "constructAttestationArguments : The challenge cannot be null"

    .line 544
    .line 545
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 546
    .line 547
    .line 548
    throw p0

    .line 549
    :cond_11
    new-instance p0, Ljava/lang/NullPointerException;

    .line 550
    .line 551
    const-string v0, "constructAttestationArguments : alias == null"

    .line 552
    .line 553
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 554
    .line 555
    .line 556
    throw p0
.end method

.method public static deleteKey(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "AndroidKeyStore"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    .line 18
    .line 19
    new-instance v0, Ljava/security/KeyStoreException;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-direct {v0, p0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0
.end method

.method public static getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "AndroidKeyStore"

    .line 3
    .line 4
    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p0}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    .line 12
    .line 13
    .line 14
    move-result-object p0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-object p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public static getKeyStoreException(I)Landroid/security/KeyStoreException;
    .locals 2

    .line 1
    if-lez p0, :cond_7

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    if-eq p0, v0, :cond_6

    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    if-eq p0, v0, :cond_5

    .line 8
    .line 9
    const/4 v0, 0x4

    .line 10
    if-eq p0, v0, :cond_4

    .line 11
    .line 12
    const/4 v0, 0x6

    .line 13
    if-eq p0, v0, :cond_3

    .line 14
    .line 15
    const/4 v0, 0x7

    .line 16
    if-eq p0, v0, :cond_2

    .line 17
    .line 18
    const/16 v0, 0x8

    .line 19
    .line 20
    if-eq p0, v0, :cond_1

    .line 21
    .line 22
    const/16 v0, 0x11

    .line 23
    .line 24
    if-eq p0, v0, :cond_0

    .line 25
    .line 26
    new-instance v0, Landroid/security/KeyStoreException;

    .line 27
    .line 28
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-object v0

    .line 36
    :cond_0
    new-instance v0, Landroid/security/KeyStoreException;

    .line 37
    .line 38
    const-string v1, "Key permanently invalidated"

    .line 39
    .line 40
    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_1
    new-instance v0, Landroid/security/KeyStoreException;

    .line 45
    .line 46
    const-string v1, "Key blob corrupted"

    .line 47
    .line 48
    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object v0

    .line 52
    :cond_2
    new-instance v0, Landroid/security/KeyStoreException;

    .line 53
    .line 54
    const-string v1, "Key not found"

    .line 55
    .line 56
    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-object v0

    .line 60
    :cond_3
    new-instance v0, Landroid/security/KeyStoreException;

    .line 61
    .line 62
    const-string v1, "Permission denied"

    .line 63
    .line 64
    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-object v0

    .line 68
    :cond_4
    new-instance v0, Landroid/security/KeyStoreException;

    .line 69
    .line 70
    const-string v1, "System error"

    .line 71
    .line 72
    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-object v0

    .line 76
    :cond_5
    new-instance v0, Landroid/security/KeyStoreException;

    .line 77
    .line 78
    const-string v1, "Keystore not initialized"

    .line 79
    .line 80
    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-object v0

    .line 84
    :cond_6
    new-instance v0, Landroid/security/KeyStoreException;

    .line 85
    .line 86
    const-string v1, "User authentication required"

    .line 87
    .line 88
    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return-object v0

    .line 92
    :cond_7
    const/16 v0, -0x10

    .line 93
    .line 94
    if-eq p0, v0, :cond_8

    .line 95
    .line 96
    new-instance v0, Landroid/security/KeyStoreException;

    .line 97
    .line 98
    invoke-static {p0}, Landroid/security/keymaster/KeymasterDefs;->getErrorMessage(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    .line 103
    .line 104
    .line 105
    return-object v0

    .line 106
    :cond_8
    new-instance v0, Landroid/security/KeyStoreException;

    .line 107
    .line 108
    const-string v1, "Invalid user authentication validity duration"

    .line 109
    .line 110
    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    .line 111
    .line 112
    .line 113
    return-object v0
.end method

.method public static makeBool(I)Landroid/hardware/security/keymint/KeyParameter;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x70000000

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroid/hardware/security/keymint/KeyParameter;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    .line 12
    .line 13
    .line 14
    iput p0, v0, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    invoke-static {p0}, Landroid/hardware/security/keymint/KeyParameterValue;->boolValue(Z)Landroid/hardware/security/keymint/KeyParameterValue;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    iput-object p0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    const-string v1, "Not a boolean tag: "

    .line 27
    .line 28
    invoke-static {p0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0
.end method

.method public static makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, -0x70000000

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroid/hardware/security/keymint/KeyParameter;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    .line 12
    .line 13
    .line 14
    iput p0, v0, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    .line 15
    .line 16
    invoke-static {p1}, Landroid/hardware/security/keymint/KeyParameterValue;->blob([B)Landroid/hardware/security/keymint/KeyParameterValue;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    iput-object p0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    const-string v0, "Not a bytes tag: "

    .line 26
    .line 27
    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1
.end method


# virtual methods
.method public final attestKey(Lcom/samsung/android/security/keystore/AttestParameterSpec;)Ljava/lang/Iterable;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/samsung/android/security/keystore/AttestationUtils;->constructAttestationArguments(Lcom/samsung/android/security/keystore/AttestParameterSpec;)[Landroid/hardware/security/keymint/KeyParameter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    iget-boolean v1, p1, Lcom/samsung/android/security/keystore/AttestParameterSpec;->mDeviceAttestation:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Lcom/samsung/android/security/keystore/AttestationUtils;->constructAttestationArguments(Lcom/samsung/android/security/keystore/AttestParameterSpec;)[Landroid/hardware/security/keymint/KeyParameter;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object p1, p1, Lcom/samsung/android/security/keystore/AttestParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/security/keystore/AttestationUtils;->tryAttestation(Ljava/lang/String;[Landroid/hardware/security/keymint/KeyParameter;)Ljava/util/Collection;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_0
    iget-object p1, p1, Lcom/samsung/android/security/keystore/AttestParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/security/keystore/AttestationUtils;->tryAttestation(Ljava/lang/String;[Landroid/hardware/security/keymint/KeyParameter;)Ljava/util/Collection;

    .line 31
    .line 32
    .line 33
    move-result-object p0
    :try_end_0
    .catch Lcom/samsung/android/security/keystore/DeviceIdAttestationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return-object p0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 37
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v1, "Incompatible argument detected: "

    .line 41
    .line 42
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1
.end method

.method public final generateKeyPair(Lcom/samsung/android/security/keystore/AttestParameterSpec;)Ljava/security/KeyPair;
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/samsung/android/security/keystore/AttestParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 2
    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getUid()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 4
    :try_start_0
    iget-object v2, p1, Lcom/samsung/android/security/keystore/AttestParameterSpec;->mAlgorithm:Ljava/lang/String;

    .line 5
    const-string v3, "AndroidKeyStore"

    invoke-static {v2, v3}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v2

    .line 6
    invoke-virtual {v2, v0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 7
    invoke-virtual {v2}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    .line 8
    iget-boolean v2, p1, Lcom/samsung/android/security/keystore/AttestParameterSpec;->mDeviceAttestation:Z

    if-eqz v2, :cond_0

    .line 9
    invoke-static {p1}, Lcom/samsung/android/security/keystore/AttestationUtils;->constructAttestationArguments(Lcom/samsung/android/security/keystore/AttestParameterSpec;)[Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    .line 10
    iget-object p1, p1, Lcom/samsung/android/security/keystore/AttestParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 11
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/security/keystore/AttestationUtils;->tryAttestation(Ljava/lang/String;[Landroid/hardware/security/keymint/KeyParameter;)Ljava/util/Collection;

    move-result-object p1

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/security/keystore/AttestationUtils;->attestKey(Lcom/samsung/android/security/keystore/AttestParameterSpec;)Ljava/lang/Iterable;

    move-result-object p1

    .line 13
    :goto_0
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/security/keystore/AttestationUtils;->storeCertificateChain(Ljava/lang/String;Ljava/lang/Iterable;)V
    :try_end_0
    .catch Lcom/samsung/android/security/keystore/DeviceIdAttestationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 15
    new-instance p1, Ljava/security/ProviderException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_1
    new-instance p0, Ljava/security/ProviderException;

    const-string p1, "Cannot generate key pair with empty alias or specified uid."

    invoke-direct {p0, p1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final generateKeyPair(Ljava/lang/String;[B)Ljava/security/KeyPair;
    .locals 8

    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 18
    new-instance v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string v6, "SHA-384"

    const-string v7, "SHA-512"

    const-string v2, "NONE"

    const-string v3, "SHA-1"

    const-string v4, "SHA-224"

    const-string v5, "SHA-256"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v5

    .line 21
    new-instance p1, Lcom/samsung/android/security/keystore/AttestParameterSpec;

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, p2

    move v2, v4

    move v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/security/keystore/AttestParameterSpec;-><init>([BZZZLandroid/security/keystore/KeyGenParameterSpec;)V

    .line 22
    invoke-virtual {p0, p1}, Lcom/samsung/android/security/keystore/AttestationUtils;->generateKeyPair(Lcom/samsung/android/security/keystore/AttestParameterSpec;)Ljava/security/KeyPair;

    move-result-object p0

    return-object p0

    .line 23
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "challenge == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 24
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "alias must not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final handleRemoteExceptionSamsungAttestation(Lcom/samsung/android/security/keystore/AttestationUtils$$ExternalSyntheticLambda0;)Ljava/lang/Object;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/security/keystore/AttestationUtils;->mSamsungAttestationBinder:Landroid/security/samsungattestation/ISamsungAttestation;

    .line 3
    .line 4
    if-nez v0, :cond_2

    .line 5
    .line 6
    const-string v0, "android.security.samsungattestation"

    .line 7
    .line 8
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget v1, Landroid/security/samsungattestation/ISamsungAttestation$Stub;->$r8$clinit:I

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v1, "android.security.samsungattestation.ISamsungAttestation"

    .line 19
    .line 20
    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    instance-of v2, v1, Landroid/security/samsungattestation/ISamsungAttestation;

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    move-object v0, v1

    .line 31
    check-cast v0, Landroid/security/samsungattestation/ISamsungAttestation;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    new-instance v1, Landroid/security/samsungattestation/ISamsungAttestation$Stub$Proxy;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, v1, Landroid/security/samsungattestation/ISamsungAttestation$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 40
    .line 41
    move-object v0, v1

    .line 42
    :goto_0
    iput-object v0, p0, Lcom/samsung/android/security/keystore/AttestationUtils;->mSamsungAttestationBinder:Landroid/security/samsungattestation/ISamsungAttestation;

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/security/keystore/AttestationUtils;->mSamsungAttestationBinder:Landroid/security/samsungattestation/ISamsungAttestation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    monitor-exit p0

    .line 50
    :try_start_1
    invoke-virtual {p1, v0}, Lcom/samsung/android/security/keystore/AttestationUtils$$ExternalSyntheticLambda0;->execute(Landroid/security/samsungattestation/ISamsungAttestation;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 54
    return-object p0

    .line 55
    :catch_0
    move-exception p0

    .line 56
    const-string p1, "AttestationUtils"

    .line 57
    .line 58
    const-string v0, "Cannot connect to SamsungKeystore daemon."

    .line 59
    .line 60
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    .line 62
    .line 63
    new-instance p0, Landroid/security/KeyStoreException;

    .line 64
    .line 65
    const/4 p1, 0x4

    .line 66
    const-string v0, ""

    .line 67
    .line 68
    invoke-direct {p0, p1, v0}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p0

    .line 72
    :catch_1
    move-exception p0

    .line 73
    const-string p1, "AttestationUtils"

    .line 74
    .line 75
    const-string v0, "KeyStore exception"

    .line 76
    .line 77
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    .line 79
    .line 80
    new-instance p1, Landroid/security/KeyStoreException;

    .line 81
    .line 82
    iget p0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    .line 83
    .line 84
    const-string v0, ""

    .line 85
    .line 86
    invoke-direct {p1, p0, v0}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p1

    .line 90
    :goto_2
    monitor-exit p0

    .line 91
    throw p1
.end method

.method public final storeCertificateChain(Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_4

    .line 6
    .line 7
    :try_start_0
    const-string v0, "AndroidKeyStore"

    .line 8
    .line 9
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    const-string p0, "AttestationUtils"

    .line 34
    .line 35
    const-string/jumbo p1, "there is no cert chain byte"

    .line 36
    .line 37
    .line 38
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, [B

    .line 47
    .line 48
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_1

    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .line 56
    .line 57
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 58
    .line 59
    .line 60
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    const/4 v4, 0x0

    .line 65
    if-eqz v3, :cond_2

    .line 66
    .line 67
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, [B

    .line 72
    .line 73
    array-length v5, v3

    .line 74
    invoke-virtual {v2, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    :try_start_1
    new-instance p2, Landroid/system/keystore2/KeyDescriptor;

    .line 79
    .line 80
    invoke-direct {p2}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    .line 81
    .line 82
    .line 83
    iput v4, p2, Landroid/system/keystore2/KeyDescriptor;->domain:I

    .line 84
    .line 85
    const-wide/16 v3, -0x1

    .line 86
    .line 87
    iput-wide v3, p2, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    .line 88
    .line 89
    iput-object p1, p2, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 90
    .line 91
    iput-object v1, p2, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    .line 92
    .line 93
    iget-object p0, p0, Lcom/samsung/android/security/keystore/AttestationUtils;->mKeyStore:Landroid/security/KeyStore2;

    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p0, p2, v0, p1}, Landroid/security/KeyStore2;->updateSubcomponents(Landroid/system/keystore2/KeyDescriptor;[B[B)V
    :try_end_1
    .catch Landroid/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :catch_0
    move-exception p0

    .line 104
    invoke-virtual {p0}, Landroid/security/KeyStoreException;->printStackTrace()V

    .line 105
    .line 106
    .line 107
    new-instance p1, Ljava/security/KeyStoreException;

    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/security/KeyStoreException;->getMessage()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-direct {p1, p0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p1

    .line 117
    :cond_3
    new-instance p0, Ljava/security/KeyStoreException;

    .line 118
    .line 119
    const-string p1, "Entry exists and is not a trusted certificate"

    .line 120
    .line 121
    invoke-direct {p0, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p0

    .line 125
    :catch_1
    move-exception p0

    .line 126
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 127
    .line 128
    .line 129
    new-instance p1, Ljava/security/KeyStoreException;

    .line 130
    .line 131
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-direct {p1, p0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw p1

    .line 139
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    .line 140
    .line 141
    const-string p1, "alias == null"

    .line 142
    .line 143
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw p0
.end method

.method public final tryAttestation(Ljava/lang/String;[Landroid/hardware/security/keymint/KeyParameter;)Ljava/util/Collection;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v1, Landroid/system/keystore2/KeyDescriptor;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    iput v2, v1, Landroid/system/keystore2/KeyDescriptor;->domain:I

    .line 13
    .line 14
    const-wide/16 v3, -0x1

    .line 15
    .line 16
    iput-wide v3, v1, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    .line 17
    .line 18
    iput-object p1, v1, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput-object p1, v1, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    .line 22
    .line 23
    new-instance p1, Lcom/samsung/android/security/keystore/AttestationUtils$$ExternalSyntheticLambda0;

    .line 24
    .line 25
    invoke-direct {p1, v1, p2}, Lcom/samsung/android/security/keystore/AttestationUtils$$ExternalSyntheticLambda0;-><init>(Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/samsung/android/security/keystore/AttestationUtils;->handleRemoteExceptionSamsungAttestation(Lcom/samsung/android/security/keystore/AttestationUtils$$ExternalSyntheticLambda0;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, [Landroid/hardware/security/keymint/Certificate;

    .line 33
    .line 34
    if-eqz p0, :cond_2

    .line 35
    .line 36
    array-length p1, p0

    .line 37
    :goto_0
    if-ge v2, p1, :cond_0

    .line 38
    .line 39
    aget-object p2, p0, v2

    .line 40
    .line 41
    iget-object p2, p2, Landroid/hardware/security/keymint/Certificate;->encodedCertificate:[B

    .line 42
    .line 43
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception p0

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    const/4 p1, 0x3

    .line 56
    if-lt p0, p1, :cond_1

    .line 57
    .line 58
    return-object v0

    .line 59
    :cond_1
    new-instance p0, Ljava/security/ProviderException;

    .line 60
    .line 61
    new-instance p1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string p2, "Attestation certificate chain contained "

    .line 64
    .line 65
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p2, " entries. At least three are required."

    .line 76
    .line 77
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-direct {p0, p1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p0

    .line 88
    :cond_2
    :try_start_1
    new-instance p0, Ljava/lang/NullPointerException;

    .line 89
    .line 90
    const-string p1, "chain == null"

    .line 91
    .line 92
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p0
    :try_end_1
    .catch Landroid/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    :goto_1
    invoke-virtual {p0}, Landroid/security/KeyStoreException;->getErrorCode()I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    const/16 p2, -0x42

    .line 101
    .line 102
    if-ne p1, p2, :cond_3

    .line 103
    .line 104
    new-instance p1, Lcom/samsung/android/security/keystore/DeviceIdAttestationException;

    .line 105
    .line 106
    invoke-virtual {p0}, Landroid/security/KeyStoreException;->getErrorCode()I

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    invoke-static {p0}, Lcom/samsung/android/security/keystore/AttestationUtils;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    const-string p2, "Failed to generate attestation certificate chain with deviceId"

    .line 115
    .line 116
    invoke-direct {p1, p2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    .line 118
    .line 119
    throw p1

    .line 120
    :cond_3
    new-instance p1, Ljava/security/ProviderException;

    .line 121
    .line 122
    invoke-virtual {p0}, Landroid/security/KeyStoreException;->getErrorCode()I

    .line 123
    .line 124
    .line 125
    move-result p0

    .line 126
    invoke-static {p0}, Lcom/samsung/android/security/keystore/AttestationUtils;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    const-string p2, "Failed to generate attestation certificate chain"

    .line 131
    .line 132
    invoke-direct {p1, p2, p0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    .line 134
    .line 135
    throw p1
.end method
