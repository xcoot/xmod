.class public final Lcom/android/server/autofill/ui/DialogFillUi;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAdapter:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

.field public mAnnounceFilterResult:Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;

.field public final mCallback:Lcom/android/server/autofill/ui/AutoFillUI$3;

.field public final mComponentName:Landroid/content/ComponentName;

.field public final mContext:Landroid/content/Context;

.field public mDestroyed:Z

.field public final mDialog:Landroid/app/Dialog;

.field public final mFilterText:Ljava/lang/String;

.field public final mListView:Landroid/widget/ListView;

.field public final mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

.field public final mServicePackageName:Ljava/lang/String;

.field public final mThemeId:I

.field public final mVisibleDatasetsMaxCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Lcom/android/server/autofill/ui/OverlayControl;ZLcom/android/server/autofill/ui/AutoFillUI$3;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p3

    .line 4
    .line 5
    move-object/from16 v0, p5

    .line 6
    .line 7
    move/from16 v3, p9

    .line 8
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 13
    .line 14
    const-string v5, "DialogFillUi"

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string/jumbo v6, "nightMode: "

    .line 21
    .line 22
    .line 23
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :cond_0
    if-eqz v3, :cond_1

    .line 37
    .line 38
    const v3, 0x103042f

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const v3, 0x103043c

    .line 43
    .line 44
    .line 45
    :goto_0
    iput v3, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mThemeId:I

    .line 46
    .line 47
    move-object/from16 v4, p10

    .line 48
    .line 49
    iput-object v4, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$3;

    .line 50
    .line 51
    move-object/from16 v6, p8

    .line 52
    .line 53
    iput-object v6, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    .line 54
    .line 55
    move-object/from16 v6, p6

    .line 56
    .line 57
    iput-object v6, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mServicePackageName:Ljava/lang/String;

    .line 58
    .line 59
    move-object/from16 v6, p7

    .line 60
    .line 61
    iput-object v6, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mComponentName:Landroid/content/ComponentName;

    .line 62
    .line 63
    new-instance v6, Landroid/view/ContextThemeWrapper;

    .line 64
    .line 65
    move-object/from16 v7, p1

    .line 66
    .line 67
    invoke-direct {v6, v7, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 68
    .line 69
    .line 70
    iput-object v6, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mContext:Landroid/content/Context;

    .line 71
    .line 72
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    const v8, 0x109004e

    .line 77
    .line 78
    .line 79
    const/4 v9, 0x0

    .line 80
    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getShowFillDialogIcon()Z

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    const/4 v10, 0x0

    .line 89
    if-eqz v8, :cond_4

    .line 90
    .line 91
    if-nez v0, :cond_2

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    const v8, 0x102021e

    .line 95
    .line 96
    .line 97
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    check-cast v8, Landroid/widget/ImageView;

    .line 102
    .line 103
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    .line 104
    .line 105
    .line 106
    move-result v11

    .line 107
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 108
    .line 109
    .line 110
    move-result v12

    .line 111
    sget-boolean v13, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 112
    .line 113
    if-eqz v13, :cond_3

    .line 114
    .line 115
    const-string v13, "Adding service icon ("

    .line 116
    .line 117
    const-string/jumbo v14, "x"

    .line 118
    .line 119
    .line 120
    const-string v15, ")"

    .line 121
    .line 122
    invoke-static {v11, v12, v13, v14, v15}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v11

    .line 126
    invoke-static {v5, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    :cond_3
    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    .line 134
    .line 135
    :cond_4
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDialogHeader()Landroid/widget/RemoteViews;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-static {v0}, Lcom/android/server/autofill/Helper;->sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    if-nez v0, :cond_5

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_5
    const v8, 0x1020212

    .line 147
    .line 148
    .line 149
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    check-cast v8, Landroid/view/ViewGroup;

    .line 154
    .line 155
    new-instance v11, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda5;

    .line 156
    .line 157
    const/4 v12, 0x2

    .line 158
    invoke-direct {v11, v1, v12}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;I)V

    .line 159
    .line 160
    .line 161
    move-object v12, v7

    .line 162
    check-cast v12, Landroid/view/ViewGroup;

    .line 163
    .line 164
    invoke-virtual {v0, v6, v12, v11, v3}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;I)Landroid/view/View;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 172
    .line 173
    .line 174
    :goto_2
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService;->getVisibleDatasetsMaxCount()I

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-lez v0, :cond_6

    .line 179
    .line 180
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService;->getVisibleDatasetsMaxCount()I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 185
    .line 186
    if-eqz v3, :cond_7

    .line 187
    .line 188
    const-string/jumbo v3, "overriding maximum visible datasets to "

    .line 189
    .line 190
    .line 191
    invoke-static {v0, v3, v5}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_6
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    const v3, 0x10e0009

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    :cond_7
    :goto_3
    iput v0, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mVisibleDatasetsMaxCount:I

    .line 207
    .line 208
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    const-string v8, "Error inflating remote views"

    .line 213
    .line 214
    if-eqz v3, :cond_8

    .line 215
    .line 216
    iput-object v9, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mListView:Landroid/widget/ListView;

    .line 217
    .line 218
    iput-object v9, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mAdapter:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    .line 219
    .line 220
    move-object/from16 v3, p2

    .line 221
    .line 222
    :try_start_0
    invoke-virtual {v1, v7, v3}, Lcom/android/server/autofill/ui/DialogFillUi;->initialAuthenticationLayout(Landroid/view/View;Landroid/service/autofill/FillResponse;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .line 224
    .line 225
    goto/16 :goto_c

    .line 226
    .line 227
    :catch_0
    move-exception v0

    .line 228
    move-object v2, v0

    .line 229
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/autofill/ui/AutoFillUI$3;->onCanceled()V

    .line 230
    .line 231
    .line 232
    invoke-static {v5, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    .line 234
    .line 235
    iput-object v9, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mDialog:Landroid/app/Dialog;

    .line 236
    .line 237
    return-void

    .line 238
    :cond_8
    move-object/from16 v3, p2

    .line 239
    .line 240
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    .line 241
    .line 242
    .line 243
    move-result-object v4

    .line 244
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 245
    .line 246
    .line 247
    move-result v4

    .line 248
    sget-boolean v11, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 249
    .line 250
    if-eqz v11, :cond_9

    .line 251
    .line 252
    new-instance v11, Ljava/lang/StringBuilder;

    .line 253
    .line 254
    const-string v12, "Number datasets: "

    .line 255
    .line 256
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    const-string v12, " max visible: "

    .line 263
    .line 264
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    .line 276
    .line 277
    :cond_9
    new-instance v11, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda5;

    .line 278
    .line 279
    const/4 v0, 0x1

    .line 280
    invoke-direct {v11, v1, v0}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;I)V

    .line 281
    .line 282
    .line 283
    new-instance v12, Ljava/util/ArrayList;

    .line 284
    .line 285
    invoke-direct {v12, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 286
    .line 287
    .line 288
    move v13, v10

    .line 289
    :goto_4
    if-ge v13, v4, :cond_11

    .line 290
    .line 291
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    check-cast v0, Landroid/service/autofill/Dataset;

    .line 300
    .line 301
    invoke-virtual {v0}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    .line 302
    .line 303
    .line 304
    move-result-object v14

    .line 305
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 306
    .line 307
    .line 308
    move-result v14

    .line 309
    if-ltz v14, :cond_10

    .line 310
    .line 311
    invoke-virtual {v0, v14}, Landroid/service/autofill/Dataset;->getFieldDialogPresentation(I)Landroid/widget/RemoteViews;

    .line 312
    .line 313
    .line 314
    move-result-object v15

    .line 315
    invoke-static {v15}, Lcom/android/server/autofill/Helper;->sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 316
    .line 317
    .line 318
    move-result-object v15

    .line 319
    if-nez v15, :cond_a

    .line 320
    .line 321
    sget-boolean v14, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 322
    .line 323
    if-eqz v14, :cond_10

    .line 324
    .line 325
    new-instance v14, Ljava/lang/StringBuilder;

    .line 326
    .line 327
    const-string/jumbo v15, "not displaying UI on field "

    .line 328
    .line 329
    .line 330
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    const-string v15, " because service didn\'t provide a presentation for it on "

    .line 337
    .line 338
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    .line 350
    .line 351
    goto/16 :goto_a

    .line 352
    .line 353
    :cond_a
    :try_start_1
    sget-boolean v16, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 354
    .line 355
    if-eqz v16, :cond_b

    .line 356
    .line 357
    new-instance v6, Ljava/lang/StringBuilder;

    .line 358
    .line 359
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    .line 361
    .line 362
    const-string/jumbo v10, "setting remote view for "

    .line 363
    .line 364
    .line 365
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v6

    .line 375
    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    .line 377
    .line 378
    goto :goto_5

    .line 379
    :catch_1
    move-exception v0

    .line 380
    goto/16 :goto_9

    .line 381
    .line 382
    :cond_b
    :goto_5
    iget-object v6, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mContext:Landroid/content/Context;

    .line 383
    .line 384
    iget v10, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mThemeId:I

    .line 385
    .line 386
    invoke-virtual {v15, v6, v9, v11, v10}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;I)Landroid/view/View;

    .line 387
    .line 388
    .line 389
    move-result-object v6
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 390
    invoke-virtual {v0, v14}, Landroid/service/autofill/Dataset;->getFilter(I)Landroid/service/autofill/Dataset$DatasetFieldFilter;

    .line 391
    .line 392
    .line 393
    move-result-object v10

    .line 394
    if-nez v10, :cond_d

    .line 395
    .line 396
    invoke-virtual {v0}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    .line 397
    .line 398
    .line 399
    move-result-object v10

    .line 400
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v10

    .line 404
    check-cast v10, Landroid/view/autofill/AutofillValue;

    .line 405
    .line 406
    if-eqz v10, :cond_c

    .line 407
    .line 408
    invoke-virtual {v10}, Landroid/view/autofill/AutofillValue;->isText()Z

    .line 409
    .line 410
    .line 411
    move-result v14

    .line 412
    if-eqz v14, :cond_c

    .line 413
    .line 414
    invoke-virtual {v10}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    .line 415
    .line 416
    .line 417
    move-result-object v10

    .line 418
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v10

    .line 422
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v10

    .line 426
    goto :goto_6

    .line 427
    :cond_c
    move-object v10, v9

    .line 428
    :goto_6
    move-object v14, v10

    .line 429
    move-object v10, v9

    .line 430
    const/4 v9, 0x1

    .line 431
    goto :goto_8

    .line 432
    :cond_d
    iget-object v10, v10, Landroid/service/autofill/Dataset$DatasetFieldFilter;->pattern:Ljava/util/regex/Pattern;

    .line 433
    .line 434
    if-nez v10, :cond_f

    .line 435
    .line 436
    sget-boolean v15, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 437
    .line 438
    if-eqz v15, :cond_e

    .line 439
    .line 440
    new-instance v15, Ljava/lang/StringBuilder;

    .line 441
    .line 442
    const-string v9, "Explicitly disabling filter at id "

    .line 443
    .line 444
    invoke-direct {v15, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    const-string v9, " for dataset #"

    .line 451
    .line 452
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v9

    .line 462
    invoke-static {v5, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    .line 464
    .line 465
    :cond_e
    const/4 v9, 0x0

    .line 466
    :goto_7
    const/4 v14, 0x0

    .line 467
    goto :goto_8

    .line 468
    :cond_f
    const/4 v9, 0x1

    .line 469
    goto :goto_7

    .line 470
    :goto_8
    new-instance v15, Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;

    .line 471
    .line 472
    move-object/from16 p5, v15

    .line 473
    .line 474
    move-object/from16 p6, v0

    .line 475
    .line 476
    move-object/from16 p7, v10

    .line 477
    .line 478
    move/from16 p8, v9

    .line 479
    .line 480
    move-object/from16 p9, v14

    .line 481
    .line 482
    move-object/from16 p10, v6

    .line 483
    .line 484
    invoke-direct/range {p5 .. p10}, Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;-><init>(Landroid/service/autofill/Dataset;Ljava/util/regex/Pattern;ZLjava/lang/String;Landroid/view/View;)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    .line 489
    .line 490
    goto :goto_a

    .line 491
    :goto_9
    invoke-static {v5, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 492
    .line 493
    .line 494
    :cond_10
    :goto_a
    add-int/lit8 v13, v13, 0x1

    .line 495
    .line 496
    const/4 v9, 0x0

    .line 497
    const/4 v10, 0x0

    .line 498
    goto/16 :goto_4

    .line 499
    .line 500
    :cond_11
    new-instance v0, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    .line 501
    .line 502
    invoke-direct {v0, v1, v12}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;Ljava/util/List;)V

    .line 503
    .line 504
    .line 505
    iput-object v0, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mAdapter:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    .line 506
    .line 507
    const v2, 0x1020213

    .line 508
    .line 509
    .line 510
    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 511
    .line 512
    .line 513
    move-result-object v2

    .line 514
    check-cast v2, Landroid/widget/ListView;

    .line 515
    .line 516
    iput-object v2, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mListView:Landroid/widget/ListView;

    .line 517
    .line 518
    new-instance v3, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda2;

    .line 519
    .line 520
    invoke-direct {v3, v1}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;)V

    .line 521
    .line 522
    .line 523
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 524
    .line 525
    .line 526
    const/4 v4, 0x0

    .line 527
    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 531
    .line 532
    .line 533
    invoke-virtual {v0}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->getCount()I

    .line 534
    .line 535
    .line 536
    move-result v2

    .line 537
    const/4 v4, 0x1

    .line 538
    if-ne v2, v4, :cond_12

    .line 539
    .line 540
    new-instance v2, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda3;

    .line 541
    .line 542
    const/4 v4, 0x0

    .line 543
    invoke-direct {v2, v4, v3}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 544
    .line 545
    .line 546
    const v3, 0x1020216

    .line 547
    .line 548
    .line 549
    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 550
    .line 551
    .line 552
    move-result-object v3

    .line 553
    check-cast v3, Landroid/widget/TextView;

    .line 554
    .line 555
    const v4, 0x1040205

    .line 556
    .line 557
    .line 558
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 559
    .line 560
    .line 561
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 562
    .line 563
    .line 564
    const/4 v2, 0x0

    .line 565
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 566
    .line 567
    .line 568
    :cond_12
    if-nez p4, :cond_13

    .line 569
    .line 570
    const/4 v2, 0x0

    .line 571
    iput-object v2, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mFilterText:Ljava/lang/String;

    .line 572
    .line 573
    goto :goto_b

    .line 574
    :cond_13
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v2

    .line 578
    iput-object v2, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mFilterText:Ljava/lang/String;

    .line 579
    .line 580
    :goto_b
    invoke-virtual {v0}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->getCount()I

    .line 581
    .line 582
    .line 583
    move-result v2

    .line 584
    new-instance v3, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter$1;

    .line 585
    .line 586
    invoke-direct {v3, v0}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter$1;-><init>(Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;)V

    .line 587
    .line 588
    .line 589
    iget-object v0, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mFilterText:Ljava/lang/String;

    .line 590
    .line 591
    new-instance v4, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda4;

    .line 592
    .line 593
    invoke-direct {v4, v1, v2}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;I)V

    .line 594
    .line 595
    .line 596
    invoke-virtual {v3, v0, v4}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 597
    .line 598
    .line 599
    :goto_c
    const v0, 0x1020214

    .line 600
    .line 601
    .line 602
    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    check-cast v0, Landroid/widget/TextView;

    .line 607
    .line 608
    const v2, 0x104020f

    .line 609
    .line 610
    .line 611
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 612
    .line 613
    .line 614
    new-instance v2, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda3;

    .line 615
    .line 616
    const/4 v3, 0x1

    .line 617
    invoke-direct {v2, v3, v1}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 618
    .line 619
    .line 620
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 621
    .line 622
    .line 623
    new-instance v0, Landroid/app/Dialog;

    .line 624
    .line 625
    iget-object v2, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mContext:Landroid/content/Context;

    .line 626
    .line 627
    iget v3, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mThemeId:I

    .line 628
    .line 629
    invoke-direct {v0, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 630
    .line 631
    .line 632
    iput-object v0, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mDialog:Landroid/app/Dialog;

    .line 633
    .line 634
    invoke-virtual {v0, v7}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 635
    .line 636
    .line 637
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 638
    .line 639
    .line 640
    move-result-object v2

    .line 641
    const/16 v3, 0x7f6

    .line 642
    .line 643
    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 644
    .line 645
    .line 646
    const v3, 0x20002

    .line 647
    .line 648
    .line 649
    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 650
    .line 651
    .line 652
    const v3, 0x3f19999a    # 0.6f

    .line 653
    .line 654
    .line 655
    invoke-virtual {v2, v3}, Landroid/view/Window;->setDimAmount(F)V

    .line 656
    .line 657
    .line 658
    const/16 v3, 0x10

    .line 659
    .line 660
    invoke-virtual {v2, v3}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 661
    .line 662
    .line 663
    const/16 v3, 0x20

    .line 664
    .line 665
    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 666
    .line 667
    .line 668
    const/16 v3, 0x51

    .line 669
    .line 670
    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    .line 671
    .line 672
    .line 673
    const/4 v3, 0x1

    .line 674
    invoke-virtual {v2, v3}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 675
    .line 676
    .line 677
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 678
    .line 679
    .line 680
    move-result-object v3

    .line 681
    new-instance v4, Landroid/util/DisplayMetrics;

    .line 682
    .line 683
    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 684
    .line 685
    .line 686
    invoke-virtual {v2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    .line 687
    .line 688
    .line 689
    move-result-object v2

    .line 690
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 691
    .line 692
    .line 693
    move-result-object v2

    .line 694
    invoke-virtual {v2, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 695
    .line 696
    .line 697
    iget v2, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 698
    .line 699
    iget-object v4, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mContext:Landroid/content/Context;

    .line 700
    .line 701
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 702
    .line 703
    .line 704
    move-result-object v4

    .line 705
    const v6, 0x105005b

    .line 706
    .line 707
    .line 708
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 709
    .line 710
    .line 711
    move-result v4

    .line 712
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    .line 713
    .line 714
    .line 715
    move-result v2

    .line 716
    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 717
    .line 718
    iget-object v2, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mContext:Landroid/content/Context;

    .line 719
    .line 720
    const v4, 0x1040208

    .line 721
    .line 722
    .line 723
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 724
    .line 725
    .line 726
    move-result-object v2

    .line 727
    iput-object v2, v3, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 728
    .line 729
    const v2, 0x103032b

    .line 730
    .line 731
    .line 732
    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 733
    .line 734
    new-instance v2, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda0;

    .line 735
    .line 736
    invoke-direct {v2, v1}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;)V

    .line 737
    .line 738
    .line 739
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 740
    .line 741
    .line 742
    new-instance v2, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda1;

    .line 743
    .line 744
    invoke-direct {v2, v1}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;)V

    .line 745
    .line 746
    .line 747
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 748
    .line 749
    .line 750
    const-string v2, "Showing fill dialog"

    .line 751
    .line 752
    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    .line 754
    .line 755
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 756
    .line 757
    .line 758
    iget-object v0, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    .line 759
    .line 760
    const/4 v1, 0x0

    .line 761
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/OverlayControl;->setOverlayAllowed(Z)V

    .line 762
    .line 763
    .line 764
    return-void
.end method


# virtual methods
.method public final initialAuthenticationLayout(Landroid/view/View;Landroid/service/autofill/FillResponse;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/service/autofill/FillResponse;->getDialogPresentation()Landroid/widget/RemoteViews;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/server/autofill/Helper;->sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/service/autofill/FillResponse;->getPresentation()Landroid/widget/RemoteViews;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/android/server/autofill/Helper;->sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_0
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const v1, 0x1020211

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroid/view/ViewGroup;

    .line 29
    .line 30
    new-instance v2, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda5;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-direct {v2, p0, v3}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;I)V

    .line 34
    .line 35
    .line 36
    iget-object v3, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    move-object v4, p1

    .line 39
    check-cast v4, Landroid/view/ViewGroup;

    .line 40
    .line 41
    iget v5, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mThemeId:I

    .line 42
    .line 43
    invoke-virtual {v0, v3, v4, v2, v5}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 48
    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    const/4 v2, 0x1

    .line 55
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 56
    .line 57
    .line 58
    new-instance v2, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda6;

    .line 59
    .line 60
    const/4 v3, 0x0

    .line 61
    invoke-direct {v2, p0, p2, v3}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;Landroid/service/autofill/FillResponse;I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    .line 66
    .line 67
    new-instance v1, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda6;

    .line 68
    .line 69
    const/4 v2, 0x1

    .line 70
    invoke-direct {v1, p0, p2, v2}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;Landroid/service/autofill/FillResponse;I)V

    .line 71
    .line 72
    .line 73
    const p0, 0x1020216

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    check-cast p0, Landroid/widget/TextView;

    .line 81
    .line 82
    const p1, 0x1040205

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 96
    .line 97
    const-string p1, "No presentation for fill dialog authentication"

    .line 98
    .line 99
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "NO TITLE"

    .line 2
    .line 3
    return-object p0
.end method
