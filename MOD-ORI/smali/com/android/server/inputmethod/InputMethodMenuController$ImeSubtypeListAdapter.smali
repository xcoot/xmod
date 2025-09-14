.class public final Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCheckedItem:I

.field public final mContext:Landroid/content/Context;

.field public final mInflater:Landroid/view/LayoutInflater;

.field public final mItemsList:Ljava/util/List;

.field public final mSemImcUtil:Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;

.field public final mTextViewResourceId:I

.field public mUserId:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Ljava/util/List;)V
    .locals 1

    .line 1
    const v0, 0x10901bf

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 5
    .line 6
    .line 7
    iput v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mTextViewResourceId:I

    .line 8
    .line 9
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    .line 10
    .line 11
    iput p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mCheckedItem:I

    .line 12
    .line 13
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 18
    .line 19
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    new-instance p1, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mSemImcUtil:Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    const-string v3, "SemInputMethodMenuControllerUtil"

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    move-object/from16 v4, p2

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v4, v1, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 14
    .line 15
    iget v5, v1, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mTextViewResourceId:I

    .line 16
    .line 17
    invoke-virtual {v4, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    :goto_0
    if-ltz v2, :cond_d

    .line 22
    .line 23
    iget-object v5, v1, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-lt v2, v5, :cond_1

    .line 30
    .line 31
    goto/16 :goto_8

    .line 32
    .line 33
    :cond_1
    iget-object v5, v1, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    check-cast v5, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 40
    .line 41
    if-nez v5, :cond_2

    .line 42
    .line 43
    return-object v4

    .line 44
    :cond_2
    iget-object v6, v5, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    .line 45
    .line 46
    iget-object v7, v5, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    .line 47
    .line 48
    const v8, 0x1020014

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    check-cast v8, Landroid/widget/TextView;

    .line 56
    .line 57
    const v9, 0x1020015

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    check-cast v9, Landroid/widget/TextView;

    .line 65
    .line 66
    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mSemImcUtil:Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;

    .line 67
    .line 68
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    const/16 v10, 0x5ac

    .line 72
    .line 73
    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v11

    .line 77
    check-cast v11, Landroid/widget/LinearLayout;

    .line 78
    .line 79
    if-eqz v11, :cond_3

    .line 80
    .line 81
    move-object v12, v4

    .line 82
    check-cast v12, Landroid/widget/LinearLayout;

    .line 83
    .line 84
    invoke-virtual {v12, v11}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 85
    .line 86
    .line 87
    :cond_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result v11

    .line 91
    const/4 v12, 0x1

    .line 92
    const/16 v13, 0x8

    .line 93
    .line 94
    const/4 v14, 0x0

    .line 95
    if-eqz v11, :cond_4

    .line 96
    .line 97
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    goto/16 :goto_6

    .line 104
    .line 105
    :cond_4
    iget-object v5, v5, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 106
    .line 107
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    const-string/jumbo v11, "com.samsung.android.honeyboard"

    .line 112
    .line 113
    .line 114
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    if-eqz v5, :cond_a

    .line 119
    .line 120
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    iget-object v5, v1, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mSemImcUtil:Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;

    .line 127
    .line 128
    iget-object v6, v1, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mContext:Landroid/content/Context;

    .line 129
    .line 130
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    :try_start_0
    new-instance v5, Landroid/content/ComponentName;

    .line 134
    .line 135
    const-string/jumbo v7, "com.sec.android.app.kidshome"

    .line 136
    .line 137
    .line 138
    const-string/jumbo v8, "com.sec.android.app.kidshome.apps.ui.AppsActivity"

    .line 139
    .line 140
    .line 141
    invoke-direct {v5, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    new-instance v7, Landroid/content/Intent;

    .line 149
    .line 150
    const-string v8, "android.intent.action.MAIN"

    .line 151
    .line 152
    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    const-string v8, "android.intent.category.HOME"

    .line 156
    .line 157
    invoke-virtual {v7, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    .line 159
    .line 160
    const/high16 v8, 0x10000

    .line 161
    .line 162
    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    new-instance v7, Landroid/content/ComponentName;

    .line 167
    .line 168
    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 169
    .line 170
    iget-object v8, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 171
    .line 172
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 173
    .line 174
    invoke-direct {v7, v8, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v7, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    goto :goto_1

    .line 182
    :catch_0
    const-string/jumbo v5, "isKidsModeRunning: Exception is occurred."

    .line 183
    .line 184
    .line 185
    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    move v5, v14

    .line 189
    :goto_1
    if-nez v5, :cond_b

    .line 190
    .line 191
    iget-object v5, v1, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mSemImcUtil:Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;

    .line 192
    .line 193
    iget-object v6, v1, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mContext:Landroid/content/Context;

    .line 194
    .line 195
    iget v7, v1, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mUserId:I

    .line 196
    .line 197
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    const-string/jumbo v5, "user"

    .line 201
    .line 202
    .line 203
    invoke-virtual {v6, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    check-cast v5, Landroid/os/UserManager;

    .line 208
    .line 209
    invoke-virtual {v5}, Landroid/os/UserManager;->isUserUnlocked()Z

    .line 210
    .line 211
    .line 212
    move-result v5

    .line 213
    if-nez v5, :cond_5

    .line 214
    .line 215
    goto/16 :goto_6

    .line 216
    .line 217
    :cond_5
    const-string/jumbo v5, "keyguard"

    .line 218
    .line 219
    .line 220
    invoke-virtual {v6, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    check-cast v5, Landroid/app/KeyguardManager;

    .line 225
    .line 226
    if-eqz v5, :cond_6

    .line 227
    .line 228
    invoke-virtual {v5}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    .line 229
    .line 230
    .line 231
    move-result v8

    .line 232
    if-eqz v8, :cond_6

    .line 233
    .line 234
    invoke-virtual {v5}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    .line 235
    .line 236
    .line 237
    move-result v5

    .line 238
    if-eqz v5, :cond_6

    .line 239
    .line 240
    goto/16 :goto_6

    .line 241
    .line 242
    :cond_6
    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    .line 243
    .line 244
    .line 245
    move-result v5

    .line 246
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    .line 247
    .line 248
    .line 249
    move-result v8

    .line 250
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    .line 251
    .line 252
    .line 253
    move-result v9

    .line 254
    invoke-virtual {v4, v5, v8, v14, v9}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 255
    .line 256
    .line 257
    new-instance v5, Landroid/widget/LinearLayout;

    .line 258
    .line 259
    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setId(I)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 266
    .line 267
    .line 268
    move-result-object v8

    .line 269
    const v9, 0x1080b6a

    .line 270
    .line 271
    .line 272
    invoke-virtual {v8, v9, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 273
    .line 274
    .line 275
    move-result-object v8

    .line 276
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 277
    .line 278
    .line 279
    move-result-object v9

    .line 280
    const v10, 0x1060264

    .line 281
    .line 282
    .line 283
    invoke-virtual {v9, v10, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 288
    .line 289
    .line 290
    new-instance v0, Landroid/widget/ImageView;

    .line 291
    .line 292
    invoke-direct {v0, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 293
    .line 294
    .line 295
    new-instance v9, Landroid/view/WindowManager$LayoutParams;

    .line 296
    .line 297
    invoke-direct {v9}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 301
    .line 302
    .line 303
    move-result-object v10

    .line 304
    const v13, 0x1050221

    .line 305
    .line 306
    .line 307
    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 308
    .line 309
    .line 310
    move-result v10

    .line 311
    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 312
    .line 313
    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 314
    .line 315
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 322
    .line 323
    .line 324
    move-result-object v8

    .line 325
    const v9, 0x108094d

    .line 326
    .line 327
    .line 328
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 329
    .line 330
    .line 331
    move-result-object v8

    .line 332
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 336
    .line 337
    .line 338
    const/16 v0, 0x11

    .line 339
    .line 340
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    const v8, 0x1040cfa

    .line 348
    .line 349
    .line 350
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    .line 355
    .line 356
    invoke-direct {v8}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 360
    .line 361
    .line 362
    move-result-object v9

    .line 363
    const v10, 0x1050222

    .line 364
    .line 365
    .line 366
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 367
    .line 368
    .line 369
    move-result v9

    .line 370
    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 371
    .line 372
    const/4 v9, -0x1

    .line 373
    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 374
    .line 375
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 379
    .line 380
    .line 381
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    const-string v8, "SEC_FLOATING_FEATURE_SIP_CONFIG_PACKAGE_NAME"

    .line 386
    .line 387
    invoke-virtual {v0, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    move-result v8

    .line 395
    new-instance v9, Ljava/lang/StringBuilder;

    .line 396
    .line 397
    const-string/jumbo v10, "isHoneyboardSupported: supported="

    .line 398
    .line 399
    .line 400
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    const-string v10, " packageName="

    .line 407
    .line 408
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    .line 420
    .line 421
    if-nez v8, :cond_7

    .line 422
    .line 423
    move v0, v12

    .line 424
    goto :goto_5

    .line 425
    :cond_7
    const-string/jumbo v0, "keyboard_setting_enable"

    .line 426
    .line 427
    .line 428
    filled-new-array {v0}, [Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v19

    .line 432
    :try_start_1
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 433
    .line 434
    .line 435
    move-result-object v15

    .line 436
    const-string/jumbo v8, "content://com.samsung.android.honeyboard.provider.KeyboardSettingsProvider"

    .line 437
    .line 438
    .line 439
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 440
    .line 441
    .line 442
    move-result-object v16

    .line 443
    const/16 v17, 0x0

    .line 444
    .line 445
    const/16 v18, 0x0

    .line 446
    .line 447
    const/16 v20, 0x0

    .line 448
    .line 449
    invoke-virtual/range {v15 .. v20}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 450
    .line 451
    .line 452
    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 453
    if-eqz v8, :cond_8

    .line 454
    .line 455
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    .line 456
    .line 457
    .line 458
    move-result v9

    .line 459
    if-lez v9, :cond_8

    .line 460
    .line 461
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 462
    .line 463
    .line 464
    move-result v9

    .line 465
    if-eqz v9, :cond_8

    .line 466
    .line 467
    new-instance v9, Ljava/util/ArrayList;

    .line 468
    .line 469
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 470
    .line 471
    .line 472
    new-instance v10, Landroid/content/ContentValues;

    .line 473
    .line 474
    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 475
    .line 476
    .line 477
    invoke-static {v8, v10}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    .line 482
    .line 483
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v9

    .line 487
    check-cast v9, Landroid/content/ContentValues;

    .line 488
    .line 489
    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    if-eqz v0, :cond_8

    .line 494
    .line 495
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 496
    .line 497
    .line 498
    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 499
    goto :goto_3

    .line 500
    :catchall_0
    move-exception v0

    .line 501
    move-object v9, v0

    .line 502
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 503
    .line 504
    .line 505
    goto :goto_2

    .line 506
    :catchall_1
    move-exception v0

    .line 507
    move-object v8, v0

    .line 508
    :try_start_4
    invoke-virtual {v9, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 509
    .line 510
    .line 511
    :goto_2
    throw v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 512
    :catch_1
    move v0, v12

    .line 513
    goto :goto_4

    .line 514
    :cond_8
    move v0, v12

    .line 515
    :goto_3
    if-eqz v8, :cond_9

    .line 516
    .line 517
    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 518
    .line 519
    .line 520
    goto :goto_5

    .line 521
    :catch_2
    :goto_4
    const-string/jumbo v8, "isSettingButtonEnabled: Exception is occurred."

    .line 522
    .line 523
    .line 524
    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    .line 526
    .line 527
    :cond_9
    :goto_5
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 531
    .line 532
    .line 533
    invoke-virtual {v5, v14}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 534
    .line 535
    .line 536
    new-instance v0, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda7;

    .line 537
    .line 538
    invoke-direct {v0, v6, v7}, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda7;-><init>(Landroid/content/Context;I)V

    .line 539
    .line 540
    .line 541
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 542
    .line 543
    .line 544
    move-object v0, v4

    .line 545
    check-cast v0, Landroid/widget/LinearLayout;

    .line 546
    .line 547
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 548
    .line 549
    .line 550
    goto :goto_6

    .line 551
    :cond_a
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 558
    .line 559
    .line 560
    :cond_b
    :goto_6
    const v0, 0x10204d2

    .line 561
    .line 562
    .line 563
    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 564
    .line 565
    .line 566
    move-result-object v0

    .line 567
    check-cast v0, Landroid/widget/RadioButton;

    .line 568
    .line 569
    iget v1, v1, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mCheckedItem:I

    .line 570
    .line 571
    if-ne v2, v1, :cond_c

    .line 572
    .line 573
    goto :goto_7

    .line 574
    :cond_c
    move v12, v14

    .line 575
    :goto_7
    invoke-virtual {v0, v12}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 576
    .line 577
    .line 578
    :cond_d
    :goto_8
    return-object v4
.end method
