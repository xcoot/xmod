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

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/ExtendedEthernetConfigStore;->mSync:Ljava/lang/Object;

    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 17
    iput-object v0, p0, Lcom/android/server/ExtendedEthernetConfigStore;->mIpConfigurations:Landroid/util/ArrayMap;

    .line 19
    return-void
.end method

.method public static parseProxyExclusionListString(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 13
    move-result-object p0

    .line 14
    const-string v0, ","

    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

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

    .line 3
    const-string v1, "ExtendedEthernetConfigStore"

    .line 5
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    .line 7
    new-instance v3, Ljava/io/FileInputStream;

    .line 9
    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8

    .line 15
    new-instance v3, Landroid/util/ArrayMap;

    .line 17
    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 20
    :try_start_1
    new-instance v5, Ljava/io/DataInputStream;

    .line 22
    invoke-direct {v5, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    :try_start_2
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

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

    .line 34
    if-eq v2, v6, :cond_0

    .line 36
    if-eq v2, v8, :cond_0

    .line 38
    const-string v0, "Bad version on IP configuration file, ignore read"

    .line 40
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    :try_start_3
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 46
    :catch_0
    const/4 v3, 0x0

    .line 47
    goto/16 :goto_e

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    move-object v4, v5

    .line 51
    goto/16 :goto_c

    .line 53
    :catch_1
    move-exception v0

    .line 54
    move-object v4, v5

    .line 55
    goto/16 :goto_a

    .line 57
    :catch_2
    move-object v4, v5

    .line 58
    goto/16 :goto_d

    .line 60
    :cond_0
    :goto_0
    :try_start_4
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    .line 62
    sget-object v9, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    .line 64
    new-instance v10, Ljava/util/ArrayList;

    .line 66
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

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

    .line 77
    const/16 v17, 0x0

    .line 79
    move-object v11, v9

    .line 80
    move-object v9, v0

    .line 81
    :goto_1
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 84
    move-result-object v0
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 85
    :try_start_5
    const-string/jumbo v6, "id"

    .line 88
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    move-result v6

    .line 92
    if-eqz v6, :cond_2

    .line 94
    if-ge v2, v7, :cond_1

    .line 96
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    .line 99
    move-result v0

    .line 100
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 103
    move-result-object v0

    .line 104
    :goto_2
    move-object v15, v0

    .line 105
    goto/16 :goto_8

    .line 107
    :catch_3
    move-exception v0

    .line 108
    goto/16 :goto_9

    .line 110
    :cond_1
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 113
    move-result-object v0

    .line 114
    goto :goto_2

    .line 115
    :cond_2
    const-string/jumbo v6, "ipAssignment"

    .line 118
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    move-result v6

    .line 122
    if-eqz v6, :cond_3

    .line 124
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 127
    move-result-object v0

    .line 128
    invoke-static {v0}, Landroid/net/IpConfiguration$IpAssignment;->valueOf(Ljava/lang/String;)Landroid/net/IpConfiguration$IpAssignment;

    .line 131
    move-result-object v0

    .line 132
    move-object v9, v0

    .line 133
    goto/16 :goto_8

    .line 135
    :cond_3
    const-string/jumbo v6, "linkAddress"

    .line 138
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    move-result v6

    .line 142
    if-eqz v6, :cond_5

    .line 144
    new-instance v0, Landroid/net/LinkAddress;

    .line 146
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 149
    move-result-object v6

    .line 150
    invoke-static {v6}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 153
    move-result-object v6

    .line 154
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    .line 157
    move-result v7

    .line 158
    invoke-direct {v0, v6, v7}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 161
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    .line 164
    move-result-object v6

    .line 165
    instance-of v6, v6, Ljava/net/Inet4Address;

    .line 167
    if-eqz v6, :cond_4

    .line 169
    if-nez v14, :cond_4

    .line 171
    move-object v14, v0

    .line 172
    goto/16 :goto_8

    .line 174
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    .line 176
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    const-string v7, "Non-IPv4 or duplicate address: "

    .line 181
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    move-result-object v0

    .line 191
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    goto/16 :goto_8

    .line 196
    :cond_5
    const-string/jumbo v6, "gateway"

    .line 199
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    move-result v6

    .line 203
    if-eqz v6, :cond_c

    .line 205
    if-ne v2, v8, :cond_7

    .line 207
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 210
    move-result-object v0

    .line 211
    invoke-static {v0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 214
    move-result-object v0

    .line 215
    if-nez v13, :cond_6

    .line 217
    move-object v13, v0

    .line 218
    goto/16 :goto_8

    .line 220
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    .line 222
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    const-string v7, "Duplicate gateway: "

    .line 227
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 233
    move-result-object v0

    .line 234
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    move-result-object v0

    .line 241
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    goto/16 :goto_8

    .line 246
    :cond_7
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    .line 249
    move-result v0

    .line 250
    if-ne v0, v8, :cond_8

    .line 252
    new-instance v0, Landroid/net/LinkAddress;

    .line 254
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 257
    move-result-object v6

    .line 258
    invoke-static {v6}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 261
    move-result-object v6

    .line 262
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    .line 265
    move-result v7

    .line 266
    invoke-direct {v0, v6, v7}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 269
    goto :goto_3

    .line 270
    :cond_8
    const/4 v0, 0x0

    .line 271
    :goto_3
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    .line 274
    move-result v6

    .line 275
    if-ne v6, v8, :cond_9

    .line 277
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 280
    move-result-object v6

    .line 281
    invoke-static {v6}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

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

    .line 289
    goto :goto_5

    .line 290
    :cond_a
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    .line 293
    move-result-object v7

    .line 294
    instance-of v7, v7, Ljava/net/Inet4Address;

    .line 296
    if-eqz v7, :cond_b

    .line 298
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getPrefixLength()I

    .line 301
    move-result v7

    .line 302
    if-nez v7, :cond_b

    .line 304
    if-nez v13, :cond_b

    .line 306
    :goto_5
    move-object v13, v6

    .line 307
    goto/16 :goto_8

    .line 309
    :cond_b
    new-instance v6, Ljava/lang/StringBuilder;

    .line 311
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    const-string v7, "Non-IPv4 default or duplicate route: "

    .line 316
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    .line 322
    move-result-object v0

    .line 323
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    move-result-object v0

    .line 330
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    goto/16 :goto_8

    .line 335
    :cond_c
    const-string/jumbo v6, "dns"

    .line 338
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 341
    move-result v6

    .line 342
    if-eqz v6, :cond_d

    .line 344
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 347
    move-result-object v0

    .line 348
    invoke-static {v0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 351
    move-result-object v0

    .line 352
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    goto/16 :goto_8

    .line 357
    :cond_d
    const-string/jumbo v6, "proxySettings"

    .line 360
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 363
    move-result v6

    .line 364
    if-eqz v6, :cond_e

    .line 366
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 369
    move-result-object v0

    .line 370
    invoke-static {v0}, Landroid/net/IpConfiguration$ProxySettings;->valueOf(Ljava/lang/String;)Landroid/net/IpConfiguration$ProxySettings;

    .line 373
    move-result-object v0

    .line 374
    move-object v11, v0

    .line 375
    goto/16 :goto_8

    .line 377
    :cond_e
    const-string/jumbo v6, "proxyHost"

    .line 380
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 383
    move-result v6

    .line 384
    if-eqz v6, :cond_f

    .line 386
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 389
    move-result-object v0

    .line 390
    move-object v4, v0

    .line 391
    goto/16 :goto_8

    .line 393
    :cond_f
    const-string/jumbo v6, "proxyPort"

    .line 396
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 399
    move-result v6

    .line 400
    if-eqz v6, :cond_10

    .line 402
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    .line 405
    move-result v0

    .line 406
    move v12, v0

    .line 407
    goto/16 :goto_8

    .line 409
    :cond_10
    const-string/jumbo v6, "proxyPac"

    .line 412
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 415
    move-result v6

    .line 416
    if-eqz v6, :cond_11

    .line 418
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 421
    move-result-object v0

    .line 422
    move-object/from16 v17, v0

    .line 424
    goto/16 :goto_8

    .line 426
    :cond_11
    const-string/jumbo v6, "exclusionList"

    .line 429
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 432
    move-result v6

    .line 433
    if-eqz v6, :cond_12

    .line 435
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 438
    move-result-object v0

    .line 439
    move-object/from16 v16, v0

    .line 441
    goto/16 :goto_8

    .line 443
    :cond_12
    const-string/jumbo v6, "eos"

    .line 446
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 449
    move-result v6
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 450
    if-eqz v6, :cond_1b

    .line 452
    :try_start_6
    new-instance v0, Landroid/net/StaticIpConfiguration$Builder;

    .line 454
    invoke-direct {v0}, Landroid/net/StaticIpConfiguration$Builder;-><init>()V

    .line 457
    invoke-virtual {v0, v14}, Landroid/net/StaticIpConfiguration$Builder;->setIpAddress(Landroid/net/LinkAddress;)Landroid/net/StaticIpConfiguration$Builder;

    .line 460
    move-result-object v0

    .line 461
    invoke-virtual {v0, v13}, Landroid/net/StaticIpConfiguration$Builder;->setGateway(Ljava/net/InetAddress;)Landroid/net/StaticIpConfiguration$Builder;

    .line 464
    move-result-object v0

    .line 465
    invoke-virtual {v0, v10}, Landroid/net/StaticIpConfiguration$Builder;->setDnsServers(Ljava/lang/Iterable;)Landroid/net/StaticIpConfiguration$Builder;

    .line 468
    move-result-object v0

    .line 469
    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration$Builder;->build()Landroid/net/StaticIpConfiguration;

    .line 472
    move-result-object v0

    .line 473
    if-eqz v15, :cond_1a

    .line 475
    new-instance v6, Landroid/net/IpConfiguration;

    .line 477
    invoke-direct {v6}, Landroid/net/IpConfiguration;-><init>()V

    .line 480
    invoke-virtual {v3, v15, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    sget-object v7, Lcom/android/server/ExtendedEthernetConfigStore$1;->$SwitchMap$android$net$IpConfiguration$IpAssignment:[I

    .line 485
    invoke-virtual {v9}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    .line 488
    move-result v10

    .line 489
    aget v7, v7, v10

    .line 491
    if-eq v7, v8, :cond_15

    .line 493
    const/4 v10, 0x2

    .line 494
    if-eq v7, v10, :cond_14

    .line 496
    const/4 v10, 0x3

    .line 497
    if-eq v7, v10, :cond_13

    .line 499
    const-string v0, "Ignore invalid ip assignment while reading."

    .line 501
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    .line 506
    invoke-virtual {v6, v0}, Landroid/net/IpConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 509
    goto :goto_6

    .line 510
    :cond_13
    const-string v0, "BUG: Found UNASSIGNED IP on file, use DHCP"

    .line 512
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    .line 517
    invoke-virtual {v6, v0}, Landroid/net/IpConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 520
    goto :goto_6

    .line 521
    :cond_14
    invoke-virtual {v6, v9}, Landroid/net/IpConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 524
    goto :goto_6

    .line 525
    :cond_15
    invoke-virtual {v6, v0}, Landroid/net/IpConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    .line 528
    invoke-virtual {v6, v9}, Landroid/net/IpConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 531
    :goto_6
    sget-object v0, Lcom/android/server/ExtendedEthernetConfigStore$1;->$SwitchMap$android$net$IpConfiguration$ProxySettings:[I

    .line 533
    invoke-virtual {v11}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    .line 536
    move-result v7

    .line 537
    aget v0, v0, v7

    .line 539
    if-eq v0, v8, :cond_19

    .line 541
    const/4 v7, 0x2

    .line 542
    if-eq v0, v7, :cond_18

    .line 544
    const/4 v9, 0x3

    .line 545
    if-eq v0, v9, :cond_17

    .line 547
    const/4 v4, 0x4

    .line 548
    if-eq v0, v4, :cond_16

    .line 550
    const-string v0, "Ignore invalid proxy settings while reading"

    .line 552
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    .line 557
    invoke-virtual {v6, v0}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 560
    goto :goto_7

    .line 561
    :cond_16
    const-string v0, "BUG: Found UNASSIGNED proxy on file, use NONE"

    .line 563
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    .line 568
    invoke-virtual {v6, v0}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 571
    goto :goto_7

    .line 572
    :cond_17
    invoke-virtual {v6, v11}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 575
    goto :goto_7

    .line 576
    :cond_18
    const/4 v9, 0x3

    .line 577
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 580
    move-result-object v0

    .line 581
    invoke-static {v0}, Landroid/net/ProxyInfo;->buildPacProxy(Landroid/net/Uri;)Landroid/net/ProxyInfo;

    .line 584
    move-result-object v0

    .line 585
    invoke-virtual {v6, v11}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 588
    invoke-virtual {v6, v0}, Landroid/net/IpConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 591
    goto :goto_7

    .line 592
    :cond_19
    const/4 v7, 0x2

    .line 593
    const/4 v9, 0x3

    .line 594
    invoke-static/range {v16 .. v16}, Lcom/android/server/ExtendedEthernetConfigStore;->parseProxyExclusionListString(Ljava/lang/String;)Ljava/util/List;

    .line 597
    move-result-object v0

    .line 598
    invoke-static {v4, v12, v0}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    .line 601
    move-result-object v0

    .line 602
    invoke-virtual {v6, v11}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 605
    invoke-virtual {v6, v0}, Landroid/net/IpConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

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

    .line 615
    :cond_1b
    const/4 v7, 0x2

    .line 616
    :try_start_7
    new-instance v6, Ljava/lang/StringBuilder;

    .line 618
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 621
    const-string v7, "Ignore unknown key "

    .line 623
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    const-string/jumbo v0, "while reading"

    .line 632
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 638
    move-result-object v0

    .line 639
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 642
    :goto_8
    const/4 v6, 0x2

    .line 643
    const/4 v7, 0x3

    .line 644
    goto/16 :goto_1

    .line 646
    :goto_9
    :try_start_8
    new-instance v6, Ljava/lang/StringBuilder;

    .line 648
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 651
    const-string v7, "Ignore invalid address while reading"

    .line 653
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 659
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 662
    move-result-object v0

    .line 663
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

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

    .line 677
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 680
    const-string v5, "Error parsing configuration: "

    .line 682
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 688
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 691
    move-result-object v0

    .line 692
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 695
    if-eqz v4, :cond_1d

    .line 697
    :goto_b
    :try_start_a
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 700
    goto :goto_e

    .line 701
    :catchall_2
    move-exception v0

    .line 702
    :goto_c
    if-eqz v4, :cond_1c

    .line 704
    :try_start_b
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 707
    :catch_6
    :cond_1c
    throw v0

    .line 708
    :goto_d
    if-eqz v4, :cond_1d

    .line 710
    goto :goto_b

    .line 711
    :catch_7
    :cond_1d
    :goto_e
    move-object/from16 v1, p0

    .line 713
    goto :goto_f

    .line 714
    :catch_8
    move-exception v0

    .line 715
    new-instance v2, Ljava/lang/StringBuilder;

    .line 717
    const-string v3, "Error opening configuration file: "

    .line 719
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 722
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 725
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 728
    move-result-object v0

    .line 729
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    new-instance v3, Landroid/util/ArrayMap;

    .line 734
    const/4 v0, 0x0

    .line 735
    invoke-direct {v3, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 738
    goto :goto_e

    .line 739
    :goto_f
    iget-object v0, v1, Lcom/android/server/ExtendedEthernetConfigStore;->mIpConfigurations:Landroid/util/ArrayMap;

    .line 741
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 744
    return-void
.end method

.method public final read()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/ExtendedEthernetConfigStore;->mSync:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "/data/misc/apexdata/com.android.tethering/misc/ethernet/ipconfig.txt"

    .line 6
    new-instance v2, Ljava/io/File;

    .line 8
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

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
