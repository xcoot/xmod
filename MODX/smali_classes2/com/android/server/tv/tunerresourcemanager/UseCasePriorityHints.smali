.class public final Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mDefaultBackground:I

.field public mDefaultForeground:I

.field public mPriorityHints:Landroid/util/SparseArray;

.field public mVendorDefinedUseCase:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "UseCasePriorityHints"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->DEBUG:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final addNewUseCasePriority(III)V
    .locals 0

    .line 1
    filled-new-array {p2, p3}, [I

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public parseInternal(Ljava/io/InputStream;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1
    const-string v0, "UseCasePriorityHints"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v3, 0x2

    .line 6
    const/4 v4, -0x1

    .line 7
    const/4 v5, 0x1

    .line 8
    invoke-static {p1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 9
    .line 10
    .line 11
    move-result-object v6

    .line 12
    invoke-interface {v6}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    .line 13
    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    const-string v8, "config"

    .line 17
    .line 18
    invoke-interface {v6, v3, v7, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    :goto_0
    invoke-interface {v6}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 22
    .line 23
    .line 24
    move-result v8

    .line 25
    if-eq v8, v2, :cond_e

    .line 26
    .line 27
    invoke-interface {v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    if-eq v8, v3, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-interface {v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    const-string/jumbo v9, "useCaseDefault"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v9

    .line 45
    const-string v10, "bgPriority"

    .line 46
    .line 47
    const-string v11, "fgPriority"

    .line 48
    .line 49
    if-eqz v9, :cond_2

    .line 50
    .line 51
    invoke-interface {v6, v7, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    iput v9, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mDefaultForeground:I

    .line 56
    .line 57
    invoke-interface {v6, v7, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v9

    .line 61
    iput v9, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mDefaultBackground:I

    .line 62
    .line 63
    invoke-interface {v6}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    .line 64
    .line 65
    .line 66
    invoke-interface {v6, v2, v7, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    const-string/jumbo v9, "useCasePreDefined"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    if-eqz v9, :cond_9

    .line 78
    .line 79
    const-string/jumbo v9, "type"

    .line 80
    .line 81
    .line 82
    invoke-interface {v6, v7, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 90
    .line 91
    .line 92
    move-result v12

    .line 93
    sparse-switch v12, :sswitch_data_0

    .line 94
    .line 95
    .line 96
    :goto_1
    move v9, v4

    .line 97
    goto :goto_2

    .line 98
    :sswitch_0
    const-string v12, "USE_CASE_RECORD"

    .line 99
    .line 100
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v9

    .line 104
    if-nez v9, :cond_3

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_3
    const/4 v9, 0x4

    .line 108
    goto :goto_2

    .line 109
    :sswitch_1
    const-string v12, "USE_CASE_SCAN"

    .line 110
    .line 111
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    if-nez v9, :cond_4

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_4
    move v9, v2

    .line 119
    goto :goto_2

    .line 120
    :sswitch_2
    const-string v12, "USE_CASE_LIVE"

    .line 121
    .line 122
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v9

    .line 126
    if-nez v9, :cond_5

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_5
    move v9, v3

    .line 130
    goto :goto_2

    .line 131
    :sswitch_3
    const-string v12, "USE_CASE_PLAYBACK"

    .line 132
    .line 133
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v9

    .line 137
    if-nez v9, :cond_6

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_6
    move v9, v5

    .line 141
    goto :goto_2

    .line 142
    :sswitch_4
    const-string v12, "USE_CASE_BACKGROUND"

    .line 143
    .line 144
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v9

    .line 148
    if-nez v9, :cond_7

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_7
    move v9, v1

    .line 152
    :goto_2
    packed-switch v9, :pswitch_data_0

    .line 153
    .line 154
    .line 155
    move v9, v4

    .line 156
    goto :goto_3

    .line 157
    :pswitch_0
    const/16 v9, 0x1f4

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :pswitch_1
    const/16 v9, 0xc8

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :pswitch_2
    const/16 v9, 0x190

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :pswitch_3
    const/16 v9, 0x12c

    .line 167
    .line 168
    goto :goto_3

    .line 169
    :pswitch_4
    const/16 v9, 0x64

    .line 170
    .line 171
    :goto_3
    if-ne v9, v4, :cond_8

    .line 172
    .line 173
    const-string v8, "Wrong predefined use case name given in the vendor config."

    .line 174
    .line 175
    invoke-static {v0, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :cond_8
    invoke-interface {v6, v7, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    move-result v11

    .line 184
    invoke-interface {v6, v7, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    move-result v10

    .line 188
    invoke-virtual {p0, v9, v11, v10}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->addNewUseCasePriority(III)V

    .line 189
    .line 190
    .line 191
    invoke-interface {v6}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    .line 192
    .line 193
    .line 194
    invoke-interface {v6, v2, v7, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    goto/16 :goto_0

    .line 198
    .line 199
    :cond_9
    const-string/jumbo v9, "useCaseVendor"

    .line 200
    .line 201
    .line 202
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v9

    .line 206
    if-eqz v9, :cond_a

    .line 207
    .line 208
    const-string v9, "id"

    .line 209
    .line 210
    invoke-interface {v6, v7, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    move-result v9

    .line 214
    invoke-interface {v6, v7, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .line 216
    .line 217
    move-result v11

    .line 218
    invoke-interface {v6, v7, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    .line 220
    .line 221
    move-result v10

    .line 222
    invoke-virtual {p0, v9, v11, v10}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->addNewUseCasePriority(III)V

    .line 223
    .line 224
    .line 225
    iget-object v10, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mVendorDefinedUseCase:Ljava/util/Set;

    .line 226
    .line 227
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 228
    .line 229
    .line 230
    move-result-object v9

    .line 231
    check-cast v10, Ljava/util/HashSet;

    .line 232
    .line 233
    invoke-virtual {v10, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    invoke-interface {v6}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    .line 237
    .line 238
    .line 239
    invoke-interface {v6, v2, v7, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    goto/16 :goto_0

    .line 243
    .line 244
    :cond_a
    invoke-interface {v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    .line 245
    .line 246
    .line 247
    move-result v8

    .line 248
    if-ne v8, v3, :cond_d

    .line 249
    .line 250
    move v8, v5

    .line 251
    :goto_4
    if-eqz v8, :cond_0

    .line 252
    .line 253
    invoke-interface {v6}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 254
    .line 255
    .line 256
    move-result v9

    .line 257
    if-eq v9, v3, :cond_c

    .line 258
    .line 259
    if-eq v9, v2, :cond_b

    .line 260
    .line 261
    goto :goto_4

    .line 262
    :cond_b
    add-int/2addr v8, v4

    .line 263
    goto :goto_4

    .line 264
    :cond_c
    add-int/2addr v8, v5

    .line 265
    goto :goto_4

    .line 266
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 267
    .line 268
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 269
    .line 270
    .line 271
    throw p0

    .line 272
    :cond_e
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 273
    .line 274
    .line 275
    move p1, v1

    .line 276
    :goto_5
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    .line 277
    .line 278
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    if-ge p1, v2, :cond_10

    .line 283
    .line 284
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    .line 285
    .line 286
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    iget-object v3, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    .line 291
    .line 292
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    check-cast v3, [I

    .line 297
    .line 298
    sget-boolean v4, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->DEBUG:Z

    .line 299
    .line 300
    if-eqz v4, :cond_f

    .line 301
    .line 302
    new-instance v4, Ljava/lang/StringBuilder;

    .line 303
    .line 304
    const-string/jumbo v6, "{defaultFg="

    .line 305
    .line 306
    .line 307
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    iget v6, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mDefaultForeground:I

    .line 311
    .line 312
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    const-string v6, ", defaultBg="

    .line 316
    .line 317
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    iget v6, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mDefaultBackground:I

    .line 321
    .line 322
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    const-string/jumbo v6, "}"

    .line 326
    .line 327
    .line 328
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v4

    .line 335
    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    .line 337
    .line 338
    new-instance v4, Ljava/lang/StringBuilder;

    .line 339
    .line 340
    const-string/jumbo v7, "{useCase="

    .line 341
    .line 342
    .line 343
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    const-string v2, ", fg="

    .line 350
    .line 351
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    aget v2, v3, v1

    .line 355
    .line 356
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    const-string v2, ", bg="

    .line 360
    .line 361
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    aget v2, v3, v5

    .line 365
    .line 366
    invoke-static {v4, v2, v6, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    :cond_f
    add-int/2addr p1, v5

    .line 370
    goto :goto_5

    .line 371
    :cond_10
    return-void

    .line 372
    nop

    .line 373
    :sswitch_data_0
    .sparse-switch
        -0x34bcc93b -> :sswitch_4
        0x16873572 -> :sswitch_3
        0x48d65bc3 -> :sswitch_2
        0x48d97154 -> :sswitch_1
        0x76aab968 -> :sswitch_0
    .end sparse-switch

    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
