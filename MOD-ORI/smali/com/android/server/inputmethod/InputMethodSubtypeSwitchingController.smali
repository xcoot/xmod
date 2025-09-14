.class public final Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/inputmethod/InputMethodMap;I)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput p3, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mUserId:I

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v1, 0x0

    .line 11
    move-object v3, p1

    .line 12
    move-object v4, p2

    .line 13
    move v5, p3

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->getSortedInputMethodAndSubtypeList(ZZZLandroid/content/Context;Lcom/android/server/inputmethod/InputMethodMap;I)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 p2, 0x0

    .line 19
    invoke-static {p2, p1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->createFrom(Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;Ljava/util/List;)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    .line 24
    .line 25
    return-void
.end method

.method public static getSortedInputMethodAndSubtypeList(ZZZLandroid/content/Context;Lcom/android/server/inputmethod/InputMethodMap;I)Ljava/util/List;
    .locals 22

    .line 1
    move/from16 v0, p5

    .line 2
    .line 3
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getUserId()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-ne v1, v0, :cond_0

    .line 9
    .line 10
    move-object/from16 v1, p3

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    move-object/from16 v3, p3

    .line 18
    .line 19
    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :goto_0
    invoke-static {}, Lcom/android/server/inputmethod/SystemLocaleWrapper;->get()Landroid/os/LocaleList;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    new-instance v11, Lcom/android/server/inputmethod/InputMethodSettings;

    .line 36
    .line 37
    move-object/from16 v4, p4

    .line 38
    .line 39
    invoke-direct {v11, v4, v0}, Lcom/android/server/inputmethod/InputMethodSettings;-><init>(Lcom/android/server/inputmethod/InputMethodMap;I)V

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    invoke-virtual {v11, v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    .line 44
    .line 45
    .line 46
    move-result-object v12

    .line 47
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_1

    .line 52
    .line 53
    const-string v0, "InputMethodSubtypeSwitchingController"

    .line 54
    .line 55
    const-string v1, "Enabled input method list is empty."

    .line 56
    .line 57
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    new-instance v0, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    return-object v0

    .line 66
    :cond_1
    if-eqz p1, :cond_2

    .line 67
    .line 68
    if-eqz p0, :cond_2

    .line 69
    .line 70
    move v13, v2

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    move/from16 v13, p0

    .line 73
    .line 74
    :goto_1
    new-instance v14, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 80
    .line 81
    .line 82
    move-result v15

    .line 83
    move v10, v2

    .line 84
    :goto_2
    if-ge v10, v15, :cond_a

    .line 85
    .line 86
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    move-object v9, v4

    .line 91
    check-cast v9, Landroid/view/inputmethod/InputMethodInfo;

    .line 92
    .line 93
    if-eqz p2, :cond_4

    .line 94
    .line 95
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->shouldShowInInputMethodPicker()Z

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-nez v4, :cond_4

    .line 100
    .line 101
    :cond_3
    move-object/from16 v19, v1

    .line 102
    .line 103
    move/from16 v18, v10

    .line 104
    .line 105
    goto/16 :goto_8

    .line 106
    .line 107
    :cond_4
    const/4 v4, 0x1

    .line 108
    invoke-virtual {v11, v9, v4}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    new-instance v8, Landroid/util/ArraySet;

    .line 113
    .line 114
    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    if-eqz v5, :cond_5

    .line 126
    .line 127
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    check-cast v5, Landroid/view/inputmethod/InputMethodSubtype;

    .line 132
    .line 133
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    invoke-virtual {v8, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_5
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-virtual {v9, v4}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 150
    .line 151
    .line 152
    move-result-object v16

    .line 153
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    if-lez v4, :cond_9

    .line 158
    .line 159
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    .line 160
    .line 161
    .line 162
    move-result v7

    .line 163
    move v6, v2

    .line 164
    :goto_4
    if-ge v6, v7, :cond_3

    .line 165
    .line 166
    invoke-virtual {v9, v6}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    .line 171
    .line 172
    .line 173
    move-result v5

    .line 174
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    invoke-virtual {v8, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v17

    .line 182
    if-eqz v17, :cond_6

    .line 183
    .line 184
    if-nez v13, :cond_7

    .line 185
    .line 186
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    .line 187
    .line 188
    .line 189
    move-result v17

    .line 190
    if-nez v17, :cond_6

    .line 191
    .line 192
    goto :goto_5

    .line 193
    :cond_6
    move-object/from16 v19, v1

    .line 194
    .line 195
    move/from16 v20, v6

    .line 196
    .line 197
    move/from16 p0, v7

    .line 198
    .line 199
    move-object v0, v8

    .line 200
    move-object/from16 v21, v9

    .line 201
    .line 202
    move/from16 v18, v10

    .line 203
    .line 204
    goto :goto_7

    .line 205
    :cond_7
    :goto_5
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    .line 206
    .line 207
    .line 208
    move-result v17

    .line 209
    if-eqz v17, :cond_8

    .line 210
    .line 211
    goto :goto_6

    .line 212
    :cond_8
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 221
    .line 222
    invoke-virtual {v4, v1, v0, v2}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    :goto_6
    new-instance v2, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 227
    .line 228
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v18

    .line 232
    move-object v4, v2

    .line 233
    move-object/from16 v19, v1

    .line 234
    .line 235
    move-object v1, v5

    .line 236
    move-object/from16 v5, v16

    .line 237
    .line 238
    move/from16 v20, v6

    .line 239
    .line 240
    move-object v6, v0

    .line 241
    move v0, v7

    .line 242
    move-object v7, v9

    .line 243
    move/from16 p0, v0

    .line 244
    .line 245
    move-object v0, v8

    .line 246
    move/from16 v8, v20

    .line 247
    .line 248
    move-object/from16 v21, v9

    .line 249
    .line 250
    move-object/from16 v9, v18

    .line 251
    .line 252
    move/from16 v18, v10

    .line 253
    .line 254
    move-object v10, v3

    .line 255
    invoke-direct/range {v4 .. v10}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/inputmethod/InputMethodInfo;ILjava/lang/String;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    :goto_7
    add-int/lit8 v6, v20, 0x1

    .line 265
    .line 266
    move/from16 v7, p0

    .line 267
    .line 268
    move-object v8, v0

    .line 269
    move/from16 v10, v18

    .line 270
    .line 271
    move-object/from16 v1, v19

    .line 272
    .line 273
    move-object/from16 v9, v21

    .line 274
    .line 275
    const/4 v0, 0x0

    .line 276
    const/4 v2, 0x0

    .line 277
    goto :goto_4

    .line 278
    :cond_9
    move-object/from16 v19, v1

    .line 279
    .line 280
    move-object/from16 v21, v9

    .line 281
    .line 282
    move/from16 v18, v10

    .line 283
    .line 284
    new-instance v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 285
    .line 286
    const/4 v9, 0x0

    .line 287
    const/4 v6, 0x0

    .line 288
    const/4 v8, -0x1

    .line 289
    move-object v4, v0

    .line 290
    move-object/from16 v5, v16

    .line 291
    .line 292
    move-object/from16 v7, v21

    .line 293
    .line 294
    move-object v10, v3

    .line 295
    invoke-direct/range {v4 .. v10}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/inputmethod/InputMethodInfo;ILjava/lang/String;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    :goto_8
    add-int/lit8 v10, v18, 0x1

    .line 302
    .line 303
    move-object/from16 v1, v19

    .line 304
    .line 305
    const/4 v0, 0x0

    .line 306
    const/4 v2, 0x0

    .line 307
    goto/16 :goto_2

    .line 308
    .line 309
    :cond_a
    invoke-static {v14}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 310
    .line 311
    .line 312
    return-object v14
.end method


# virtual methods
.method public final dump(Landroid/util/Printer;)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    check-cast p1, Landroid/util/PrintWriterPrinter;

    .line 6
    .line 7
    const-string v0, "    mSwitchingAwareRotationList:"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    move v1, v0

    .line 14
    :goto_0
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->mSwitchingAwareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

    .line 15
    .line 16
    iget-object v3, v2, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mUsageHistoryOfSubtypeListItemIndex:[I

    .line 17
    .line 18
    array-length v4, v3

    .line 19
    const-string v5, "      rank="

    .line 20
    .line 21
    const-string v6, " item="

    .line 22
    .line 23
    if-ge v1, v4, :cond_0

    .line 24
    .line 25
    aget v3, v3, v1

    .line 26
    .line 27
    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mImeSubtypeList:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 34
    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {p1, v2}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const-string v1, "    mSwitchingUnawareRotationList:"

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->mSwitchingUnawareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;

    .line 65
    .line 66
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;->mImeSubtypeList:Ljava/util/List;

    .line 67
    .line 68
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    :goto_1
    if-ge v0, v1, :cond_2

    .line 73
    .line 74
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;->mImeSubtypeList:Ljava/util/List;

    .line 75
    .line 76
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    check-cast v2, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 81
    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {p1, v2}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    add-int/lit8 v0, v0, 0x1

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_1
    const-string p0, "    mController=null"

    .line 107
    .line 108
    check-cast p1, Landroid/util/PrintWriterPrinter;

    .line 109
    .line 110
    invoke-virtual {p1, p0}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :cond_2
    return-void
.end method

.method public final getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return-object v0

    .line 7
    :cond_0
    if-nez p2, :cond_1

    .line 8
    .line 9
    goto/16 :goto_5

    .line 10
    .line 11
    :cond_1
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->supportsSwitchingToNextInputMethod()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x1

    .line 16
    if-eqz v1, :cond_4

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->mSwitchingAwareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

    .line 19
    .line 20
    invoke-virtual {p0, p2, p3}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->getUsageRank(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    if-gez p3, :cond_2

    .line 25
    .line 26
    goto/16 :goto_5

    .line 27
    .line 28
    :cond_2
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mUsageHistoryOfSubtypeListItemIndex:[I

    .line 29
    .line 30
    array-length v3, v1

    .line 31
    :goto_0
    if-ge v2, v3, :cond_b

    .line 32
    .line 33
    add-int v4, p3, v2

    .line 34
    .line 35
    rem-int/2addr v4, v3

    .line 36
    aget v4, v1, v4

    .line 37
    .line 38
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mImeSubtypeList:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 45
    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    iget-object v5, v4, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 49
    .line 50
    invoke-virtual {p2, v5}, Landroid/view/inputmethod/InputMethodInfo;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-nez v5, :cond_3

    .line 55
    .line 56
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    move-object v0, v4

    .line 60
    goto :goto_5

    .line 61
    :cond_4
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->mSwitchingUnawareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;->mImeSubtypeList:Ljava/util/List;

    .line 64
    .line 65
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-gt v1, v2, :cond_5

    .line 70
    .line 71
    goto :goto_5

    .line 72
    :cond_5
    const/4 v1, -0x1

    .line 73
    if-eqz p3, :cond_6

    .line 74
    .line 75
    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    .line 76
    .line 77
    .line 78
    move-result p3

    .line 79
    invoke-static {p2, p3}, Lcom/android/server/inputmethod/SubtypeUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    .line 80
    .line 81
    .line 82
    move-result p3

    .line 83
    goto :goto_1

    .line 84
    :cond_6
    move p3, v1

    .line 85
    :goto_1
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;->mImeSubtypeList:Ljava/util/List;

    .line 86
    .line 87
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    const/4 v4, 0x0

    .line 92
    :goto_2
    if-ge v4, v3, :cond_8

    .line 93
    .line 94
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;->mImeSubtypeList:Ljava/util/List;

    .line 95
    .line 96
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    check-cast v5, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 101
    .line 102
    iget-object v6, v5, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 103
    .line 104
    invoke-virtual {p2, v6}, Landroid/view/inputmethod/InputMethodInfo;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    if-eqz v6, :cond_7

    .line 109
    .line 110
    iget v5, v5, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    .line 111
    .line 112
    if-ne v5, p3, :cond_7

    .line 113
    .line 114
    move v1, v4

    .line 115
    goto :goto_3

    .line 116
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_8
    :goto_3
    if-gez v1, :cond_9

    .line 120
    .line 121
    goto :goto_5

    .line 122
    :cond_9
    iget-object p3, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;->mImeSubtypeList:Ljava/util/List;

    .line 123
    .line 124
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 125
    .line 126
    .line 127
    move-result p3

    .line 128
    :goto_4
    if-ge v2, p3, :cond_b

    .line 129
    .line 130
    add-int v3, v1, v2

    .line 131
    .line 132
    rem-int/2addr v3, p3

    .line 133
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;->mImeSubtypeList:Ljava/util/List;

    .line 134
    .line 135
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    check-cast v3, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 140
    .line 141
    if-eqz p1, :cond_a

    .line 142
    .line 143
    iget-object v4, v3, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 144
    .line 145
    invoke-virtual {p2, v4}, Landroid/view/inputmethod/InputMethodInfo;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-nez v4, :cond_a

    .line 150
    .line 151
    add-int/lit8 v2, v2, 0x1

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_a
    move-object v0, v3

    .line 155
    :cond_b
    :goto_5
    return-object v0
.end method
