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

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/flags/FlagCache;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/android/server/flags/FlagCache;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mFlagCache:Lcom/android/server/flags/FlagCache;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mFlagStore:Lcom/android/server/flags/FlagOverrideStore;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mShellCommand:Lcom/android/server/flags/FlagsShellCommand;

    .line 14
    .line 15
    new-instance p2, Lcom/android/server/flags/DynamicFlagBinderDelegate;

    .line 16
    .line 17
    invoke-direct {p2, p1}, Lcom/android/server/flags/DynamicFlagBinderDelegate;-><init>(Lcom/android/server/flags/FlagOverrideStore;)V

    .line 18
    .line 19
    .line 20
    iput-object p2, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mDynamicFlagDelegate:Lcom/android/server/flags/DynamicFlagBinderDelegate;

    .line 21
    .line 22
    iput-object p3, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mPermissionsChecker:Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;

    .line 23
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

    .line 8
    .line 9
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-direct {v5, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 14
    .line 15
    .line 16
    new-instance p2, Ljava/io/FileOutputStream;

    .line 17
    .line 18
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    invoke-direct {p2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mShellCommand:Lcom/android/server/flags/FlagsShellCommand;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    new-instance p3, Lcom/android/internal/util/FastPrintWriter;

    .line 31
    .line 32
    invoke-direct {p3, v5}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 33
    .line 34
    .line 35
    new-instance v5, Lcom/android/internal/util/FastPrintWriter;

    .line 36
    .line 37
    invoke-direct {v5, p2}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 38
    .line 39
    .line 40
    array-length p2, p4

    .line 41
    if-nez p2, :cond_0

    .line 42
    .line 43
    invoke-static {p3}, Lcom/android/server/flags/FlagsShellCommand;->printHelp(Ljava/io/PrintWriter;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    move v1, v3

    .line 47
    goto/16 :goto_c

    .line 48
    .line 49
    :cond_0
    aget-object p2, p4, v3

    .line 50
    .line 51
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 52
    .line 53
    invoke-virtual {p2, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    const-string v6, " <namespace> <name>`"

    .line 61
    .line 62
    const-string v7, "."

    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/flags/FlagsShellCommand;->mFlagStore:Lcom/android/server/flags/FlagOverrideStore;

    .line 65
    .line 66
    const-string v8, "Expected `"

    .line 67
    .line 68
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    sparse-switch v9, :sswitch_data_0

    .line 73
    .line 74
    .line 75
    :goto_1
    move p2, v1

    .line 76
    goto :goto_2

    .line 77
    :sswitch_0
    const-string/jumbo v9, "erase"

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    if-nez p2, :cond_1

    .line 85
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

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    if-nez p2, :cond_2

    .line 97
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

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    if-nez p2, :cond_3

    .line 109
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

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    if-nez p2, :cond_4

    .line 121
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

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result p2

    .line 132
    if-nez p2, :cond_5

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_5
    move p2, v3

    .line 136
    :goto_2
    packed-switch p2, :pswitch_data_0

    .line 137
    .line 138
    .line 139
    const-string p0, "This command is unknown."

    .line 140
    .line 141
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-static {p3}, Lcom/android/server/flags/FlagsShellCommand;->printHelp(Ljava/io/PrintWriter;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    .line 148
    .line 149
    .line 150
    goto/16 :goto_c

    .line 151
    .line 152
    :pswitch_0
    aget-object p1, p4, v3

    .line 153
    .line 154
    invoke-static {p4, v2, v2, p1, v5}, Lcom/android/server/flags/FlagsShellCommand;->validateNumArguments([Ljava/lang/String;IILjava/lang/String;Ljava/io/PrintWriter;)Z

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    if-nez p1, :cond_6

    .line 159
    .line 160
    new-instance p0, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {p0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    aget-object p1, p4, v3

    .line 166
    .line 167
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    invoke-virtual {v5, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v5}, Ljava/io/PrintWriter;->flush()V

    .line 181
    .line 182
    .line 183
    goto/16 :goto_c

    .line 184
    .line 185
    :cond_6
    aget-object p1, p4, v4

    .line 186
    .line 187
    aget-object p2, p4, v2

    .line 188
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/android/server/flags/FlagOverrideStore;->erase(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    new-instance p0, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    const-string p1, "Erased "

    .line 195
    .line 196
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    aget-object p1, p4, v4

    .line 200
    .line 201
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    aget-object p1, p4, v2

    .line 208
    .line 209
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    goto/16 :goto_0

    .line 220
    .line 221
    :pswitch_1
    aget-object p2, p4, v3

    .line 222
    .line 223
    invoke-static {p4, v3, v4, p2, v5}, Lcom/android/server/flags/FlagsShellCommand;->validateNumArguments([Ljava/lang/String;IILjava/lang/String;Ljava/io/PrintWriter;)Z

    .line 224
    .line 225
    .line 226
    move-result p2

    .line 227
    if-nez p2, :cond_7

    .line 228
    .line 229
    new-instance p0, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    invoke-direct {p0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    aget-object p1, p4, v3

    .line 235
    .line 236
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    const-string p1, " [namespace]`"

    .line 240
    .line 241
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object p0

    .line 248
    invoke-virtual {v5, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v5}, Ljava/io/PrintWriter;->flush()V

    .line 252
    .line 253
    .line 254
    goto/16 :goto_c

    .line 255
    .line 256
    :cond_7
    array-length p2, p4

    .line 257
    if-ne p2, v2, :cond_8

    .line 258
    .line 259
    aget-object p2, p4, v4

    .line 260
    .line 261
    invoke-virtual {p0, p2}, Lcom/android/server/flags/FlagOverrideStore;->getFlagsForNamespace(Ljava/lang/String;)Ljava/util/Map;

    .line 262
    .line 263
    .line 264
    move-result-object p0

    .line 265
    goto :goto_3

    .line 266
    :cond_8
    const/4 p2, 0x0

    .line 267
    invoke-virtual {p0, p2}, Lcom/android/server/flags/FlagOverrideStore;->getFlagsForNamespace(Ljava/lang/String;)Ljava/util/Map;

    .line 268
    .line 269
    .line 270
    move-result-object p0

    .line 271
    :goto_3
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    .line 272
    .line 273
    .line 274
    move-result p2

    .line 275
    if-eqz p2, :cond_9

    .line 276
    .line 277
    const-string p0, "No overrides set"

    .line 278
    .line 279
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    goto/16 :goto_9

    .line 283
    .line 284
    :cond_9
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 285
    .line 286
    .line 287
    move-result-object p2

    .line 288
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 289
    .line 290
    .line 291
    move-result-object p2

    .line 292
    const/16 p4, 0x9

    .line 293
    .line 294
    const/4 v0, 0x5

    .line 295
    :cond_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    if-eqz v1, :cond_b

    .line 300
    .line 301
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    check-cast v1, Ljava/util/Map$Entry;

    .line 306
    .line 307
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    check-cast v2, Ljava/lang/String;

    .line 312
    .line 313
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 314
    .line 315
    .line 316
    move-result v2

    .line 317
    invoke-static {p4, v2}, Ljava/lang/Math;->max(II)I

    .line 318
    .line 319
    .line 320
    move-result p4

    .line 321
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    check-cast v1, Ljava/util/Map;

    .line 326
    .line 327
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 336
    .line 337
    .line 338
    move-result v2

    .line 339
    if-eqz v2, :cond_a

    .line 340
    .line 341
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v2

    .line 345
    check-cast v2, Ljava/util/Map$Entry;

    .line 346
    .line 347
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v5

    .line 351
    check-cast v5, Ljava/lang/String;

    .line 352
    .line 353
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 354
    .line 355
    .line 356
    move-result v5

    .line 357
    invoke-static {p1, v5}, Ljava/lang/Math;->max(II)I

    .line 358
    .line 359
    .line 360
    move-result p1

    .line 361
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    check-cast v2, Ljava/lang/String;

    .line 366
    .line 367
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 368
    .line 369
    .line 370
    move-result v2

    .line 371
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    goto :goto_4

    .line 376
    :cond_b
    const-string p2, "%-"

    .line 377
    .line 378
    const-string/jumbo v1, "s"

    .line 379
    .line 380
    .line 381
    invoke-static {p4, p2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v2

    .line 385
    const-string/jumbo v5, "namespace"

    .line 386
    .line 387
    .line 388
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v5

    .line 392
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v2

    .line 396
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    const/16 v2, 0x20

    .line 400
    .line 401
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 402
    .line 403
    .line 404
    new-instance v5, Ljava/lang/StringBuilder;

    .line 405
    .line 406
    invoke-direct {v5, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    invoke-static {p1, v5, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v5

    .line 413
    const-string/jumbo v6, "flag"

    .line 414
    .line 415
    .line 416
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object v6

    .line 420
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v5

    .line 424
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 428
    .line 429
    .line 430
    const-string/jumbo v5, "value"

    .line 431
    .line 432
    .line 433
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    move v5, v3

    .line 437
    :goto_5
    const/16 v6, 0x3d

    .line 438
    .line 439
    if-ge v5, p4, :cond_c

    .line 440
    .line 441
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 442
    .line 443
    .line 444
    add-int/2addr v5, v4

    .line 445
    goto :goto_5

    .line 446
    :cond_c
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 447
    .line 448
    .line 449
    move v5, v3

    .line 450
    :goto_6
    if-ge v5, p1, :cond_d

    .line 451
    .line 452
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 453
    .line 454
    .line 455
    add-int/2addr v5, v4

    .line 456
    goto :goto_6

    .line 457
    :cond_d
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 458
    .line 459
    .line 460
    move v5, v3

    .line 461
    :goto_7
    if-ge v5, v0, :cond_e

    .line 462
    .line 463
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 464
    .line 465
    .line 466
    add-int/2addr v5, v4

    .line 467
    goto :goto_7

    .line 468
    :cond_e
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 469
    .line 470
    .line 471
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 472
    .line 473
    .line 474
    move-result-object p0

    .line 475
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 476
    .line 477
    .line 478
    move-result-object p0

    .line 479
    :cond_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 480
    .line 481
    .line 482
    move-result v0

    .line 483
    if-eqz v0, :cond_10

    .line 484
    .line 485
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    check-cast v0, Ljava/util/Map$Entry;

    .line 490
    .line 491
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object v4

    .line 495
    check-cast v4, Ljava/util/Map;

    .line 496
    .line 497
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 498
    .line 499
    .line 500
    move-result-object v4

    .line 501
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 502
    .line 503
    .line 504
    move-result-object v4

    .line 505
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 506
    .line 507
    .line 508
    move-result v5

    .line 509
    if-eqz v5, :cond_f

    .line 510
    .line 511
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object v5

    .line 515
    check-cast v5, Ljava/util/Map$Entry;

    .line 516
    .line 517
    invoke-static {p4, p2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v6

    .line 521
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    move-result-object v7

    .line 525
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    move-result-object v7

    .line 529
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v6

    .line 533
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 534
    .line 535
    .line 536
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 537
    .line 538
    .line 539
    new-instance v6, Ljava/lang/StringBuilder;

    .line 540
    .line 541
    invoke-direct {v6, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    invoke-static {p1, v6, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v6

    .line 548
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 549
    .line 550
    .line 551
    move-result-object v7

    .line 552
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 553
    .line 554
    .line 555
    move-result-object v7

    .line 556
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v6

    .line 560
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 561
    .line 562
    .line 563
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 564
    .line 565
    .line 566
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    move-result-object v5

    .line 570
    check-cast v5, Ljava/lang/String;

    .line 571
    .line 572
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 573
    .line 574
    .line 575
    goto :goto_8

    .line 576
    :cond_10
    :goto_9
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    .line 577
    .line 578
    .line 579
    goto/16 :goto_0

    .line 580
    .line 581
    :pswitch_2
    invoke-static {p3}, Lcom/android/server/flags/FlagsShellCommand;->printHelp(Ljava/io/PrintWriter;)V

    .line 582
    .line 583
    .line 584
    goto/16 :goto_0

    .line 585
    .line 586
    :pswitch_3
    aget-object p1, p4, v3

    .line 587
    .line 588
    invoke-static {p4, v0, v0, p1, v5}, Lcom/android/server/flags/FlagsShellCommand;->validateNumArguments([Ljava/lang/String;IILjava/lang/String;Ljava/io/PrintWriter;)Z

    .line 589
    .line 590
    .line 591
    move-result p1

    .line 592
    if-nez p1, :cond_11

    .line 593
    .line 594
    new-instance p0, Ljava/lang/StringBuilder;

    .line 595
    .line 596
    invoke-direct {p0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 597
    .line 598
    .line 599
    aget-object p1, p4, v3

    .line 600
    .line 601
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    .line 603
    .line 604
    const-string p1, " <namespace> <name> <value>`"

    .line 605
    .line 606
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object p0

    .line 613
    invoke-virtual {v5, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 614
    .line 615
    .line 616
    invoke-virtual {v5}, Ljava/io/PrintWriter;->flush()V

    .line 617
    .line 618
    .line 619
    goto/16 :goto_c

    .line 620
    .line 621
    :cond_11
    aget-object p1, p4, v4

    .line 622
    .line 623
    aget-object p2, p4, v2

    .line 624
    .line 625
    aget-object v1, p4, v0

    .line 626
    .line 627
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/flags/FlagOverrideStore;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    .line 629
    .line 630
    new-instance p0, Ljava/lang/StringBuilder;

    .line 631
    .line 632
    const-string p1, "Flag "

    .line 633
    .line 634
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 635
    .line 636
    .line 637
    aget-object p1, p4, v4

    .line 638
    .line 639
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    .line 641
    .line 642
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    .line 644
    .line 645
    aget-object p1, p4, v2

    .line 646
    .line 647
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    .line 649
    .line 650
    const-string p1, " is now "

    .line 651
    .line 652
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    .line 654
    .line 655
    aget-object p1, p4, v0

    .line 656
    .line 657
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    .line 659
    .line 660
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object p0

    .line 664
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 665
    .line 666
    .line 667
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    .line 668
    .line 669
    .line 670
    goto/16 :goto_0

    .line 671
    .line 672
    :pswitch_4
    aget-object p1, p4, v3

    .line 673
    .line 674
    invoke-static {p4, v2, v2, p1, v5}, Lcom/android/server/flags/FlagsShellCommand;->validateNumArguments([Ljava/lang/String;IILjava/lang/String;Ljava/io/PrintWriter;)Z

    .line 675
    .line 676
    .line 677
    move-result p1

    .line 678
    if-nez p1, :cond_12

    .line 679
    .line 680
    new-instance p0, Ljava/lang/StringBuilder;

    .line 681
    .line 682
    invoke-direct {p0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 683
    .line 684
    .line 685
    aget-object p1, p4, v3

    .line 686
    .line 687
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    .line 689
    .line 690
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    .line 692
    .line 693
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 694
    .line 695
    .line 696
    move-result-object p0

    .line 697
    invoke-virtual {v5, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 698
    .line 699
    .line 700
    invoke-virtual {v5}, Ljava/io/PrintWriter;->flush()V

    .line 701
    .line 702
    .line 703
    goto :goto_c

    .line 704
    :cond_12
    aget-object p1, p4, v4

    .line 705
    .line 706
    aget-object p2, p4, v2

    .line 707
    .line 708
    invoke-virtual {p0, p1, p2}, Lcom/android/server/flags/FlagOverrideStore;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object p0

    .line 712
    new-instance p1, Ljava/lang/StringBuilder;

    .line 713
    .line 714
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 715
    .line 716
    .line 717
    aget-object p2, p4, v4

    .line 718
    .line 719
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    .line 721
    .line 722
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    .line 724
    .line 725
    aget-object p2, p4, v2

    .line 726
    .line 727
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    .line 729
    .line 730
    const-string p2, " is "

    .line 731
    .line 732
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    .line 734
    .line 735
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 736
    .line 737
    .line 738
    move-result-object p1

    .line 739
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 740
    .line 741
    .line 742
    if-eqz p0, :cond_14

    .line 743
    .line 744
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 745
    .line 746
    .line 747
    move-result p1

    .line 748
    if-eqz p1, :cond_13

    .line 749
    .line 750
    goto :goto_a

    .line 751
    :cond_13
    new-instance p1, Ljava/lang/StringBuilder;

    .line 752
    .line 753
    const-string p2, "\""

    .line 754
    .line 755
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 756
    .line 757
    .line 758
    invoke-virtual {p0}, Ljava/lang/String;->translateEscapes()Ljava/lang/String;

    .line 759
    .line 760
    .line 761
    move-result-object p0

    .line 762
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    .line 764
    .line 765
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    .line 767
    .line 768
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 769
    .line 770
    .line 771
    move-result-object p0

    .line 772
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 773
    .line 774
    .line 775
    goto :goto_b

    .line 776
    :cond_14
    :goto_a
    const-string p0, "<unset>"

    .line 777
    .line 778
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 779
    .line 780
    .line 781
    :goto_b
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    .line 782
    .line 783
    .line 784
    goto/16 :goto_0

    .line 785
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

    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
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

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;->assertWritePermission()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/flags/IFeatureFlags$Stub;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mFlagStore:Lcom/android/server/flags/FlagOverrideStore;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/flags/SyncableFlag;->getNamespace()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1}, Landroid/flags/SyncableFlag;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p1}, Landroid/flags/SyncableFlag;->getValue()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/flags/FlagOverrideStore;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final queryFlags(Ljava/util/List;)Ljava/util/List;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mPermissionsChecker:Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;->assertSyncPermission()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/flags/IFeatureFlags$Stub;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_5

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroid/flags/SyncableFlag;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/flags/SyncableFlag;->getNamespace()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1}, Landroid/flags/SyncableFlag;->getName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    iget-object v4, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mFlagStore:Lcom/android/server/flags/FlagOverrideStore;

    .line 39
    .line 40
    invoke-virtual {v4, v2, v3}, Lcom/android/server/flags/FlagOverrideStore;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    if-eqz v4, :cond_0

    .line 45
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

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-eqz v5, :cond_2

    .line 56
    .line 57
    iget-object v4, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mDynamicFlagDelegate:Lcom/android/server/flags/DynamicFlagBinderDelegate;

    .line 58
    .line 59
    invoke-virtual {v1}, Landroid/flags/SyncableFlag;->getValue()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {v4, v2, v3, v5}, Lcom/android/server/flags/DynamicFlagBinderDelegate;->getFlagValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
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

    .line 70
    .line 71
    invoke-virtual {v5, v2, v3}, Lcom/android/server/flags/FlagCache;->getOrNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Ljava/lang/String;

    .line 76
    .line 77
    if-nez v2, :cond_1

    .line 78
    .line 79
    sget-boolean v2, Landroid/os/Build;->IS_USER:Z

    .line 80
    .line 81
    if-eqz v2, :cond_3

    .line 82
    .line 83
    const/4 v4, 0x0

    .line 84
    :cond_3
    if-nez v4, :cond_4

    .line 85
    .line 86
    invoke-virtual {v1}, Landroid/flags/SyncableFlag;->getValue()Ljava/lang/String;

    .line 87
    .line 88
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

    .line 93
    .line 94
    invoke-virtual {v1}, Landroid/flags/SyncableFlag;->getNamespace()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    invoke-virtual {v1}, Landroid/flags/SyncableFlag;->getName()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    invoke-virtual {v1}, Landroid/flags/SyncableFlag;->isDynamic()Z

    .line 103
    .line 104
    .line 105
    move-result v10

    .line 106
    move-object v6, v2

    .line 107
    invoke-direct/range {v6 .. v11}, Landroid/flags/SyncableFlag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
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

    .line 2
    .line 3
    invoke-static {}, Landroid/flags/IFeatureFlags$Stub;->getCallingPid()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mCallbacks:Ljava/util/Map;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mCallbacks:Ljava/util/Map;

    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    sget-object v4, Lcom/android/server/flags/DynamicFlagBinderDelegate;->NEW_CALLBACK_SET:Lcom/android/server/flags/DynamicFlagBinderDelegate$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    check-cast v2, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/util/Set;

    .line 25
    .line 26
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 30
    :try_start_1
    invoke-interface {p1}, Landroid/flags/IFeatureFlagsCallback;->asBinder()Landroid/os/IBinder;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    new-instance v3, Lcom/android/server/flags/DynamicFlagBinderDelegate$BinderGriever;

    .line 35
    .line 36
    invoke-direct {v3, p0, v0}, Lcom/android/server/flags/DynamicFlagBinderDelegate$BinderGriever;-><init>(Lcom/android/server/flags/DynamicFlagBinderDelegate;I)V

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-interface {v1, v3, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    const-string v0, "FeatureFlagsService"

    .line 45
    .line 46
    const-string v1, "Failed to link to binder death. Callback not registered."

    .line 47
    .line 48
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mCallbacks:Ljava/util/Map;

    .line 52
    .line 53
    monitor-enter p0

    .line 54
    :try_start_2
    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 55
    .line 56
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

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;->assertWritePermission()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/flags/IFeatureFlags$Stub;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mFlagStore:Lcom/android/server/flags/FlagOverrideStore;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/flags/SyncableFlag;->getNamespace()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1}, Landroid/flags/SyncableFlag;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, v0, p1}, Lcom/android/server/flags/FlagOverrideStore;->erase(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final syncFlags(Ljava/util/List;)Ljava/util/List;
    .locals 14

    .line 1
    invoke-static {}, Landroid/flags/IFeatureFlags$Stub;->getCallingPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    :try_start_0
    iget-object v5, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mPermissionsChecker:Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;

    .line 14
    .line 15
    invoke-virtual {v5}, Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;->assertSyncPermission()V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroid/flags/IFeatureFlags$Stub;->clearCallingIdentity()J
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
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

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    if-eqz v7, :cond_8

    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    check-cast v7, Landroid/flags/SyncableFlag;

    .line 41
    .line 42
    if-nez v6, :cond_1

    .line 43
    .line 44
    invoke-static {v7}, Lcom/android/internal/flags/CoreFlags;->isCoreFlag(Landroid/flags/SyncableFlag;)Z

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    if-eqz v8, :cond_0

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_0
    throw v5

    .line 52
    :cond_1
    :goto_2
    invoke-virtual {v7}, Landroid/flags/SyncableFlag;->getNamespace()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    invoke-virtual {v7}, Landroid/flags/SyncableFlag;->getName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v9

    .line 60
    invoke-virtual {v7}, Landroid/flags/SyncableFlag;->isDynamic()Z

    .line 61
    .line 62
    .line 63
    move-result v10

    .line 64
    if-eqz v10, :cond_4

    .line 65
    .line 66
    iget-object v8, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mDynamicFlagDelegate:Lcom/android/server/flags/DynamicFlagBinderDelegate;

    .line 67
    .line 68
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v7}, Landroid/flags/SyncableFlag;->isDynamic()Z

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    if-nez v9, :cond_2

    .line 76
    .line 77
    goto/16 :goto_7

    .line 78
    .line 79
    :cond_2
    invoke-virtual {v7}, Landroid/flags/SyncableFlag;->getNamespace()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    invoke-virtual {v7}, Landroid/flags/SyncableFlag;->getName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v10

    .line 87
    iget-object v11, v8, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mDynamicFlags:Lcom/android/server/flags/FlagCache;

    .line 88
    .line 89
    invoke-virtual {v11, v9, v10}, Lcom/android/server/flags/FlagCache;->getOrNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v11

    .line 93
    check-cast v11, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;

    .line 94
    .line 95
    invoke-virtual {v7}, Landroid/flags/SyncableFlag;->getValue()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v12

    .line 99
    invoke-virtual {v8, v9, v10, v12}, Lcom/android/server/flags/DynamicFlagBinderDelegate;->getFlagValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v10

    .line 103
    iget-object v12, v8, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mDynamicFlags:Lcom/android/server/flags/FlagCache;

    .line 104
    .line 105
    iget-object v13, v12, Lcom/android/server/flags/FlagCache;->mCache:Ljava/util/Map;

    .line 106
    .line 107
    monitor-enter v13

    .line 108
    :try_start_1
    iget-object v12, v12, Lcom/android/server/flags/FlagCache;->mCache:Ljava/util/Map;

    .line 109
    .line 110
    check-cast v12, Ljava/util/HashMap;

    .line 111
    .line 112
    invoke-virtual {v12, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v12

    .line 116
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    if-nez v12, :cond_3

    .line 118
    .line 119
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 120
    .line 121
    .line 122
    move-result-object v12

    .line 123
    iget-object v8, v8, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mDeviceConfigListener:Lcom/android/server/flags/DynamicFlagBinderDelegate$1;

    .line 124
    .line 125
    invoke-static {v9, v12, v8}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 126
    .line 127
    .line 128
    :cond_3
    iget-object v8, v11, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mPids:Ljava/util/Set;

    .line 129
    .line 130
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object v9

    .line 134
    check-cast v8, Ljava/util/HashSet;

    .line 135
    .line 136
    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    iput-object v10, v11, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mValue:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v7}, Landroid/flags/SyncableFlag;->getValue()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    iput-object v8, v11, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mDefaultValue:Ljava/lang/String;

    .line 146
    .line 147
    new-instance v8, Landroid/flags/SyncableFlag;

    .line 148
    .line 149
    invoke-virtual {v7}, Landroid/flags/SyncableFlag;->getNamespace()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v9

    .line 153
    invoke-virtual {v7}, Landroid/flags/SyncableFlag;->getName()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    invoke-direct {v8, v9, v7, v10, v2}, Landroid/flags/SyncableFlag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 158
    .line 159
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

    .line 165
    .line 166
    monitor-enter v10

    .line 167
    :try_start_3
    iget-object v11, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mFlagCache:Lcom/android/server/flags/FlagCache;

    .line 168
    .line 169
    invoke-virtual {v11, v8, v9}, Lcom/android/server/flags/FlagCache;->getOrNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v11

    .line 173
    check-cast v11, Ljava/lang/String;

    .line 174
    .line 175
    if-nez v11, :cond_7

    .line 176
    .line 177
    sget-boolean v11, Landroid/os/Build;->IS_USER:Z

    .line 178
    .line 179
    if-eqz v11, :cond_5

    .line 180
    .line 181
    move-object v11, v4

    .line 182
    goto :goto_3

    .line 183
    :cond_5
    iget-object v11, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mFlagStore:Lcom/android/server/flags/FlagOverrideStore;

    .line 184
    .line 185
    invoke-virtual {v11, v8, v9}, Lcom/android/server/flags/FlagOverrideStore;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v11

    .line 189
    :goto_3
    if-eqz v11, :cond_6

    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_6
    invoke-virtual {v7}, Landroid/flags/SyncableFlag;->getValue()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v11

    .line 196
    :goto_4
    iget-object v12, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mFlagCache:Lcom/android/server/flags/FlagCache;

    .line 197
    .line 198
    invoke-virtual {v12, v8, v9, v11}, Lcom/android/server/flags/FlagCache;->setIfChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 199
    .line 200
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

    .line 205
    .line 206
    invoke-virtual {v7}, Landroid/flags/SyncableFlag;->getNamespace()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v9

    .line 210
    invoke-virtual {v7}, Landroid/flags/SyncableFlag;->getName()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v7

    .line 214
    invoke-direct {v8, v9, v7, v11, v3}, Landroid/flags/SyncableFlag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 215
    .line 216
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

    .line 220
    .line 221
    .line 222
    goto/16 :goto_1

    .line 223
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

    .line 2
    .line 3
    invoke-static {}, Landroid/flags/IFeatureFlags$Stub;->getCallingPid()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mCallbacks:Ljava/util/Map;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mCallbacks:Ljava/util/Map;

    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v2, Lcom/android/server/flags/DynamicFlagBinderDelegate;->NEW_CALLBACK_SET:Lcom/android/server/flags/DynamicFlagBinderDelegate$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    check-cast p0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Ljava/util/Set;

    .line 25
    .line 26
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 27
    .line 28
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
