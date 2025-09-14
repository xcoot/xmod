.class public final Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

.field public final userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NetworkCallback;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 3
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 6
    iput p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NetworkCallback;->userId:I

    .line 8
    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v0, "onAvailable being called for netId "

    .line 6
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    .line 12
    move-result p1

    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    .line 23
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return-void
.end method

.method public final onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string/jumbo v2, "onLinkPropertiesChanged being called for netId "

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/net/Network;->getNetId()I

    .line 14
    move-result v2

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    const-string v2, " for interface "

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual/range {p2 .. p2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    const-string v2, " for user "

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    iget v2, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NetworkCallback;->userId:I

    .line 37
    const-string/jumbo v3, "knoxNwFilter-KnoxNetworkFilterService"

    .line 40
    invoke-static {v1, v2, v3}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 43
    iget-object v1, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NetworkCallback;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 45
    iget-object v1, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 47
    iget v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NetworkCallback;->userId:I

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    .line 58
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    const-string v3, "_knox_nwfilter_dns_exempt"

    .line 66
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object v1

    .line 73
    const-string v3, "_knox_nwfilter_dns_drop"

    .line 75
    invoke-static {v0, v3}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 78
    move-result-object v3

    .line 79
    new-instance v10, Ljava/util/ArrayList;

    .line 81
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 84
    new-instance v11, Ljava/util/ArrayList;

    .line 86
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 89
    new-instance v12, Ljava/util/ArrayList;

    .line 91
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 94
    new-instance v13, Ljava/util/ArrayList;

    .line 96
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 99
    if-nez v0, :cond_0

    .line 101
    const/16 v0, 0x2710

    .line 103
    const/16 v4, 0x4e1f

    .line 105
    goto :goto_0

    .line 106
    :cond_0
    const v4, 0x186a0

    .line 109
    mul-int/2addr v0, v4

    .line 110
    add-int/lit8 v4, v0, 0x1

    .line 112
    const v5, 0x1869f

    .line 115
    add-int/2addr v0, v5

    .line 116
    move/from16 v20, v4

    .line 118
    move v4, v0

    .line 119
    move/from16 v0, v20

    .line 121
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 123
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    const-string v0, "-"

    .line 131
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    move-result-object v0

    .line 141
    new-instance v14, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 143
    const-string v15, " -m owner --uid-owner "

    .line 145
    const-string v9, " -p udp --dport 53 "

    .line 147
    invoke-static {v15, v0, v9}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 150
    move-result-object v6

    .line 151
    sget-object v16, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;->INSERT:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;

    .line 153
    const-string v7, "DROP"

    .line 155
    const-string v8, ""

    .line 157
    move-object v4, v14

    .line 158
    move-object v5, v3

    .line 159
    move-object/from16 p0, v11

    .line 161
    move-object v11, v9

    .line 162
    move-object/from16 v9, v16

    .line 164
    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 167
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v14, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 172
    invoke-static {v15, v0, v11}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 175
    move-result-object v6

    .line 176
    const-string v7, "DROP"

    .line 178
    const-string v8, ""

    .line 180
    move-object v4, v14

    .line 181
    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 184
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 190
    move-result-object v2

    .line 191
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 194
    move-result v4

    .line 195
    if-eqz v4, :cond_3

    .line 197
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 200
    move-result-object v4

    .line 201
    move-object v14, v4

    .line 202
    check-cast v14, Ljava/net/InetAddress;

    .line 204
    instance-of v4, v14, Ljava/net/Inet4Address;

    .line 206
    const-string v9, " -p tcp --dport 53 -d "

    .line 208
    const-string v8, " -p tcp --dport 443 -d "

    .line 210
    const-string v7, " -p udp --dport 443 -d "

    .line 212
    if-eqz v4, :cond_1

    .line 214
    new-instance v6, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 216
    invoke-static {v15, v0, v7}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    move-result-object v4

    .line 220
    invoke-virtual {v14}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 223
    move-result-object v5

    .line 224
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    move-result-object v17

    .line 231
    const-string v18, "ACCEPT"

    .line 233
    const-string v19, ""

    .line 235
    move-object v4, v6

    .line 236
    move-object v5, v1

    .line 237
    move-object/from16 p1, v2

    .line 239
    move-object v2, v6

    .line 240
    move-object/from16 v6, v17

    .line 242
    move-object/from16 p2, v13

    .line 244
    move-object v13, v7

    .line 245
    move-object/from16 v7, v18

    .line 247
    move-object/from16 v17, v12

    .line 249
    move-object v12, v8

    .line 250
    move-object/from16 v8, v19

    .line 252
    move-object/from16 v18, v3

    .line 254
    move-object v3, v9

    .line 255
    move-object/from16 v9, v16

    .line 257
    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 260
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    new-instance v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 265
    invoke-static {v15, v0, v12}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    move-result-object v4

    .line 269
    invoke-virtual {v14}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 272
    move-result-object v5

    .line 273
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    move-result-object v6

    .line 280
    const-string v7, "ACCEPT"

    .line 282
    const-string v8, ""

    .line 284
    move-object v4, v2

    .line 285
    move-object v5, v1

    .line 286
    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 289
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    new-instance v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 294
    invoke-static {v15, v0, v3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    move-result-object v4

    .line 298
    invoke-virtual {v14}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 301
    move-result-object v5

    .line 302
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    move-result-object v6

    .line 309
    const-string v7, "ACCEPT"

    .line 311
    const-string v8, ""

    .line 313
    move-object v4, v2

    .line 314
    move-object v5, v1

    .line 315
    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 318
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    new-instance v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 323
    invoke-static {v15, v0, v11}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 326
    move-result-object v6

    .line 327
    const-string v7, "ACCEPT"

    .line 329
    const-string v8, ""

    .line 331
    move-object v4, v2

    .line 332
    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 335
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    new-instance v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 340
    invoke-static {v15, v0, v13}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    move-result-object v4

    .line 344
    invoke-virtual {v14}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 347
    move-result-object v5

    .line 348
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 354
    move-result-object v6

    .line 355
    const-string v7, "DROP"

    .line 357
    const-string v8, ""

    .line 359
    move-object v4, v2

    .line 360
    move-object/from16 v5, v18

    .line 362
    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 365
    move-object/from16 v13, v17

    .line 367
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    new-instance v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 372
    invoke-static {v15, v0, v12}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    move-result-object v4

    .line 376
    invoke-virtual {v14}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 379
    move-result-object v5

    .line 380
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 386
    move-result-object v6

    .line 387
    const-string v7, "DROP"

    .line 389
    const-string v8, ""

    .line 391
    move-object v4, v2

    .line 392
    move-object/from16 v5, v18

    .line 394
    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 397
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    new-instance v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 402
    invoke-static {v15, v0, v3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    move-result-object v3

    .line 406
    invoke-virtual {v14}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 409
    move-result-object v4

    .line 410
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 416
    move-result-object v6

    .line 417
    const-string v7, "DROP"

    .line 419
    const-string v8, ""

    .line 421
    move-object v4, v2

    .line 422
    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 425
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    move-object/from16 v13, p2

    .line 430
    :goto_2
    move-object/from16 v20, v10

    .line 432
    move-object/from16 v10, p0

    .line 434
    move-object/from16 p0, v20

    .line 436
    goto/16 :goto_3

    .line 438
    :cond_1
    move-object/from16 p1, v2

    .line 440
    move-object/from16 v18, v3

    .line 442
    move-object v3, v9

    .line 443
    move-object v2, v12

    .line 444
    move-object/from16 p2, v13

    .line 446
    move-object v13, v7

    .line 447
    move-object v12, v8

    .line 448
    instance-of v4, v14, Ljava/net/Inet6Address;

    .line 450
    if-eqz v4, :cond_2

    .line 452
    new-instance v9, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 454
    invoke-static {v15, v0, v13}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    move-result-object v4

    .line 458
    invoke-virtual {v14}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 461
    move-result-object v5

    .line 462
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 468
    move-result-object v6

    .line 469
    const-string v7, "ACCEPT"

    .line 471
    const-string v8, ""

    .line 473
    move-object v4, v9

    .line 474
    move-object v5, v1

    .line 475
    move-object/from16 v17, v2

    .line 477
    move-object v2, v9

    .line 478
    move-object/from16 v9, v16

    .line 480
    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 483
    move-object/from16 v9, p0

    .line 485
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    new-instance v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 490
    invoke-static {v15, v0, v12}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    move-result-object v4

    .line 494
    invoke-virtual {v14}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 497
    move-result-object v5

    .line 498
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 504
    move-result-object v6

    .line 505
    const-string v7, "ACCEPT"

    .line 507
    const-string v8, ""

    .line 509
    move-object v4, v2

    .line 510
    move-object v5, v1

    .line 511
    move-object/from16 p0, v10

    .line 513
    move-object v10, v9

    .line 514
    move-object/from16 v9, v16

    .line 516
    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 519
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    new-instance v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 524
    invoke-static {v15, v0, v3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    move-result-object v4

    .line 528
    invoke-virtual {v14}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 531
    move-result-object v5

    .line 532
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 538
    move-result-object v6

    .line 539
    const-string v7, "ACCEPT"

    .line 541
    const-string v8, ""

    .line 543
    move-object v4, v2

    .line 544
    move-object v5, v1

    .line 545
    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 548
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    new-instance v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 553
    invoke-static {v15, v0, v11}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 556
    move-result-object v6

    .line 557
    const-string v7, "ACCEPT"

    .line 559
    const-string v8, ""

    .line 561
    move-object v4, v2

    .line 562
    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 565
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    new-instance v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 570
    invoke-static {v15, v0, v13}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    move-result-object v4

    .line 574
    invoke-virtual {v14}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 577
    move-result-object v5

    .line 578
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 584
    move-result-object v6

    .line 585
    const-string v7, "DROP"

    .line 587
    const-string v8, ""

    .line 589
    move-object v4, v2

    .line 590
    move-object/from16 v5, v18

    .line 592
    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 595
    move-object/from16 v13, p2

    .line 597
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    new-instance v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 602
    invoke-static {v15, v0, v12}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    move-result-object v4

    .line 606
    invoke-virtual {v14}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 609
    move-result-object v5

    .line 610
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 616
    move-result-object v6

    .line 617
    const-string v7, "DROP"

    .line 619
    const-string v8, ""

    .line 621
    move-object v4, v2

    .line 622
    move-object/from16 v5, v18

    .line 624
    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 627
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    new-instance v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 632
    invoke-static {v15, v0, v3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    move-result-object v3

    .line 636
    invoke-virtual {v14}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 639
    move-result-object v4

    .line 640
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 646
    move-result-object v6

    .line 647
    const-string v7, "DROP"

    .line 649
    const-string v8, ""

    .line 651
    move-object v4, v2

    .line 652
    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 655
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    goto :goto_3

    .line 659
    :cond_2
    move-object/from16 v13, p2

    .line 661
    move-object/from16 v17, v2

    .line 663
    goto/16 :goto_2

    .line 665
    :goto_3
    move-object/from16 v2, p1

    .line 667
    move-object/from16 v12, v17

    .line 669
    move-object/from16 v3, v18

    .line 671
    move-object/from16 v20, v10

    .line 673
    move-object/from16 v10, p0

    .line 675
    move-object/from16 p0, v20

    .line 677
    goto/16 :goto_1

    .line 679
    :cond_3
    move-object/from16 p0, v10

    .line 681
    move-object/from16 v17, v12

    .line 683
    const-string v0, "*nat"

    .line 685
    const/4 v1, 0x1

    .line 686
    const/4 v2, 0x0

    .line 687
    const/4 v3, 0x4

    .line 688
    move-object/from16 v4, p0

    .line 690
    invoke-static {v3, v0, v2, v4, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->insertRules(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    .line 693
    const-string v0, "*filter"

    .line 695
    move-object/from16 v4, v17

    .line 697
    invoke-static {v3, v0, v2, v4, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->insertRules(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    .line 700
    const/4 v3, 0x6

    .line 701
    invoke-static {v3, v0, v2, v13, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->insertRules(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    .line 704
    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "onLost being called for netId "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    .line 12
    move-result p1

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string p1, " for user "

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NetworkCallback;->userId:I

    .line 23
    const-string/jumbo v1, "knoxNwFilter-KnoxNetworkFilterService"

    .line 26
    invoke-static {v0, p1, v1}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 29
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NetworkCallback;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 31
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    .line 33
    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NetworkCallback;->userId:I

    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushExemptDnsRulesFromNat(I)V

    .line 41
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 44
    move-result-wide v0

    .line 45
    :try_start_0
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NetworkCallback;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 47
    invoke-virtual {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 50
    move-result-object p1

    .line 51
    iget p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NetworkCallback;->userId:I

    .line 53
    invoke-interface {p1, p0}, Lcom/android/internal/net/IOemNetd;->clearNetworkFilterEntries(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :catch_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 64
    throw p0

    .line 65
    :goto_0
    return-void
.end method
