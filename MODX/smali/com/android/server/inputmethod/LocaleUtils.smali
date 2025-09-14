.class public abstract Lcom/android/server/inputmethod/LocaleUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static filterByLanguage(Ljava/util/List;Landroid/os/LocaleList;Ljava/util/ArrayList;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/os/LocaleList;->isEmpty()Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/LocaleList;->size()I

    .line 13
    move-result v1

    .line 14
    new-instance v2, Landroid/util/ArrayMap;

    .line 16
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 19
    new-array v3, v1, [B

    .line 21
    new-array v4, v1, [Landroid/icu/util/ULocale;

    .line 23
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    .line 26
    move-result v5

    .line 27
    const/4 v6, 0x0

    .line 28
    move v7, v6

    .line 29
    :goto_0
    if-ge v7, v5, :cond_15

    .line 31
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    move-result-object v8

    .line 35
    check-cast v8, Landroid/view/inputmethod/InputMethodSubtype;

    .line 37
    if-eqz v8, :cond_1

    .line 39
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getLocaleObject()Ljava/util/Locale;

    .line 42
    move-result-object v8

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/4 v8, 0x0

    .line 45
    :goto_1
    if-nez v8, :cond_2

    .line 47
    move-object/from16 v12, p1

    .line 49
    goto/16 :goto_9

    .line 51
    :cond_2
    move v10, v6

    .line 52
    const/4 v11, 0x1

    .line 53
    :goto_2
    if-ge v10, v1, :cond_e

    .line 55
    move-object/from16 v12, p1

    .line 57
    invoke-virtual {v12, v10}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 60
    move-result-object v13

    .line 61
    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 64
    move-result-object v14

    .line 65
    invoke-virtual {v13}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 68
    move-result-object v15

    .line 69
    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 72
    move-result v14

    .line 73
    if-nez v14, :cond_3

    .line 75
    aput-byte v6, v3, v10

    .line 77
    goto/16 :goto_6

    .line 79
    :cond_3
    aget-object v14, v4, v10

    .line 81
    if-nez v14, :cond_4

    .line 83
    invoke-static {v13}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    .line 86
    move-result-object v13

    .line 87
    invoke-static {v13}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    .line 90
    move-result-object v13

    .line 91
    aput-object v13, v4, v10

    .line 93
    :cond_4
    aget-object v13, v4, v10

    .line 95
    invoke-static {v8}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    .line 98
    move-result-object v14

    .line 99
    invoke-virtual {v13, v14}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    .line 102
    move-result v15

    .line 103
    const/16 v16, 0x4

    .line 105
    if-eqz v15, :cond_5

    .line 107
    goto :goto_5

    .line 108
    :cond_5
    invoke-static {v14}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    .line 111
    move-result-object v15

    .line 112
    invoke-virtual {v13}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    .line 115
    move-result-object v6

    .line 116
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 119
    move-result v17

    .line 120
    if-nez v17, :cond_b

    .line 122
    invoke-virtual {v15}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    .line 125
    move-result-object v9

    .line 126
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    move-result v6

    .line 130
    if-nez v6, :cond_6

    .line 132
    goto :goto_4

    .line 133
    :cond_6
    invoke-virtual {v13}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    .line 136
    move-result-object v6

    .line 137
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 140
    move-result v9

    .line 141
    if-nez v9, :cond_a

    .line 143
    invoke-virtual {v15}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    .line 146
    move-result-object v9

    .line 147
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    move-result v6

    .line 151
    if-nez v6, :cond_7

    .line 153
    goto :goto_3

    .line 154
    :cond_7
    invoke-virtual {v14}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    .line 157
    move-result-object v6

    .line 158
    invoke-virtual {v14}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    .line 161
    move-result-object v9

    .line 162
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 165
    move-result v13

    .line 166
    if-nez v13, :cond_8

    .line 168
    invoke-virtual {v15}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    .line 171
    move-result-object v13

    .line 172
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    move-result v6

    .line 176
    if-eqz v6, :cond_9

    .line 178
    :cond_8
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 181
    move-result v6

    .line 182
    if-nez v6, :cond_c

    .line 184
    invoke-virtual {v15}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    .line 187
    move-result-object v6

    .line 188
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    move-result v6

    .line 192
    if-eqz v6, :cond_9

    .line 194
    goto :goto_5

    .line 195
    :cond_9
    const/16 v16, 0x3

    .line 197
    goto :goto_5

    .line 198
    :cond_a
    :goto_3
    const/16 v16, 0x2

    .line 200
    goto :goto_5

    .line 201
    :cond_b
    :goto_4
    const/16 v16, 0x1

    .line 203
    :cond_c
    :goto_5
    aput-byte v16, v3, v10

    .line 205
    if-eqz v11, :cond_d

    .line 207
    if-eqz v16, :cond_d

    .line 209
    const/4 v11, 0x0

    .line 210
    :cond_d
    :goto_6
    add-int/lit8 v10, v10, 0x1

    .line 212
    const/4 v6, 0x0

    .line 213
    goto/16 :goto_2

    .line 215
    :cond_e
    move-object/from16 v12, p1

    .line 217
    if-eqz v11, :cond_f

    .line 219
    goto :goto_9

    .line 220
    :cond_f
    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 223
    move-result-object v6

    .line 224
    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    move-result-object v8

    .line 228
    check-cast v8, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;

    .line 230
    if-nez v8, :cond_10

    .line 232
    new-instance v8, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;

    .line 234
    invoke-direct {v8, v7, v3}, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;-><init>(I[B)V

    .line 237
    invoke-virtual {v2, v6, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    goto :goto_9

    .line 241
    :cond_10
    iget-object v6, v8, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;->mScore:[B

    .line 243
    const/4 v9, 0x0

    .line 244
    :goto_7
    array-length v10, v6

    .line 245
    if-ge v9, v10, :cond_14

    .line 247
    aget-byte v10, v6, v9

    .line 249
    aget-byte v11, v3, v9

    .line 251
    if-le v10, v11, :cond_11

    .line 253
    goto :goto_9

    .line 254
    :cond_11
    if-ge v10, v11, :cond_13

    .line 256
    const/4 v6, 0x0

    .line 257
    :goto_8
    iget-object v9, v8, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;->mScore:[B

    .line 259
    array-length v10, v9

    .line 260
    if-ge v6, v10, :cond_12

    .line 262
    aget-byte v10, v3, v6

    .line 264
    aput-byte v10, v9, v6

    .line 266
    add-int/lit8 v6, v6, 0x1

    .line 268
    goto :goto_8

    .line 269
    :cond_12
    iput v7, v8, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;->mIndex:I

    .line 271
    goto :goto_9

    .line 272
    :cond_13
    add-int/lit8 v9, v9, 0x1

    .line 274
    goto :goto_7

    .line 275
    :cond_14
    :goto_9
    add-int/lit8 v7, v7, 0x1

    .line 277
    const/4 v6, 0x0

    .line 278
    goto/16 :goto_0

    .line 280
    :cond_15
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 283
    move-result v1

    .line 284
    new-array v3, v1, [Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;

    .line 286
    const/4 v4, 0x0

    .line 287
    :goto_a
    if-ge v4, v1, :cond_16

    .line 289
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 292
    move-result-object v5

    .line 293
    check-cast v5, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;

    .line 295
    aput-object v5, v3, v4

    .line 297
    add-int/lit8 v4, v4, 0x1

    .line 299
    goto :goto_a

    .line 300
    :cond_16
    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 303
    const/4 v6, 0x0

    .line 304
    :goto_b
    if-ge v6, v1, :cond_17

    .line 306
    aget-object v2, v3, v6

    .line 308
    iget v2, v2, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;->mIndex:I

    .line 310
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 313
    move-result-object v2

    .line 314
    move-object/from16 v4, p2

    .line 316
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    add-int/lit8 v6, v6, 0x1

    .line 321
    goto :goto_b

    .line 322
    :cond_17
    return-void
.end method

.method public static getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x5f

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 6
    move-result v0

    .line 7
    if-gez v0, :cond_0

    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method
