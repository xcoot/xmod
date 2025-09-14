.class public abstract Lcom/android/server/inputmethod/SubtypeUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sCacheLock:Ljava/lang/Object;

.field public static sCachedInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

.field public static sCachedResult:Ljava/util/ArrayList;

.field public static sCachedSystemLocales:Landroid/os/LocaleList;

.field public static final sSubtypeToLocale:Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/inputmethod/SubtypeUtils;->sCacheLock:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method public static containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;ZLjava/lang/String;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    .line 8
    move-result v1

    .line 9
    move v2, v0

    .line 10
    :goto_0
    if-ge v2, v1, :cond_5

    .line 12
    invoke-virtual {p0, v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    .line 15
    move-result-object v3

    .line 16
    if-eqz p2, :cond_1

    .line 18
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getLocaleObject()Ljava/util/Locale;

    .line 21
    move-result-object v4

    .line 22
    if-eqz v4, :cond_3

    .line 24
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 27
    move-result-object v5

    .line 28
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 31
    move-result-object v6

    .line 32
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_3

    .line 38
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 45
    move-result-object v5

    .line 46
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 49
    move-result v4

    .line 50
    if-nez v4, :cond_2

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    new-instance v4, Ljava/util/Locale;

    .line 55
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    .line 58
    move-result-object v5

    .line 59
    invoke-static {v5}, Lcom/android/server/inputmethod/LocaleUtils;->getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    move-result-object v5

    .line 63
    invoke-direct {v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 73
    move-result-object v5

    .line 74
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 77
    move-result v4

    .line 78
    if-nez v4, :cond_2

    .line 80
    goto :goto_1

    .line 81
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 84
    move-result v4

    .line 85
    if-nez v4, :cond_4

    .line 87
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {p3, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 94
    move-result v3

    .line 95
    if-eqz v3, :cond_3

    .line 97
    goto :goto_2

    .line 98
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 100
    goto :goto_0

    .line 101
    :cond_4
    :goto_2
    const/4 p0, 0x1

    .line 102
    return p0

    .line 103
    :cond_5
    return v0
.end method

.method public static findLastResortApplicableSubtype(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 10

    .line 1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-static {p1}, Lcom/android/server/inputmethod/LocaleUtils;->getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    move v4, v3

    .line 19
    move v5, v4

    .line 20
    move-object v3, v1

    .line 21
    :goto_0
    if-ge v4, v2, :cond_5

    .line 23
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v6

    .line 27
    check-cast v6, Landroid/view/inputmethod/InputMethodSubtype;

    .line 29
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    .line 32
    move-result-object v7

    .line 33
    invoke-static {v7}, Lcom/android/server/inputmethod/LocaleUtils;->getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object v8

    .line 37
    if-eqz p0, :cond_1

    .line 39
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    move-result-object v9

    .line 43
    check-cast v9, Landroid/view/inputmethod/InputMethodSubtype;

    .line 45
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    .line 48
    move-result-object v9

    .line 49
    invoke-virtual {v9, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 52
    move-result v9

    .line 53
    if-eqz v9, :cond_4

    .line 55
    :cond_1
    if-nez v1, :cond_2

    .line 57
    move-object v1, v6

    .line 58
    :cond_2
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v7

    .line 62
    if-eqz v7, :cond_3

    .line 64
    move-object v3, v6

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    if-nez v5, :cond_4

    .line 68
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result v7

    .line 72
    if-eqz v7, :cond_4

    .line 74
    const/4 v3, 0x1

    .line 75
    move v5, v3

    .line 76
    move-object v3, v6

    .line 77
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 79
    goto :goto_0

    .line 80
    :cond_5
    :goto_1
    if-nez v3, :cond_6

    .line 82
    return-object v1

    .line 83
    :cond_6
    return-object v3
.end method

.method public static getImplicitlyApplicableSubtypes(Landroid/os/LocaleList;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;
    .locals 10

    .line 1
    sget-object v0, Lcom/android/server/inputmethod/SubtypeUtils;->sCacheLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/inputmethod/SubtypeUtils;->sCachedSystemLocales:Landroid/os/LocaleList;

    .line 6
    invoke-virtual {p0, v1}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 12
    sget-object v1, Lcom/android/server/inputmethod/SubtypeUtils;->sCachedInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    .line 14
    if-ne v1, p1, :cond_0

    .line 16
    new-instance p0, Ljava/util/ArrayList;

    .line 18
    sget-object p1, Lcom/android/server/inputmethod/SubtypeUtils;->sCachedResult:Ljava/util/ArrayList;

    .line 20
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    monitor-exit v0

    .line 24
    return-object p0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto/16 :goto_9

    .line 28
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    .line 31
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    .line 37
    move-result v1

    .line 38
    const/4 v2, 0x0

    .line 39
    move v3, v2

    .line 40
    :goto_0
    if-ge v3, v1, :cond_1

    .line 42
    invoke-virtual {p1, v3}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    add-int/lit8 v3, v3, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {p0, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_2

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    .line 68
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    goto/16 :goto_8

    .line 73
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 76
    move-result v3

    .line 77
    new-instance v4, Landroid/util/ArrayMap;

    .line 79
    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 82
    move v5, v2

    .line 83
    :goto_1
    if-ge v5, v3, :cond_4

    .line 85
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 88
    move-result-object v6

    .line 89
    check-cast v6, Landroid/view/inputmethod/InputMethodSubtype;

    .line 91
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    .line 94
    move-result v7

    .line 95
    if-eqz v7, :cond_3

    .line 97
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    .line 100
    move-result-object v7

    .line 101
    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 104
    move-result v8

    .line 105
    if-nez v8, :cond_3

    .line 107
    invoke-virtual {v4, v7, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 112
    goto :goto_1

    .line 113
    :cond_4
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 116
    move-result v5

    .line 117
    if-lez v5, :cond_5

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    .line 121
    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 124
    move-result-object v1

    .line 125
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 128
    goto/16 :goto_8

    .line 130
    :cond_5
    new-instance v4, Landroid/util/ArrayMap;

    .line 132
    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 135
    new-instance v5, Ljava/util/ArrayList;

    .line 137
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 140
    move v6, v2

    .line 141
    :goto_2
    const-string/jumbo v7, "keyboard"

    .line 144
    if-ge v6, v3, :cond_8

    .line 146
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 149
    move-result-object v8

    .line 150
    check-cast v8, Landroid/view/inputmethod/InputMethodSubtype;

    .line 152
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    .line 155
    move-result-object v9

    .line 156
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    move-result v7

    .line 160
    if-eqz v7, :cond_6

    .line 162
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    goto :goto_3

    .line 166
    :cond_6
    invoke-virtual {v4, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 169
    move-result v7

    .line 170
    if-nez v7, :cond_7

    .line 172
    new-instance v7, Ljava/util/ArrayList;

    .line 174
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 177
    invoke-virtual {v4, v9, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_7
    invoke-virtual {v4, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    move-result-object v7

    .line 184
    check-cast v7, Ljava/util/ArrayList;

    .line 186
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 191
    goto :goto_2

    .line 192
    :cond_8
    new-instance v3, Ljava/util/ArrayList;

    .line 194
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 197
    invoke-static {v5, p0, v3}, Lcom/android/server/inputmethod/LocaleUtils;->filterByLanguage(Ljava/util/List;Landroid/os/LocaleList;Ljava/util/ArrayList;)V

    .line 200
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 203
    move-result v6

    .line 204
    if-nez v6, :cond_c

    .line 206
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 209
    move-result v6

    .line 210
    move v8, v2

    .line 211
    :goto_4
    if-ge v8, v6, :cond_a

    .line 213
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 216
    move-result-object v9

    .line 217
    check-cast v9, Landroid/view/inputmethod/InputMethodSubtype;

    .line 219
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->isAsciiCapable()Z

    .line 222
    move-result v9

    .line 223
    if-eqz v9, :cond_9

    .line 225
    goto :goto_6

    .line 226
    :cond_9
    add-int/lit8 v8, v8, 0x1

    .line 228
    goto :goto_4

    .line 229
    :cond_a
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 232
    move-result v6

    .line 233
    :goto_5
    if-ge v2, v6, :cond_c

    .line 235
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 238
    move-result-object v8

    .line 239
    check-cast v8, Landroid/view/inputmethod/InputMethodSubtype;

    .line 241
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    .line 244
    move-result-object v9

    .line 245
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 248
    move-result v9

    .line 249
    if-eqz v9, :cond_b

    .line 251
    const-string v9, "EnabledWhenDefaultIsNotAsciiCapable"

    .line 253
    invoke-virtual {v8, v9}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    .line 256
    move-result v9

    .line 257
    if-eqz v9, :cond_b

    .line 259
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_b
    add-int/lit8 v2, v2, 0x1

    .line 264
    goto :goto_5

    .line 265
    :cond_c
    :goto_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 268
    move-result v2

    .line 269
    if-eqz v2, :cond_d

    .line 271
    invoke-static {v7, v1, v0}, Lcom/android/server/inputmethod/SubtypeUtils;->findLastResortApplicableSubtype(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/view/inputmethod/InputMethodSubtype;

    .line 274
    move-result-object v0

    .line 275
    if-eqz v0, :cond_d

    .line 277
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_d
    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 283
    move-result-object v0

    .line 284
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 287
    move-result-object v0

    .line 288
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 291
    move-result v1

    .line 292
    if-eqz v1, :cond_e

    .line 294
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 297
    move-result-object v1

    .line 298
    check-cast v1, Ljava/util/ArrayList;

    .line 300
    invoke-static {v1, p0, v3}, Lcom/android/server/inputmethod/LocaleUtils;->filterByLanguage(Ljava/util/List;Landroid/os/LocaleList;Ljava/util/ArrayList;)V

    .line 303
    goto :goto_7

    .line 304
    :cond_e
    move-object v0, v3

    .line 305
    :goto_8
    sget-object v1, Lcom/android/server/inputmethod/SubtypeUtils;->sCacheLock:Ljava/lang/Object;

    .line 307
    monitor-enter v1

    .line 308
    :try_start_1
    sput-object p0, Lcom/android/server/inputmethod/SubtypeUtils;->sCachedSystemLocales:Landroid/os/LocaleList;

    .line 310
    sput-object p1, Lcom/android/server/inputmethod/SubtypeUtils;->sCachedInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    .line 312
    new-instance p0, Ljava/util/ArrayList;

    .line 314
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 317
    sput-object p0, Lcom/android/server/inputmethod/SubtypeUtils;->sCachedResult:Ljava/util/ArrayList;

    .line 319
    monitor-exit v1

    .line 320
    return-object v0

    .line 321
    :catchall_1
    move-exception p0

    .line 322
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 323
    throw p0

    .line 324
    :goto_9
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 325
    throw p0
.end method

.method public static getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I
    .locals 3

    .line 1
    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 10
    invoke-virtual {p0, v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    .line 17
    move-result v2

    .line 18
    if-ne p1, v2, :cond_0

    .line 20
    return v1

    .line 21
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 p0, -0x1

    .line 25
    return p0
.end method
