.class Lcom/android/server/flags/FeatureFlagsBinder;
.super Landroid/flags/IFeatureFlags$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDynamicFlagDelegate:Lcom/android/server/flags/DynamicFlagBinderDelegate;

.field public final mFlagCache:Lcom/android/server/flags/FlagCache;

.field public final mFlagStore:Lcom/android/server/flags/FlagOverrideStore;

.field public final mPermissionsChecker:Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;

.field public final mShellCommand:Lcom/android/server/flags/FlagsShellCommand;


# direct methods
.method public constructor <init>(Lcom/android/server/flags/FlagOverrideStore;Lcom/android/server/flags/FlagsShellCommand;Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/flags/IFeatureFlags$Stub;-><init>()V

    .line 4
    new-instance v0, Lcom/android/server/flags/FlagCache;

    .line 6
    invoke-direct {v0}, Lcom/android/server/flags/FlagCache;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mFlagCache:Lcom/android/server/flags/FlagCache;

    .line 11
    iput-object p1, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mFlagStore:Lcom/android/server/flags/FlagOverrideStore;

    .line 13
    iput-object p2, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mShellCommand:Lcom/android/server/flags/FlagsShellCommand;

    .line 15
    new-instance p2, Lcom/android/server/flags/DynamicFlagBinderDelegate;

    .line 17
    invoke-direct {p2, p1}, Lcom/android/server/flags/DynamicFlagBinderDelegate;-><init>(Lcom/android/server/flags/FlagOverrideStore;)V

    .line 20
    iput-object p2, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mDynamicFlagDelegate:Lcom/android/server/flags/DynamicFlagBinderDelegate;

    .line 22
    iput-object p3, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mPermissionsChecker:Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;

    .line 24
    return-void
.end method


# virtual methods
.method public handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .locals 10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1
    const/4 p1, 0x4

    .line 2
    const/4 v0, 0x3

    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x1

    .line 7
    new-instance v5, Ljava/io/FileOutputStream;

    .line 9
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 12
    move-result-object p2

    .line 13
    invoke-direct {v5, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 16
    new-instance p2, Ljava/io/FileOutputStream;

    .line 18
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 21
    move-result-object p3

    .line 22
    invoke-direct {p2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 25
    iget-object p0, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mShellCommand:Lcom/android/server/flags/FlagsShellCommand;

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    new-instance p3, Lcom/android/internal/util/FastPrintWriter;

    .line 32
    invoke-direct {p3, v5}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 35
    new-instance v5, Lcom/android/internal/util/FastPrintWriter;

    .line 37
    invoke-direct {v5, p2}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 40
    array-length p2, p4

    .line 41
    if-nez p2, :cond_0

    .line 43
    invoke-static {p3}, Lcom/android/server/flags/FlagsShellCommand;->printHelp(Ljava/io/PrintWriter;)V

    .line 46
    :goto_0
    move v1, v3

    .line 47
    goto/16 :goto_c

    .line 49
    :cond_0
    aget-object p2, p4, v3

    .line 51
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 53
    invoke-virtual {p2, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    const-string v6, " <namespace> <name>`"

    .line 62
    const-string v7, "."

    .line 64
    iget-object p0, p0, Lcom/android/server/flags/FlagsShellCommand;->mFlagStore:Lcom/android/server/flags/FlagOverrideStore;

    .line 66
    const-string v8, "Expected `"

    .line 68
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 71
    move-result v9

    .line 72
    sparse-switch v9, :sswitch_data_0

    .line 75
    :goto_1
    move p2, v1

    .line 76
    goto :goto_2

    .line 77
    :sswitch_0
    const-string/jumbo v9, "erase"

    .line 80
    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result p2

    .line 84
    if-nez p2, :cond_1

    .line 86
    goto :goto_1

    .line 87
    :cond_1
    move p2, p1

    .line 88
    goto :goto_2

    .line 89
    :sswitch_1
    const-string/jumbo v9, "list"

    .line 92
    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    move-result p2

    .line 96
    if-nez p2, :cond_2

    .line 98
    goto :goto_1

    .line 99
    :cond_2
    move p2, v0

    .line 100
    goto :goto_2

    .line 101
    :sswitch_2
    const-string/jumbo v9, "help"

    .line 104
    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    move-result p2

    .line 108
    if-nez p2, :cond_3

    .line 110
    goto :goto_1

    .line 111
    :cond_3
    move p2, v2

    .line 112
    goto :goto_2

    .line 113
    :sswitch_3
    const-string/jumbo v9, "set"

    .line 116
    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    move-result p2

    .line 120
    if-nez p2, :cond_4

    .line 122
    goto :goto_1

    .line 123
    :cond_4
    move p2, v4

    .line 124
    goto :goto_2

    .line 125
    :sswitch_4
    const-string/jumbo v9, "get"

    .line 128
    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    move-result p2

    .line 132
    if-nez p2, :cond_5

    .line 134
    goto :goto_1

    .line 135
    :cond_5
    move p2, v3

    .line 136
    :goto_2
    packed-switch p2, :pswitch_data_0

    .line 139
    const-string p0, "This command is unknown."

    .line 141
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    invoke-static {p3}, Lcom/android/server/flags/FlagsShellCommand;->printHelp(Ljava/io/PrintWriter;)V

    .line 147
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    .line 150
    goto/16 :goto_c

    .line 152
    :pswitch_0
    aget-object p1, p4, v3

    .line 154
    invoke-static {p4, v2, v2, p1, v5}, Lcom/android/server/flags/FlagsShellCommand;->validateNumArguments([Ljava/lang/String;IILjava/lang/String;Ljava/io/PrintWriter;)Z

    .line 157
    move-result p1

    .line 158
    if-nez p1, :cond_6

    .line 160
    new-instance p0, Ljava/lang/StringBuilder;

    .line 162
    invoke-direct {p0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    aget-object p1, p4, v3

    .line 167
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    move-result-object p0

    .line 177
    invoke-virtual {v5, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v5}, Ljava/io/PrintWriter;->flush()V

    .line 183
    goto/16 :goto_c

    .line 185
    :cond_6
    aget-object p1, p4, v4

    .line 187
    aget-object p2, p4, v2

    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/android/server/flags/FlagOverrideStore;->erase(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    new-instance p0, Ljava/lang/StringBuilder;

    .line 194
    const-string p1, "Erased "

    .line 196
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    aget-object p1, p4, v4

    .line 201
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    aget-object p1, p4, v2

    .line 209
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    move-result-object p0

    .line 216
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 219
    goto/16 :goto_0

    .line 221
    :pswitch_1
    aget-object p2, p4, v3

    .line 223
    invoke-static {p4, v3, v4, p2, v5}, Lcom/android/server/flags/FlagsShellCommand;->validateNumArguments([Ljava/lang/String;IILjava/lang/String;Ljava/io/PrintWriter;)Z

    .line 226
    move-result p2

    .line 227
    if-nez p2, :cond_7

    .line 229
    new-instance p0, Ljava/lang/StringBuilder;

    .line 231
    invoke-direct {p0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    aget-object p1, p4, v3

    .line 236
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    const-string p1, " [namespace]`"

    .line 241
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    move-result-object p0

    .line 248
    invoke-virtual {v5, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v5}, Ljava/io/PrintWriter;->flush()V

    .line 254
    goto/16 :goto_c

    .line 256
    :cond_7
    array-length p2, p4

    .line 257
    if-ne p2, v2, :cond_8

    .line 259
    aget-object p2, p4, v4

    .line 261
    invoke-virtual {p0, p2}, Lcom/android/server/flags/FlagOverrideStore;->getFlagsForNamespace(Ljava/lang/String;)Ljava/util/Map;

    .line 264
    move-result-object p0

    .line 265
    goto :goto_3

    .line 266
    :cond_8
    const/4 p2, 0x0

    .line 267
    invoke-virtual {p0, p2}, Lcom/android/server/flags/FlagOverrideStore;->getFlagsForNamespace(Ljava/lang/String;)Ljava/util/Map;

    .line 270
    move-result-object p0

    .line 271
    :goto_3
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    .line 274
    move-result p2

    .line 275
    if-eqz p2, :cond_9

    .line 277
    const-string p0, "No overrides set"

    .line 279
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 282
    goto/16 :goto_9

    .line 284
    :cond_9
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 287
    move-result-object p2

    .line 288
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 291
    move-result-object p2

    .line 292
    const/16 p4, 0x9

    .line 294
    const/4 v0, 0x5

    .line 295
    :cond_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 298
    move-result v1

    .line 299
    if-eqz v1, :cond_b

    .line 301
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 304
    move-result-object v1

    .line 305
    check-cast v1, Ljava/util/Map$Entry;

    .line 307
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 310
    move-result-object v2

    .line 311
    check-cast v2, Ljava/lang/String;

    .line 313
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 316
    move-result v2

    .line 317
    invoke-static {p4, v2}, Ljava/lang/Math;->max(II)I

    .line 320
    move-result p4

    .line 321
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 324
    move-result-object v1

    .line 325
    check-cast v1, Ljava/util/Map;

    .line 327
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 330
    move-result-object v1

    .line 331
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 334
    move-result-object v1

    .line 335
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 338
    move-result v2

    .line 339
    if-eqz v2, :cond_a

    .line 341
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 344
    move-result-object v2

    .line 345
    check-cast v2, Ljava/util/Map$Entry;

    .line 347
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 350
    move-result-object v5

    .line 351
    check-cast v5, Ljava/lang/String;

    .line 353
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 356
    move-result v5

    .line 357
    invoke-static {p1, v5}, Ljava/lang/Math;->max(II)I

    .line 360
    move-result p1

    .line 361
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 364
    move-result-object v2

    .line 365
    check-cast v2, Ljava/lang/String;

    .line 367
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 370
    move-result v2

    .line 371
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 374
    move-result v0

    .line 375
    goto :goto_4

    .line 376
    :cond_b
    const-string p2, "%-"

    .line 378
    const-string/jumbo v1, "s"

    .line 381
    invoke-static {p4, p2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 384
    move-result-object v2

    .line 385
    const-string/jumbo v5, "namespace"

    .line 388
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 391
    move-result-object v5

    .line 392
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 395
    move-result-object v2

    .line 396
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 399
    const/16 v2, 0x20

    .line 401
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 404
    new-instance v5, Ljava/lang/StringBuilder;

    .line 406
    invoke-direct {v5, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 409
    invoke-static {p1, v5, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 412
    move-result-object v5

    .line 413
    const-string/jumbo v6, "flag"

    .line 416
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 419
    move-result-object v6

    .line 420
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 423
    move-result-object v5

    .line 424
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 430
    const-string/jumbo v5, "value"

    .line 433
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 436
    move v5, v3

    .line 437
    :goto_5
    const/16 v6, 0x3d

    .line 439
    if-ge v5, p4, :cond_c

    .line 441
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 444
    add-int/2addr v5, v4

    .line 445
    goto :goto_5

    .line 446
    :cond_c
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 449
    move v5, v3

    .line 450
    :goto_6
    if-ge v5, p1, :cond_d

    .line 452
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 455
    add-int/2addr v5, v4

    .line 456
    goto :goto_6

    .line 457
    :cond_d
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 460
    move v5, v3

    .line 461
    :goto_7
    if-ge v5, v0, :cond_e

    .line 463
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 466
    add-int/2addr v5, v4

    .line 467
    goto :goto_7

    .line 468
    :cond_e
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 471
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 474
    move-result-object p0

    .line 475
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 478
    move-result-object p0

    .line 479
    :cond_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 482
    move-result v0

    .line 483
    if-eqz v0, :cond_10

    .line 485
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 488
    move-result-object v0

    .line 489
    check-cast v0, Ljava/util/Map$Entry;

    .line 491
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 494
    move-result-object v4

    .line 495
    check-cast v4, Ljava/util/Map;

    .line 497
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 500
    move-result-object v4

    .line 501
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 504
    move-result-object v4

    .line 505
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 508
    move-result v5

    .line 509
    if-eqz v5, :cond_f

    .line 511
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 514
    move-result-object v5

    .line 515
    check-cast v5, Ljava/util/Map$Entry;

    .line 517
    invoke-static {p4, p2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 520
    move-result-object v6

    .line 521
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 524
    move-result-object v7

    .line 525
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 528
    move-result-object v7

    .line 529
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 532
    move-result-object v6

    .line 533
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 539
    new-instance v6, Ljava/lang/StringBuilder;

    .line 541
    invoke-direct {v6, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 544
    invoke-static {p1, v6, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 547
    move-result-object v6

    .line 548
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 551
    move-result-object v7

    .line 552
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 555
    move-result-object v7

    .line 556
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 559
    move-result-object v6

    .line 560
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 566
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 569
    move-result-object v5

    .line 570
    check-cast v5, Ljava/lang/String;

    .line 572
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 575
    goto :goto_8

    .line 576
    :cond_10
    :goto_9
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    .line 579
    goto/16 :goto_0

    .line 581
    :pswitch_2
    invoke-static {p3}, Lcom/android/server/flags/FlagsShellCommand;->printHelp(Ljava/io/PrintWriter;)V

    .line 584
    goto/16 :goto_0

    .line 586
    :pswitch_3
    aget-object p1, p4, v3

    .line 588
    invoke-static {p4, v0, v0, p1, v5}, Lcom/android/server/flags/FlagsShellCommand;->validateNumArguments([Ljava/lang/String;IILjava/lang/String;Ljava/io/PrintWriter;)Z

    .line 591
    move-result p1

    .line 592
    if-nez p1, :cond_11

    .line 594
    new-instance p0, Ljava/lang/StringBuilder;

    .line 596
    invoke-direct {p0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 599
    aget-object p1, p4, v3

    .line 601
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    const-string p1, " <namespace> <name> <value>`"

    .line 606
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 612
    move-result-object p0

    .line 613
    invoke-virtual {v5, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 616
    invoke-virtual {v5}, Ljava/io/PrintWriter;->flush()V

    .line 619
    goto/16 :goto_c

    .line 621
    :cond_11
    aget-object p1, p4, v4

    .line 623
    aget-object p2, p4, v2

    .line 625
    aget-object v1, p4, v0

    .line 627
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/flags/FlagOverrideStore;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    new-instance p0, Ljava/lang/StringBuilder;

    .line 632
    const-string p1, "Flag "

    .line 634
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 637
    aget-object p1, p4, v4

    .line 639
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    aget-object p1, p4, v2

    .line 647
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    const-string p1, " is now "

    .line 652
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    aget-object p1, p4, v0

    .line 657
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 663
    move-result-object p0

    .line 664
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 667
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    .line 670
    goto/16 :goto_0

    .line 672
    :pswitch_4
    aget-object p1, p4, v3

    .line 674
    invoke-static {p4, v2, v2, p1, v5}, Lcom/android/server/flags/FlagsShellCommand;->validateNumArguments([Ljava/lang/String;IILjava/lang/String;Ljava/io/PrintWriter;)Z

    .line 677
    move-result p1

    .line 678
    if-nez p1, :cond_12

    .line 680
    new-instance p0, Ljava/lang/StringBuilder;

    .line 682
    invoke-direct {p0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 685
    aget-object p1, p4, v3

    .line 687
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 696
    move-result-object p0

    .line 697
    invoke-virtual {v5, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 700
    invoke-virtual {v5}, Ljava/io/PrintWriter;->flush()V

    .line 703
    goto :goto_c

    .line 704
    :cond_12
    aget-object p1, p4, v4

    .line 706
    aget-object p2, p4, v2

    .line 708
    invoke-virtual {p0, p1, p2}, Lcom/android/server/flags/FlagOverrideStore;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 711
    move-result-object p0

    .line 712
    new-instance p1, Ljava/lang/StringBuilder;

    .line 714
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 717
    aget-object p2, p4, v4

    .line 719
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    aget-object p2, p4, v2

    .line 727
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    const-string p2, " is "

    .line 732
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 738
    move-result-object p1

    .line 739
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 742
    if-eqz p0, :cond_14

    .line 744
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 747
    move-result p1

    .line 748
    if-eqz p1, :cond_13

    .line 750
    goto :goto_a

    .line 751
    :cond_13
    new-instance p1, Ljava/lang/StringBuilder;

    .line 753
    const-string p2, "\""

    .line 755
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 758
    invoke-virtual {p0}, Ljava/lang/String;->translateEscapes()Ljava/lang/String;

    .line 761
    move-result-object p0

    .line 762
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 771
    move-result-object p0

    .line 772
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 775
    goto :goto_b

    .line 776
    :cond_14
    :goto_a
    const-string p0, "<unset>"

    .line 778
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 781
    :goto_b
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    .line 784
    goto/16 :goto_0

    .line 786
    :goto_c
    return v1

    .line 787
    :sswitch_data_0
    .sparse-switch
        0x18f56 -> :sswitch_4
        0x1bc62 -> :sswitch_3
        0x30cf41 -> :sswitch_2
        0x32b09e -> :sswitch_1
        0x5c492a6 -> :sswitch_0
    .end sparse-switch

    .line 809
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final overrideFlag(Landroid/flags/SyncableFlag;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mPermissionsChecker:Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;->assertWritePermission()V

    .line 6
    invoke-static {}, Landroid/flags/IFeatureFlags$Stub;->clearCallingIdentity()J

    .line 9
    iget-object p0, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mFlagStore:Lcom/android/server/flags/FlagOverrideStore;

    .line 11
    invoke-virtual {p1}, Landroid/flags/SyncableFlag;->getNamespace()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1}, Landroid/flags/SyncableFlag;->getName()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p1}, Landroid/flags/SyncableFlag;->getValue()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/flags/FlagOverrideStore;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public final queryFlags(Ljava/util/List;)Ljava/util/List;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mPermissionsChecker:Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;->assertSyncPermission()V

    .line 6
    invoke-static {}, Landroid/flags/IFeatureFlags$Stub;->clearCallingIdentity()J

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object p1

    .line 18
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_5

    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroid/flags/SyncableFlag;

    .line 30
    invoke-virtual {v1}, Landroid/flags/SyncableFlag;->getNamespace()Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1}, Landroid/flags/SyncableFlag;->getName()Ljava/lang/String;

    .line 37
    move-result-object v3

    .line 38
    iget-object v4, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mFlagStore:Lcom/android/server/flags/FlagOverrideStore;

    .line 40
    invoke-virtual {v4, v2, v3}, Lcom/android/server/flags/FlagOverrideStore;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object v4

    .line 44
    if-eqz v4, :cond_0

    .line 46
    const/4 v5, 0x1

    .line 47
    :goto_1
    move v11, v5

    .line 48
    goto :goto_2

    .line 49
    :cond_0
    const/4 v5, 0x0

    .line 50
    goto :goto_1

    .line 51
    :goto_2
    invoke-virtual {v1}, Landroid/flags/SyncableFlag;->isDynamic()Z

    .line 54
    move-result v5

    .line 55
    if-eqz v5, :cond_2

    .line 57
    iget-object v4, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mDynamicFlagDelegate:Lcom/android/server/flags/DynamicFlagBinderDelegate;

    .line 59
    invoke-virtual {v1}, Landroid/flags/SyncableFlag;->getValue()Ljava/lang/String;

    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {v4, v2, v3, v5}, Lcom/android/server/flags/DynamicFlagBinderDelegate;->getFlagValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object v2

    .line 67
    :cond_1
    :goto_3
    move-object v9, v2

    .line 68
    goto :goto_4

    .line 69
    :cond_2
    iget-object v5, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mFlagCache:Lcom/android/server/flags/FlagCache;

    .line 71
    invoke-virtual {v5, v2, v3}, Lcom/android/server/flags/FlagCache;->getOrNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Ljava/lang/String;

    .line 77
    if-nez v2, :cond_1

    .line 79
    sget-boolean v2, Landroid/os/Build;->IS_USER:Z

    .line 81
    if-eqz v2, :cond_3

    .line 83
    const/4 v4, 0x0

    .line 84
    :cond_3
    if-nez v4, :cond_4

    .line 86
    invoke-virtual {v1}, Landroid/flags/SyncableFlag;->getValue()Ljava/lang/String;

    .line 89
    move-result-object v2

    .line 90
    goto :goto_3

    .line 91
    :cond_4
    move-object v9, v4

    .line 92
    :goto_4
    new-instance v2, Landroid/flags/SyncableFlag;

    .line 94
    invoke-virtual {v1}, Landroid/flags/SyncableFlag;->getNamespace()Ljava/lang/String;

    .line 97
    move-result-object v7

    .line 98
    invoke-virtual {v1}, Landroid/flags/SyncableFlag;->getName()Ljava/lang/String;

    .line 101
    move-result-object v8

    .line 102
    invoke-virtual {v1}, Landroid/flags/SyncableFlag;->isDynamic()Z

    .line 105
    move-result v10

    .line 106
    move-object v6, v2

    .line 107
    invoke-direct/range {v6 .. v11}, Landroid/flags/SyncableFlag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 110
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    goto :goto_0

    .line 114
    :cond_5
    return-object v0
.end method

.method public final registerCallback(Landroid/flags/IFeatureFlagsCallback;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mDynamicFlagDelegate:Lcom/android/server/flags/DynamicFlagBinderDelegate;

    .line 3
    invoke-static {}, Landroid/flags/IFeatureFlags$Stub;->getCallingPid()I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mCallbacks:Ljava/util/Map;

    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mCallbacks:Ljava/util/Map;

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v3

    .line 16
    sget-object v4, Lcom/android/server/flags/DynamicFlagBinderDelegate;->NEW_CALLBACK_SET:Lcom/android/server/flags/DynamicFlagBinderDelegate$$ExternalSyntheticLambda0;

    .line 18
    check-cast v2, Ljava/util/HashMap;

    .line 20
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/util/Set;

    .line 26
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 29
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 30
    :try_start_1
    invoke-interface {p1}, Landroid/flags/IFeatureFlagsCallback;->asBinder()Landroid/os/IBinder;

    .line 33
    move-result-object v1

    .line 34
    new-instance v3, Lcom/android/server/flags/DynamicFlagBinderDelegate$BinderGriever;

    .line 36
    invoke-direct {v3, p0, v0}, Lcom/android/server/flags/DynamicFlagBinderDelegate$BinderGriever;-><init>(Lcom/android/server/flags/DynamicFlagBinderDelegate;I)V

    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-interface {v1, v3, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 43
    goto :goto_0

    .line 44
    :catch_0
    const-string v0, "FeatureFlagsService"

    .line 46
    const-string v1, "Failed to link to binder death. Callback not registered."

    .line 48
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object p0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mCallbacks:Ljava/util/Map;

    .line 53
    monitor-enter p0

    .line 54
    :try_start_2
    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 57
    monitor-exit p0

    .line 58
    :goto_0
    return-void

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    throw p1

    .line 62
    :catchall_1
    move-exception p0

    .line 63
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 64
    throw p0
.end method

.method public final resetFlag(Landroid/flags/SyncableFlag;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mPermissionsChecker:Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;->assertWritePermission()V

    .line 6
    invoke-static {}, Landroid/flags/IFeatureFlags$Stub;->clearCallingIdentity()J

    .line 9
    iget-object p0, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mFlagStore:Lcom/android/server/flags/FlagOverrideStore;

    .line 11
    invoke-virtual {p1}, Landroid/flags/SyncableFlag;->getNamespace()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1}, Landroid/flags/SyncableFlag;->getName()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, v0, p1}, Lcom/android/server/flags/FlagOverrideStore;->erase(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public final syncFlags(Ljava/util/List;)Ljava/util/List;
    .locals 14

    .line 1
    invoke-static {}, Landroid/flags/IFeatureFlags$Stub;->getCallingPid()I

    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    :try_start_0
    iget-object v5, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mPermissionsChecker:Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;

    .line 15
    invoke-virtual {v5}, Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;->assertSyncPermission()V

    .line 18
    invoke-static {}, Landroid/flags/IFeatureFlags$Stub;->clearCallingIdentity()J
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    move v6, v2

    .line 22
    move-object v5, v4

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception v5

    .line 25
    move v6, v3

    .line 26
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object p1

    .line 30
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v7

    .line 34
    if-eqz v7, :cond_8

    .line 36
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v7

    .line 40
    check-cast v7, Landroid/flags/SyncableFlag;

    .line 42
    if-nez v6, :cond_1

    .line 44
    invoke-static {v7}, Lcom/android/internal/flags/CoreFlags;->isCoreFlag(Landroid/flags/SyncableFlag;)Z

    .line 47
    move-result v8

    .line 48
    if-eqz v8, :cond_0

    .line 50
    goto :goto_2

    .line 51
    :cond_0
    throw v5

    .line 52
    :cond_1
    :goto_2
    invoke-virtual {v7}, Landroid/flags/SyncableFlag;->getNamespace()Ljava/lang/String;

    .line 55
    move-result-object v8

    .line 56
    invoke-virtual {v7}, Landroid/flags/SyncableFlag;->getName()Ljava/lang/String;

    .line 59
    move-result-object v9

    .line 60
    invoke-virtual {v7}, Landroid/flags/SyncableFlag;->isDynamic()Z

    .line 63
    move-result v10

    .line 64
    if-eqz v10, :cond_4

    .line 66
    iget-object v8, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mDynamicFlagDelegate:Lcom/android/server/flags/DynamicFlagBinderDelegate;

    .line 68
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    invoke-virtual {v7}, Landroid/flags/SyncableFlag;->isDynamic()Z

    .line 74
    move-result v9

    .line 75
    if-nez v9, :cond_2

    .line 77
    goto/16 :goto_7

    .line 79
    :cond_2
    invoke-virtual {v7}, Landroid/flags/SyncableFlag;->getNamespace()Ljava/lang/String;

    .line 82
    move-result-object v9

    .line 83
    invoke-virtual {v7}, Landroid/flags/SyncableFlag;->getName()Ljava/lang/String;

    .line 86
    move-result-object v10

    .line 87
    iget-object v11, v8, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mDynamicFlags:Lcom/android/server/flags/FlagCache;

    .line 89
    invoke-virtual {v11, v9, v10}, Lcom/android/server/flags/FlagCache;->getOrNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    move-result-object v11

    .line 93
    check-cast v11, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;

    .line 95
    invoke-virtual {v7}, Landroid/flags/SyncableFlag;->getValue()Ljava/lang/String;

    .line 98
    move-result-object v12

    .line 99
    invoke-virtual {v8, v9, v10, v12}, Lcom/android/server/flags/DynamicFlagBinderDelegate;->getFlagValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    move-result-object v10

    .line 103
    iget-object v12, v8, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mDynamicFlags:Lcom/android/server/flags/FlagCache;

    .line 105
    iget-object v13, v12, Lcom/android/server/flags/FlagCache;->mCache:Ljava/util/Map;

    .line 107
    monitor-enter v13

    .line 108
    :try_start_1
    iget-object v12, v12, Lcom/android/server/flags/FlagCache;->mCache:Ljava/util/Map;

    .line 110
    check-cast v12, Ljava/util/HashMap;

    .line 112
    invoke-virtual {v12, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 115
    move-result v12

    .line 116
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    if-nez v12, :cond_3

    .line 119
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 122
    move-result-object v12

    .line 123
    iget-object v8, v8, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mDeviceConfigListener:Lcom/android/server/flags/DynamicFlagBinderDelegate$1;

    .line 125
    invoke-static {v9, v12, v8}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 128
    :cond_3
    iget-object v8, v11, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mPids:Ljava/util/Set;

    .line 130
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    move-result-object v9

    .line 134
    check-cast v8, Ljava/util/HashSet;

    .line 136
    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 139
    iput-object v10, v11, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mValue:Ljava/lang/String;

    .line 141
    invoke-virtual {v7}, Landroid/flags/SyncableFlag;->getValue()Ljava/lang/String;

    .line 144
    move-result-object v8

    .line 145
    iput-object v8, v11, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mDefaultValue:Ljava/lang/String;

    .line 147
    new-instance v8, Landroid/flags/SyncableFlag;

    .line 149
    invoke-virtual {v7}, Landroid/flags/SyncableFlag;->getNamespace()Ljava/lang/String;

    .line 152
    move-result-object v9

    .line 153
    invoke-virtual {v7}, Landroid/flags/SyncableFlag;->getName()Ljava/lang/String;

    .line 156
    move-result-object v7

    .line 157
    invoke-direct {v8, v9, v7, v10, v2}, Landroid/flags/SyncableFlag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 160
    goto :goto_6

    .line 161
    :catchall_0
    move-exception p0

    .line 162
    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    throw p0

    .line 164
    :cond_4
    iget-object v10, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mFlagCache:Lcom/android/server/flags/FlagCache;

    .line 166
    monitor-enter v10

    .line 167
    :try_start_3
    iget-object v11, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mFlagCache:Lcom/android/server/flags/FlagCache;

    .line 169
    invoke-virtual {v11, v8, v9}, Lcom/android/server/flags/FlagCache;->getOrNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 172
    move-result-object v11

    .line 173
    check-cast v11, Ljava/lang/String;

    .line 175
    if-nez v11, :cond_7

    .line 177
    sget-boolean v11, Landroid/os/Build;->IS_USER:Z

    .line 179
    if-eqz v11, :cond_5

    .line 181
    move-object v11, v4

    .line 182
    goto :goto_3

    .line 183
    :cond_5
    iget-object v11, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mFlagStore:Lcom/android/server/flags/FlagOverrideStore;

    .line 185
    invoke-virtual {v11, v8, v9}, Lcom/android/server/flags/FlagOverrideStore;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 188
    move-result-object v11

    .line 189
    :goto_3
    if-eqz v11, :cond_6

    .line 191
    goto :goto_4

    .line 192
    :cond_6
    invoke-virtual {v7}, Landroid/flags/SyncableFlag;->getValue()Ljava/lang/String;

    .line 195
    move-result-object v11

    .line 196
    :goto_4
    iget-object v12, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mFlagCache:Lcom/android/server/flags/FlagCache;

    .line 198
    invoke-virtual {v12, v8, v9, v11}, Lcom/android/server/flags/FlagCache;->setIfChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 201
    goto :goto_5

    .line 202
    :catchall_1
    move-exception p0

    .line 203
    goto :goto_8

    .line 204
    :cond_7
    :goto_5
    new-instance v8, Landroid/flags/SyncableFlag;

    .line 206
    invoke-virtual {v7}, Landroid/flags/SyncableFlag;->getNamespace()Ljava/lang/String;

    .line 209
    move-result-object v9

    .line 210
    invoke-virtual {v7}, Landroid/flags/SyncableFlag;->getName()Ljava/lang/String;

    .line 213
    move-result-object v7

    .line 214
    invoke-direct {v8, v9, v7, v11, v3}, Landroid/flags/SyncableFlag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 217
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 218
    :goto_6
    move-object v7, v8

    .line 219
    :goto_7
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    goto/16 :goto_1

    .line 224
    :goto_8
    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 225
    throw p0

    .line 226
    :cond_8
    return-object v1
.end method

.method public final unregisterCallback(Landroid/flags/IFeatureFlagsCallback;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mDynamicFlagDelegate:Lcom/android/server/flags/DynamicFlagBinderDelegate;

    .line 3
    invoke-static {}, Landroid/flags/IFeatureFlags$Stub;->getCallingPid()I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mCallbacks:Ljava/util/Map;

    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mCallbacks:Ljava/util/Map;

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v0

    .line 16
    sget-object v2, Lcom/android/server/flags/DynamicFlagBinderDelegate;->NEW_CALLBACK_SET:Lcom/android/server/flags/DynamicFlagBinderDelegate$$ExternalSyntheticLambda0;

    .line 18
    check-cast p0, Ljava/util/HashMap;

    .line 20
    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Ljava/util/Set;

    .line 26
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 29
    monitor-exit v1

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
.end method
