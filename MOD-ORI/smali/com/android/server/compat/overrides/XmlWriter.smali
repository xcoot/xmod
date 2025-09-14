.class public final Lcom/android/server/compat/overrides/XmlWriter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public indent:I

.field public out:Ljava/io/PrintWriter;

.field public outBuffer:Ljava/lang/StringBuilder;

.field public startLine:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/compat/overrides/XmlWriter;

    .line 2
    .line 3
    return-void
.end method

.method public static write(Lcom/android/server/compat/overrides/XmlWriter;Lcom/android/server/compat/overrides/Overrides;)V
    .locals 8

    .line 1
    const-string v0, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "<overrides"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, ">\n"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget v1, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    .line 17
    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    iput v1, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/android/server/compat/overrides/Overrides;->getChangeOverrides()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_10

    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lcom/android/server/compat/overrides/ChangeOverrides;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    const-string v2, "<change-overrides"

    .line 46
    .line 47
    invoke-virtual {p0, v2}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v2, v1, Lcom/android/server/compat/overrides/ChangeOverrides;->changeId:Ljava/lang/Long;

    .line 51
    .line 52
    const-wide/16 v3, 0x0

    .line 53
    .line 54
    const-string v5, "\""

    .line 55
    .line 56
    if-nez v2, :cond_0

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_0
    const-string v2, " changeId=\""

    .line 60
    .line 61
    invoke-virtual {p0, v2}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v2, v1, Lcom/android/server/compat/overrides/ChangeOverrides;->changeId:Ljava/lang/Long;

    .line 65
    .line 66
    if-nez v2, :cond_1

    .line 67
    .line 68
    move-wide v6, v3

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 71
    .line 72
    .line 73
    move-result-wide v6

    .line 74
    :goto_1
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {p0, v2}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v5}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget v2, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    .line 88
    .line 89
    add-int/lit8 v2, v2, 0x1

    .line 90
    .line 91
    iput v2, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    .line 92
    .line 93
    iget-object v2, v1, Lcom/android/server/compat/overrides/ChangeOverrides;->validated:Lcom/android/server/compat/overrides/ChangeOverrides$Raw;

    .line 94
    .line 95
    if-nez v2, :cond_2

    .line 96
    .line 97
    goto :goto_4

    .line 98
    :cond_2
    const-string v6, "<validated"

    .line 99
    .line 100
    invoke-virtual {p0, v6}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget v6, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    .line 107
    .line 108
    add-int/lit8 v6, v6, 0x1

    .line 109
    .line 110
    iput v6, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    .line 111
    .line 112
    invoke-virtual {v2}, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;->getOverrideValue()Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    if-eqz v6, :cond_3

    .line 125
    .line 126
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    check-cast v6, Lcom/android/server/compat/overrides/OverrideValue;

    .line 131
    .line 132
    invoke-virtual {v6, p0}, Lcom/android/server/compat/overrides/OverrideValue;->write(Lcom/android/server/compat/overrides/XmlWriter;)V

    .line 133
    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_3
    iget v2, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    .line 137
    .line 138
    add-int/lit8 v2, v2, -0x1

    .line 139
    .line 140
    iput v2, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    .line 141
    .line 142
    const-string v2, "</validated>\n"

    .line 143
    .line 144
    invoke-virtual {p0, v2}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    :goto_4
    iget-object v2, v1, Lcom/android/server/compat/overrides/ChangeOverrides;->deferred:Lcom/android/server/compat/overrides/ChangeOverrides$Raw;

    .line 148
    .line 149
    if-nez v2, :cond_4

    .line 150
    .line 151
    goto :goto_6

    .line 152
    :cond_4
    const-string v6, "<deferred"

    .line 153
    .line 154
    invoke-virtual {p0, v6}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    iget v6, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    .line 161
    .line 162
    add-int/lit8 v6, v6, 0x1

    .line 163
    .line 164
    iput v6, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    .line 165
    .line 166
    iget-object v6, v2, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;->rawOverrideValue:Ljava/util/List;

    .line 167
    .line 168
    if-nez v6, :cond_5

    .line 169
    .line 170
    new-instance v6, Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .line 174
    .line 175
    iput-object v6, v2, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;->rawOverrideValue:Ljava/util/List;

    .line 176
    .line 177
    :cond_5
    iget-object v2, v2, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;->rawOverrideValue:Ljava/util/List;

    .line 178
    .line 179
    check-cast v2, Ljava/util/ArrayList;

    .line 180
    .line 181
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 186
    .line 187
    .line 188
    move-result v6

    .line 189
    if-eqz v6, :cond_6

    .line 190
    .line 191
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    check-cast v6, Lcom/android/server/compat/overrides/OverrideValue;

    .line 196
    .line 197
    invoke-virtual {v6, p0}, Lcom/android/server/compat/overrides/OverrideValue;->write(Lcom/android/server/compat/overrides/XmlWriter;)V

    .line 198
    .line 199
    .line 200
    goto :goto_5

    .line 201
    :cond_6
    iget v2, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    .line 202
    .line 203
    add-int/lit8 v2, v2, -0x1

    .line 204
    .line 205
    iput v2, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    .line 206
    .line 207
    const-string v2, "</deferred>\n"

    .line 208
    .line 209
    invoke-virtual {p0, v2}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    :goto_6
    iget-object v1, v1, Lcom/android/server/compat/overrides/ChangeOverrides;->raw:Lcom/android/server/compat/overrides/ChangeOverrides$Raw;

    .line 213
    .line 214
    if-nez v1, :cond_7

    .line 215
    .line 216
    goto/16 :goto_f

    .line 217
    .line 218
    :cond_7
    const-string v2, "<raw"

    .line 219
    .line 220
    invoke-virtual {p0, v2}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    iget v2, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    .line 227
    .line 228
    add-int/lit8 v2, v2, 0x1

    .line 229
    .line 230
    iput v2, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    .line 231
    .line 232
    invoke-virtual {v1}, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;->getRawOverrideValue()Ljava/util/List;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    if-eqz v2, :cond_f

    .line 245
    .line 246
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    check-cast v2, Lcom/android/server/compat/overrides/RawOverrideValue;

    .line 251
    .line 252
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 253
    .line 254
    .line 255
    const-string v6, "<raw-override-value"

    .line 256
    .line 257
    invoke-virtual {p0, v6}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    iget-object v6, v2, Lcom/android/server/compat/overrides/RawOverrideValue;->packageName:Ljava/lang/String;

    .line 261
    .line 262
    if-nez v6, :cond_8

    .line 263
    .line 264
    goto :goto_8

    .line 265
    :cond_8
    const-string v6, " packageName=\""

    .line 266
    .line 267
    invoke-virtual {p0, v6}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    iget-object v6, v2, Lcom/android/server/compat/overrides/RawOverrideValue;->packageName:Ljava/lang/String;

    .line 271
    .line 272
    invoke-virtual {p0, v6}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p0, v5}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    :goto_8
    iget-object v6, v2, Lcom/android/server/compat/overrides/RawOverrideValue;->minVersionCode:Ljava/lang/Long;

    .line 279
    .line 280
    if-nez v6, :cond_9

    .line 281
    .line 282
    goto :goto_a

    .line 283
    :cond_9
    const-string v6, " minVersionCode=\""

    .line 284
    .line 285
    invoke-virtual {p0, v6}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    iget-object v6, v2, Lcom/android/server/compat/overrides/RawOverrideValue;->minVersionCode:Ljava/lang/Long;

    .line 289
    .line 290
    if-nez v6, :cond_a

    .line 291
    .line 292
    move-wide v6, v3

    .line 293
    goto :goto_9

    .line 294
    :cond_a
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 295
    .line 296
    .line 297
    move-result-wide v6

    .line 298
    :goto_9
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v6

    .line 302
    invoke-virtual {p0, v6}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {p0, v5}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    :goto_a
    iget-object v6, v2, Lcom/android/server/compat/overrides/RawOverrideValue;->maxVersionCode:Ljava/lang/Long;

    .line 309
    .line 310
    if-nez v6, :cond_b

    .line 311
    .line 312
    goto :goto_c

    .line 313
    :cond_b
    const-string v6, " maxVersionCode=\""

    .line 314
    .line 315
    invoke-virtual {p0, v6}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    iget-object v6, v2, Lcom/android/server/compat/overrides/RawOverrideValue;->maxVersionCode:Ljava/lang/Long;

    .line 319
    .line 320
    if-nez v6, :cond_c

    .line 321
    .line 322
    move-wide v6, v3

    .line 323
    goto :goto_b

    .line 324
    :cond_c
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 325
    .line 326
    .line 327
    move-result-wide v6

    .line 328
    :goto_b
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v6

    .line 332
    invoke-virtual {p0, v6}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {p0, v5}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    :goto_c
    iget-object v6, v2, Lcom/android/server/compat/overrides/RawOverrideValue;->enabled:Ljava/lang/Boolean;

    .line 339
    .line 340
    if-nez v6, :cond_d

    .line 341
    .line 342
    goto :goto_e

    .line 343
    :cond_d
    const-string v6, " enabled=\""

    .line 344
    .line 345
    invoke-virtual {p0, v6}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    iget-object v2, v2, Lcom/android/server/compat/overrides/RawOverrideValue;->enabled:Ljava/lang/Boolean;

    .line 349
    .line 350
    if-nez v2, :cond_e

    .line 351
    .line 352
    const/4 v2, 0x0

    .line 353
    goto :goto_d

    .line 354
    :cond_e
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 355
    .line 356
    .line 357
    move-result v2

    .line 358
    :goto_d
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    invoke-virtual {p0, v2}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {p0, v5}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    :goto_e
    invoke-virtual {p0, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    const-string v2, "</raw-override-value>\n"

    .line 372
    .line 373
    invoke-virtual {p0, v2}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    goto/16 :goto_7

    .line 377
    .line 378
    :cond_f
    iget v1, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    .line 379
    .line 380
    add-int/lit8 v1, v1, -0x1

    .line 381
    .line 382
    iput v1, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    .line 383
    .line 384
    const-string v1, "</raw>\n"

    .line 385
    .line 386
    invoke-virtual {p0, v1}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    :goto_f
    iget v1, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    .line 390
    .line 391
    add-int/lit8 v1, v1, -0x1

    .line 392
    .line 393
    iput v1, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    .line 394
    .line 395
    const-string v1, "</change-overrides>\n"

    .line 396
    .line 397
    invoke-virtual {p0, v1}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    goto/16 :goto_0

    .line 401
    .line 402
    :cond_10
    iget p1, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    .line 403
    .line 404
    add-int/lit8 p1, p1, -0x1

    .line 405
    .line 406
    iput p1, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    .line 407
    .line 408
    const-string p1, "</overrides>\n"

    .line 409
    .line 410
    invoke-virtual {p0, p1}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    iget-object p1, p0, Lcom/android/server/compat/overrides/XmlWriter;->out:Ljava/io/PrintWriter;

    .line 414
    .line 415
    iget-object p0, p0, Lcom/android/server/compat/overrides/XmlWriter;->outBuffer:Ljava/lang/StringBuilder;

    .line 416
    .line 417
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object p0

    .line 421
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/compat/overrides/XmlWriter;->out:Ljava/io/PrintWriter;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final print(Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 v0, -0x1

    .line 2
    const-string v1, "\n"

    .line 3
    .line 4
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v0, 0x0

    .line 9
    move v2, v0

    .line 10
    :cond_0
    :goto_0
    array-length v3, p1

    .line 11
    if-ge v2, v3, :cond_3

    .line 12
    .line 13
    iget-boolean v3, p0, Lcom/android/server/compat/overrides/XmlWriter;->startLine:Z

    .line 14
    .line 15
    if-eqz v3, :cond_2

    .line 16
    .line 17
    aget-object v3, p1, v2

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_2

    .line 24
    .line 25
    move v3, v0

    .line 26
    :goto_1
    iget v4, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    .line 27
    .line 28
    if-ge v3, v4, :cond_1

    .line 29
    .line 30
    iget-object v4, p0, Lcom/android/server/compat/overrides/XmlWriter;->outBuffer:Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v5, "    "

    .line 33
    .line 34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    add-int/lit8 v3, v3, 0x1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    iput-boolean v0, p0, Lcom/android/server/compat/overrides/XmlWriter;->startLine:Z

    .line 41
    .line 42
    :cond_2
    iget-object v3, p0, Lcom/android/server/compat/overrides/XmlWriter;->outBuffer:Ljava/lang/StringBuilder;

    .line 43
    .line 44
    aget-object v4, p1, v2

    .line 45
    .line 46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    add-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    array-length v3, p1

    .line 52
    if-ge v2, v3, :cond_0

    .line 53
    .line 54
    iget-object v3, p0, Lcom/android/server/compat/overrides/XmlWriter;->outBuffer:Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const/4 v3, 0x1

    .line 60
    iput-boolean v3, p0, Lcom/android/server/compat/overrides/XmlWriter;->startLine:Z

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    return-void
.end method
