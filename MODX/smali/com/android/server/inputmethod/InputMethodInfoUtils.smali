.class public abstract Lcom/android/server/inputmethod/InputMethodInfoUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ENGLISH_LOCALE:Ljava/util/Locale;

.field public static final SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;


# direct methods
.method public static -$$Nest$smisSystemAuxilialyImeThatHasAutomaticSubtype(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;Z)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 8
    goto :goto_1

    .line 9
    :cond_0
    if-eqz p2, :cond_1

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodInfo;->isDefault(Landroid/content/Context;)Z

    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_1

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_2

    .line 24
    goto :goto_1

    .line 25
    :cond_2
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    .line 28
    move-result p1

    .line 29
    move p2, v1

    .line 30
    :goto_0
    if-ge p2, p1, :cond_4

    .line 32
    invoke-virtual {p0, p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_3

    .line 42
    const/4 v1, 0x1

    .line 43
    goto :goto_1

    .line 44
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_4
    :goto_1
    return v1
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/util/Locale;

    .line 4
    const/4 v1, 0x0

    .line 5
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 7
    aput-object v2, v0, v1

    .line 9
    const/4 v1, 0x1

    .line 10
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 12
    aput-object v2, v0, v1

    .line 14
    const/4 v1, 0x2

    .line 15
    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 17
    aput-object v2, v0, v1

    .line 19
    sput-object v0, Lcom/android/server/inputmethod/InputMethodInfoUtils;->SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;

    .line 21
    new-instance v0, Ljava/util/Locale;

    .line 23
    const-string/jumbo v1, "en"

    .line 26
    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 29
    sput-object v0, Lcom/android/server/inputmethod/InputMethodInfoUtils;->ENGLISH_LOCALE:Ljava/util/Locale;

    .line 31
    return-void
.end method

.method public static getAuxilaryRemoveList(Ljava/util/List;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    move-object v1, p0

    .line 3
    check-cast v1, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v2

    .line 9
    if-ge v0, v2, :cond_2

    .line 11
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 17
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    const-string/jumbo v3, "com.samsung.android.bixby.voiceinput/com.samsung.android.svoiceime.BixbyDictVoiceReco"

    .line 24
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_0

    .line 30
    const-string/jumbo v3, "com.samsung.android.svoiceime/.BixbyDictVoiceReco"

    .line 33
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_0

    .line 39
    const-string/jumbo v3, "com.samsung.android.bixby.service/.dictation.DictationInputMethodService"

    .line 42
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_0

    .line 48
    const-string/jumbo v3, "com.samsung.android.honeyboard/com.samsung.android.writingtoolkit.service.FakeHoneyBoardService"

    .line 51
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_1

    .line 57
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 60
    add-int/lit8 v0, v0, -0x1

    .line 62
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    return-void
.end method

.method public static getDefaultEnabledImes(Landroid/content/Context;Ljava/util/List;Z)Ljava/util/ArrayList;
    .locals 16

    .line 1
    move-object/from16 v7, p0

    .line 3
    move-object/from16 v8, p1

    .line 5
    sget-object v6, Lcom/android/server/inputmethod/InputMethodInfoUtils;->SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;

    .line 7
    array-length v9, v6

    .line 8
    const/4 v10, 0x0

    .line 9
    move v11, v10

    .line 10
    :goto_0
    const-string v12, "InputMethodInfoUtils"

    .line 12
    const/4 v13, 0x0

    .line 13
    if-ge v11, v9, :cond_2

    .line 15
    aget-object v14, v6, v11

    .line 17
    move v15, v10

    .line 18
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 21
    move-result v0

    .line 22
    if-ge v15, v0, :cond_1

    .line 24
    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 30
    const/4 v2, 0x1

    .line 31
    const/4 v4, 0x1

    .line 32
    const-string/jumbo v5, "keyboard"

    .line 35
    move-object/from16 v1, p0

    .line 37
    move-object v3, v14

    .line 38
    invoke-static/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z

    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_0

    .line 44
    goto :goto_4

    .line 45
    :cond_0
    add-int/lit8 v15, v15, 0x1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    add-int/lit8 v11, v11, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    sget-object v6, Lcom/android/server/inputmethod/InputMethodInfoUtils;->SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;

    .line 53
    array-length v9, v6

    .line 54
    move v11, v10

    .line 55
    :goto_2
    if-ge v11, v9, :cond_5

    .line 57
    aget-object v14, v6, v11

    .line 59
    move v15, v10

    .line 60
    :goto_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 63
    move-result v0

    .line 64
    if-ge v15, v0, :cond_4

    .line 66
    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 72
    const/4 v2, 0x0

    .line 73
    const/4 v4, 0x1

    .line 74
    const-string/jumbo v5, "keyboard"

    .line 77
    move-object/from16 v1, p0

    .line 79
    move-object v3, v14

    .line 80
    invoke-static/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z

    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_3

    .line 86
    goto :goto_4

    .line 87
    :cond_3
    add-int/lit8 v15, v15, 0x1

    .line 89
    goto :goto_3

    .line 90
    :cond_4
    add-int/lit8 v11, v11, 0x1

    .line 92
    goto :goto_2

    .line 93
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 95
    const-string v1, "Found no fallback locale. imis="

    .line 97
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    .line 103
    move-result-object v1

    .line 104
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object v0

    .line 115
    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    move-object v14, v13

    .line 119
    :goto_4
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 126
    move-result-object v0

    .line 127
    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    move-object v13, v0

    .line 130
    :catch_0
    new-instance v9, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;

    .line 132
    invoke-direct {v9}, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;-><init>()V

    .line 135
    const/4 v3, 0x1

    .line 136
    const/4 v5, 0x1

    .line 137
    const-string/jumbo v6, "keyboard"

    .line 140
    move-object v0, v9

    .line 141
    move-object/from16 v1, p1

    .line 143
    move-object/from16 v2, p0

    .line 145
    move-object v4, v13

    .line 146
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->fillImes(Ljava/util/List;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)V

    .line 149
    iget-object v0, v9, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    .line 151
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    .line 154
    move-result v0

    .line 155
    if-nez v0, :cond_6

    .line 157
    goto/16 :goto_5

    .line 159
    :cond_6
    const/4 v3, 0x1

    .line 160
    const/4 v5, 0x0

    .line 161
    const-string/jumbo v6, "keyboard"

    .line 164
    move-object v0, v9

    .line 165
    move-object/from16 v1, p1

    .line 167
    move-object/from16 v2, p0

    .line 169
    move-object v4, v13

    .line 170
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->fillImes(Ljava/util/List;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)V

    .line 173
    iget-object v0, v9, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    .line 175
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    .line 178
    move-result v0

    .line 179
    if-nez v0, :cond_7

    .line 181
    goto/16 :goto_5

    .line 183
    :cond_7
    const/4 v3, 0x1

    .line 184
    const/4 v5, 0x1

    .line 185
    const-string/jumbo v6, "keyboard"

    .line 188
    move-object v0, v9

    .line 189
    move-object/from16 v1, p1

    .line 191
    move-object/from16 v2, p0

    .line 193
    move-object v4, v14

    .line 194
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->fillImes(Ljava/util/List;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)V

    .line 197
    iget-object v0, v9, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    .line 199
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    .line 202
    move-result v0

    .line 203
    if-nez v0, :cond_8

    .line 205
    goto/16 :goto_5

    .line 207
    :cond_8
    const/4 v3, 0x1

    .line 208
    const/4 v5, 0x0

    .line 209
    const-string/jumbo v6, "keyboard"

    .line 212
    move-object v0, v9

    .line 213
    move-object/from16 v1, p1

    .line 215
    move-object/from16 v2, p0

    .line 217
    move-object v4, v14

    .line 218
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->fillImes(Ljava/util/List;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)V

    .line 221
    iget-object v0, v9, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    .line 223
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    .line 226
    move-result v0

    .line 227
    if-nez v0, :cond_9

    .line 229
    goto :goto_5

    .line 230
    :cond_9
    const/4 v3, 0x0

    .line 231
    const/4 v5, 0x1

    .line 232
    const-string/jumbo v6, "keyboard"

    .line 235
    move-object v0, v9

    .line 236
    move-object/from16 v1, p1

    .line 238
    move-object/from16 v2, p0

    .line 240
    move-object v4, v14

    .line 241
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->fillImes(Ljava/util/List;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)V

    .line 244
    iget-object v0, v9, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    .line 246
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    .line 249
    move-result v0

    .line 250
    if-nez v0, :cond_a

    .line 252
    goto :goto_5

    .line 253
    :cond_a
    const/4 v3, 0x0

    .line 254
    const/4 v5, 0x0

    .line 255
    const-string/jumbo v6, "keyboard"

    .line 258
    move-object v0, v9

    .line 259
    move-object/from16 v1, p1

    .line 261
    move-object/from16 v2, p0

    .line 263
    move-object v4, v14

    .line 264
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->fillImes(Ljava/util/List;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)V

    .line 267
    iget-object v0, v9, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    .line 269
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    .line 272
    move-result v0

    .line 273
    if-nez v0, :cond_b

    .line 275
    goto :goto_5

    .line 276
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 278
    const-string v1, "No software keyboard is found. imis="

    .line 280
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    .line 286
    move-result-object v1

    .line 287
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 290
    move-result-object v1

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const-string v1, " systemLocale="

    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 302
    const-string v1, " fallbackLocale="

    .line 304
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    move-result-object v0

    .line 314
    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :goto_5
    if-nez p2, :cond_12

    .line 319
    const/4 v6, 0x0

    .line 320
    const/4 v3, 0x1

    .line 321
    const/4 v5, 0x1

    .line 322
    move-object v0, v9

    .line 323
    move-object/from16 v1, p1

    .line 325
    move-object/from16 v2, p0

    .line 327
    move-object v4, v13

    .line 328
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->fillImes(Ljava/util/List;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)V

    .line 331
    iget-object v0, v9, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    .line 333
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    .line 336
    move-result-object v0

    .line 337
    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 340
    move-result v1

    .line 341
    if-eqz v1, :cond_d

    .line 343
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 346
    move-result-object v1

    .line 347
    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 349
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    .line 352
    move-result v1

    .line 353
    if-eqz v1, :cond_c

    .line 355
    goto :goto_8

    .line 356
    :cond_d
    move v0, v10

    .line 357
    move v1, v0

    .line 358
    :goto_6
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 361
    move-result v2

    .line 362
    if-ge v0, v2, :cond_f

    .line 364
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 367
    move-result-object v2

    .line 368
    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 370
    const/4 v3, 0x1

    .line 371
    invoke-static {v2, v7, v3}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->-$$Nest$smisSystemAuxilialyImeThatHasAutomaticSubtype(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;Z)Z

    .line 374
    move-result v4

    .line 375
    if-eqz v4, :cond_e

    .line 377
    iget-object v1, v9, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    .line 379
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 382
    move v1, v3

    .line 383
    :cond_e
    add-int/lit8 v0, v0, 0x1

    .line 385
    goto :goto_6

    .line 386
    :cond_f
    if-eqz v1, :cond_10

    .line 388
    goto :goto_8

    .line 389
    :cond_10
    move v0, v10

    .line 390
    :goto_7
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 393
    move-result v1

    .line 394
    if-ge v0, v1, :cond_12

    .line 396
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 399
    move-result-object v1

    .line 400
    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 402
    invoke-static {v1, v7, v10}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->-$$Nest$smisSystemAuxilialyImeThatHasAutomaticSubtype(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;Z)Z

    .line 405
    move-result v2

    .line 406
    if-eqz v2, :cond_11

    .line 408
    iget-object v2, v9, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    .line 410
    invoke-virtual {v2, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 413
    :cond_11
    add-int/lit8 v0, v0, 0x1

    .line 415
    goto :goto_7

    .line 416
    :cond_12
    :goto_8
    new-instance v0, Ljava/util/ArrayList;

    .line 418
    iget-object v1, v9, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    .line 420
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 423
    return-object v0
.end method

.method public static getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;
    .locals 6

    .line 1
    check-cast p0, Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    move v2, v1

    .line 17
    :goto_0
    if-ge v2, v0, :cond_2

    .line 19
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 25
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 28
    move-result-object v4

    .line 29
    const-string/jumbo v5, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    .line 32
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 38
    new-instance p0, Ljava/lang/StringBuilder;

    .line 40
    const-string/jumbo v0, "getMostApplicableDefaultIME(): Set the default IME to Honeyboard"

    .line 43
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    const/16 v0, 0xa

    .line 51
    const-string v1, "InputMethodInfoUtils"

    .line 53
    invoke-static {v0, p0, v1}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 56
    return-object v3

    .line 57
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    const/4 v2, -0x1

    .line 61
    :cond_3
    :goto_1
    if-lez v0, :cond_6

    .line 63
    add-int/lit8 v0, v0, -0x1

    .line 65
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 68
    move-result-object v3

    .line 69
    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 71
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_4

    .line 77
    goto :goto_1

    .line 78
    :cond_4
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    .line 81
    move-result v4

    .line 82
    if-eqz v4, :cond_5

    .line 84
    sget-object v4, Lcom/android/server/inputmethod/InputMethodInfoUtils;->ENGLISH_LOCALE:Ljava/util/Locale;

    .line 86
    const-string/jumbo v5, "keyboard"

    .line 89
    invoke-static {v3, v4, v1, v5}, Lcom/android/server/inputmethod/SubtypeUtils;->containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;ZLjava/lang/String;)Z

    .line 92
    move-result v4

    .line 93
    if-eqz v4, :cond_5

    .line 95
    return-object v3

    .line 96
    :cond_5
    if-gez v2, :cond_3

    .line 98
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    .line 101
    move-result v3

    .line 102
    if-eqz v3, :cond_3

    .line 104
    move v2, v0

    .line 105
    goto :goto_1

    .line 106
    :cond_6
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 109
    move-result v0

    .line 110
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 113
    move-result-object p0

    .line 114
    check-cast p0, Landroid/view/inputmethod/InputMethodInfo;

    .line 116
    return-object p0
.end method

.method public static isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    :cond_0
    if-eqz p2, :cond_1

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodInfo;->isDefault(Landroid/content/Context;)Z

    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_1

    .line 17
    return v1

    .line 18
    :cond_1
    invoke-static {p0, p3, p4, p5}, Lcom/android/server/inputmethod/SubtypeUtils;->containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;ZLjava/lang/String;)Z

    .line 21
    move-result p0

    .line 22
    return p0
.end method
