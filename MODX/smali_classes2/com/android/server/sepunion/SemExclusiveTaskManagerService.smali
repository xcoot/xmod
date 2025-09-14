.class public final Lcom/android/server/sepunion/SemExclusiveTaskManagerService;
.super Lcom/samsung/android/sepunion/ISemExclusiveTaskManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mExclusiveTaskObserver:Lcom/android/server/sepunion/SemExclusiveTaskManagerService$2;

.field public final mMagnificationShortcut:Ljava/util/ArrayList;

.field public final mTaskMap:Ljava/util/HashMap;

.field public final mTaskMapByKey:Ljava/util/HashMap;

.field public final mUserStatus:Ljava/util/HashMap;

.field public final mUserSwitchedReceiver:Lcom/android/server/sepunion/SemExclusiveTaskManagerService$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x1

    .line 6
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sepunion/ISemExclusiveTaskManager$Stub;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v5, Landroid/os/Handler;

    .line 10
    .line 11
    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v5, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v5, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mUserStatus:Ljava/util/HashMap;

    .line 20
    .line 21
    new-instance v5, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v5, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMap:Ljava/util/HashMap;

    .line 27
    .line 28
    new-instance v5, Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v5, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMapByKey:Ljava/util/HashMap;

    .line 34
    .line 35
    new-instance v5, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v5, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mMagnificationShortcut:Ljava/util/ArrayList;

    .line 41
    .line 42
    new-instance v5, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$1;

    .line 43
    .line 44
    invoke-direct {v5, v0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$1;-><init>(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)V

    .line 45
    .line 46
    .line 47
    iput-object v5, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mUserSwitchedReceiver:Lcom/android/server/sepunion/SemExclusiveTaskManagerService$1;

    .line 48
    .line 49
    new-instance v5, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$2;

    .line 50
    .line 51
    new-instance v6, Landroid/os/Handler;

    .line 52
    .line 53
    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-direct {v5, v0, v6}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$2;-><init>(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;Landroid/os/Handler;)V

    .line 57
    .line 58
    .line 59
    iput-object v5, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mExclusiveTaskObserver:Lcom/android/server/sepunion/SemExclusiveTaskManagerService$2;

    .line 60
    .line 61
    move-object/from16 v5, p1

    .line 62
    .line 63
    iput-object v5, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    const-string v5, "SemExclusiveTaskManagerService"

    .line 66
    .line 67
    const-string v6, "SemExclusiveTaskManagerService start"

    .line 68
    .line 69
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    const-string v6, "init()"

    .line 73
    .line 74
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    const-string/jumbo v6, "task-list"

    .line 78
    .line 79
    .line 80
    const-string/jumbo v7, "readExclusiveRelation()"

    .line 81
    .line 82
    .line 83
    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    new-instance v7, Ljava/io/File;

    .line 87
    .line 88
    const-string v8, "/system/etc/task_action.xml"

    .line 89
    .line 90
    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const/4 v8, 0x3

    .line 94
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 95
    .line 96
    .line 97
    move-result-object v9

    .line 98
    invoke-virtual {v9}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    .line 99
    .line 100
    .line 101
    move-result-object v9

    .line 102
    invoke-virtual {v9, v7}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    invoke-interface {v7}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    .line 107
    .line 108
    .line 109
    move-result-object v9

    .line 110
    invoke-interface {v9}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v9

    .line 114
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v9

    .line 118
    if-eqz v9, :cond_d

    .line 119
    .line 120
    invoke-interface {v7}, Lorg/w3c/dom/Document;->hasChildNodes()Z

    .line 121
    .line 122
    .line 123
    move-result v9

    .line 124
    if-eqz v9, :cond_d

    .line 125
    .line 126
    invoke-interface {v7}, Lorg/w3c/dom/Document;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    invoke-interface {v7, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 131
    .line 132
    .line 133
    move-result-object v9

    .line 134
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 135
    .line 136
    .line 137
    move-result-object v9

    .line 138
    move v10, v4

    .line 139
    :goto_0
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 140
    .line 141
    .line 142
    move-result v11

    .line 143
    if-ge v10, v11, :cond_1

    .line 144
    .line 145
    invoke-interface {v7, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 146
    .line 147
    .line 148
    move-result-object v11

    .line 149
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v11

    .line 153
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v11

    .line 157
    if-eqz v11, :cond_0

    .line 158
    .line 159
    invoke-interface {v7, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 164
    .line 165
    .line 166
    move-result-object v9

    .line 167
    goto :goto_1

    .line 168
    :cond_0
    add-int/2addr v10, v4

    .line 169
    goto :goto_0

    .line 170
    :cond_1
    :goto_1
    move v6, v3

    .line 171
    :goto_2
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 172
    .line 173
    .line 174
    move-result v7

    .line 175
    if-ge v6, v7, :cond_d

    .line 176
    .line 177
    invoke-interface {v9, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 178
    .line 179
    .line 180
    move-result-object v7

    .line 181
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 182
    .line 183
    .line 184
    move-result v10

    .line 185
    if-ne v10, v4, :cond_c

    .line 186
    .line 187
    const-string/jumbo v10, "task"

    .line 188
    .line 189
    .line 190
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v11

    .line 194
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v10

    .line 198
    if-eqz v10, :cond_c

    .line 199
    .line 200
    invoke-interface {v7}, Lorg/w3c/dom/Node;->hasAttributes()Z

    .line 201
    .line 202
    .line 203
    move-result v10

    .line 204
    if-eqz v10, :cond_c

    .line 205
    .line 206
    new-instance v10, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    .line 207
    .line 208
    invoke-direct {v10, v0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;-><init>(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)V

    .line 209
    .line 210
    .line 211
    iget-object v11, v10, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->setting:Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;

    .line 212
    .line 213
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    .line 214
    .line 215
    .line 216
    move-result-object v7

    .line 217
    move v12, v3

    .line 218
    :goto_3
    invoke-interface {v7}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    .line 219
    .line 220
    .line 221
    move-result v13

    .line 222
    if-ge v12, v13, :cond_b

    .line 223
    .line 224
    invoke-interface {v7, v12}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    .line 225
    .line 226
    .line 227
    move-result-object v13

    .line 228
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v14

    .line 232
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    .line 233
    .line 234
    .line 235
    move-result v15

    .line 236
    const/4 v2, 0x4

    .line 237
    sparse-switch v15, :sswitch_data_0

    .line 238
    .line 239
    .line 240
    goto :goto_4

    .line 241
    :sswitch_0
    const-string v15, "exclusive"

    .line 242
    .line 243
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v14

    .line 247
    if-eqz v14, :cond_2

    .line 248
    .line 249
    move v14, v8

    .line 250
    goto :goto_5

    .line 251
    :sswitch_1
    const-string/jumbo v15, "type"

    .line 252
    .line 253
    .line 254
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v14

    .line 258
    if-eqz v14, :cond_2

    .line 259
    .line 260
    move v14, v4

    .line 261
    goto :goto_5

    .line 262
    :sswitch_2
    const-string/jumbo v15, "name"

    .line 263
    .line 264
    .line 265
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v14

    .line 269
    if-eqz v14, :cond_2

    .line 270
    .line 271
    move v14, v3

    .line 272
    goto :goto_5

    .line 273
    :sswitch_3
    const-string v15, "key"

    .line 274
    .line 275
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v14

    .line 279
    if-eqz v14, :cond_2

    .line 280
    .line 281
    move v14, v1

    .line 282
    goto :goto_5

    .line 283
    :sswitch_4
    const-string/jumbo v15, "needNotify"

    .line 284
    .line 285
    .line 286
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v14

    .line 290
    if-eqz v14, :cond_2

    .line 291
    .line 292
    move v14, v2

    .line 293
    goto :goto_5

    .line 294
    :cond_2
    :goto_4
    const/4 v14, -0x1

    .line 295
    :goto_5
    if-eqz v14, :cond_a

    .line 296
    .line 297
    if-eq v14, v4, :cond_9

    .line 298
    .line 299
    if-eq v14, v1, :cond_5

    .line 300
    .line 301
    if-eq v14, v8, :cond_4

    .line 302
    .line 303
    if-eq v14, v2, :cond_3

    .line 304
    .line 305
    goto/16 :goto_9

    .line 306
    .line 307
    :cond_3
    const-string v2, "1"

    .line 308
    .line 309
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v13

    .line 313
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    goto/16 :goto_9

    .line 317
    .line 318
    :cond_4
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v2

    .line 322
    const-string v13, " "

    .line 323
    .line 324
    const-string v14, ""

    .line 325
    .line 326
    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    new-instance v13, Ljava/util/ArrayList;

    .line 331
    .line 332
    const-string v14, ","

    .line 333
    .line 334
    invoke-virtual {v2, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v2

    .line 338
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    invoke-direct {v13, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 343
    .line 344
    .line 345
    iget-object v2, v10, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->exclusiveListSet:Ljava/util/HashSet;

    .line 346
    .line 347
    invoke-virtual {v2, v13}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 348
    .line 349
    .line 350
    goto :goto_9

    .line 351
    :cond_5
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    iput-object v2, v11, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->rawKey:Ljava/lang/String;

    .line 356
    .line 357
    const-string v13, "/"

    .line 358
    .line 359
    invoke-virtual {v2, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v2

    .line 363
    aget-object v13, v2, v3

    .line 364
    .line 365
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    .line 367
    .line 368
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    .line 369
    .line 370
    .line 371
    move-result v14

    .line 372
    sparse-switch v14, :sswitch_data_1

    .line 373
    .line 374
    .line 375
    :goto_6
    const/4 v13, -0x1

    .line 376
    goto :goto_7

    .line 377
    :sswitch_5
    const-string/jumbo v14, "system"

    .line 378
    .line 379
    .line 380
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    move-result v13

    .line 384
    if-nez v13, :cond_6

    .line 385
    .line 386
    goto :goto_6

    .line 387
    :cond_6
    move v13, v1

    .line 388
    goto :goto_7

    .line 389
    :sswitch_6
    const-string/jumbo v14, "secure"

    .line 390
    .line 391
    .line 392
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    move-result v13

    .line 396
    if-nez v13, :cond_7

    .line 397
    .line 398
    goto :goto_6

    .line 399
    :cond_7
    move v13, v4

    .line 400
    goto :goto_7

    .line 401
    :sswitch_7
    const-string v14, "global"

    .line 402
    .line 403
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    move-result v13

    .line 407
    if-nez v13, :cond_8

    .line 408
    .line 409
    goto :goto_6

    .line 410
    :cond_8
    move v13, v3

    .line 411
    :goto_7
    packed-switch v13, :pswitch_data_0

    .line 412
    .line 413
    .line 414
    goto :goto_8

    .line 415
    :pswitch_0
    :try_start_1
    iput v4, v11, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->tableType:I

    .line 416
    .line 417
    goto :goto_8

    .line 418
    :pswitch_1
    iput v1, v11, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->tableType:I

    .line 419
    .line 420
    goto :goto_8

    .line 421
    :pswitch_2
    iput v8, v11, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->tableType:I

    .line 422
    .line 423
    :goto_8
    aget-object v2, v2, v4

    .line 424
    .line 425
    iput-object v2, v11, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->key:Ljava/lang/String;

    .line 426
    .line 427
    goto :goto_9

    .line 428
    :cond_9
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v2

    .line 432
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 433
    .line 434
    .line 435
    move-result v2

    .line 436
    iput v2, v10, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->actionType:I

    .line 437
    .line 438
    goto :goto_9

    .line 439
    :cond_a
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v2

    .line 443
    iput-object v2, v10, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->name:Ljava/lang/String;

    .line 444
    .line 445
    :goto_9
    add-int/2addr v12, v4

    .line 446
    goto/16 :goto_3

    .line 447
    .line 448
    :cond_b
    iget-object v2, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMap:Ljava/util/HashMap;

    .line 449
    .line 450
    iget-object v7, v10, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->name:Ljava/lang/String;

    .line 451
    .line 452
    invoke-virtual {v2, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    iget-object v2, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMapByKey:Ljava/util/HashMap;

    .line 456
    .line 457
    iget-object v7, v11, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->rawKey:Ljava/lang/String;

    .line 458
    .line 459
    invoke-virtual {v2, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 460
    .line 461
    .line 462
    :cond_c
    add-int/2addr v6, v4

    .line 463
    goto/16 :goto_2

    .line 464
    .line 465
    :catch_0
    const-string v2, "error during readExclusiveRelation()"

    .line 466
    .line 467
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    .line 469
    .line 470
    :cond_d
    iget-object v2, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMap:Ljava/util/HashMap;

    .line 471
    .line 472
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 473
    .line 474
    .line 475
    move-result-object v2

    .line 476
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 477
    .line 478
    .line 479
    move-result-object v2

    .line 480
    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 481
    .line 482
    .line 483
    move-result v6

    .line 484
    if-eqz v6, :cond_11

    .line 485
    .line 486
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    move-result-object v6

    .line 490
    check-cast v6, Ljava/lang/String;

    .line 491
    .line 492
    iget-object v7, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMap:Ljava/util/HashMap;

    .line 493
    .line 494
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object v6

    .line 498
    check-cast v6, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    .line 499
    .line 500
    iget-object v7, v6, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->exclusiveListSet:Ljava/util/HashSet;

    .line 501
    .line 502
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 503
    .line 504
    .line 505
    move-result-object v7

    .line 506
    :cond_f
    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 507
    .line 508
    .line 509
    move-result v9

    .line 510
    if-eqz v9, :cond_e

    .line 511
    .line 512
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v9

    .line 516
    check-cast v9, Ljava/lang/String;

    .line 517
    .line 518
    iget-object v10, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMap:Ljava/util/HashMap;

    .line 519
    .line 520
    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    move-result-object v10

    .line 524
    check-cast v10, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    .line 525
    .line 526
    const-string v11, "### "

    .line 527
    .line 528
    if-nez v10, :cond_10

    .line 529
    .line 530
    const-string v10, " isn\'t exist in mTaskMap"

    .line 531
    .line 532
    invoke-static {v11, v9, v10, v5}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    .line 534
    .line 535
    goto :goto_a

    .line 536
    :cond_10
    iget-object v10, v10, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->exclusiveListSet:Ljava/util/HashSet;

    .line 537
    .line 538
    iget-object v12, v6, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->name:Ljava/lang/String;

    .line 539
    .line 540
    invoke-virtual {v10, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 541
    .line 542
    .line 543
    move-result v10

    .line 544
    if-nez v10, :cond_f

    .line 545
    .line 546
    new-instance v10, Ljava/lang/StringBuilder;

    .line 547
    .line 548
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    iget-object v11, v6, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->name:Ljava/lang/String;

    .line 552
    .line 553
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    const-string v11, " doesn\'t exist in exclusiveListSet of "

    .line 557
    .line 558
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    .line 560
    .line 561
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    .line 563
    .line 564
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v9

    .line 568
    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    .line 570
    .line 571
    goto :goto_a

    .line 572
    :cond_11
    iget-object v2, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMap:Ljava/util/HashMap;

    .line 573
    .line 574
    const-string/jumbo v6, "talkback_se"

    .line 575
    .line 576
    .line 577
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    .line 579
    .line 580
    move-result-object v2

    .line 581
    check-cast v2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    .line 582
    .line 583
    if-eqz v2, :cond_12

    .line 584
    .line 585
    const-string v6, "com.samsung.android.accessibility.talkback/com.samsung.android.marvin.talkback.TalkBackService"

    .line 586
    .line 587
    iput-object v6, v2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->componentName:Ljava/lang/String;

    .line 588
    .line 589
    goto :goto_b

    .line 590
    :cond_12
    const-string/jumbo v2, "mTaskMap hasn\'t COMPONENT_NAME_TALKBACK_SE"

    .line 591
    .line 592
    .line 593
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    .line 595
    .line 596
    :goto_b
    iget-object v2, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMap:Ljava/util/HashMap;

    .line 597
    .line 598
    const-string/jumbo v6, "universal_switch"

    .line 599
    .line 600
    .line 601
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    move-result-object v2

    .line 605
    check-cast v2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    .line 606
    .line 607
    if-eqz v2, :cond_13

    .line 608
    .line 609
    const-string v6, "com.samsung.accessibility/.universalswitch.UniversalSwitchService"

    .line 610
    .line 611
    iput-object v6, v2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->componentName:Ljava/lang/String;

    .line 612
    .line 613
    goto :goto_c

    .line 614
    :cond_13
    const-string/jumbo v2, "mTaskMap hasn\'t COMPONENT_NAME_UNIVERSAL_SWITCH"

    .line 615
    .line 616
    .line 617
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    .line 619
    .line 620
    :goto_c
    iget-object v2, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMap:Ljava/util/HashMap;

    .line 621
    .line 622
    const-string/jumbo v6, "talkback"

    .line 623
    .line 624
    .line 625
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    move-result-object v2

    .line 629
    check-cast v2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    .line 630
    .line 631
    if-eqz v2, :cond_14

    .line 632
    .line 633
    const-string v6, "com.google.android.marvin.talkback/.TalkBackService"

    .line 634
    .line 635
    iput-object v6, v2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->componentName:Ljava/lang/String;

    .line 636
    .line 637
    goto :goto_d

    .line 638
    :cond_14
    const-string/jumbo v2, "mTaskMap hasn\'t COMPONENT_NAME_GOOGLE_TALKBACK"

    .line 639
    .line 640
    .line 641
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    .line 643
    .line 644
    :goto_d
    iget-object v2, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMap:Ljava/util/HashMap;

    .line 645
    .line 646
    const-string v6, "assistant_menu"

    .line 647
    .line 648
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    .line 650
    .line 651
    move-result-object v2

    .line 652
    check-cast v2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    .line 653
    .line 654
    if-eqz v2, :cond_15

    .line 655
    .line 656
    const-string v6, "com.samsung.accessibility/.assistantmenu.serviceframework.AssistantMenuService"

    .line 657
    .line 658
    iput-object v6, v2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->componentName:Ljava/lang/String;

    .line 659
    .line 660
    goto :goto_e

    .line 661
    :cond_15
    const-string/jumbo v2, "mTaskMap hasn\'t COMPONENT_NAME_ASSISTANT_MENU"

    .line 662
    .line 663
    .line 664
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    .line 666
    .line 667
    :goto_e
    iget-object v2, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMap:Ljava/util/HashMap;

    .line 668
    .line 669
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 670
    .line 671
    .line 672
    move-result v2

    .line 673
    if-eqz v2, :cond_16

    .line 674
    .line 675
    const-string/jumbo v1, "mTaskMap is empty"

    .line 676
    .line 677
    .line 678
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    .line 680
    .line 681
    goto :goto_10

    .line 682
    :cond_16
    iget-object v2, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 683
    .line 684
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 685
    .line 686
    .line 687
    move-result-object v2

    .line 688
    iget-object v5, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mExclusiveTaskObserver:Lcom/android/server/sepunion/SemExclusiveTaskManagerService$2;

    .line 689
    .line 690
    invoke-virtual {v2, v5}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 691
    .line 692
    .line 693
    iget-object v2, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMapByKey:Ljava/util/HashMap;

    .line 694
    .line 695
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 696
    .line 697
    .line 698
    move-result-object v2

    .line 699
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 700
    .line 701
    .line 702
    move-result-object v2

    .line 703
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 704
    .line 705
    .line 706
    move-result v5

    .line 707
    if-eqz v5, :cond_1a

    .line 708
    .line 709
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 710
    .line 711
    .line 712
    move-result-object v5

    .line 713
    check-cast v5, Ljava/lang/String;

    .line 714
    .line 715
    iget-object v6, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMapByKey:Ljava/util/HashMap;

    .line 716
    .line 717
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    .line 719
    .line 720
    move-result-object v5

    .line 721
    check-cast v5, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    .line 722
    .line 723
    iget-object v5, v5, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->setting:Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;

    .line 724
    .line 725
    iget-object v6, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 726
    .line 727
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 728
    .line 729
    .line 730
    move-result-object v6

    .line 731
    iget-object v7, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mExclusiveTaskObserver:Lcom/android/server/sepunion/SemExclusiveTaskManagerService$2;

    .line 732
    .line 733
    iget v9, v5, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->tableType:I

    .line 734
    .line 735
    if-eq v9, v4, :cond_19

    .line 736
    .line 737
    if-eq v9, v1, :cond_18

    .line 738
    .line 739
    if-eq v9, v8, :cond_17

    .line 740
    .line 741
    const/4 v9, -0x1

    .line 742
    goto :goto_f

    .line 743
    :cond_17
    iget-object v5, v5, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->key:Ljava/lang/String;

    .line 744
    .line 745
    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 746
    .line 747
    .line 748
    move-result-object v5

    .line 749
    const/4 v9, -0x1

    .line 750
    invoke-virtual {v6, v5, v3, v7, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 751
    .line 752
    .line 753
    goto :goto_f

    .line 754
    :cond_18
    const/4 v9, -0x1

    .line 755
    iget-object v5, v5, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->key:Ljava/lang/String;

    .line 756
    .line 757
    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 758
    .line 759
    .line 760
    move-result-object v5

    .line 761
    invoke-virtual {v6, v5, v3, v7, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 762
    .line 763
    .line 764
    goto :goto_f

    .line 765
    :cond_19
    const/4 v9, -0x1

    .line 766
    iget-object v5, v5, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->key:Ljava/lang/String;

    .line 767
    .line 768
    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 769
    .line 770
    .line 771
    move-result-object v5

    .line 772
    invoke-virtual {v6, v5, v3, v7, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 773
    .line 774
    .line 775
    goto :goto_f

    .line 776
    :cond_1a
    const/4 v9, -0x1

    .line 777
    iget-object v1, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 778
    .line 779
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 780
    .line 781
    .line 782
    move-result-object v1

    .line 783
    const-string v2, "accreset_state"

    .line 784
    .line 785
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 786
    .line 787
    .line 788
    move-result-object v2

    .line 789
    iget-object v4, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mExclusiveTaskObserver:Lcom/android/server/sepunion/SemExclusiveTaskManagerService$2;

    .line 790
    .line 791
    invoke-virtual {v1, v2, v3, v4, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 792
    .line 793
    .line 794
    :goto_10
    invoke-virtual {v0, v3}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->userSwitch(I)V

    .line 795
    .line 796
    .line 797
    iget-object v10, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 798
    .line 799
    iget-object v11, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mUserSwitchedReceiver:Lcom/android/server/sepunion/SemExclusiveTaskManagerService$1;

    .line 800
    .line 801
    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 802
    .line 803
    new-instance v13, Landroid/content/IntentFilter;

    .line 804
    .line 805
    const-string v0, "android.intent.action.USER_SWITCHED"

    .line 806
    .line 807
    invoke-direct {v13, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 808
    .line 809
    .line 810
    const/4 v14, 0x0

    .line 811
    const/4 v15, 0x0

    .line 812
    invoke-virtual/range {v10 .. v15}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 813
    .line 814
    .line 815
    return-void

    .line 816
    nop

    .line 817
    :sswitch_data_0
    .sparse-switch
        -0x583f3c81 -> :sswitch_4
        0x19e5f -> :sswitch_3
        0x337a8b -> :sswitch_2
        0x368f3a -> :sswitch_1
        0x6487be9e -> :sswitch_0
    .end sparse-switch

    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    :sswitch_data_1
    .sparse-switch
        -0x4a16fc5d -> :sswitch_7
        -0x3604a489 -> :sswitch_6
        -0x34e38dd1 -> :sswitch_5
    .end sparse-switch

    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getChangedA11yServiceName(Ljava/util/Set;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/content/ComponentName;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string/jumbo v2, "name : "

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "SemExclusiveTaskManagerService"

    .line 37
    .line 38
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    const-string v1, "com.samsung.android.accessibility.talkback/com.samsung.android.marvin.talkback.TalkBackService"

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    const-string/jumbo p0, "talkback se status has changed"

    .line 54
    .line 55
    .line 56
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    const-string/jumbo p0, "talkback_se"

    .line 60
    .line 61
    .line 62
    return-object p0

    .line 63
    :cond_1
    const-string v1, "com.google.android.marvin.talkback/.TalkBackService"

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_2

    .line 74
    .line 75
    const-string/jumbo p0, "talkback status has changed"

    .line 76
    .line 77
    .line 78
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    const-string/jumbo p0, "talkback"

    .line 82
    .line 83
    .line 84
    return-object p0

    .line 85
    :cond_2
    const-string v1, "com.samsung.accessibility/.universalswitch.UniversalSwitchService"

    .line 86
    .line 87
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_3

    .line 96
    .line 97
    const-string/jumbo p0, "universal switch status has changed"

    .line 98
    .line 99
    .line 100
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    const-string/jumbo p0, "universal_switch"

    .line 104
    .line 105
    .line 106
    return-object p0

    .line 107
    :cond_3
    const-string v1, "com.samsung.accessibility/.assistantmenu.serviceframework.AssistantMenuService"

    .line 108
    .line 109
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_0

    .line 118
    .line 119
    const-string p0, "assistant menu status has changed"

    .line 120
    .line 121
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    const-string p0, "assistant_menu"

    .line 125
    .line 126
    return-object p0

    .line 127
    :cond_4
    const/4 p0, 0x0

    .line 128
    return-object p0
.end method

.method public static setGrayScale(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    const-string v0, "accessibility"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    .line 8
    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x4

    .line 15
    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityManager;->semSetMdnieAccessibilityMode(IZ)Z

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    invoke-virtual {p0, v0, p1}, Landroid/view/accessibility/AccessibilityManager;->semSetMdnieAccessibilityMode(IZ)Z

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string p1, "\n##### SemExclusiveTaskManagerService #####\n##### (dumpsys sepunion exclusivetask) #####\n"

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMapByKey:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/4 p3, 0x0

    .line 17
    move v0, p3

    .line 18
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/String;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMapByKey:Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    .line 37
    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string/jumbo v3, "task["

    .line 41
    .line 42
    .line 43
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    add-int/lit8 v3, v0, 0x1

    .line 47
    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v0, "] : "

    .line 52
    .line 53
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object v0, v1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->name:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v0, ", key : "

    .line 62
    .line 63
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-object v0, v1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->setting:Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;

    .line 67
    .line 68
    iget-object v0, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->rawKey:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v2, v0, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 71
    .line 72
    .line 73
    move v0, v3

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mUserStatus:Ljava/util/HashMap;

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_3

    .line 90
    .line 91
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Ljava/lang/Integer;

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 98
    .line 99
    .line 100
    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mUserStatus:Ljava/util/HashMap;

    .line 101
    .line 102
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;

    .line 107
    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string/jumbo v2, "user id : "

    .line 111
    .line 112
    .line 113
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget v2, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    .line 117
    .line 118
    const-string v3, "mExclusiveTaskMap size : "

    .line 119
    .line 120
    invoke-static {v1, v2, p2, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    iget-object v2, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mExclusiveTaskMap:Ljava/util/HashMap;

    .line 125
    .line 126
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget-object v1, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mExclusiveTaskMap:Ljava/util/HashMap;

    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    if-eqz v2, :cond_1

    .line 155
    .line 156
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    check-cast v2, Ljava/lang/String;

    .line 161
    .line 162
    iget-object v3, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mExclusiveTaskMap:Ljava/util/HashMap;

    .line 163
    .line 164
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    check-cast v2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;

    .line 169
    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    const-string v4, "exclusiveTask name : "

    .line 173
    .line 174
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    iget-object v4, v2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;->name:Ljava/lang/String;

    .line 178
    .line 179
    invoke-static {v3, v4, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 180
    .line 181
    .line 182
    iget-object v2, v2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;->manipulatedList:Ljava/util/ArrayList;

    .line 183
    .line 184
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    move v3, p3

    .line 189
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 190
    .line 191
    .line 192
    move-result v4

    .line 193
    if-eqz v4, :cond_2

    .line 194
    .line 195
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    check-cast v4, Ljava/lang/String;

    .line 200
    .line 201
    new-instance v5, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    const-string/jumbo v6, "manipulated task["

    .line 204
    .line 205
    .line 206
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    const-string v6, "] name : "

    .line 213
    .line 214
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    add-int/lit8 v3, v3, 0x1

    .line 228
    .line 229
    goto :goto_1

    .line 230
    :cond_3
    return-void
.end method

.method public final executePostProccess(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;ZLcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V
    .locals 12

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const-string/jumbo v1, "mute_all_sound"

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x4

    .line 7
    const/4 v3, 0x3

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x2

    .line 10
    const/4 v6, 0x1

    .line 11
    new-instance v7, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v8, "executePostProccess() name : "

    .line 14
    .line 15
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v8, p1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->name:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v8, ", status : "

    .line 24
    .line 25
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    const-string v8, "SemExclusiveTaskManagerService"

    .line 36
    .line 37
    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    iget-object v7, p1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->name:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    const/4 v9, 0x0

    .line 46
    const/4 v10, -0x1

    .line 47
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 48
    .line 49
    .line 50
    move-result v11

    .line 51
    sparse-switch v11, :sswitch_data_0

    .line 52
    .line 53
    .line 54
    goto/16 :goto_0

    .line 55
    .line 56
    :sswitch_0
    const-string/jumbo v11, "tap_duration"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    if-nez v7, :cond_0

    .line 64
    .line 65
    goto/16 :goto_0

    .line 66
    .line 67
    :cond_0
    const/16 v10, 0xa

    .line 68
    .line 69
    goto/16 :goto_0

    .line 70
    .line 71
    :sswitch_1
    const-string v11, "color_blind"

    .line 72
    .line 73
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    if-nez v7, :cond_1

    .line 78
    .line 79
    goto/16 :goto_0

    .line 80
    .line 81
    :cond_1
    const/16 v10, 0x9

    .line 82
    .line 83
    goto/16 :goto_0

    .line 84
    .line 85
    :sswitch_2
    const-string v11, "color_lens"

    .line 86
    .line 87
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    if-nez v7, :cond_2

    .line 92
    .line 93
    goto/16 :goto_0

    .line 94
    .line 95
    :cond_2
    move v10, v0

    .line 96
    goto/16 :goto_0

    .line 97
    .line 98
    :sswitch_3
    const-string v11, "interaction_control"

    .line 99
    .line 100
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    if-nez v7, :cond_3

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_3
    const/4 v10, 0x7

    .line 108
    goto :goto_0

    .line 109
    :sswitch_4
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v7

    .line 113
    if-nez v7, :cond_4

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_4
    const/4 v10, 0x6

    .line 117
    goto :goto_0

    .line 118
    :sswitch_5
    const-string v11, "blue_light_filter"

    .line 119
    .line 120
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v7

    .line 124
    if-nez v7, :cond_5

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_5
    const/4 v10, 0x5

    .line 128
    goto :goto_0

    .line 129
    :sswitch_6
    const-string/jumbo v11, "magnification_shortcut"

    .line 130
    .line 131
    .line 132
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v7

    .line 136
    if-nez v7, :cond_6

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_6
    move v10, v2

    .line 140
    goto :goto_0

    .line 141
    :sswitch_7
    const-string/jumbo v11, "talkback_se"

    .line 142
    .line 143
    .line 144
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v7

    .line 148
    if-nez v7, :cond_7

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_7
    move v10, v3

    .line 152
    goto :goto_0

    .line 153
    :sswitch_8
    const-string/jumbo v11, "one_handed_mode"

    .line 154
    .line 155
    .line 156
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v7

    .line 160
    if-nez v7, :cond_8

    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_8
    move v10, v5

    .line 164
    goto :goto_0

    .line 165
    :sswitch_9
    const-string/jumbo v11, "talkback"

    .line 166
    .line 167
    .line 168
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v7

    .line 172
    if-nez v7, :cond_9

    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_9
    move v10, v6

    .line 176
    goto :goto_0

    .line 177
    :sswitch_a
    const-string/jumbo v11, "remove_animation"

    .line 178
    .line 179
    .line 180
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v7

    .line 184
    if-nez v7, :cond_a

    .line 185
    .line 186
    goto :goto_0

    .line 187
    :cond_a
    move v10, v4

    .line 188
    :goto_0
    packed-switch v10, :pswitch_data_0

    .line 189
    .line 190
    .line 191
    goto/16 :goto_7

    .line 192
    .line 193
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 194
    .line 195
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 200
    .line 201
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    iget v1, p3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    .line 206
    .line 207
    const-string v2, "color_adjustment_type"

    .line 208
    .line 209
    invoke-static {v0, v2, v5, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-nez v0, :cond_b

    .line 214
    .line 215
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 216
    .line 217
    invoke-static {p0, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->setGrayScale(Landroid/content/Context;Z)V

    .line 218
    .line 219
    .line 220
    goto/16 :goto_7

    .line 221
    .line 222
    :cond_b
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 223
    .line 224
    invoke-static {v0, v4}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->setGrayScale(Landroid/content/Context;Z)V

    .line 225
    .line 226
    .line 227
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 228
    .line 229
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 230
    .line 231
    .line 232
    move-result-object p0

    .line 233
    const-string v0, "color_blind_user_parameter"

    .line 234
    .line 235
    iget p3, p3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    .line 236
    .line 237
    invoke-static {p0, v0, v9, p3}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    .line 238
    .line 239
    .line 240
    move-result p0

    .line 241
    invoke-virtual {p1, p2, p0}, Landroid/view/accessibility/AccessibilityManager;->semSetMdnieColorBlind(ZF)Z

    .line 242
    .line 243
    .line 244
    goto/16 :goto_7

    .line 245
    .line 246
    :pswitch_1
    iget-object p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 247
    .line 248
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    if-eqz p2, :cond_c

    .line 253
    .line 254
    iget-object p2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 255
    .line 256
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 257
    .line 258
    .line 259
    move-result-object p2

    .line 260
    iget v0, p3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    .line 261
    .line 262
    const-string v1, "color_lens_type"

    .line 263
    .line 264
    invoke-static {p2, v1, v4, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 265
    .line 266
    .line 267
    move-result p2

    .line 268
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 269
    .line 270
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 271
    .line 272
    .line 273
    move-result-object p0

    .line 274
    const-string v0, "color_lens_opacity"

    .line 275
    .line 276
    iget p3, p3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    .line 277
    .line 278
    invoke-static {p0, v0, v4, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 279
    .line 280
    .line 281
    move-result p0

    .line 282
    invoke-virtual {p1, p2, p0}, Landroid/view/accessibility/AccessibilityManager;->semEnableMdnieColorFilter(II)Z

    .line 283
    .line 284
    .line 285
    goto/16 :goto_7

    .line 286
    .line 287
    :cond_c
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->semDisableMdnieColorFilter()Z

    .line 288
    .line 289
    .line 290
    goto/16 :goto_7

    .line 291
    .line 292
    :pswitch_2
    new-instance p1, Landroid/content/Intent;

    .line 293
    .line 294
    const-string p3, "android.intent.action.MAIN"

    .line 295
    .line 296
    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    const-string p3, "com.samsung.accessibility/.interactioncontrol.AccessControlMainService"

    .line 300
    .line 301
    invoke-static {p3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 302
    .line 303
    .line 304
    move-result-object p3

    .line 305
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 306
    .line 307
    .line 308
    if-eqz p2, :cond_d

    .line 309
    .line 310
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 311
    .line 312
    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 313
    .line 314
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 315
    .line 316
    .line 317
    goto/16 :goto_7

    .line 318
    .line 319
    :cond_d
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 320
    .line 321
    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 322
    .line 323
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    .line 324
    .line 325
    .line 326
    goto/16 :goto_7

    .line 327
    .line 328
    :pswitch_3
    new-instance p1, Landroid/content/Intent;

    .line 329
    .line 330
    const-string p3, "android.settings.ALL_SOUND_MUTE"

    .line 331
    .line 332
    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    const-string/jumbo p3, "mute"

    .line 336
    .line 337
    .line 338
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 339
    .line 340
    .line 341
    iget-object p2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 342
    .line 343
    sget-object p3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 344
    .line 345
    invoke-virtual {p2, p1, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {p0, v1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->updateProfile(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    goto/16 :goto_7

    .line 352
    .line 353
    :pswitch_4
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    .line 354
    .line 355
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 356
    .line 357
    .line 358
    new-instance p3, Landroid/content/ComponentName;

    .line 359
    .line 360
    const-string v0, "com.samsung.android.bluelightfilter"

    .line 361
    .line 362
    const-string v1, "com.samsung.android.bluelightfilter.BlueLightFilterService"

    .line 363
    .line 364
    invoke-direct {p3, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 368
    .line 369
    .line 370
    const-string p3, "BLUE_LIGHT_FILTER_SERVICE_TYPE"

    .line 371
    .line 372
    if-eqz p2, :cond_e

    .line 373
    .line 374
    const/16 p2, 0x15

    .line 375
    .line 376
    goto :goto_1

    .line 377
    :cond_e
    const/16 p2, 0x16

    .line 378
    .line 379
    :goto_1
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 380
    .line 381
    .line 382
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 383
    .line 384
    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 385
    .line 386
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    .line 388
    .line 389
    goto/16 :goto_7

    .line 390
    .line 391
    :catch_0
    const-string p0, "error during starting BlueLightFilterService"

    .line 392
    .line 393
    invoke-static {v8, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    .line 395
    .line 396
    goto/16 :goto_7

    .line 397
    .line 398
    :pswitch_5
    const-string p1, "accessibility_display_magnification_enabled"

    .line 399
    .line 400
    const-string v0, "com.android.server.accessibility.MagnificationController"

    .line 401
    .line 402
    if-eqz p2, :cond_11

    .line 403
    .line 404
    :goto_2
    iget-object p2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mMagnificationShortcut:Ljava/util/ArrayList;

    .line 405
    .line 406
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 407
    .line 408
    .line 409
    move-result p2

    .line 410
    if-ge v4, p2, :cond_10

    .line 411
    .line 412
    iget-object p2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mMagnificationShortcut:Ljava/util/ArrayList;

    .line 413
    .line 414
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object p2

    .line 418
    check-cast p2, Ljava/lang/Integer;

    .line 419
    .line 420
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 421
    .line 422
    .line 423
    move-result p2

    .line 424
    if-ne p2, v2, :cond_f

    .line 425
    .line 426
    iget-object p2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 427
    .line 428
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 429
    .line 430
    .line 431
    move-result-object p2

    .line 432
    iget v1, p3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    .line 433
    .line 434
    invoke-static {p2, p1, v6, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 435
    .line 436
    .line 437
    goto :goto_3

    .line 438
    :cond_f
    iget-object p2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 439
    .line 440
    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mMagnificationShortcut:Ljava/util/ArrayList;

    .line 441
    .line 442
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    check-cast v1, Ljava/lang/Integer;

    .line 447
    .line 448
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 449
    .line 450
    .line 451
    move-result v1

    .line 452
    invoke-static {p2, v1, v0}, Lcom/android/internal/accessibility/util/ShortcutUtils;->optInValueToSettings(Landroid/content/Context;ILjava/lang/String;)V

    .line 453
    .line 454
    .line 455
    :goto_3
    add-int/2addr v4, v6

    .line 456
    goto :goto_2

    .line 457
    :cond_10
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mMagnificationShortcut:Ljava/util/ArrayList;

    .line 458
    .line 459
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 460
    .line 461
    .line 462
    goto/16 :goto_7

    .line 463
    .line 464
    :cond_11
    iget-object p2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 465
    .line 466
    invoke-static {p2, v6, v0}, Lcom/android/internal/accessibility/util/ShortcutUtils;->isComponentIdExistingInSettings(Landroid/content/Context;ILjava/lang/String;)Z

    .line 467
    .line 468
    .line 469
    move-result p2

    .line 470
    if-eqz p2, :cond_12

    .line 471
    .line 472
    iget-object p2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mMagnificationShortcut:Ljava/util/ArrayList;

    .line 473
    .line 474
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 475
    .line 476
    .line 477
    move-result-object v1

    .line 478
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    .line 480
    .line 481
    iget-object p2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 482
    .line 483
    invoke-static {p2, v6, v0}, Lcom/android/internal/accessibility/util/ShortcutUtils;->optOutValueFromSettings(Landroid/content/Context;ILjava/lang/String;)V

    .line 484
    .line 485
    .line 486
    :cond_12
    iget-object p2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 487
    .line 488
    invoke-static {p2, v5, v0}, Lcom/android/internal/accessibility/util/ShortcutUtils;->isComponentIdExistingInSettings(Landroid/content/Context;ILjava/lang/String;)Z

    .line 489
    .line 490
    .line 491
    move-result p2

    .line 492
    if-eqz p2, :cond_13

    .line 493
    .line 494
    iget-object p2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mMagnificationShortcut:Ljava/util/ArrayList;

    .line 495
    .line 496
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 497
    .line 498
    .line 499
    move-result-object v1

    .line 500
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    .line 502
    .line 503
    iget-object p2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 504
    .line 505
    invoke-static {p2, v5, v0}, Lcom/android/internal/accessibility/util/ShortcutUtils;->optOutValueFromSettings(Landroid/content/Context;ILjava/lang/String;)V

    .line 506
    .line 507
    .line 508
    :cond_13
    iget-object p2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 509
    .line 510
    const/16 v1, 0x200

    .line 511
    .line 512
    invoke-static {p2, v1, v0}, Lcom/android/internal/accessibility/util/ShortcutUtils;->isComponentIdExistingInSettings(Landroid/content/Context;ILjava/lang/String;)Z

    .line 513
    .line 514
    .line 515
    move-result p2

    .line 516
    if-eqz p2, :cond_14

    .line 517
    .line 518
    iget-object p2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mMagnificationShortcut:Ljava/util/ArrayList;

    .line 519
    .line 520
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 521
    .line 522
    .line 523
    move-result-object v3

    .line 524
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    .line 526
    .line 527
    iget-object p2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 528
    .line 529
    invoke-static {p2, v1, v0}, Lcom/android/internal/accessibility/util/ShortcutUtils;->optOutValueFromSettings(Landroid/content/Context;ILjava/lang/String;)V

    .line 530
    .line 531
    .line 532
    :cond_14
    iget-object p2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 533
    .line 534
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 535
    .line 536
    .line 537
    move-result-object p2

    .line 538
    iget v0, p3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    .line 539
    .line 540
    invoke-static {p2, p1, v4, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 541
    .line 542
    .line 543
    move-result p2

    .line 544
    if-ne p2, v6, :cond_19

    .line 545
    .line 546
    iget-object p2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mMagnificationShortcut:Ljava/util/ArrayList;

    .line 547
    .line 548
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    .line 554
    .line 555
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 556
    .line 557
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 558
    .line 559
    .line 560
    move-result-object p0

    .line 561
    iget p2, p3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    .line 562
    .line 563
    invoke-static {p0, p1, v4, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 564
    .line 565
    .line 566
    goto/16 :goto_7

    .line 567
    .line 568
    :pswitch_6
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 569
    .line 570
    .line 571
    move-result-object p1

    .line 572
    if-eqz p2, :cond_16

    .line 573
    .line 574
    :try_start_1
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 575
    .line 576
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 577
    .line 578
    .line 579
    move-result-object v0

    .line 580
    const-string/jumbo v1, "one_handed_op_wakeup_type"

    .line 581
    .line 582
    .line 583
    iget p3, p3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    .line 584
    .line 585
    invoke-static {v0, v1, v4, p3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 586
    .line 587
    .line 588
    move-result p3

    .line 589
    if-nez p3, :cond_15

    .line 590
    .line 591
    goto :goto_4

    .line 592
    :cond_15
    new-instance v5, Landroid/content/Intent;

    .line 593
    .line 594
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 595
    .line 596
    .line 597
    const-string/jumbo p3, "onehand/onehand"

    .line 598
    .line 599
    .line 600
    invoke-static {p3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 601
    .line 602
    .line 603
    move-result-object p3

    .line 604
    invoke-virtual {v5, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 605
    .line 606
    .line 607
    new-instance p3, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 608
    .line 609
    const/16 v1, 0x8

    .line 610
    .line 611
    const/16 v2, 0x452

    .line 612
    .line 613
    const/4 v3, 0x3

    .line 614
    const/4 v4, 0x0

    .line 615
    move-object v0, p3

    .line 616
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    .line 617
    .line 618
    .line 619
    invoke-interface {p1, p3}, Landroid/view/IWindowManager;->putKeyCustomizationInfo(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V

    .line 620
    .line 621
    .line 622
    goto :goto_4

    .line 623
    :cond_16
    const/16 p3, 0x452

    .line 624
    .line 625
    invoke-interface {p1, p3, v0, v3}, Landroid/view/IWindowManager;->removeKeyCustomizationInfo(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 626
    .line 627
    .line 628
    goto :goto_4

    .line 629
    :catch_1
    const-string p1, "Exception occurs when remove OneHandedMode Key"

    .line 630
    .line 631
    invoke-static {v8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    .line 633
    .line 634
    :goto_4
    new-instance p1, Landroid/content/Intent;

    .line 635
    .line 636
    const-string p3, "com.samsung.intent.action.ONEHAND_REDUCE_SCREEN_STATUS"

    .line 637
    .line 638
    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 639
    .line 640
    .line 641
    const-string p3, "is_enabled"

    .line 642
    .line 643
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 644
    .line 645
    .line 646
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 647
    .line 648
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 649
    .line 650
    .line 651
    goto :goto_7

    .line 652
    :pswitch_7
    iget-object p1, p1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->name:Ljava/lang/String;

    .line 653
    .line 654
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->updateProfile(Ljava/lang/String;)V

    .line 655
    .line 656
    .line 657
    goto :goto_7

    .line 658
    :pswitch_8
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 659
    .line 660
    .line 661
    move-result-object p1

    .line 662
    if-eqz p2, :cond_17

    .line 663
    .line 664
    goto :goto_5

    .line 665
    :cond_17
    const/high16 v9, 0x3f800000    # 1.0f

    .line 666
    .line 667
    :goto_5
    :try_start_2
    invoke-interface {p1, v4, v9}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 668
    .line 669
    .line 670
    invoke-interface {p1, v6, v9}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 671
    .line 672
    .line 673
    invoke-interface {p1, v5, v9}, Landroid/view/IWindowManager;->setAnimationScale(IF)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 674
    .line 675
    .line 676
    goto :goto_6

    .line 677
    :catch_2
    const-string p1, "error during calling setAnimationScale"

    .line 678
    .line 679
    invoke-static {v8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    .line 681
    .line 682
    :goto_6
    const-string/jumbo p1, "reduce_animations"

    .line 683
    .line 684
    .line 685
    if-eqz p2, :cond_18

    .line 686
    .line 687
    iget-object p2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 688
    .line 689
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 690
    .line 691
    .line 692
    move-result-object p2

    .line 693
    iget v0, p3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    .line 694
    .line 695
    invoke-static {p2, p1, v4, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 696
    .line 697
    .line 698
    move-result p2

    .line 699
    iput p2, p3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mPreReduceAnimationValue:I

    .line 700
    .line 701
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 702
    .line 703
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 704
    .line 705
    .line 706
    move-result-object p0

    .line 707
    iget p2, p3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    .line 708
    .line 709
    invoke-static {p0, p1, v6, p2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 710
    .line 711
    .line 712
    goto :goto_7

    .line 713
    :cond_18
    iget p2, p3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mPreReduceAnimationValue:I

    .line 714
    .line 715
    if-nez p2, :cond_19

    .line 716
    .line 717
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 718
    .line 719
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 720
    .line 721
    .line 722
    move-result-object p0

    .line 723
    iget p2, p3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    .line 724
    .line 725
    invoke-static {p0, p1, v4, p2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 726
    .line 727
    .line 728
    :cond_19
    :goto_7
    return-void

    .line 729
    :sswitch_data_0
    .sparse-switch
        -0x4f32c677 -> :sswitch_a
        -0x245dfc6d -> :sswitch_9
        -0x22f0b665 -> :sswitch_8
        -0x15409d82 -> :sswitch_7
        -0x119ca23e -> :sswitch_6
        -0x76e157a -> :sswitch_5
        0x9fe6a4b -> :sswitch_4
        0x2753a830 -> :sswitch_3
        0x4cdb505a -> :sswitch_2
        0x4e04eb79 -> :sswitch_1
        0x55f1a6b0 -> :sswitch_0
    .end sparse-switch

    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public final finalize()V
    .locals 0

    .line 1
    return-void
.end method

.method public final getEnabledServicesFromSettings(Landroid/content/Context;Z)Ljava/util/Set;
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string p1, "enabled_accessibility_services"

    .line 8
    .line 9
    const/4 p2, -0x2

    .line 10
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->getUserStatus(I)Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mPreA11yServiceValue:Ljava/lang/String;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 p0, 0x0

    .line 29
    :goto_0
    if-nez p0, :cond_2

    .line 30
    .line 31
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_2
    new-instance p1, Ljava/util/HashSet;

    .line 37
    .line 38
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 39
    .line 40
    .line 41
    new-instance p2, Landroid/text/TextUtils$SimpleStringSplitter;

    .line 42
    .line 43
    const/16 v0, 0x3a

    .line 44
    .line 45
    invoke-direct {p2, v0}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_3
    :goto_1
    invoke-virtual {p2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-eqz p0, :cond_4

    .line 56
    .line 57
    invoke-virtual {p2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    if-eqz p0, :cond_3

    .line 66
    .line 67
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_4
    return-object p1
.end method

.method public final getExclusiveTaskList(Ljava/lang/String;)Ljava/util/List;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "getExclusiveTaskList for : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "SemExclusiveTaskManagerService"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMap:Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-virtual {p0, v2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->getUserStatus(I)Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iget-object p1, p1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->exclusiveListSet:Ljava/util/HashSet;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Ljava/lang/String;

    .line 60
    .line 61
    iget-object v4, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mTaskMap:Ljava/util/HashMap;

    .line 62
    .line 63
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    check-cast v3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;

    .line 68
    .line 69
    if-eqz v3, :cond_0

    .line 70
    .line 71
    invoke-virtual {v3, v2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->getSettingsStatus(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_0

    .line 76
    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v5, "getExclusiveTaskList add : "

    .line 80
    .line 81
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object v5, v3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->name:Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {v4, v5, v1}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object v3, v3, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$Task;->name:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_1
    return-object v0
.end method

.method public final getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getUserStatus(I)Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mUserStatus:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string/jumbo p0, "no user status for "

    .line 14
    .line 15
    .line 16
    const-string v0, "SemExclusiveTaskManagerService"

    .line 17
    .line 18
    invoke-static {p1, p0, v0}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return-object p0

    .line 23
    :cond_0
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mUserStatus:Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;

    .line 34
    .line 35
    return-object p0
.end method

.method public final isAccessibilityServiceEnabled(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 2

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->getEnabledServicesFromSettings(Landroid/content/Context;Z)Ljava/util/Set;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_2
    return v1
.end method

.method public final isAccessibilityServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->isAccessibilityServiceEnabled(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public final onBootPhase(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onCleanupUser(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    const-string p0, "SemExclusiveTaskManagerService"

    .line 2
    .line 3
    const-string p1, "SemExclusiveTaskManagerService onCreate()"

    .line 4
    .line 5
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onDestroy()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStart()V
    .locals 1

    .line 1
    const-string p0, "SemExclusiveTaskManagerService"

    .line 2
    .line 3
    const-string v0, "SemExclusiveTaskManagerService onStart()"

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onStartUser(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStopUser(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSwitchUser(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onUnlockUser(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setAccessibilityServiceState(Landroid/content/Context;Landroid/content/ComponentName;ZI)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->getEnabledServicesFromSettings(Landroid/content/Context;Z)Ljava/util/Set;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    new-instance p0, Landroid/util/ArraySet;

    .line 15
    .line 16
    invoke-direct {p0, v0}, Landroid/util/ArraySet;-><init>(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    if-eqz p3, :cond_1

    .line 20
    .line 21
    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result p3

    .line 29
    if-nez p3, :cond_2

    .line 30
    .line 31
    invoke-interface {p0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :cond_2
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Landroid/content/ComponentName;

    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const/16 v1, 0x3a

    .line 63
    .line 64
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    .line 69
    .line 70
    .line 71
    move-result p3

    .line 72
    if-lez p3, :cond_4

    .line 73
    .line 74
    sub-int/2addr p3, v0

    .line 75
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 79
    .line 80
    .line 81
    move-result-object p3

    .line 82
    const-string v1, "enabled_accessibility_services"

    .line 83
    .line 84
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-static {p3, v1, p2, p4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    xor-int/2addr p0, v0

    .line 100
    const-string p2, "accessibility_enabled"

    .line 101
    .line 102
    invoke-static {p1, p2, p0, p4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public final updateProfile(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "tap_duration"

    .line 2
    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {p0, v0}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->updateProfile(Landroid/content/Context;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string/jumbo v0, "mute_all_sound"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    const-string p1, "com.android.settings/com.samsung.android.settings.accessibility.shortcut.MuteAllShortcut"

    .line 28
    .line 29
    invoke-static {p0, p1}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->updateProfile(Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const-string/jumbo v0, "talkback"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    const-string p1, "com.google.android.marvin.talkback/.TalkBackService"

    .line 45
    .line 46
    invoke-static {p0, p1}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->updateProfile(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const-string/jumbo v0, "talkback_se"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    const-string p1, "com.samsung.android.accessibility.talkback/com.samsung.android.marvin.talkback.TalkBackService"

    .line 62
    .line 63
    invoke-static {p0, p1}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->updateProfile(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_3
    :goto_0
    return-void
.end method

.method public final userSwitch(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mUserStatus:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string p0, "already has user status for "

    .line 14
    .line 15
    const-string v0, "SemExclusiveTaskManagerService"

    .line 16
    .line 17
    invoke-static {p1, p0, v0}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    iput v1, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    .line 28
    .line 29
    iput-boolean v1, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mIsA11yReset:Z

    .line 30
    .line 31
    new-instance v1, Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v1, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mExclusiveTaskMap:Ljava/util/HashMap;

    .line 37
    .line 38
    new-instance v1, Ljava/util/HashSet;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v1, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mIgnoreSettingsList:Ljava/util/HashSet;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mUserStatus:Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    iput p1, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    const-string p1, "enabled_accessibility_services"

    .line 63
    .line 64
    iget v1, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    .line 65
    .line 66
    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    iput-object p0, v0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mPreA11yServiceValue:Ljava/lang/String;

    .line 71
    .line 72
    return-void
.end method
