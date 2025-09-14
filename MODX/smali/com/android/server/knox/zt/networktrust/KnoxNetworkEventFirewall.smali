.class public final Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static mKnoxNwEventFw:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;

.field public static final mangleChains:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    const-string/jumbo v1, "knox_nw_event_event"

    .line 9
    const-string/jumbo v2, "knox_nw_event_exempt"

    .line 12
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 19
    move-result-object v1

    .line 20
    const-string v2, "POSTROUTING"

    .line 22
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sput-object v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->mangleChains:Ljava/util/Map;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->mangleChains:Ljava/util/Map;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    check-cast p0, Ljava/util/HashMap;

    .line 13
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v1

    .line 21
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/util/Map$Entry;

    .line 33
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ljava/util/Collection;

    .line 39
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-static {v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->createTableHeaderCmd(Ljava/util/List;)Ljava/util/List;

    .line 46
    move-result-object v0

    .line 47
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 50
    move-result-object v1

    .line 51
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 54
    move-result-object v1

    .line 55
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_2

    .line 61
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Ljava/util/Map$Entry;

    .line 67
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Ljava/util/List;

    .line 73
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 76
    move-result-object v3

    .line 77
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    move-result v4

    .line 81
    if-eqz v4, :cond_1

    .line 83
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    move-result-object v4

    .line 87
    move-object v8, v4

    .line 88
    check-cast v8, Ljava/lang/String;

    .line 90
    new-instance v4, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    .line 92
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 95
    move-result-object v5

    .line 96
    move-object v6, v5

    .line 97
    check-cast v6, Ljava/lang/String;

    .line 99
    sget-object v10, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;->DELETE:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;

    .line 101
    const-string v9, ""

    .line 103
    const-string v7, ""

    .line 105
    move-object v5, v4

    .line 106
    invoke-direct/range {v5 .. v10}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    .line 109
    invoke-static {v4}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->parseIptablesRestoreCmd(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;)Ljava/lang/String;

    .line 112
    move-result-object v4

    .line 113
    move-object v5, v0

    .line 114
    check-cast v5, Ljava/util/ArrayList;

    .line 116
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    goto :goto_1

    .line 120
    :cond_2
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 123
    move-result-object p0

    .line 124
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 127
    move-result-object p0

    .line 128
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_4

    .line 134
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    move-result-object v1

    .line 138
    check-cast v1, Ljava/util/Map$Entry;

    .line 140
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 143
    move-result-object v1

    .line 144
    check-cast v1, Ljava/util/List;

    .line 146
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 149
    move-result-object v1

    .line 150
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 153
    move-result v2

    .line 154
    if-eqz v2, :cond_3

    .line 156
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 159
    move-result-object v2

    .line 160
    move-object v4, v2

    .line 161
    check-cast v4, Ljava/lang/String;

    .line 163
    new-instance v2, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    .line 165
    sget-object v8, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;->REMOVE_CHAIN:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;

    .line 167
    const/4 v6, 0x0

    .line 168
    const/4 v7, 0x0

    .line 169
    const/4 v5, 0x0

    .line 170
    move-object v3, v2

    .line 171
    invoke-direct/range {v3 .. v8}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    .line 174
    invoke-static {v2}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->parseIptablesRestoreCmd(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;)Ljava/lang/String;

    .line 177
    move-result-object v2

    .line 178
    move-object v3, v0

    .line 179
    check-cast v3, Ljava/util/ArrayList;

    .line 181
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    goto :goto_2

    .line 185
    :cond_4
    move-object p0, v0

    .line 186
    check-cast p0, Ljava/util/ArrayList;

    .line 188
    const-string v1, "COMMIT\n"

    .line 190
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    const/16 p0, 0x2e

    .line 195
    invoke-static {p0, v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->runIptablesRestoreCmd(ILjava/util/List;)V

    .line 198
    sget-object v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->mangleChains:Ljava/util/Map;

    .line 200
    new-instance v2, Ljava/util/ArrayList;

    .line 202
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 205
    check-cast v0, Ljava/util/HashMap;

    .line 207
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 210
    move-result-object v3

    .line 211
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 214
    move-result-object v3

    .line 215
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 218
    move-result v4

    .line 219
    if-eqz v4, :cond_5

    .line 221
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 224
    move-result-object v4

    .line 225
    check-cast v4, Ljava/util/Map$Entry;

    .line 227
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 230
    move-result-object v4

    .line 231
    check-cast v4, Ljava/util/Collection;

    .line 233
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 236
    goto :goto_3

    .line 237
    :cond_5
    invoke-static {v2}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->createTableHeaderCmd(Ljava/util/List;)Ljava/util/List;

    .line 240
    move-result-object v2

    .line 241
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 244
    move-result-object v0

    .line 245
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 248
    move-result-object v0

    .line 249
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 252
    move-result v3

    .line 253
    if-eqz v3, :cond_7

    .line 255
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 258
    move-result-object v3

    .line 259
    check-cast v3, Ljava/util/Map$Entry;

    .line 261
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 264
    move-result-object v4

    .line 265
    check-cast v4, Ljava/util/List;

    .line 267
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 270
    move-result-object v4

    .line 271
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 274
    move-result v5

    .line 275
    if-eqz v5, :cond_6

    .line 277
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 280
    move-result-object v5

    .line 281
    move-object v9, v5

    .line 282
    check-cast v9, Ljava/lang/String;

    .line 284
    new-instance v5, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    .line 286
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 289
    move-result-object v6

    .line 290
    move-object v7, v6

    .line 291
    check-cast v7, Ljava/lang/String;

    .line 293
    sget-object v11, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;->INSERT:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;

    .line 295
    const-string v10, ""

    .line 297
    const-string v8, ""

    .line 299
    move-object v6, v5

    .line 300
    invoke-direct/range {v6 .. v11}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    .line 303
    invoke-static {v5}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->parseIptablesRestoreCmd(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;)Ljava/lang/String;

    .line 306
    move-result-object v5

    .line 307
    move-object v6, v2

    .line 308
    check-cast v6, Ljava/util/ArrayList;

    .line 310
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    goto :goto_4

    .line 314
    :cond_7
    move-object v0, v2

    .line 315
    check-cast v0, Ljava/util/ArrayList;

    .line 317
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    invoke-static {p0, v2}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->runIptablesRestoreCmd(ILjava/util/List;)V

    .line 323
    const-string/jumbo v0, "knox_nw_event_1"

    .line 326
    const-string/jumbo v1, "knox_nw_event_2"

    .line 329
    const-string/jumbo v2, "knox_nw_event_3"

    .line 332
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    .line 335
    move-result-object v0

    .line 336
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 339
    move-result-object v0

    .line 340
    const/4 v1, 0x0

    .line 341
    const/4 v2, 0x0

    .line 342
    invoke-static {v1, v0, v2, p0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRules(ZLjava/util/List;Ljava/util/List;I)V

    .line 345
    const-string/jumbo v0, "knox_nw_event_1_mch"

    .line 348
    const-string/jumbo v3, "knox_nw_event_2_mch"

    .line 351
    const-string/jumbo v4, "knox_nw_event_3_mch"

    .line 354
    filled-new-array {v0, v3, v4}, [Ljava/lang/String;

    .line 357
    move-result-object v0

    .line 358
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 361
    move-result-object v0

    .line 362
    invoke-static {v1, v0, v2, p0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRules(ZLjava/util/List;Ljava/util/List;I)V

    .line 365
    const-string/jumbo v0, "knox_nw_event_1_act"

    .line 368
    const-string/jumbo v3, "knox_nw_event_2_act"

    .line 371
    const-string/jumbo v4, "knox_nw_event_3_act"

    .line 374
    filled-new-array {v0, v3, v4}, [Ljava/lang/String;

    .line 377
    move-result-object v0

    .line 378
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 381
    move-result-object v0

    .line 382
    invoke-static {v1, v0, v2, p0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRules(ZLjava/util/List;Ljava/util/List;I)V

    .line 385
    new-instance v0, Ljava/util/ArrayList;

    .line 387
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 390
    new-instance v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    .line 392
    sget-object v9, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;->APPEND:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;

    .line 394
    const-string/jumbo v4, "knox_nw_event_event"

    .line 397
    const-string v5, ""

    .line 399
    const-string/jumbo v6, "knox_nw_event_1"

    .line 402
    const-string v7, ""

    .line 404
    move-object v3, v1

    .line 405
    move-object v8, v9

    .line 406
    invoke-direct/range {v3 .. v8}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    .line 409
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    new-instance v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    .line 414
    const-string/jumbo v4, "knox_nw_event_event"

    .line 417
    const-string v5, ""

    .line 419
    const-string/jumbo v6, "knox_nw_event_2"

    .line 422
    const-string v7, ""

    .line 424
    move-object v3, v1

    .line 425
    invoke-direct/range {v3 .. v8}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    .line 428
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    new-instance v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    .line 433
    const-string/jumbo v4, "knox_nw_event_event"

    .line 436
    const-string v5, ""

    .line 438
    const-string/jumbo v6, "knox_nw_event_3"

    .line 441
    const-string v7, ""

    .line 443
    move-object v3, v1

    .line 444
    invoke-direct/range {v3 .. v8}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    .line 447
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    new-instance v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    .line 452
    const-string/jumbo v4, "knox_nw_event_1_act"

    .line 455
    const-string v5, " -m bpf --object-pinned /sys/fs/bpf/prog_netlog_skfilter_insecureports_xtbpf"

    .line 457
    const-string v6, "RETURN"

    .line 459
    const-string v7, ""

    .line 461
    move-object v3, v1

    .line 462
    invoke-direct/range {v3 .. v8}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    .line 465
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    new-instance v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    .line 470
    const-string/jumbo v4, "knox_nw_event_2_act"

    .line 473
    const-string v5, " -m bpf --object-pinned /sys/fs/bpf/prog_netlog_skfilter_abnormalpackets_xtbpf"

    .line 475
    const-string v6, "RETURN"

    .line 477
    const-string v7, ""

    .line 479
    move-object v3, v1

    .line 480
    invoke-direct/range {v3 .. v8}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    .line 483
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    new-instance v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    .line 488
    const-string/jumbo v4, "knox_nw_event_3_act"

    .line 491
    const-string v5, " -m bpf --object-pinned /sys/fs/bpf/prog_netlog_skfilter_localnwpackets_xtbpf"

    .line 493
    const-string v6, "RETURN"

    .line 495
    const-string v7, ""

    .line 497
    move-object v3, v1

    .line 498
    invoke-direct/range {v3 .. v8}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    .line 501
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    const/4 v1, 0x1

    .line 505
    invoke-static {v1, v2, v0, p0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRules(ZLjava/util/List;Ljava/util/List;I)V

    .line 508
    return-void
.end method

.method public static createTableHeaderCmd(Ljava/util/List;)Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    const-string v2, "*mangle\n"

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    if-eqz p0, :cond_1

    .line 25
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object p0

    .line 29
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 35
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Ljava/lang/String;

    .line 41
    if-eqz v2, :cond_0

    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 47
    const-string v3, ":"

    .line 49
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string v2, " -"

    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v2, "\n"

    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    return-object v1
.end method

.method public static flushRulesForEvent(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_2

    .line 7
    const/4 v0, 0x1

    .line 8
    if-eq p0, v0, :cond_1

    .line 10
    const/4 v0, 0x2

    .line 11
    if-eq p0, v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string/jumbo p0, "knox_nw_event_3_mch"

    .line 17
    invoke-static {p0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRule(Ljava/lang/String;)V

    .line 20
    const-string/jumbo p0, "knox_nw_event_3"

    .line 23
    invoke-static {p0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRule(Ljava/lang/String;)V

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const-string/jumbo p0, "knox_nw_event_2_mch"

    .line 30
    invoke-static {p0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRule(Ljava/lang/String;)V

    .line 33
    const-string/jumbo p0, "knox_nw_event_2"

    .line 36
    invoke-static {p0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRule(Ljava/lang/String;)V

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const-string/jumbo p0, "knox_nw_event_1_mch"

    .line 43
    invoke-static {p0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRule(Ljava/lang/String;)V

    .line 46
    const-string/jumbo p0, "knox_nw_event_1"

    .line 49
    invoke-static {p0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRule(Ljava/lang/String;)V

    .line 52
    :goto_0
    return-void
.end method

.method public static insertRule(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/16 v2, 0x2e

    .line 13
    invoke-static {v1, p0, v0, v2}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRules(ZLjava/util/List;Ljava/util/List;I)V

    .line 16
    return-void
.end method

.method public static insertRuleForInsecurePorts(I)V
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    if-nez p0, :cond_0

    .line 8
    const/16 p0, 0x2710

    .line 10
    const/16 v1, 0x4e1f

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const v1, 0x186a0

    .line 16
    mul-int/2addr p0, v1

    .line 17
    add-int/lit8 v1, p0, 0x1

    .line 19
    const v2, 0x1869f

    .line 22
    add-int/2addr p0, v2

    .line 23
    move v10, v1

    .line 24
    move v1, p0

    .line 25
    move p0, v10

    .line 26
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    const-string p0, "-"

    .line 36
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    new-instance v7, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    .line 48
    sget-object v8, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;->APPEND:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;

    .line 50
    const-string/jumbo v4, "knox_nw_event_1_mch"

    .line 53
    const-string v5, ""

    .line 55
    const-string/jumbo v2, "knox_nw_event_1"

    .line 58
    const-string v3, ""

    .line 60
    move-object v1, v7

    .line 61
    move-object v6, v8

    .line 62
    invoke-direct/range {v1 .. v6}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    .line 65
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v7, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    .line 70
    const-string v9, " -m owner --uid-owner "

    .line 72
    const-string v1, " -p tcp -m state --state NEW -m multiport --dports 80,8080,20,21,23,25,110,143"

    .line 74
    invoke-static {v9, p0, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    move-result-object v3

    .line 78
    const-string/jumbo v4, "knox_nw_event_1_act"

    .line 81
    const-string v5, ""

    .line 83
    const-string/jumbo v2, "knox_nw_event_1_mch"

    .line 86
    move-object v1, v7

    .line 87
    invoke-direct/range {v1 .. v6}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    .line 90
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v7, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    .line 95
    const-string v1, " -p udp -m state --state NEW -m multiport --dports 1812,1813,1645,1646"

    .line 97
    invoke-static {v9, p0, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    move-result-object v3

    .line 101
    const-string/jumbo v4, "knox_nw_event_1_act"

    .line 104
    const-string v5, ""

    .line 106
    const-string/jumbo v2, "knox_nw_event_1_mch"

    .line 109
    move-object v1, v7

    .line 110
    invoke-direct/range {v1 .. v6}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    .line 113
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    const/4 p0, 0x0

    .line 117
    const/16 v1, 0x2e

    .line 119
    const/4 v2, 0x1

    .line 120
    invoke-static {v2, p0, v0, v1}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRules(ZLjava/util/List;Ljava/util/List;I)V

    .line 123
    return-void
.end method

.method public static insertRules(ZLjava/util/List;Ljava/util/List;I)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-static {p1}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->createTableHeaderCmd(Ljava/util/List;)Ljava/util/List;

    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 13
    const-string p1, "COMMIT\n"

    .line 15
    if-eqz p0, :cond_1

    .line 17
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object p0

    .line 21
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    .line 33
    if-eqz v1, :cond_0

    .line 35
    iget-object v2, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;->actionType:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;

    .line 37
    new-instance v3, Ljava/util/ArrayList;

    .line 39
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 42
    sget-object v4, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;->DELETE:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;

    .line 44
    iput-object v4, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;->actionType:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;

    .line 46
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 49
    invoke-static {v1}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->parseIptablesRestoreCmd(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;)Ljava/lang/String;

    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-static {p3, v3}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->runIptablesRestoreCmd(ILjava/util/List;)V

    .line 62
    iput-object v2, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;->actionType:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    if-eqz p2, :cond_4

    .line 67
    new-instance p0, Ljava/util/ArrayList;

    .line 69
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 75
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 78
    move-result-object p2

    .line 79
    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_3

    .line 85
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    .line 91
    if-eqz v0, :cond_2

    .line 93
    invoke-static {v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->parseIptablesRestoreCmd(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;)Ljava/lang/String;

    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    goto :goto_1

    .line 101
    :cond_3
    move-object v0, p0

    .line 102
    :cond_4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-static {p3, v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->runIptablesRestoreCmd(ILjava/util/List;)V

    .line 108
    return-void
.end method

.method public static parseIptablesRestoreCmd(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;)Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;->actionType:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;

    .line 8
    if-nez v1, :cond_0

    .line 10
    const-string p0, ""

    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 16
    move-result v1

    .line 17
    iget-object v2, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;->secondParam:Ljava/lang/String;

    .line 19
    iget-object v3, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;->jumpChain:Ljava/lang/String;

    .line 21
    iget-object v4, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;->firstParam:Ljava/lang/String;

    .line 23
    iget-object p0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;->actionChain:Ljava/lang/String;

    .line 25
    const/4 v5, 0x0

    .line 26
    const-string v6, " -j "

    .line 28
    const-string v7, "\n"

    .line 30
    if-eqz v1, :cond_4

    .line 32
    const/4 v8, 0x1

    .line 33
    if-eq v1, v8, :cond_3

    .line 35
    const/4 v8, 0x2

    .line 36
    if-eq v1, v8, :cond_2

    .line 38
    const/4 v2, 0x3

    .line 39
    if-eq v1, v2, :cond_1

    .line 41
    move-object v0, v5

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const-string v1, "-X "

    .line 45
    invoke-static {v0, v1, p0, v7}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const-string v1, "-D "

    .line 51
    invoke-static {v0, v1, p0, v4, v6}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {v0, v3, v2, v7}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    const-string v1, "-I "

    .line 60
    invoke-static {v0, v1, p0, v4, v6}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {v0, v3, v2, v7}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    goto :goto_0

    .line 67
    :cond_4
    const-string v1, "-A "

    .line 69
    invoke-static {v0, v1, p0, v4, v6}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {v0, v3, v2, v7}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :goto_0
    if-eqz v0, :cond_5

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object p0

    .line 81
    return-object p0

    .line 82
    :cond_5
    return-object v5
.end method

.method public static runIptablesRestoreCmd(ILjava/util/List;)V
    .locals 6

    .line 1
    const-string v0, ""

    .line 3
    invoke-static {v0, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    const-string v0, "NetworkEventsLoggerService-KnoxNetworkEventFirewall"

    .line 9
    const-string v1, "Failed to run cmd: "

    .line 11
    const-string/jumbo v2, "testing: command "

    .line 14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 17
    move-result-wide v3

    .line 18
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string/jumbo v2, "target "

    .line 29
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 39
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const-string/jumbo v2, "network_management"

    .line 45
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 48
    move-result-object v2

    .line 49
    invoke-static {v2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    .line 52
    move-result-object v2

    .line 53
    invoke-interface {v2, p0, p1}, Landroid/os/INetworkManagementService;->runKnoxFirewallRulesCommand(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 59
    goto :goto_1

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_2

    .line 62
    :catch_0
    move-exception p0

    .line 63
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 65
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object p0

    .line 79
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    goto :goto_0

    .line 83
    :goto_1
    return-void

    .line 84
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 87
    throw p0
.end method
