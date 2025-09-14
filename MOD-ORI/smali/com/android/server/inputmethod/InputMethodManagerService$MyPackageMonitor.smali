.class public final Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDataClearedPackages:Ljava/util/ArrayList;

.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lcom/android/internal/content/PackageMonitor;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mDataClearedPackages:Ljava/util/ArrayList;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onBeginPackageChanges()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mDataClearedPackages:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onFinishPackageChanges()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 8
    .line 9
    iget-object v3, v3, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    sget-object v4, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->EMPTY_MAP:Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    invoke-static {v3, v2, v4, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryInputMethodServicesInternal(Landroid/content/Context;ILcom/android/server/inputmethod/AdditionalSubtypeMap;I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    iget-object v3, v3, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 19
    .line 20
    const-class v4, Lcom/android/server/inputmethod/ImfLock;

    .line 21
    .line 22
    monitor-enter v4

    .line 23
    :try_start_0
    iget-object v6, v0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 24
    .line 25
    iget v6, v6, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 26
    .line 27
    if-ne v2, v6, :cond_0

    .line 28
    .line 29
    const/4 v6, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v6, v5

    .line 32
    :goto_0
    invoke-static {v2}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->get(I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    invoke-virtual {v8}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v9

    .line 44
    iget-object v10, v8, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodList:Ljava/util/List;

    .line 45
    .line 46
    new-instance v11, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 52
    .line 53
    .line 54
    move-result v12

    .line 55
    move v14, v5

    .line 56
    const/4 v15, 0x0

    .line 57
    :goto_1
    if-ge v14, v12, :cond_6

    .line 58
    .line 59
    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v16

    .line 63
    check-cast v16, Landroid/view/inputmethod/InputMethodInfo;

    .line 64
    .line 65
    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v17

    .line 73
    if-eqz v17, :cond_1

    .line 74
    .line 75
    move-object/from16 v15, v16

    .line 76
    .line 77
    :cond_1
    iget-object v5, v0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mDataClearedPackages:Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v13

    .line 83
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-eqz v5, :cond_2

    .line 88
    .line 89
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :catchall_0
    move-exception v0

    .line 94
    goto/16 :goto_10

    .line 95
    .line 96
    :cond_2
    :goto_2
    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    invoke-virtual {v0, v5}, Lcom/android/internal/content/PackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    const/4 v13, 0x3

    .line 105
    if-ne v5, v13, :cond_4

    .line 106
    .line 107
    const-string v1, "InputMethodManagerService"

    .line 108
    .line 109
    new-instance v5, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string v13, "Input method uninstalled, disabling: "

    .line 115
    .line 116
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    .line 120
    .line 121
    .line 122
    move-result-object v13

    .line 123
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    if-eqz v6, :cond_3

    .line 134
    .line 135
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 136
    .line 137
    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    const/4 v13, 0x0

    .line 142
    invoke-virtual {v1, v5, v13}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    .line 143
    .line 144
    .line 145
    :goto_3
    move-object/from16 v18, v10

    .line 146
    .line 147
    :goto_4
    const/4 v1, 0x1

    .line 148
    goto :goto_5

    .line 149
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v8}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodsAndSubtypeList()Ljava/util/List;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v13

    .line 162
    invoke-virtual {v8, v1, v5, v13}, Lcom/android/server/inputmethod/InputMethodSettings;->buildAndPutEnabledInputMethodsStrRemovingId(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Z

    .line 163
    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_4
    const/4 v13, 0x1

    .line 167
    if-ne v5, v13, :cond_5

    .line 168
    .line 169
    const-string v5, "InputMethodManagerService"

    .line 170
    .line 171
    new-instance v13, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .line 175
    .line 176
    move-object/from16 v18, v10

    .line 177
    .line 178
    const-string v10, "Input method reinstalling, clearing additional subtypes: "

    .line 179
    .line 180
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    .line 184
    .line 185
    .line 186
    move-result-object v10

    .line 187
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v10

    .line 194
    invoke-static {v5, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_5
    move-object/from16 v18, v10

    .line 202
    .line 203
    move v1, v13

    .line 204
    :goto_5
    add-int/2addr v14, v1

    .line 205
    move-object/from16 v10, v18

    .line 206
    .line 207
    const/4 v5, 0x0

    .line 208
    goto/16 :goto_1

    .line 209
    .line 210
    :cond_6
    iget-object v1, v7, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->mMap:Landroid/util/ArrayMap;

    .line 211
    .line 212
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    if-eqz v1, :cond_8

    .line 217
    .line 218
    :cond_7
    move-object v1, v7

    .line 219
    goto :goto_6

    .line 220
    :cond_8
    new-instance v1, Landroid/util/ArrayMap;

    .line 221
    .line 222
    iget-object v5, v7, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->mMap:Landroid/util/ArrayMap;

    .line 223
    .line 224
    invoke-direct {v1, v5}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1, v11}, Landroid/util/ArrayMap;->removeAll(Ljava/util/Collection;)Z

    .line 228
    .line 229
    .line 230
    move-result v5

    .line 231
    if-eqz v5, :cond_7

    .line 232
    .line 233
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 234
    .line 235
    .line 236
    move-result v5

    .line 237
    if-eqz v5, :cond_9

    .line 238
    .line 239
    sget-object v1, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->EMPTY_MAP:Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    .line 240
    .line 241
    goto :goto_6

    .line 242
    :cond_9
    new-instance v5, Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    .line 243
    .line 244
    invoke-direct {v5, v1}, Lcom/android/server/inputmethod/AdditionalSubtypeMap;-><init>(Landroid/util/ArrayMap;)V

    .line 245
    .line 246
    .line 247
    move-object v1, v5

    .line 248
    :goto_6
    if-eq v1, v7, :cond_a

    .line 249
    .line 250
    iget-object v5, v8, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 251
    .line 252
    invoke-static {v2, v1, v5}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->putAndSave(ILcom/android/server/inputmethod/AdditionalSubtypeMap;Lcom/android/server/inputmethod/InputMethodMap;)V

    .line 253
    .line 254
    .line 255
    :cond_a
    invoke-virtual {v3, v1}, Lcom/android/server/inputmethod/InputMethodMap;->applyAdditionalSubtypes(Lcom/android/server/inputmethod/AdditionalSubtypeMap;)Lcom/android/server/inputmethod/InputMethodMap;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    iget-object v3, v8, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 260
    .line 261
    if-ne v3, v1, :cond_b

    .line 262
    .line 263
    goto/16 :goto_e

    .line 264
    .line 265
    :cond_b
    iget-object v5, v3, Lcom/android/server/inputmethod/InputMethodMap;->mMap:Landroid/util/ArrayMap;

    .line 266
    .line 267
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 268
    .line 269
    .line 270
    move-result v5

    .line 271
    iget-object v7, v1, Lcom/android/server/inputmethod/InputMethodMap;->mMap:Landroid/util/ArrayMap;

    .line 272
    .line 273
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 274
    .line 275
    .line 276
    move-result v7

    .line 277
    if-eq v5, v7, :cond_c

    .line 278
    .line 279
    goto :goto_8

    .line 280
    :cond_c
    const/4 v13, 0x0

    .line 281
    :goto_7
    if-ge v13, v5, :cond_17

    .line 282
    .line 283
    iget-object v7, v3, Lcom/android/server/inputmethod/InputMethodMap;->mMap:Landroid/util/ArrayMap;

    .line 284
    .line 285
    invoke-virtual {v7, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v7

    .line 289
    check-cast v7, Landroid/view/inputmethod/InputMethodInfo;

    .line 290
    .line 291
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v8

    .line 295
    invoke-virtual {v1, v8}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    .line 296
    .line 297
    .line 298
    move-result-object v8

    .line 299
    if-nez v8, :cond_d

    .line 300
    .line 301
    goto :goto_8

    .line 302
    :cond_d
    sget-object v10, Lcom/android/server/inputmethod/InputMethodInfoUtils;->SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    .line 304
    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 305
    .line 306
    .line 307
    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 308
    const/4 v11, 0x0

    .line 309
    :try_start_2
    invoke-virtual {v10, v7, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v10}, Landroid/os/Parcel;->marshall()[B

    .line 313
    .line 314
    .line 315
    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 316
    :try_start_3
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 317
    .line 318
    .line 319
    :try_start_4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 320
    .line 321
    .line 322
    move-result-object v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 323
    :try_start_5
    invoke-virtual {v10, v8, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v10}, Landroid/os/Parcel;->marshall()[B

    .line 327
    .line 328
    .line 329
    move-result-object v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 330
    :try_start_6
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 331
    .line 332
    .line 333
    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    .line 334
    .line 335
    .line 336
    move-result v7

    .line 337
    if-nez v7, :cond_14

    .line 338
    .line 339
    :goto_8
    new-instance v3, Lcom/android/server/inputmethod/InputMethodSettings;

    .line 340
    .line 341
    invoke-direct {v3, v1, v2}, Lcom/android/server/inputmethod/InputMethodSettings;-><init>(Lcom/android/server/inputmethod/InputMethodMap;I)V

    .line 342
    .line 343
    .line 344
    invoke-static {v2, v3}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->put(ILcom/android/server/inputmethod/InputMethodSettings;)V

    .line 345
    .line 346
    .line 347
    if-nez v6, :cond_e

    .line 348
    .line 349
    monitor-exit v4

    .line 350
    goto/16 :goto_f

    .line 351
    .line 352
    :cond_e
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 353
    .line 354
    const/4 v3, 0x0

    .line 355
    invoke-virtual {v1, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->postInputMethodSettingUpdatedLocked(Z)V

    .line 356
    .line 357
    .line 358
    if-eqz v15, :cond_10

    .line 359
    .line 360
    invoke-virtual {v15}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    invoke-virtual {v0, v1}, Lcom/android/internal/content/PackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    const/4 v3, 0x2

    .line 369
    if-eq v1, v3, :cond_f

    .line 370
    .line 371
    const/4 v7, 0x3

    .line 372
    if-ne v1, v7, :cond_10

    .line 373
    .line 374
    :cond_f
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 375
    .line 376
    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 377
    .line 378
    invoke-static {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    .line 379
    .line 380
    .line 381
    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 382
    :try_start_7
    invoke-virtual {v15}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    .line 383
    .line 384
    .line 385
    move-result-object v2

    .line 386
    const-wide/16 v5, 0x0

    .line 387
    .line 388
    invoke-static {v5, v6}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    .line 389
    .line 390
    .line 391
    move-result-object v3

    .line 392
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ServiceInfo;

    .line 393
    .line 394
    .line 395
    move-result-object v1
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 396
    goto :goto_9

    .line 397
    :catch_0
    const/4 v1, 0x0

    .line 398
    :goto_9
    if-nez v1, :cond_10

    .line 399
    .line 400
    :try_start_8
    const-string v1, "InputMethodManagerService"

    .line 401
    .line 402
    new-instance v2, Ljava/lang/StringBuilder;

    .line 403
    .line 404
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 405
    .line 406
    .line 407
    const-string v3, "Current input method removed: "

    .line 408
    .line 409
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v2

    .line 419
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    .line 421
    .line 422
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 423
    .line 424
    iget v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    .line 425
    .line 426
    const/4 v3, 0x0

    .line 427
    invoke-virtual {v1, v3, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 428
    .line 429
    .line 430
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 431
    .line 432
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    .line 433
    .line 434
    .line 435
    move-result v1

    .line 436
    if-nez v1, :cond_10

    .line 437
    .line 438
    const-string v1, "InputMethodManagerService"

    .line 439
    .line 440
    const-string v2, "Unsetting current input method"

    .line 441
    .line 442
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    .line 444
    .line 445
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 446
    .line 447
    const-string v2, ""

    .line 448
    .line 449
    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    const/4 v1, 0x1

    .line 453
    const/4 v13, 0x0

    .line 454
    goto :goto_a

    .line 455
    :cond_10
    move-object v13, v15

    .line 456
    const/4 v1, 0x0

    .line 457
    :goto_a
    if-nez v13, :cond_11

    .line 458
    .line 459
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 460
    .line 461
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    .line 462
    .line 463
    .line 464
    move-result v1

    .line 465
    goto :goto_b

    .line 466
    :cond_11
    if-nez v1, :cond_12

    .line 467
    .line 468
    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v2

    .line 472
    invoke-virtual {v0, v2}, Lcom/android/internal/content/PackageMonitor;->isPackageModified(Ljava/lang/String;)Z

    .line 473
    .line 474
    .line 475
    move-result v2

    .line 476
    if-eqz v2, :cond_12

    .line 477
    .line 478
    const/4 v1, 0x1

    .line 479
    :cond_12
    :goto_b
    if-eqz v1, :cond_13

    .line 480
    .line 481
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 482
    .line 483
    const/4 v8, 0x0

    .line 484
    invoke-virtual {v1, v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    .line 485
    .line 486
    .line 487
    :cond_13
    monitor-exit v4

    .line 488
    goto :goto_f

    .line 489
    :cond_14
    const/4 v7, 0x3

    .line 490
    const/4 v8, 0x0

    .line 491
    const/4 v10, 0x1

    .line 492
    add-int/2addr v13, v10

    .line 493
    goto/16 :goto_7

    .line 494
    .line 495
    :catchall_1
    move-exception v0

    .line 496
    move-object v13, v10

    .line 497
    goto :goto_c

    .line 498
    :catchall_2
    move-exception v0

    .line 499
    const/4 v13, 0x0

    .line 500
    :goto_c
    if-eqz v13, :cond_15

    .line 501
    .line 502
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    .line 503
    .line 504
    .line 505
    :cond_15
    throw v0

    .line 506
    :catchall_3
    move-exception v0

    .line 507
    move-object v13, v10

    .line 508
    goto :goto_d

    .line 509
    :catchall_4
    move-exception v0

    .line 510
    const/4 v13, 0x0

    .line 511
    :goto_d
    if-eqz v13, :cond_16

    .line 512
    .line 513
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    .line 514
    .line 515
    .line 516
    :cond_16
    throw v0

    .line 517
    :cond_17
    :goto_e
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 518
    :goto_f
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mDataClearedPackages:Ljava/util/ArrayList;

    .line 519
    .line 520
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 521
    .line 522
    .line 523
    return-void

    .line 524
    :goto_10
    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 525
    throw v0
.end method

.method public final onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 9

    .line 1
    const-class p1, Lcom/android/server/inputmethod/ImfLock;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    .line 5
    .line 6
    .line 7
    move-result p3

    .line 8
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 9
    .line 10
    iget v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-ne p3, v0, :cond_4

    .line 14
    .line 15
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    invoke-virtual {p3}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object p3, p3, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodList:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    move v3, v1

    .line 32
    :goto_0
    if-ge v3, v2, :cond_3

    .line 33
    .line 34
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 39
    .line 40
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_2

    .line 49
    .line 50
    array-length v5, p2

    .line 51
    move v6, v1

    .line 52
    :goto_1
    if-ge v6, v5, :cond_2

    .line 53
    .line 54
    aget-object v7, p2, v6

    .line 55
    .line 56
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    if-eqz v7, :cond_1

    .line 65
    .line 66
    const/4 p2, 0x1

    .line 67
    if-nez p4, :cond_0

    .line 68
    .line 69
    monitor-exit p1

    .line 70
    return p2

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    goto :goto_2

    .line 73
    :cond_0
    iget-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 74
    .line 75
    const-string p4, ""

    .line 76
    .line 77
    invoke-virtual {p3, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    .line 83
    .line 84
    .line 85
    monitor-exit p1

    .line 86
    return p2

    .line 87
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    monitor-exit p1

    .line 94
    return v1

    .line 95
    :cond_4
    monitor-exit p1

    .line 96
    return v1

    .line 97
    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    throw p0
.end method

.method public final onPackageDataCleared(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mDataClearedPackages:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method
