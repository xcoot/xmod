.class public final Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public self:Lcom/android/server/chimera/GPUMemoryReclaimer;


# virtual methods
.method public final meminfo(Ljava/io/PrintWriter;)V
    .locals 17

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v0, p0

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/chimera/GPUMemoryReclaimer$Dump;->self:Lcom/android/server/chimera/GPUMemoryReclaimer;

    .line 6
    .line 7
    iget-object v0, v2, Lcom/android/server/chimera/GPUMemoryReclaimer;->mVendorPlugin:Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string v0, "VendorPlugin is not initialized"

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->getReclaimableTasks()Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v3, Lcom/android/server/chimera/GPUMemoryReclaimer$Dump$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 27
    .line 28
    .line 29
    const-string v3, "MemInfo"

    .line 30
    .line 31
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance v3, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    new-instance v4, Ljava/util/ArrayList;

    .line 40
    .line 41
    const-string/jumbo v5, "name"

    .line 42
    .line 43
    .line 44
    const-string/jumbo v6, "resident"

    .line 45
    .line 46
    .line 47
    const-string/jumbo v7, "pid"

    .line 48
    .line 49
    .line 50
    const-string/jumbo v8, "reclaimed"

    .line 51
    .line 52
    .line 53
    const-string/jumbo v9, "raw"

    .line 54
    .line 55
    .line 56
    filled-new-array {v7, v5, v6, v8, v9}, [Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    const-wide/16 v5, 0x0

    .line 75
    .line 76
    move-wide v7, v5

    .line 77
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;

    .line 88
    .line 89
    iget v9, v0, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mPid:I

    .line 90
    .line 91
    :try_start_0
    iget-object v10, v2, Lcom/android/server/chimera/GPUMemoryReclaimer;->mUtils:Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;

    .line 92
    .line 93
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    const-string v10, "/proc/"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 97
    .line 98
    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v10, "/comm"

    .line 107
    .line 108
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    invoke-static {v10}, Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;->readFileToString(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 119
    goto :goto_1

    .line 120
    :catch_0
    const/4 v10, 0x0

    .line 121
    :goto_1
    if-nez v10, :cond_1

    .line 122
    .line 123
    :try_start_2
    const-string v10, "(unknown)"

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :catch_1
    move-exception v0

    .line 127
    move-object/from16 p0, v2

    .line 128
    .line 129
    :goto_2
    move-object/from16 v16, v4

    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_1
    :goto_3
    iget-object v11, v0, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mMeminfoRaw:[J

    .line 133
    .line 134
    iget-wide v12, v0, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mResident:J

    .line 135
    .line 136
    iget-wide v14, v0, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mReclaimed:J

    .line 137
    .line 138
    new-instance v0, Ljava/util/ArrayList;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 139
    .line 140
    move-object/from16 p0, v2

    .line 141
    .line 142
    :try_start_3
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 146
    move-object/from16 v16, v4

    .line 147
    .line 148
    :try_start_4
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-static {v11}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v11

    .line 160
    filled-new-array {v2, v10, v4, v1, v11}, [Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 172
    .line 173
    .line 174
    add-long/2addr v5, v12

    .line 175
    add-long/2addr v7, v14

    .line 176
    move-object/from16 v1, p1

    .line 177
    .line 178
    goto :goto_5

    .line 179
    :catch_2
    move-exception v0

    .line 180
    goto :goto_4

    .line 181
    :catch_3
    move-exception v0

    .line 182
    goto :goto_2

    .line 183
    :goto_4
    const-string/jumbo v1, "pid="

    .line 184
    .line 185
    .line 186
    const-string v2, " : cannot find GPU memory info: "

    .line 187
    .line 188
    invoke-static {v9, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    move-object/from16 v1, p1

    .line 204
    .line 205
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    :goto_5
    move-object/from16 v2, p0

    .line 209
    .line 210
    move-object/from16 v4, v16

    .line 211
    .line 212
    goto/16 :goto_0

    .line 213
    .line 214
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 215
    .line 216
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    const-string v5, "TOTAL"

    .line 225
    .line 226
    const-string v6, "-"

    .line 227
    .line 228
    const-string v7, ""

    .line 229
    .line 230
    filled-new-array {v5, v6, v2, v4, v7}, [Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    const/4 v0, 0x0

    .line 245
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    check-cast v2, Ljava/util/ArrayList;

    .line 250
    .line 251
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    new-array v2, v2, [I

    .line 256
    .line 257
    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([II)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 261
    .line 262
    .line 263
    move-result-object v4

    .line 264
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 265
    .line 266
    .line 267
    move-result v5

    .line 268
    if-eqz v5, :cond_5

    .line 269
    .line 270
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v5

    .line 274
    check-cast v5, Ljava/util/ArrayList;

    .line 275
    .line 276
    move v6, v0

    .line 277
    :goto_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 278
    .line 279
    .line 280
    move-result v7

    .line 281
    if-ge v6, v7, :cond_3

    .line 282
    .line 283
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v7

    .line 287
    check-cast v7, Ljava/lang/String;

    .line 288
    .line 289
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 290
    .line 291
    .line 292
    move-result v7

    .line 293
    aget v8, v2, v6

    .line 294
    .line 295
    if-le v8, v7, :cond_4

    .line 296
    .line 297
    move v7, v8

    .line 298
    :cond_4
    aput v7, v2, v6

    .line 299
    .line 300
    add-int/lit8 v6, v6, 0x1

    .line 301
    .line 302
    goto :goto_6

    .line 303
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 308
    .line 309
    .line 310
    move-result v4

    .line 311
    if-eqz v4, :cond_8

    .line 312
    .line 313
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v4

    .line 317
    check-cast v4, Ljava/util/ArrayList;

    .line 318
    .line 319
    new-instance v5, Ljava/lang/StringBuilder;

    .line 320
    .line 321
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 322
    .line 323
    .line 324
    move v6, v0

    .line 325
    :goto_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 326
    .line 327
    .line 328
    move-result v7

    .line 329
    if-ge v6, v7, :cond_7

    .line 330
    .line 331
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v7

    .line 335
    check-cast v7, Ljava/lang/String;

    .line 336
    .line 337
    aget v8, v2, v6

    .line 338
    .line 339
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 340
    .line 341
    .line 342
    move-result v9

    .line 343
    sub-int/2addr v8, v9

    .line 344
    add-int/lit8 v8, v8, 0x2

    .line 345
    .line 346
    :goto_9
    if-lez v8, :cond_6

    .line 347
    .line 348
    const-string v9, " "

    .line 349
    .line 350
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    add-int/lit8 v8, v8, -0x1

    .line 354
    .line 355
    goto :goto_9

    .line 356
    :cond_6
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    add-int/lit8 v6, v6, 0x1

    .line 360
    .line 361
    goto :goto_8

    .line 362
    :cond_7
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 363
    .line 364
    .line 365
    goto :goto_7

    .line 366
    :cond_8
    return-void
.end method
