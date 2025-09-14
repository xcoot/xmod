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

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "knox_nw_event_event"

    .line 7
    .line 8
    .line 9
    const-string/jumbo v2, "knox_nw_event_exempt"

    .line 10
    .line 11
    .line 12
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "POSTROUTING"

    .line 21
    .line 22
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    sput-object v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->mangleChains:Ljava/util/Map;

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->mangleChains:Ljava/util/Map;

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    check-cast p0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/util/Map$Entry;

    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ljava/util/Collection;

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-static {v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->createTableHeaderCmd(Ljava/util/List;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_2

    .line 60
    .line 61
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Ljava/util/Map$Entry;

    .line 66
    .line 67
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Ljava/util/List;

    .line 72
    .line 73
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-eqz v4, :cond_1

    .line 82
    .line 83
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    move-object v8, v4

    .line 88
    check-cast v8, Ljava/lang/String;

    .line 89
    .line 90
    new-instance v4, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    .line 91
    .line 92
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    move-object v6, v5

    .line 97
    check-cast v6, Ljava/lang/String;

    .line 98
    .line 99
    sget-object v10, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;->DELETE:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;

    .line 100
    .line 101
    const-string v9, ""

    .line 102
    .line 103
    const-string v7, ""

    .line 104
    .line 105
    move-object v5, v4

    .line 106
    invoke-direct/range {v5 .. v10}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    .line 107
    .line 108
    .line 109
    invoke-static {v4}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->parseIptablesRestoreCmd(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    move-object v5, v0

    .line 114
    check-cast v5, Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_2
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_4

    .line 133
    .line 134
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    check-cast v1, Ljava/util/Map$Entry;

    .line 139
    .line 140
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    check-cast v1, Ljava/util/List;

    .line 145
    .line 146
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    if-eqz v2, :cond_3

    .line 155
    .line 156
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    move-object v4, v2

    .line 161
    check-cast v4, Ljava/lang/String;

    .line 162
    .line 163
    new-instance v2, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    .line 164
    .line 165
    sget-object v8, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;->REMOVE_CHAIN:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;

    .line 166
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

    .line 172
    .line 173
    .line 174
    invoke-static {v2}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->parseIptablesRestoreCmd(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    move-object v3, v0

    .line 179
    check-cast v3, Ljava/util/ArrayList;

    .line 180
    .line 181
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_4
    move-object p0, v0

    .line 186
    check-cast p0, Ljava/util/ArrayList;

    .line 187
    .line 188
    const-string v1, "COMMIT\n"

    .line 189
    .line 190
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    const/16 p0, 0x2e

    .line 194
    .line 195
    invoke-static {p0, v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->runIptablesRestoreCmd(ILjava/util/List;)V

    .line 196
    .line 197
    .line 198
    sget-object v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->mangleChains:Ljava/util/Map;

    .line 199
    .line 200
    new-instance v2, Ljava/util/ArrayList;

    .line 201
    .line 202
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .line 204
    .line 205
    check-cast v0, Ljava/util/HashMap;

    .line 206
    .line 207
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 216
    .line 217
    .line 218
    move-result v4

    .line 219
    if-eqz v4, :cond_5

    .line 220
    .line 221
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    check-cast v4, Ljava/util/Map$Entry;

    .line 226
    .line 227
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    check-cast v4, Ljava/util/Collection;

    .line 232
    .line 233
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 234
    .line 235
    .line 236
    goto :goto_3

    .line 237
    :cond_5
    invoke-static {v2}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->createTableHeaderCmd(Ljava/util/List;)Ljava/util/List;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 250
    .line 251
    .line 252
    move-result v3

    .line 253
    if-eqz v3, :cond_7

    .line 254
    .line 255
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    check-cast v3, Ljava/util/Map$Entry;

    .line 260
    .line 261
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v4

    .line 265
    check-cast v4, Ljava/util/List;

    .line 266
    .line 267
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 272
    .line 273
    .line 274
    move-result v5

    .line 275
    if-eqz v5, :cond_6

    .line 276
    .line 277
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v5

    .line 281
    move-object v9, v5

    .line 282
    check-cast v9, Ljava/lang/String;

    .line 283
    .line 284
    new-instance v5, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    .line 285
    .line 286
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v6

    .line 290
    move-object v7, v6

    .line 291
    check-cast v7, Ljava/lang/String;

    .line 292
    .line 293
    sget-object v11, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;->INSERT:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;

    .line 294
    .line 295
    const-string v10, ""

    .line 296
    .line 297
    const-string v8, ""

    .line 298
    .line 299
    move-object v6, v5

    .line 300
    invoke-direct/range {v6 .. v11}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    .line 301
    .line 302
    .line 303
    invoke-static {v5}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->parseIptablesRestoreCmd(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v5

    .line 307
    move-object v6, v2

    .line 308
    check-cast v6, Ljava/util/ArrayList;

    .line 309
    .line 310
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    goto :goto_4

    .line 314
    :cond_7
    move-object v0, v2

    .line 315
    check-cast v0, Ljava/util/ArrayList;

    .line 316
    .line 317
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    invoke-static {p0, v2}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->runIptablesRestoreCmd(ILjava/util/List;)V

    .line 321
    .line 322
    .line 323
    const-string/jumbo v0, "knox_nw_event_1"

    .line 324
    .line 325
    .line 326
    const-string/jumbo v1, "knox_nw_event_2"

    .line 327
    .line 328
    .line 329
    const-string/jumbo v2, "knox_nw_event_3"

    .line 330
    .line 331
    .line 332
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    const/4 v1, 0x0

    .line 341
    const/4 v2, 0x0

    .line 342
    invoke-static {v1, v0, v2, p0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRules(ZLjava/util/List;Ljava/util/List;I)V

    .line 343
    .line 344
    .line 345
    const-string/jumbo v0, "knox_nw_event_1_mch"

    .line 346
    .line 347
    .line 348
    const-string/jumbo v3, "knox_nw_event_2_mch"

    .line 349
    .line 350
    .line 351
    const-string/jumbo v4, "knox_nw_event_3_mch"

    .line 352
    .line 353
    .line 354
    filled-new-array {v0, v3, v4}, [Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    invoke-static {v1, v0, v2, p0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRules(ZLjava/util/List;Ljava/util/List;I)V

    .line 363
    .line 364
    .line 365
    const-string/jumbo v0, "knox_nw_event_1_act"

    .line 366
    .line 367
    .line 368
    const-string/jumbo v3, "knox_nw_event_2_act"

    .line 369
    .line 370
    .line 371
    const-string/jumbo v4, "knox_nw_event_3_act"

    .line 372
    .line 373
    .line 374
    filled-new-array {v0, v3, v4}, [Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    invoke-static {v1, v0, v2, p0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRules(ZLjava/util/List;Ljava/util/List;I)V

    .line 383
    .line 384
    .line 385
    new-instance v0, Ljava/util/ArrayList;

    .line 386
    .line 387
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .line 389
    .line 390
    new-instance v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    .line 391
    .line 392
    sget-object v9, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;->APPEND:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;

    .line 393
    .line 394
    const-string/jumbo v4, "knox_nw_event_event"

    .line 395
    .line 396
    .line 397
    const-string v5, ""

    .line 398
    .line 399
    const-string/jumbo v6, "knox_nw_event_1"

    .line 400
    .line 401
    .line 402
    const-string v7, ""

    .line 403
    .line 404
    move-object v3, v1

    .line 405
    move-object v8, v9

    .line 406
    invoke-direct/range {v3 .. v8}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    .line 411
    .line 412
    new-instance v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    .line 413
    .line 414
    const-string/jumbo v4, "knox_nw_event_event"

    .line 415
    .line 416
    .line 417
    const-string v5, ""

    .line 418
    .line 419
    const-string/jumbo v6, "knox_nw_event_2"

    .line 420
    .line 421
    .line 422
    const-string v7, ""

    .line 423
    .line 424
    move-object v3, v1

    .line 425
    invoke-direct/range {v3 .. v8}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    .line 430
    .line 431
    new-instance v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    .line 432
    .line 433
    const-string/jumbo v4, "knox_nw_event_event"

    .line 434
    .line 435
    .line 436
    const-string v5, ""

    .line 437
    .line 438
    const-string/jumbo v6, "knox_nw_event_3"

    .line 439
    .line 440
    .line 441
    const-string v7, ""

    .line 442
    .line 443
    move-object v3, v1

    .line 444
    invoke-direct/range {v3 .. v8}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    .line 449
    .line 450
    new-instance v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    .line 451
    .line 452
    const-string/jumbo v4, "knox_nw_event_1_act"

    .line 453
    .line 454
    .line 455
    const-string v5, " -m bpf --object-pinned /sys/fs/bpf/prog_netlog_skfilter_insecureports_xtbpf"

    .line 456
    .line 457
    const-string v6, "RETURN"

    .line 458
    .line 459
    const-string v7, ""

    .line 460
    .line 461
    move-object v3, v1

    .line 462
    invoke-direct/range {v3 .. v8}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    .line 467
    .line 468
    new-instance v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    .line 469
    .line 470
    const-string/jumbo v4, "knox_nw_event_2_act"

    .line 471
    .line 472
    .line 473
    const-string v5, " -m bpf --object-pinned /sys/fs/bpf/prog_netlog_skfilter_abnormalpackets_xtbpf"

    .line 474
    .line 475
    const-string v6, "RETURN"

    .line 476
    .line 477
    const-string v7, ""

    .line 478
    .line 479
    move-object v3, v1

    .line 480
    invoke-direct/range {v3 .. v8}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    new-instance v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    .line 487
    .line 488
    const-string/jumbo v4, "knox_nw_event_3_act"

    .line 489
    .line 490
    .line 491
    const-string v5, " -m bpf --object-pinned /sys/fs/bpf/prog_netlog_skfilter_localnwpackets_xtbpf"

    .line 492
    .line 493
    const-string v6, "RETURN"

    .line 494
    .line 495
    const-string v7, ""

    .line 496
    .line 497
    move-object v3, v1

    .line 498
    invoke-direct/range {v3 .. v8}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    .line 499
    .line 500
    .line 501
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    .line 503
    .line 504
    const/4 v1, 0x1

    .line 505
    invoke-static {v1, v2, v0, p0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRules(ZLjava/util/List;Ljava/util/List;I)V

    .line 506
    .line 507
    .line 508
    return-void
.end method

.method public static createTableHeaderCmd(Ljava/util/List;)Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "*mangle\n"

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Ljava/lang/String;

    .line 40
    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 45
    .line 46
    .line 47
    const-string v3, ":"

    .line 48
    .line 49
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v2, " -"

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v2, "\n"

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
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

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_2

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-eq p0, v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    if-eq p0, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string/jumbo p0, "knox_nw_event_3_mch"

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRule(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string/jumbo p0, "knox_nw_event_3"

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRule(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const-string/jumbo p0, "knox_nw_event_2_mch"

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRule(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string/jumbo p0, "knox_nw_event_2"

    .line 34
    .line 35
    .line 36
    invoke-static {p0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRule(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const-string/jumbo p0, "knox_nw_event_1_mch"

    .line 41
    .line 42
    .line 43
    invoke-static {p0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRule(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string/jumbo p0, "knox_nw_event_1"

    .line 47
    .line 48
    .line 49
    invoke-static {p0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRule(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method

.method public static insertRule(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/16 v2, 0x2e

    .line 12
    .line 13
    invoke-static {v1, p0, v0, v2}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRules(ZLjava/util/List;Ljava/util/List;I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static insertRuleForInsecurePorts(I)V
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    const/16 p0, 0x2710

    .line 9
    .line 10
    const/16 v1, 0x4e1f

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const v1, 0x186a0

    .line 14
    .line 15
    .line 16
    mul-int/2addr p0, v1

    .line 17
    add-int/lit8 v1, p0, 0x1

    .line 18
    .line 19
    const v2, 0x1869f

    .line 20
    .line 21
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

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p0, "-"

    .line 35
    .line 36
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    new-instance v7, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    .line 47
    .line 48
    sget-object v8, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;->APPEND:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;

    .line 49
    .line 50
    const-string/jumbo v4, "knox_nw_event_1_mch"

    .line 51
    .line 52
    .line 53
    const-string v5, ""

    .line 54
    .line 55
    const-string/jumbo v2, "knox_nw_event_1"

    .line 56
    .line 57
    .line 58
    const-string v3, ""

    .line 59
    .line 60
    move-object v1, v7

    .line 61
    move-object v6, v8

    .line 62
    invoke-direct/range {v1 .. v6}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    new-instance v7, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    .line 69
    .line 70
    const-string v9, " -m owner --uid-owner "

    .line 71
    .line 72
    const-string v1, " -p tcp -m state --state NEW -m multiport --dports 80,8080,20,21,23,25,110,143"

    .line 73
    .line 74
    invoke-static {v9, p0, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    const-string/jumbo v4, "knox_nw_event_1_act"

    .line 79
    .line 80
    .line 81
    const-string v5, ""

    .line 82
    .line 83
    const-string/jumbo v2, "knox_nw_event_1_mch"

    .line 84
    .line 85
    .line 86
    move-object v1, v7

    .line 87
    invoke-direct/range {v1 .. v6}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    new-instance v7, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    .line 94
    .line 95
    const-string v1, " -p udp -m state --state NEW -m multiport --dports 1812,1813,1645,1646"

    .line 96
    .line 97
    invoke-static {v9, p0, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    const-string/jumbo v4, "knox_nw_event_1_act"

    .line 102
    .line 103
    .line 104
    const-string v5, ""

    .line 105
    .line 106
    const-string/jumbo v2, "knox_nw_event_1_mch"

    .line 107
    .line 108
    .line 109
    move-object v1, v7

    .line 110
    invoke-direct/range {v1 .. v6}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    const/4 p0, 0x0

    .line 117
    const/16 v1, 0x2e

    .line 118
    .line 119
    const/4 v2, 0x1

    .line 120
    invoke-static {v2, p0, v0, v1}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->insertRules(ZLjava/util/List;Ljava/util/List;I)V

    .line 121
    .line 122
    .line 123
    return-void
.end method

.method public static insertRules(ZLjava/util/List;Ljava/util/List;I)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->createTableHeaderCmd(Ljava/util/List;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 11
    .line 12
    .line 13
    const-string p1, "COMMIT\n"

    .line 14
    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    iget-object v2, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;->actionType:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;

    .line 36
    .line 37
    new-instance v3, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    sget-object v4, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;->DELETE:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;

    .line 43
    .line 44
    iput-object v4, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;->actionType:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;

    .line 45
    .line 46
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 47
    .line 48
    .line 49
    invoke-static {v1}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->parseIptablesRestoreCmd(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    invoke-static {p3, v3}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->runIptablesRestoreCmd(ILjava/util/List;)V

    .line 60
    .line 61
    .line 62
    iput-object v2, v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;->actionType:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    if-eqz p2, :cond_4

    .line 66
    .line 67
    new-instance p0, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 73
    .line 74
    .line 75
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_3

    .line 84
    .line 85
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;

    .line 90
    .line 91
    if-eqz v0, :cond_2

    .line 92
    .line 93
    invoke-static {v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->parseIptablesRestoreCmd(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    move-object v0, p0

    .line 102
    :cond_4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    invoke-static {p3, v0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall;->runIptablesRestoreCmd(ILjava/util/List;)V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public static parseIptablesRestoreCmd(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;)Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;->actionType:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreActionType;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const-string p0, ""

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-object v2, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;->secondParam:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;->jumpChain:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v4, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;->firstParam:Ljava/lang/String;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$IpRestoreParam;->actionChain:Ljava/lang/String;

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    const-string v6, " -j "

    .line 27
    .line 28
    const-string v7, "\n"

    .line 29
    .line 30
    if-eqz v1, :cond_4

    .line 31
    .line 32
    const/4 v8, 0x1

    .line 33
    if-eq v1, v8, :cond_3

    .line 34
    .line 35
    const/4 v8, 0x2

    .line 36
    if-eq v1, v8, :cond_2

    .line 37
    .line 38
    const/4 v2, 0x3

    .line 39
    if-eq v1, v2, :cond_1

    .line 40
    .line 41
    move-object v0, v5

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const-string v1, "-X "

    .line 44
    .line 45
    invoke-static {v0, v1, p0, v7}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const-string v1, "-D "

    .line 50
    .line 51
    invoke-static {v0, v1, p0, v4, v6}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v0, v3, v2, v7}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    const-string v1, "-I "

    .line 59
    .line 60
    invoke-static {v0, v1, p0, v4, v6}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v0, v3, v2, v7}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_4
    const-string v1, "-A "

    .line 68
    .line 69
    invoke-static {v0, v1, p0, v4, v6}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v0, v3, v2, v7}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :goto_0
    if-eqz v0, :cond_5

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
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

    .line 2
    .line 3
    invoke-static {v0, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "NetworkEventsLoggerService-KnoxNetworkEventFirewall"

    .line 8
    .line 9
    const-string v1, "Failed to run cmd: "

    .line 10
    .line 11
    const-string/jumbo v2, "testing: command "

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string/jumbo v2, "target "

    .line 27
    .line 28
    .line 29
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    const-string/jumbo v2, "network_management"

    .line 43
    .line 44
    .line 45
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {v2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-interface {v2, p0, p1}, Landroid/os/INetworkManagementService;->runKnoxFirewallRulesCommand(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    .line 58
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

    .line 64
    .line 65
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :goto_1
    return-void

    .line 84
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 85
    .line 86
    .line 87
    throw p0
.end method
