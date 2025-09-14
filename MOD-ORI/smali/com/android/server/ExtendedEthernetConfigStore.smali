.class public final Lcom/android/server/ExtendedEthernetConfigStore;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mIpConfigurations:Landroid/util/ArrayMap;

.field public final mSync:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/ExtendedEthernetConfigStore;->mSync:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/server/ExtendedEthernetConfigStore;->mIpConfigurations:Landroid/util/ArrayMap;

    .line 18
    .line 19
    return-void
.end method

.method public static parseProxyExclusionListString(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string v0, ","

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method


# virtual methods
.method public final loadConfigFileLocked()V
    .locals 18

    .line 1
    const-string v0, "/data/misc/apexdata/com.android.tethering/misc/ethernet/ipconfig.txt"

    .line 2
    .line 3
    const-string v1, "ExtendedEthernetConfigStore"

    .line 4
    .line 5
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    .line 6
    .line 7
    new-instance v3, Ljava/io/FileInputStream;

    .line 8
    .line 9
    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8

    .line 13
    .line 14
    .line 15
    new-instance v3, Landroid/util/ArrayMap;

    .line 16
    .line 17
    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 18
    .line 19
    .line 20
    :try_start_1
    new-instance v5, Ljava/io/DataInputStream;

    .line 21
    .line 22
    invoke-direct {v5, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 23
    .line 24
    .line 25
    :try_start_2
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v6, 0x2

    .line 30
    const/4 v7, 0x3

    .line 31
    const/4 v8, 0x1

    .line 32
    if-eq v2, v7, :cond_0

    .line 33
    .line 34
    if-eq v2, v6, :cond_0

    .line 35
    .line 36
    if-eq v2, v8, :cond_0

    .line 37
    .line 38
    const-string v0, "Bad version on IP configuration file, ignore read"

    .line 39
    .line 40
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    .line 42
    .line 43
    :try_start_3
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 44
    .line 45
    .line 46
    :catch_0
    const/4 v3, 0x0

    .line 47
    goto/16 :goto_e

    .line 48
    .line 49
    :catchall_0
    move-exception v0

    .line 50
    move-object v4, v5

    .line 51
    goto/16 :goto_c

    .line 52
    .line 53
    :catch_1
    move-exception v0

    .line 54
    move-object v4, v5

    .line 55
    goto/16 :goto_a

    .line 56
    .line 57
    :catch_2
    move-object v4, v5

    .line 58
    goto/16 :goto_d

    .line 59
    .line 60
    :cond_0
    :goto_0
    :try_start_4
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    .line 61
    .line 62
    sget-object v9, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    .line 63
    .line 64
    new-instance v10, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .line 68
    .line 69
    const/4 v11, -0x1

    .line 70
    move v12, v11

    .line 71
    const/4 v4, 0x0

    .line 72
    const/4 v13, 0x0

    .line 73
    const/4 v14, 0x0

    .line 74
    const/4 v15, 0x0

    .line 75
    const/16 v16, 0x0

    .line 76
    .line 77
    const/16 v17, 0x0

    .line 78
    .line 79
    move-object v11, v9

    .line 80
    move-object v9, v0

    .line 81
    :goto_1
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 85
    :try_start_5
    const-string/jumbo v6, "id"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    if-eqz v6, :cond_2

    .line 93
    .line 94
    if-ge v2, v7, :cond_1

    .line 95
    .line 96
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    :goto_2
    move-object v15, v0

    .line 105
    goto/16 :goto_8

    .line 106
    .line 107
    :catch_3
    move-exception v0

    .line 108
    goto/16 :goto_9

    .line 109
    .line 110
    :cond_1
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    goto :goto_2

    .line 115
    :cond_2
    const-string/jumbo v6, "ipAssignment"

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    if-eqz v6, :cond_3

    .line 123
    .line 124
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-static {v0}, Landroid/net/IpConfiguration$IpAssignment;->valueOf(Ljava/lang/String;)Landroid/net/IpConfiguration$IpAssignment;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    move-object v9, v0

    .line 133
    goto/16 :goto_8

    .line 134
    .line 135
    :cond_3
    const-string/jumbo v6, "linkAddress"

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    if-eqz v6, :cond_5

    .line 143
    .line 144
    new-instance v0, Landroid/net/LinkAddress;

    .line 145
    .line 146
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    invoke-static {v6}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    .line 155
    .line 156
    .line 157
    move-result v7

    .line 158
    invoke-direct {v0, v6, v7}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    instance-of v6, v6, Ljava/net/Inet4Address;

    .line 166
    .line 167
    if-eqz v6, :cond_4

    .line 168
    .line 169
    if-nez v14, :cond_4

    .line 170
    .line 171
    move-object v14, v0

    .line 172
    goto/16 :goto_8

    .line 173
    .line 174
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    const-string v7, "Non-IPv4 or duplicate address: "

    .line 180
    .line 181
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    goto/16 :goto_8

    .line 195
    .line 196
    :cond_5
    const-string/jumbo v6, "gateway"

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v6

    .line 203
    if-eqz v6, :cond_c

    .line 204
    .line 205
    if-ne v2, v8, :cond_7

    .line 206
    .line 207
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-static {v0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    if-nez v13, :cond_6

    .line 216
    .line 217
    move-object v13, v0

    .line 218
    goto/16 :goto_8

    .line 219
    .line 220
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .line 224
    .line 225
    const-string v7, "Duplicate gateway: "

    .line 226
    .line 227
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    goto/16 :goto_8

    .line 245
    .line 246
    :cond_7
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    if-ne v0, v8, :cond_8

    .line 251
    .line 252
    new-instance v0, Landroid/net/LinkAddress;

    .line 253
    .line 254
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v6

    .line 258
    invoke-static {v6}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 259
    .line 260
    .line 261
    move-result-object v6

    .line 262
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    .line 263
    .line 264
    .line 265
    move-result v7

    .line 266
    invoke-direct {v0, v6, v7}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 267
    .line 268
    .line 269
    goto :goto_3

    .line 270
    :cond_8
    const/4 v0, 0x0

    .line 271
    :goto_3
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    .line 272
    .line 273
    .line 274
    move-result v6

    .line 275
    if-ne v6, v8, :cond_9

    .line 276
    .line 277
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v6

    .line 281
    invoke-static {v6}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 282
    .line 283
    .line 284
    move-result-object v6

    .line 285
    goto :goto_4

    .line 286
    :cond_9
    const/4 v6, 0x0

    .line 287
    :goto_4
    if-nez v0, :cond_a

    .line 288
    .line 289
    goto :goto_5

    .line 290
    :cond_a
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    .line 291
    .line 292
    .line 293
    move-result-object v7

    .line 294
    instance-of v7, v7, Ljava/net/Inet4Address;

    .line 295
    .line 296
    if-eqz v7, :cond_b

    .line 297
    .line 298
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getPrefixLength()I

    .line 299
    .line 300
    .line 301
    move-result v7

    .line 302
    if-nez v7, :cond_b

    .line 303
    .line 304
    if-nez v13, :cond_b

    .line 305
    .line 306
    :goto_5
    move-object v13, v6

    .line 307
    goto/16 :goto_8

    .line 308
    .line 309
    :cond_b
    new-instance v6, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    .line 313
    .line 314
    const-string v7, "Non-IPv4 default or duplicate route: "

    .line 315
    .line 316
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    .line 332
    .line 333
    goto/16 :goto_8

    .line 334
    .line 335
    :cond_c
    const-string/jumbo v6, "dns"

    .line 336
    .line 337
    .line 338
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    move-result v6

    .line 342
    if-eqz v6, :cond_d

    .line 343
    .line 344
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    invoke-static {v0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    goto/16 :goto_8

    .line 356
    .line 357
    :cond_d
    const-string/jumbo v6, "proxySettings"

    .line 358
    .line 359
    .line 360
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    move-result v6

    .line 364
    if-eqz v6, :cond_e

    .line 365
    .line 366
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    invoke-static {v0}, Landroid/net/IpConfiguration$ProxySettings;->valueOf(Ljava/lang/String;)Landroid/net/IpConfiguration$ProxySettings;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    move-object v11, v0

    .line 375
    goto/16 :goto_8

    .line 376
    .line 377
    :cond_e
    const-string/jumbo v6, "proxyHost"

    .line 378
    .line 379
    .line 380
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    move-result v6

    .line 384
    if-eqz v6, :cond_f

    .line 385
    .line 386
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    move-object v4, v0

    .line 391
    goto/16 :goto_8

    .line 392
    .line 393
    :cond_f
    const-string/jumbo v6, "proxyPort"

    .line 394
    .line 395
    .line 396
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    move-result v6

    .line 400
    if-eqz v6, :cond_10

    .line 401
    .line 402
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    .line 403
    .line 404
    .line 405
    move-result v0

    .line 406
    move v12, v0

    .line 407
    goto/16 :goto_8

    .line 408
    .line 409
    :cond_10
    const-string/jumbo v6, "proxyPac"

    .line 410
    .line 411
    .line 412
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 413
    .line 414
    .line 415
    move-result v6

    .line 416
    if-eqz v6, :cond_11

    .line 417
    .line 418
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    move-object/from16 v17, v0

    .line 423
    .line 424
    goto/16 :goto_8

    .line 425
    .line 426
    :cond_11
    const-string/jumbo v6, "exclusionList"

    .line 427
    .line 428
    .line 429
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    move-result v6

    .line 433
    if-eqz v6, :cond_12

    .line 434
    .line 435
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    move-object/from16 v16, v0

    .line 440
    .line 441
    goto/16 :goto_8

    .line 442
    .line 443
    :cond_12
    const-string/jumbo v6, "eos"

    .line 444
    .line 445
    .line 446
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    move-result v6
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 450
    if-eqz v6, :cond_1b

    .line 451
    .line 452
    :try_start_6
    new-instance v0, Landroid/net/StaticIpConfiguration$Builder;

    .line 453
    .line 454
    invoke-direct {v0}, Landroid/net/StaticIpConfiguration$Builder;-><init>()V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v0, v14}, Landroid/net/StaticIpConfiguration$Builder;->setIpAddress(Landroid/net/LinkAddress;)Landroid/net/StaticIpConfiguration$Builder;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    invoke-virtual {v0, v13}, Landroid/net/StaticIpConfiguration$Builder;->setGateway(Ljava/net/InetAddress;)Landroid/net/StaticIpConfiguration$Builder;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    invoke-virtual {v0, v10}, Landroid/net/StaticIpConfiguration$Builder;->setDnsServers(Ljava/lang/Iterable;)Landroid/net/StaticIpConfiguration$Builder;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration$Builder;->build()Landroid/net/StaticIpConfiguration;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    if-eqz v15, :cond_1a

    .line 474
    .line 475
    new-instance v6, Landroid/net/IpConfiguration;

    .line 476
    .line 477
    invoke-direct {v6}, Landroid/net/IpConfiguration;-><init>()V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v3, v15, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    sget-object v7, Lcom/android/server/ExtendedEthernetConfigStore$1;->$SwitchMap$android$net$IpConfiguration$IpAssignment:[I

    .line 484
    .line 485
    invoke-virtual {v9}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    .line 486
    .line 487
    .line 488
    move-result v10

    .line 489
    aget v7, v7, v10

    .line 490
    .line 491
    if-eq v7, v8, :cond_15

    .line 492
    .line 493
    const/4 v10, 0x2

    .line 494
    if-eq v7, v10, :cond_14

    .line 495
    .line 496
    const/4 v10, 0x3

    .line 497
    if-eq v7, v10, :cond_13

    .line 498
    .line 499
    const-string v0, "Ignore invalid ip assignment while reading."

    .line 500
    .line 501
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    .line 503
    .line 504
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    .line 505
    .line 506
    invoke-virtual {v6, v0}, Landroid/net/IpConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 507
    .line 508
    .line 509
    goto :goto_6

    .line 510
    :cond_13
    const-string v0, "BUG: Found UNASSIGNED IP on file, use DHCP"

    .line 511
    .line 512
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    .line 514
    .line 515
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    .line 516
    .line 517
    invoke-virtual {v6, v0}, Landroid/net/IpConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 518
    .line 519
    .line 520
    goto :goto_6

    .line 521
    :cond_14
    invoke-virtual {v6, v9}, Landroid/net/IpConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 522
    .line 523
    .line 524
    goto :goto_6

    .line 525
    :cond_15
    invoke-virtual {v6, v0}, Landroid/net/IpConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v6, v9}, Landroid/net/IpConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 529
    .line 530
    .line 531
    :goto_6
    sget-object v0, Lcom/android/server/ExtendedEthernetConfigStore$1;->$SwitchMap$android$net$IpConfiguration$ProxySettings:[I

    .line 532
    .line 533
    invoke-virtual {v11}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    .line 534
    .line 535
    .line 536
    move-result v7

    .line 537
    aget v0, v0, v7

    .line 538
    .line 539
    if-eq v0, v8, :cond_19

    .line 540
    .line 541
    const/4 v7, 0x2

    .line 542
    if-eq v0, v7, :cond_18

    .line 543
    .line 544
    const/4 v9, 0x3

    .line 545
    if-eq v0, v9, :cond_17

    .line 546
    .line 547
    const/4 v4, 0x4

    .line 548
    if-eq v0, v4, :cond_16

    .line 549
    .line 550
    const-string v0, "Ignore invalid proxy settings while reading"

    .line 551
    .line 552
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    .line 554
    .line 555
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    .line 556
    .line 557
    invoke-virtual {v6, v0}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 558
    .line 559
    .line 560
    goto :goto_7

    .line 561
    :cond_16
    const-string v0, "BUG: Found UNASSIGNED proxy on file, use NONE"

    .line 562
    .line 563
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    .line 565
    .line 566
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    .line 567
    .line 568
    invoke-virtual {v6, v0}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 569
    .line 570
    .line 571
    goto :goto_7

    .line 572
    :cond_17
    invoke-virtual {v6, v11}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 573
    .line 574
    .line 575
    goto :goto_7

    .line 576
    :cond_18
    const/4 v9, 0x3

    .line 577
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    invoke-static {v0}, Landroid/net/ProxyInfo;->buildPacProxy(Landroid/net/Uri;)Landroid/net/ProxyInfo;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    invoke-virtual {v6, v11}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 586
    .line 587
    .line 588
    invoke-virtual {v6, v0}, Landroid/net/IpConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 589
    .line 590
    .line 591
    goto :goto_7

    .line 592
    :cond_19
    const/4 v7, 0x2

    .line 593
    const/4 v9, 0x3

    .line 594
    invoke-static/range {v16 .. v16}, Lcom/android/server/ExtendedEthernetConfigStore;->parseProxyExclusionListString(Ljava/lang/String;)Ljava/util/List;

    .line 595
    .line 596
    .line 597
    move-result-object v0

    .line 598
    invoke-static {v4, v12, v0}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    .line 599
    .line 600
    .line 601
    move-result-object v0

    .line 602
    invoke-virtual {v6, v11}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 603
    .line 604
    .line 605
    invoke-virtual {v6, v0}, Landroid/net/IpConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 606
    .line 607
    .line 608
    goto :goto_7

    .line 609
    :cond_1a
    const/4 v7, 0x2

    .line 610
    const/4 v9, 0x3

    .line 611
    :goto_7
    move v6, v7

    .line 612
    move v7, v9

    .line 613
    goto/16 :goto_0

    .line 614
    .line 615
    :cond_1b
    const/4 v7, 0x2

    .line 616
    :try_start_7
    new-instance v6, Ljava/lang/StringBuilder;

    .line 617
    .line 618
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 619
    .line 620
    .line 621
    const-string v7, "Ignore unknown key "

    .line 622
    .line 623
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    .line 625
    .line 626
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    .line 628
    .line 629
    const-string/jumbo v0, "while reading"

    .line 630
    .line 631
    .line 632
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    .line 634
    .line 635
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v0

    .line 639
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 640
    .line 641
    .line 642
    :goto_8
    const/4 v6, 0x2

    .line 643
    const/4 v7, 0x3

    .line 644
    goto/16 :goto_1

    .line 645
    .line 646
    :goto_9
    :try_start_8
    new-instance v6, Ljava/lang/StringBuilder;

    .line 647
    .line 648
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 649
    .line 650
    .line 651
    const-string v7, "Ignore invalid address while reading"

    .line 652
    .line 653
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    .line 655
    .line 656
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 657
    .line 658
    .line 659
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v0

    .line 663
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 664
    .line 665
    .line 666
    goto :goto_8

    .line 667
    :catchall_1
    move-exception v0

    .line 668
    const/4 v4, 0x0

    .line 669
    goto :goto_c

    .line 670
    :catch_4
    move-exception v0

    .line 671
    const/4 v4, 0x0

    .line 672
    goto :goto_a

    .line 673
    :catch_5
    const/4 v4, 0x0

    .line 674
    goto :goto_d

    .line 675
    :goto_a
    :try_start_9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 676
    .line 677
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 678
    .line 679
    .line 680
    const-string v5, "Error parsing configuration: "

    .line 681
    .line 682
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    .line 684
    .line 685
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 686
    .line 687
    .line 688
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object v0

    .line 692
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 693
    .line 694
    .line 695
    if-eqz v4, :cond_1d

    .line 696
    .line 697
    :goto_b
    :try_start_a
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 698
    .line 699
    .line 700
    goto :goto_e

    .line 701
    :catchall_2
    move-exception v0

    .line 702
    :goto_c
    if-eqz v4, :cond_1c

    .line 703
    .line 704
    :try_start_b
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 705
    .line 706
    .line 707
    :catch_6
    :cond_1c
    throw v0

    .line 708
    :goto_d
    if-eqz v4, :cond_1d

    .line 709
    .line 710
    goto :goto_b

    .line 711
    :catch_7
    :cond_1d
    :goto_e
    move-object/from16 v1, p0

    .line 712
    .line 713
    goto :goto_f

    .line 714
    :catch_8
    move-exception v0

    .line 715
    new-instance v2, Ljava/lang/StringBuilder;

    .line 716
    .line 717
    const-string v3, "Error opening configuration file: "

    .line 718
    .line 719
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 720
    .line 721
    .line 722
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 723
    .line 724
    .line 725
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object v0

    .line 729
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    .line 731
    .line 732
    new-instance v3, Landroid/util/ArrayMap;

    .line 733
    .line 734
    const/4 v0, 0x0

    .line 735
    invoke-direct {v3, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 736
    .line 737
    .line 738
    goto :goto_e

    .line 739
    :goto_f
    iget-object v0, v1, Lcom/android/server/ExtendedEthernetConfigStore;->mIpConfigurations:Landroid/util/ArrayMap;

    .line 740
    .line 741
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 742
    .line 743
    .line 744
    return-void
.end method

.method public final read()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/ExtendedEthernetConfigStore;->mSync:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "/data/misc/apexdata/com.android.tethering/misc/ethernet/ipconfig.txt"

    .line 5
    .line 6
    new-instance v2, Ljava/io/File;

    .line 7
    .line 8
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/ExtendedEthernetConfigStore;->loadConfigFileLocked()V

    .line 22
    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0
.end method
