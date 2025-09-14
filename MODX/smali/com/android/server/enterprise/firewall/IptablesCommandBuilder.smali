.class public abstract Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static createAllowOrDenyCommands(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;)Ljava/util/List;
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 3
    move-object/from16 v1, p2

    .line 5
    move-object/from16 v2, p3

    .line 7
    iget v3, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 9
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 12
    move-result v3

    .line 13
    const-string v4, " -j REJECT"

    .line 15
    const-string/jumbo v5, "firewall_deny-forward"

    .line 18
    const-string/jumbo v6, "firewall_deny-output"

    .line 21
    const-string/jumbo v7, "firewall_deny-input"

    .line 24
    const-string v8, " -j ACCEPT"

    .line 26
    const-string/jumbo v9, "firewall_allow-forward"

    .line 29
    const-string/jumbo v10, "firewall_allow-output"

    .line 32
    const-string/jumbo v11, "firewall_allow-input"

    .line 35
    if-nez v3, :cond_0

    .line 37
    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ALLOW:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 39
    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_2

    .line 45
    move-object v4, v8

    .line 46
    move-object v5, v9

    .line 47
    move-object v6, v10

    .line 48
    :goto_0
    move-object v7, v11

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    sget-object v12, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ALLOW:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 52
    invoke-virtual {v2, v12}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result v12

    .line 56
    if-eqz v12, :cond_1

    .line 58
    invoke-static {v3, v10}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 61
    move-result-object v6

    .line 62
    move-object v4, v8

    .line 63
    move-object v5, v9

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-static {v3, v6}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 68
    move-result-object v6

    .line 69
    :cond_2
    :goto_1
    new-instance v3, Ljava/util/HashSet;

    .line 71
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 74
    new-instance v8, Ljava/lang/StringBuilder;

    .line 76
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    new-instance v9, Ljava/lang/StringBuilder;

    .line 81
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    new-instance v10, Ljava/lang/StringBuilder;

    .line 86
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    new-instance v11, Ljava/lang/StringBuilder;

    .line 91
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getDirection()Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    .line 97
    move-result-object v12

    .line 98
    sget-object v13, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->INPUT:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    .line 100
    invoke-virtual {v12, v13}, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->equals(Ljava/lang/Object;)Z

    .line 103
    move-result v12

    .line 104
    const/4 v14, 0x0

    .line 105
    const-string v15, " "

    .line 107
    if-eqz v12, :cond_3

    .line 109
    new-instance v12, Ljava/lang/StringBuilder;

    .line 111
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object v7

    .line 130
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const/4 v7, 0x1

    .line 134
    goto :goto_2

    .line 135
    :cond_3
    move v7, v14

    .line 136
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getDirection()Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    .line 139
    move-result-object v12

    .line 140
    sget-object v13, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->ALL:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    .line 142
    invoke-virtual {v12, v13}, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->equals(Ljava/lang/Object;)Z

    .line 145
    move-result v12

    .line 146
    if-nez v12, :cond_5

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getDirection()Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    .line 151
    move-result-object v12

    .line 152
    sget-object v13, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->OUTPUT:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    .line 154
    invoke-virtual {v12, v13}, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->equals(Ljava/lang/Object;)Z

    .line 157
    move-result v12

    .line 158
    if-eqz v12, :cond_4

    .line 160
    goto :goto_3

    .line 161
    :cond_4
    move v6, v14

    .line 162
    goto :goto_4

    .line 163
    :cond_5
    :goto_3
    new-instance v12, Ljava/lang/StringBuilder;

    .line 165
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    move-result-object v6

    .line 184
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const/4 v6, 0x1

    .line 188
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getDirection()Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    .line 191
    move-result-object v12

    .line 192
    sget-object v13, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->FORWARD:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    .line 194
    invoke-virtual {v12, v13}, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->equals(Ljava/lang/Object;)Z

    .line 197
    move-result v12

    .line 198
    if-eqz v12, :cond_6

    .line 200
    new-instance v12, Ljava/lang/StringBuilder;

    .line 202
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    move-result-object v12

    .line 221
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    new-instance v12, Ljava/lang/StringBuilder;

    .line 226
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    invoke-static {v12, v1, v15, v5, v15}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 232
    move-result-object v1

    .line 233
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    const/4 v13, 0x1

    .line 237
    goto :goto_5

    .line 238
    :cond_6
    move v13, v14

    .line 239
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    .line 242
    move-result-object v1

    .line 243
    const-string v5, "*"

    .line 245
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 248
    move-result v1

    .line 249
    const-string v12, "-"

    .line 251
    if-nez v1, :cond_8

    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    .line 256
    move-result-object v1

    .line 257
    invoke-virtual {v1, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 260
    move-result v1

    .line 261
    if-eqz v1, :cond_7

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    .line 265
    const-string v14, "-m iprange --src-range "

    .line 267
    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    .line 273
    move-result-object v14

    .line 274
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    move-result-object v1

    .line 281
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    .line 286
    const-string v14, "-m iprange --dst-range  "

    .line 288
    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    move-object/from16 v16, v4

    .line 293
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    .line 296
    move-result-object v4

    .line 297
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    move-result-object v1

    .line 304
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    .line 309
    const-string v4, "-m iprange --src-range  "

    .line 311
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    .line 317
    move-result-object v4

    .line 318
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    move-result-object v1

    .line 325
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    .line 330
    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 333
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    .line 336
    move-result-object v4

    .line 337
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    move-result-object v1

    .line 344
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    goto :goto_6

    .line 348
    :cond_7
    move-object/from16 v16, v4

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    .line 352
    const-string v4, "-s "

    .line 354
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 357
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    .line 360
    move-result-object v14

    .line 361
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    move-result-object v1

    .line 368
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    .line 373
    const-string v14, "-d "

    .line 375
    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 378
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    .line 381
    move-result-object v2

    .line 382
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 388
    move-result-object v1

    .line 389
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    .line 394
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 397
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    .line 400
    move-result-object v2

    .line 401
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 407
    move-result-object v1

    .line 408
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    new-instance v1, Ljava/lang/StringBuilder;

    .line 413
    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 416
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    .line 419
    move-result-object v2

    .line 420
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 426
    move-result-object v1

    .line 427
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    goto :goto_6

    .line 431
    :cond_8
    move-object/from16 v16, v4

    .line 433
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    .line 436
    move-result-object v1

    .line 437
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 440
    move-result v1

    .line 441
    const-string v2, " -o "

    .line 443
    const-string v4, " -i "

    .line 445
    if-nez v1, :cond_a

    .line 447
    if-eqz v7, :cond_9

    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    .line 451
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 454
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    .line 457
    move-result-object v4

    .line 458
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 464
    move-result-object v1

    .line 465
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    :cond_9
    if-eqz v6, :cond_c

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    .line 472
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 475
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    .line 478
    move-result-object v2

    .line 479
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 485
    move-result-object v1

    .line 486
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    goto :goto_7

    .line 490
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getNetworkInterface()Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    .line 493
    move-result-object v1

    .line 494
    sget-object v14, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->ALL_NETWORKS:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    .line 496
    invoke-virtual {v1, v14}, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->equals(Ljava/lang/Object;)Z

    .line 499
    move-result v1

    .line 500
    if-nez v1, :cond_c

    .line 502
    if-eqz v7, :cond_b

    .line 504
    new-instance v1, Ljava/lang/StringBuilder;

    .line 506
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 509
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getNetworkInterface()Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    .line 512
    move-result-object v4

    .line 513
    invoke-static {v4}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertNetworkInterfaceForIptables(Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;)Ljava/lang/String;

    .line 516
    move-result-object v4

    .line 517
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 523
    move-result-object v1

    .line 524
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    :cond_b
    if-eqz v6, :cond_c

    .line 529
    new-instance v1, Ljava/lang/StringBuilder;

    .line 531
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 534
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getNetworkInterface()Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    .line 537
    move-result-object v2

    .line 538
    invoke-static {v2}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertNetworkInterfaceForIptables(Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;)Ljava/lang/String;

    .line 541
    move-result-object v2

    .line 542
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 548
    move-result-object v1

    .line 549
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    :cond_c
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    .line 555
    move-result-object v1

    .line 556
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 559
    move-result v1

    .line 560
    if-nez v1, :cond_1e

    .line 562
    const-string v1, " -p udp --sport "

    .line 564
    const-string v2, " -p udp --dport "

    .line 566
    const-string v4, " -p tcp --sport "

    .line 568
    const-string v14, " -p tcp --dport "

    .line 570
    if-eqz v13, :cond_10

    .line 572
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 575
    move-result-object v6

    .line 576
    sget-object v8, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->TCP:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 578
    invoke-virtual {v6, v8}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->equals(Ljava/lang/Object;)Z

    .line 581
    move-result v6

    .line 582
    if-nez v6, :cond_d

    .line 584
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 587
    move-result-object v6

    .line 588
    sget-object v8, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->ALL:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 590
    invoke-virtual {v6, v8}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->equals(Ljava/lang/Object;)Z

    .line 593
    move-result v6

    .line 594
    if-eqz v6, :cond_e

    .line 596
    :cond_d
    new-instance v6, Ljava/lang/StringBuilder;

    .line 598
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 601
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 604
    move-result-object v8

    .line 605
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 614
    move-result-object v6

    .line 615
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 618
    new-instance v6, Ljava/lang/StringBuilder;

    .line 620
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 623
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 626
    move-result-object v8

    .line 627
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 636
    move-result-object v6

    .line 637
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 640
    new-instance v6, Ljava/lang/StringBuilder;

    .line 642
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 645
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 648
    move-result-object v8

    .line 649
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 658
    move-result-object v6

    .line 659
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 662
    new-instance v6, Ljava/lang/StringBuilder;

    .line 664
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 667
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 670
    move-result-object v8

    .line 671
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 680
    move-result-object v4

    .line 681
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 684
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 687
    move-result-object v4

    .line 688
    sget-object v6, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->UDP:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 690
    invoke-virtual {v4, v6}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->equals(Ljava/lang/Object;)Z

    .line 693
    move-result v4

    .line 694
    if-nez v4, :cond_f

    .line 696
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 699
    move-result-object v4

    .line 700
    sget-object v6, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->ALL:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 702
    invoke-virtual {v4, v6}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->equals(Ljava/lang/Object;)Z

    .line 705
    move-result v4

    .line 706
    if-eqz v4, :cond_27

    .line 708
    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    .line 710
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 713
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 716
    move-result-object v6

    .line 717
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 726
    move-result-object v4

    .line 727
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 730
    new-instance v4, Ljava/lang/StringBuilder;

    .line 732
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 735
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 738
    move-result-object v6

    .line 739
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 748
    move-result-object v4

    .line 749
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 752
    new-instance v4, Ljava/lang/StringBuilder;

    .line 754
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 757
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 760
    move-result-object v6

    .line 761
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 770
    move-result-object v2

    .line 771
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 774
    new-instance v2, Ljava/lang/StringBuilder;

    .line 776
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 779
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 782
    move-result-object v4

    .line 783
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 792
    move-result-object v1

    .line 793
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 796
    goto/16 :goto_8

    .line 798
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortLocation()Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    .line 801
    move-result-object v10

    .line 802
    sget-object v11, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->ALL:Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    .line 804
    invoke-virtual {v10, v11}, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->equals(Ljava/lang/Object;)Z

    .line 807
    move-result v10

    .line 808
    if-nez v10, :cond_11

    .line 810
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortLocation()Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    .line 813
    move-result-object v10

    .line 814
    sget-object v13, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->LOCAL:Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    .line 816
    invoke-virtual {v10, v13}, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->equals(Ljava/lang/Object;)Z

    .line 819
    move-result v10

    .line 820
    if-eqz v10, :cond_17

    .line 822
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 825
    move-result-object v10

    .line 826
    sget-object v13, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->TCP:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 828
    invoke-virtual {v10, v13}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->equals(Ljava/lang/Object;)Z

    .line 831
    move-result v10

    .line 832
    if-nez v10, :cond_12

    .line 834
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 837
    move-result-object v10

    .line 838
    sget-object v13, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->ALL:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 840
    invoke-virtual {v10, v13}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->equals(Ljava/lang/Object;)Z

    .line 843
    move-result v10

    .line 844
    if-eqz v10, :cond_14

    .line 846
    :cond_12
    if-eqz v7, :cond_13

    .line 848
    new-instance v10, Ljava/lang/StringBuilder;

    .line 850
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 853
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 856
    move-result-object v13

    .line 857
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 866
    move-result-object v10

    .line 867
    invoke-virtual {v3, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 870
    :cond_13
    if-eqz v6, :cond_14

    .line 872
    new-instance v10, Ljava/lang/StringBuilder;

    .line 874
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 877
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 880
    move-result-object v13

    .line 881
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 890
    move-result-object v10

    .line 891
    invoke-virtual {v3, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 894
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 897
    move-result-object v10

    .line 898
    sget-object v13, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->UDP:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 900
    invoke-virtual {v10, v13}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->equals(Ljava/lang/Object;)Z

    .line 903
    move-result v10

    .line 904
    if-nez v10, :cond_15

    .line 906
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 909
    move-result-object v10

    .line 910
    sget-object v13, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->ALL:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 912
    invoke-virtual {v10, v13}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->equals(Ljava/lang/Object;)Z

    .line 915
    move-result v10

    .line 916
    if-eqz v10, :cond_17

    .line 918
    :cond_15
    if-eqz v7, :cond_16

    .line 920
    new-instance v10, Ljava/lang/StringBuilder;

    .line 922
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 925
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 928
    move-result-object v13

    .line 929
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 938
    move-result-object v10

    .line 939
    invoke-virtual {v3, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 942
    :cond_16
    if-eqz v6, :cond_17

    .line 944
    new-instance v10, Ljava/lang/StringBuilder;

    .line 946
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 949
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 952
    move-result-object v13

    .line 953
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 956
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 962
    move-result-object v10

    .line 963
    invoke-virtual {v3, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 966
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortLocation()Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    .line 969
    move-result-object v10

    .line 970
    invoke-virtual {v10, v11}, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->equals(Ljava/lang/Object;)Z

    .line 973
    move-result v10

    .line 974
    if-nez v10, :cond_18

    .line 976
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortLocation()Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    .line 979
    move-result-object v10

    .line 980
    sget-object v11, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->REMOTE:Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    .line 982
    invoke-virtual {v10, v11}, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->equals(Ljava/lang/Object;)Z

    .line 985
    move-result v10

    .line 986
    if-eqz v10, :cond_27

    .line 988
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 991
    move-result-object v10

    .line 992
    sget-object v11, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->TCP:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 994
    invoke-virtual {v10, v11}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->equals(Ljava/lang/Object;)Z

    .line 997
    move-result v10

    .line 998
    if-nez v10, :cond_19

    .line 1000
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 1003
    move-result-object v10

    .line 1004
    sget-object v11, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->ALL:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 1006
    invoke-virtual {v10, v11}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->equals(Ljava/lang/Object;)Z

    .line 1009
    move-result v10

    .line 1010
    if-eqz v10, :cond_1b

    .line 1012
    :cond_19
    if-eqz v7, :cond_1a

    .line 1014
    new-instance v10, Ljava/lang/StringBuilder;

    .line 1016
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1019
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1022
    move-result-object v11

    .line 1023
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1026
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1029
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1032
    move-result-object v4

    .line 1033
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1036
    :cond_1a
    if-eqz v6, :cond_1b

    .line 1038
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1040
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1043
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1046
    move-result-object v10

    .line 1047
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1050
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1056
    move-result-object v4

    .line 1057
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1060
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 1063
    move-result-object v4

    .line 1064
    sget-object v10, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->UDP:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 1066
    invoke-virtual {v4, v10}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->equals(Ljava/lang/Object;)Z

    .line 1069
    move-result v4

    .line 1070
    if-nez v4, :cond_1c

    .line 1072
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 1075
    move-result-object v4

    .line 1076
    sget-object v10, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->ALL:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 1078
    invoke-virtual {v4, v10}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->equals(Ljava/lang/Object;)Z

    .line 1081
    move-result v4

    .line 1082
    if-eqz v4, :cond_27

    .line 1084
    :cond_1c
    if-eqz v7, :cond_1d

    .line 1086
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1088
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1091
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1094
    move-result-object v8

    .line 1095
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1098
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1104
    move-result-object v1

    .line 1105
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1108
    :cond_1d
    if-eqz v6, :cond_27

    .line 1110
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1112
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1115
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1118
    move-result-object v4

    .line 1119
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1125
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1128
    move-result-object v1

    .line 1129
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1132
    goto/16 :goto_8

    .line 1134
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 1137
    move-result-object v1

    .line 1138
    sget-object v2, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->TCP:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 1140
    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->equals(Ljava/lang/Object;)Z

    .line 1143
    move-result v1

    .line 1144
    if-eqz v1, :cond_21

    .line 1146
    const-string v1, " -p tcp"

    .line 1148
    if-eqz v7, :cond_1f

    .line 1150
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1152
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1155
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1158
    move-result-object v4

    .line 1159
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1162
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1165
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1168
    move-result-object v2

    .line 1169
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1172
    :cond_1f
    if-eqz v6, :cond_20

    .line 1174
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1176
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1179
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1182
    move-result-object v4

    .line 1183
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1186
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1189
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1192
    move-result-object v2

    .line 1193
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1196
    :cond_20
    if-eqz v13, :cond_27

    .line 1198
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1200
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1203
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1206
    move-result-object v4

    .line 1207
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1210
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1213
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1216
    move-result-object v2

    .line 1217
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1220
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1222
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1225
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1228
    move-result-object v4

    .line 1229
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1232
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1235
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1238
    move-result-object v1

    .line 1239
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1242
    goto/16 :goto_8

    .line 1244
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 1247
    move-result-object v1

    .line 1248
    sget-object v2, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->UDP:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 1250
    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->equals(Ljava/lang/Object;)Z

    .line 1253
    move-result v1

    .line 1254
    if-eqz v1, :cond_24

    .line 1256
    const-string v1, " -p udp"

    .line 1258
    if-eqz v7, :cond_22

    .line 1260
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1262
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1265
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1268
    move-result-object v4

    .line 1269
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1272
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1275
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1278
    move-result-object v2

    .line 1279
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1282
    :cond_22
    if-eqz v6, :cond_23

    .line 1284
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1286
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1289
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1292
    move-result-object v4

    .line 1293
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1296
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1299
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1302
    move-result-object v2

    .line 1303
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1306
    :cond_23
    if-eqz v13, :cond_27

    .line 1308
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1310
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1313
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1316
    move-result-object v4

    .line 1317
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1320
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1323
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1326
    move-result-object v2

    .line 1327
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1330
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1332
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1335
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1338
    move-result-object v4

    .line 1339
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1342
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1345
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1348
    move-result-object v1

    .line 1349
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1352
    goto :goto_8

    .line 1353
    :cond_24
    if-eqz v7, :cond_25

    .line 1355
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1358
    move-result-object v1

    .line 1359
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1362
    :cond_25
    if-eqz v6, :cond_26

    .line 1364
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1367
    move-result-object v1

    .line 1368
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1371
    :cond_26
    if-eqz v13, :cond_27

    .line 1373
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1376
    move-result-object v1

    .line 1377
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1380
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1383
    move-result-object v1

    .line 1384
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1387
    :cond_27
    :goto_8
    new-instance v1, Ljava/util/ArrayList;

    .line 1389
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1392
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1395
    move-result-object v2

    .line 1396
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1399
    move-result v3

    .line 1400
    if-eqz v3, :cond_2d

    .line 1402
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1405
    move-result-object v3

    .line 1406
    check-cast v3, Ljava/lang/String;

    .line 1408
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1410
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1413
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    .line 1416
    move-result-object v3

    .line 1417
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1420
    move-result v3

    .line 1421
    if-nez v3, :cond_29

    .line 1423
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    .line 1426
    move-result-object v3

    .line 1427
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    .line 1430
    move-result-object v6

    .line 1431
    invoke-virtual {v6, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1434
    move-result v6

    .line 1435
    if-eqz v6, :cond_28

    .line 1437
    const/16 v6, 0x2d

    .line 1439
    const/16 v8, 0x3a

    .line 1441
    invoke-virtual {v3, v6, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 1444
    move-result-object v3

    .line 1445
    :cond_28
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1448
    :cond_29
    const-string/jumbo v3, "output"

    .line 1451
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    .line 1454
    move-result v3

    .line 1455
    const/4 v6, -0x1

    .line 1456
    if-eq v3, v6, :cond_2a

    .line 1458
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1461
    move-object/from16 v3, p0

    .line 1463
    invoke-static {v0, v3}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getAppOrUserUid(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/firewall/FirewallRule;)Ljava/lang/String;

    .line 1466
    move-result-object v8

    .line 1467
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1470
    goto :goto_a

    .line 1471
    :cond_2a
    move-object/from16 v3, p0

    .line 1473
    :goto_a
    if-eqz v7, :cond_2c

    .line 1475
    sget-object v8, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->DENY:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 1477
    move-object/from16 v9, p3

    .line 1479
    invoke-virtual {v9, v8}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    .line 1482
    move-result v8

    .line 1483
    if-eqz v8, :cond_2b

    .line 1485
    const-string/jumbo v8, "input"

    .line 1488
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    .line 1491
    move-result v8

    .line 1492
    if-eq v8, v6, :cond_2b

    .line 1494
    const-string v6, " -j DROP"

    .line 1496
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1499
    move-object/from16 v8, v16

    .line 1501
    goto :goto_d

    .line 1502
    :cond_2b
    :goto_b
    move-object/from16 v8, v16

    .line 1504
    goto :goto_c

    .line 1505
    :cond_2c
    move-object/from16 v9, p3

    .line 1507
    goto :goto_b

    .line 1508
    :goto_c
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1511
    :goto_d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1514
    move-result-object v4

    .line 1515
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1518
    move-object/from16 v16, v8

    .line 1520
    goto :goto_9

    .line 1521
    :cond_2d
    return-object v1
.end method

.method public static createAppendDeleteDomainCommands(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;Ljava/lang/String;Lcom/samsung/android/knox/ContextInfo;Z)Ljava/util/List;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    iget p2, p2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 16
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 19
    move-result p2

    .line 20
    const-string v2, "*"

    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 28
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v3

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-static {p2, v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getUidForApplication(ILjava/lang/String;)Ljava/lang/Integer;

    .line 36
    move-result-object v3

    .line 37
    if-nez v3, :cond_1

    .line 39
    const-string p0, "Failed to get uid for "

    .line 41
    const-string p1, "FirewallCommandBuilder"

    .line 43
    invoke-static {p0, v1, p1}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-object v0

    .line 47
    :cond_1
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object v4

    .line 51
    const/4 v5, 0x1

    .line 52
    invoke-static {v1, v3, v4, v5}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getDomainFilterChainNameForApp(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Z)Ljava/lang/String;

    .line 55
    move-result-object v4

    .line 56
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object p2

    .line 60
    const/4 v5, 0x0

    .line 61
    invoke-static {v1, v3, p2, v5}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getDomainFilterChainNameForApp(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Z)Ljava/lang/String;

    .line 64
    move-result-object p2

    .line 65
    const-string v1, "-A"

    .line 67
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_2

    .line 73
    const-string v1, "-I"

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    move-object v1, p1

    .line 77
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    .line 80
    move-result-object v3

    .line 81
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 84
    move-result-object v3

    .line 85
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    move-result v5

    .line 89
    const-string v6, " -j ACCEPT"

    .line 91
    const-string v7, "%"

    .line 93
    const-string v8, "\\*"

    .line 95
    const-string v9, " "

    .line 97
    if-eqz v5, :cond_4

    .line 99
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    move-result-object v5

    .line 103
    check-cast v5, Ljava/lang/String;

    .line 105
    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 108
    move-result v10

    .line 109
    if-eqz v10, :cond_3

    .line 111
    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    move-result-object v5

    .line 115
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    .line 117
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string v8, " -m domainfilter --whitelist "

    .line 131
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    move-result-object v5

    .line 144
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    goto :goto_2

    .line 148
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    .line 151
    move-result-object p0

    .line 152
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 155
    move-result-object p0

    .line 156
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    move-result v3

    .line 160
    if-eqz v3, :cond_6

    .line 162
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    move-result-object v3

    .line 166
    check-cast v3, Ljava/lang/String;

    .line 168
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 171
    move-result v5

    .line 172
    if-eqz v5, :cond_5

    .line 174
    invoke-virtual {v3, v8, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    move-result-object v3

    .line 178
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    .line 180
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const-string v10, " -m domainfilter --blacklist "

    .line 194
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const-string v3, " -j REJECT"

    .line 202
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    move-result-object v3

    .line 209
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    goto :goto_3

    .line 213
    :cond_6
    if-eqz p3, :cond_7

    .line 215
    new-instance p0, Ljava/lang/StringBuilder;

    .line 217
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    move-result-object p0

    .line 236
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_7
    return-object v0
.end method

.method public static createIcmpAllowRuleCommands(IZ)Ljava/util/List;
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 3
    const-string p1, "-I"

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string p1, "-D"

    .line 8
    :goto_0
    const-string v0, "*filter"

    .line 10
    invoke-static {v0}, Landroid/hardware/usb/V1_1/PortStatus_1_1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    const/4 v2, 0x4

    .line 20
    if-ne p0, v2, :cond_1

    .line 22
    const-string p0, " firewall_allow-input -p icmp -m icmp --icmp-type 3 -m state --state RELATED,ESTABLISHED -j ACCEPT"

    .line 24
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/4 v2, 0x6

    .line 33
    if-ne p0, v2, :cond_2

    .line 35
    const-string p0, " firewall_allow-input -p icmpv6 -m icmpv6 --icmpv6-type 1 -m state --state RELATED,ESTABLISHED -j ACCEPT"

    .line 37
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    const-string p0, "COMMIT\n"

    .line 53
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    return-object v0
.end method

.method public static getDomainFilterBaseChainNameForUser(IZ)Ljava/lang/String;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 3
    const-string p0, ""

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 10
    :goto_0
    if-eqz p1, :cond_1

    .line 12
    const-string/jumbo p0, "domain_filter-input"

    .line 15
    return-object p0

    .line 16
    :cond_1
    const-string/jumbo p1, "domain_filter-output"

    .line 19
    invoke-static {p1, p0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static getDomainFilterChainNameForApp(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Z)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p3, :cond_0

    .line 3
    const-string/jumbo p0, "domain_input-all"

    .line 6
    goto :goto_1

    .line 7
    :cond_0
    const-string p3, ""

    .line 9
    if-eqz p0, :cond_1

    .line 11
    const-string v0, "*"

    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_2

    .line 19
    :cond_1
    if-eqz p1, :cond_4

    .line 21
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 24
    move-result p0

    .line 25
    const/4 v0, -0x1

    .line 26
    if-ne p0, v0, :cond_4

    .line 28
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 31
    move-result p0

    .line 32
    if-nez p0, :cond_3

    .line 34
    goto :goto_0

    .line 35
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 38
    move-result p0

    .line 39
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 42
    move-result-object p3

    .line 43
    :goto_0
    const-string/jumbo p0, "domain_output-all"

    .line 46
    invoke-static {p0, p3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    goto :goto_1

    .line 51
    :cond_4
    if-eqz p1, :cond_5

    .line 53
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 56
    move-result p0

    .line 57
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 60
    move-result-object p0

    .line 61
    const-string/jumbo p1, "domain_output-uid"

    .line 64
    invoke-static {p1, p0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 68
    goto :goto_1

    .line 69
    :cond_5
    move-object p0, p3

    .line 70
    :goto_1
    return-object p0
.end method

.method public static getIptablesCommand(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getRuleType()Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 10
    move-result-object v3

    .line 11
    sget-object v4, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder$1;->$SwitchMap$com$samsung$android$knox$net$firewall$FirewallRule$RuleType:[I

    .line 13
    invoke-virtual {v3}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ordinal()I

    .line 16
    move-result v3

    .line 17
    aget v3, v4, v3

    .line 19
    const/4 v4, 0x1

    .line 20
    if-eq v3, v4, :cond_19

    .line 22
    const/4 v4, 0x2

    .line 23
    if-eq v3, v4, :cond_18

    .line 25
    const/4 v4, 0x3

    .line 26
    const-string v5, " -p udp"

    .line 28
    const-string v6, " -p tcp"

    .line 30
    const-string v7, " "

    .line 32
    const-string v8, " -o "

    .line 34
    const-string v9, " --dport "

    .line 36
    const/16 v11, 0x2d

    .line 38
    const-string v12, "-d "

    .line 40
    const-string v13, "-m iprange --dst-range "

    .line 42
    const-string v14, ""

    .line 44
    const-string v15, "-"

    .line 46
    const-string v10, "*"

    .line 48
    if-eq v3, v4, :cond_b

    .line 50
    const/4 v4, 0x4

    .line 51
    if-eq v3, v4, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 54
    return-object v0

    .line 55
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    .line 57
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_1

    .line 70
    move-object v4, v14

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {v4, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_2

    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    .line 84
    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    .line 90
    move-result-object v12

    .line 91
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object v4

    .line 98
    goto :goto_0

    .line 99
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 101
    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    .line 107
    move-result-object v12

    .line 108
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object v4

    .line 115
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    .line 118
    move-result-object v12

    .line 119
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    move-result v10

    .line 123
    if-eqz v10, :cond_3

    .line 125
    move-object v9, v14

    .line 126
    goto :goto_1

    .line 127
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    .line 130
    move-result-object v10

    .line 131
    invoke-virtual {v10, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 134
    move-result v12

    .line 135
    if-eqz v12, :cond_4

    .line 137
    const/16 v12, 0x3a

    .line 139
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 142
    move-result-object v10

    .line 143
    :cond_4
    invoke-static {v9, v10}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    move-result-object v9

    .line 147
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    .line 150
    move-result-object v10

    .line 151
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 154
    move-result v10

    .line 155
    if-nez v10, :cond_5

    .line 157
    new-instance v10, Ljava/lang/StringBuilder;

    .line 159
    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    .line 165
    move-result-object v8

    .line 166
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    move-result-object v14

    .line 173
    goto :goto_2

    .line 174
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getNetworkInterface()Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    .line 177
    move-result-object v10

    .line 178
    sget-object v11, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->ALL_NETWORKS:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    .line 180
    invoke-virtual {v10, v11}, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->equals(Ljava/lang/Object;)Z

    .line 183
    move-result v10

    .line 184
    if-nez v10, :cond_6

    .line 186
    new-instance v10, Ljava/lang/StringBuilder;

    .line 188
    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getNetworkInterface()Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    .line 194
    move-result-object v8

    .line 195
    invoke-static {v8}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertNetworkInterfaceForIptables(Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;)Ljava/lang/String;

    .line 198
    move-result-object v8

    .line 199
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    move-result-object v14

    .line 206
    :cond_6
    :goto_2
    iget v8, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 208
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    .line 211
    move-result v8

    .line 212
    const-string/jumbo v10, "firewall_exceptions-output"

    .line 215
    if-nez v8, :cond_7

    .line 217
    goto :goto_3

    .line 218
    :cond_7
    invoke-static {v8, v10}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 221
    move-result-object v10

    .line 222
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 225
    move-result-object v8

    .line 226
    sget-object v11, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->TCP:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 228
    invoke-virtual {v8, v11}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->equals(Ljava/lang/Object;)Z

    .line 231
    move-result v8

    .line 232
    const-string v11, " -j ACCEPT"

    .line 234
    if-nez v8, :cond_8

    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 239
    move-result-object v8

    .line 240
    sget-object v12, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->ALL:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 242
    invoke-virtual {v8, v12}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->equals(Ljava/lang/Object;)Z

    .line 245
    move-result v8

    .line 246
    if-eqz v8, :cond_9

    .line 248
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    .line 250
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-static {v8, v14, v6, v9}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-static {v1, v0}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getAppOrUserUid(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/firewall/FirewallRule;)Ljava/lang/String;

    .line 274
    move-result-object v6

    .line 275
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    move-result-object v6

    .line 285
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 291
    move-result-object v6

    .line 292
    sget-object v8, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->UDP:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 294
    invoke-virtual {v6, v8}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->equals(Ljava/lang/Object;)Z

    .line 297
    move-result v6

    .line 298
    if-nez v6, :cond_a

    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 303
    move-result-object v6

    .line 304
    sget-object v8, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->ALL:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 306
    invoke-virtual {v6, v8}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->equals(Ljava/lang/Object;)Z

    .line 309
    move-result v6

    .line 310
    if-eqz v6, :cond_1a

    .line 312
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    .line 314
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-static {v6, v14, v5, v9}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-static {v1, v0}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getAppOrUserUid(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/firewall/FirewallRule;)Ljava/lang/String;

    .line 338
    move-result-object v0

    .line 339
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    move-result-object v0

    .line 349
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    goto/16 :goto_a

    .line 354
    :cond_b
    new-instance v3, Ljava/util/ArrayList;

    .line 356
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    .line 362
    move-result-object v4

    .line 363
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 366
    move-result v4

    .line 367
    if-eqz v4, :cond_c

    .line 369
    move-object v4, v14

    .line 370
    goto :goto_4

    .line 371
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    .line 374
    move-result-object v4

    .line 375
    invoke-virtual {v4, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 378
    move-result v4

    .line 379
    if-eqz v4, :cond_d

    .line 381
    new-instance v4, Ljava/lang/StringBuilder;

    .line 383
    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 386
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    .line 389
    move-result-object v12

    .line 390
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 396
    move-result-object v4

    .line 397
    goto :goto_4

    .line 398
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    .line 400
    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 403
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    .line 406
    move-result-object v12

    .line 407
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 413
    move-result-object v4

    .line 414
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    .line 417
    move-result-object v12

    .line 418
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 421
    move-result v10

    .line 422
    if-eqz v10, :cond_e

    .line 424
    move-object v9, v14

    .line 425
    goto :goto_5

    .line 426
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    .line 429
    move-result-object v10

    .line 430
    invoke-virtual {v10, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 433
    move-result v12

    .line 434
    if-eqz v12, :cond_f

    .line 436
    const/16 v12, 0x3a

    .line 438
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 441
    move-result-object v10

    .line 442
    :cond_f
    invoke-static {v9, v10, v7}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 445
    move-result-object v9

    .line 446
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    .line 449
    move-result-object v10

    .line 450
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 453
    move-result v10

    .line 454
    if-nez v10, :cond_10

    .line 456
    new-instance v10, Ljava/lang/StringBuilder;

    .line 458
    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 461
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    .line 464
    move-result-object v8

    .line 465
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 471
    move-result-object v14

    .line 472
    goto :goto_6

    .line 473
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getNetworkInterface()Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    .line 476
    move-result-object v10

    .line 477
    sget-object v11, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->ALL_NETWORKS:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    .line 479
    invoke-virtual {v10, v11}, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->equals(Ljava/lang/Object;)Z

    .line 482
    move-result v10

    .line 483
    if-nez v10, :cond_11

    .line 485
    new-instance v10, Ljava/lang/StringBuilder;

    .line 487
    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 490
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getNetworkInterface()Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    .line 493
    move-result-object v8

    .line 494
    invoke-static {v8}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertNetworkInterfaceForIptables(Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;)Ljava/lang/String;

    .line 497
    move-result-object v8

    .line 498
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 504
    move-result-object v14

    .line 505
    :cond_11
    :goto_6
    iget v8, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 507
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    .line 510
    move-result v8

    .line 511
    const-string/jumbo v10, "firewall_redirect-output"

    .line 514
    if-nez v8, :cond_12

    .line 516
    goto :goto_7

    .line 517
    :cond_12
    invoke-static {v8, v10}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 520
    move-result-object v10

    .line 521
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 524
    move-result-object v8

    .line 525
    sget-object v11, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->TCP:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 527
    invoke-virtual {v8, v11}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->equals(Ljava/lang/Object;)Z

    .line 530
    move-result v8

    .line 531
    const-string v11, ":"

    .line 533
    const-string v12, "]:"

    .line 535
    const-string v13, "["

    .line 537
    const-string v15, " -j DNAT --to-destination "

    .line 539
    if-nez v8, :cond_13

    .line 541
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 544
    move-result-object v8

    .line 545
    move-object/from16 v16, v5

    .line 547
    sget-object v5, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->ALL:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 549
    invoke-virtual {v8, v5}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->equals(Ljava/lang/Object;)Z

    .line 552
    move-result v5

    .line 553
    if-eqz v5, :cond_15

    .line 555
    goto :goto_8

    .line 556
    :cond_13
    move-object/from16 v16, v5

    .line 558
    :goto_8
    new-instance v5, Ljava/lang/StringBuilder;

    .line 560
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 563
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    invoke-static {v5, v14, v6, v9}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    invoke-static {v1, v0}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getAppOrUserUid(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/firewall/FirewallRule;)Ljava/lang/String;

    .line 584
    move-result-object v6

    .line 585
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 594
    move-result-object v5

    .line 595
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getAddressType()Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 598
    move-result-object v6

    .line 599
    sget-object v8, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV6:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 601
    invoke-virtual {v6, v8}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->equals(Ljava/lang/Object;)Z

    .line 604
    move-result v6

    .line 605
    if-eqz v6, :cond_14

    .line 607
    invoke-static {v5, v13}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    move-result-object v5

    .line 611
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getTargetIpAddress()Ljava/lang/String;

    .line 614
    move-result-object v6

    .line 615
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getTargetPortNumber()Ljava/lang/String;

    .line 624
    move-result-object v6

    .line 625
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 631
    move-result-object v5

    .line 632
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    goto :goto_9

    .line 636
    :cond_14
    invoke-static {v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    move-result-object v5

    .line 640
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getTargetIpAddress()Ljava/lang/String;

    .line 643
    move-result-object v6

    .line 644
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getTargetPortNumber()Ljava/lang/String;

    .line 653
    move-result-object v6

    .line 654
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 660
    move-result-object v5

    .line 661
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    :cond_15
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 667
    move-result-object v5

    .line 668
    sget-object v6, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->UDP:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 670
    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->equals(Ljava/lang/Object;)Z

    .line 673
    move-result v5

    .line 674
    if-nez v5, :cond_16

    .line 676
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 679
    move-result-object v5

    .line 680
    sget-object v6, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->ALL:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 682
    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->equals(Ljava/lang/Object;)Z

    .line 685
    move-result v5

    .line 686
    if-eqz v5, :cond_1a

    .line 688
    :cond_16
    new-instance v5, Ljava/lang/StringBuilder;

    .line 690
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 693
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    move-object/from16 v2, v16

    .line 710
    invoke-static {v5, v14, v2, v9}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    invoke-static {v1, v0}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getAppOrUserUid(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/firewall/FirewallRule;)Ljava/lang/String;

    .line 716
    move-result-object v1

    .line 717
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 726
    move-result-object v1

    .line 727
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getAddressType()Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 730
    move-result-object v2

    .line 731
    sget-object v4, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV6:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 733
    invoke-virtual {v2, v4}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->equals(Ljava/lang/Object;)Z

    .line 736
    move-result v2

    .line 737
    if-eqz v2, :cond_17

    .line 739
    invoke-static {v1, v13}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    move-result-object v1

    .line 743
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getTargetIpAddress()Ljava/lang/String;

    .line 746
    move-result-object v2

    .line 747
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getTargetPortNumber()Ljava/lang/String;

    .line 756
    move-result-object v0

    .line 757
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 763
    move-result-object v0

    .line 764
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    goto :goto_a

    .line 768
    :cond_17
    invoke-static {v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    move-result-object v1

    .line 772
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getTargetIpAddress()Ljava/lang/String;

    .line 775
    move-result-object v2

    .line 776
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getTargetPortNumber()Ljava/lang/String;

    .line 785
    move-result-object v0

    .line 786
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 792
    move-result-object v0

    .line 793
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 796
    goto :goto_a

    .line 797
    :cond_18
    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->DENY:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 799
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->createAllowOrDenyCommands(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;)Ljava/util/List;

    .line 802
    move-result-object v3

    .line 803
    goto :goto_a

    .line 804
    :cond_19
    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ALLOW:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 806
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->createAllowOrDenyCommands(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;)Ljava/util/List;

    .line 809
    move-result-object v3

    .line 810
    :cond_1a
    :goto_a
    return-object v3
.end method

.method public static getListIptablesRestoreCommand(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    const-string v2, "*"

    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const-string p0, "\n"

    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    const-string p0, "-L -n -v --line-numbers"

    .line 30
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    const-string p0, "COMMIT\n"

    .line 35
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    return-object v0
.end method
