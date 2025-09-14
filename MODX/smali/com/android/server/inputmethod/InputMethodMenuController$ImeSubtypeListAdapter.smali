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

    .line 4
    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 7
    iput v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mTextViewResourceId:I

    .line 9
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    .line 11
    iput p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mCheckedItem:I

    .line 13
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 19
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mContext:Landroid/content/Context;

    .line 21
    new-instance p1, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;

    .line 23
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mSemImcUtil:Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;

    .line 28
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 3
    move/from16 v2, p1

    .line 5
    const-string v3, "SemInputMethodMenuControllerUtil"

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p2, :cond_0

    .line 10
    move-object/from16 v4, p2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v4, v1, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 15
    iget v5, v1, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mTextViewResourceId:I

    .line 17
    invoke-virtual {v4, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 20
    move-result-object v4

    .line 21
    :goto_0
    if-ltz v2, :cond_d

    .line 23
    iget-object v5, v1, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    .line 25
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 28
    move-result v5

    .line 29
    if-lt v2, v5, :cond_1

    .line 31
    goto/16 :goto_8

    .line 33
    :cond_1
    iget-object v5, v1, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    .line 35
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v5

    .line 39
    check-cast v5, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 41
    if-nez v5, :cond_2

    .line 43
    return-object v4

    .line 44
    :cond_2
    iget-object v6, v5, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    .line 46
    iget-object v7, v5, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    .line 48
    const v8, 0x1020014

    .line 51
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object v8

    .line 55
    check-cast v8, Landroid/widget/TextView;

    .line 57
    const v9, 0x1020015

    .line 60
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object v9

    .line 64
    check-cast v9, Landroid/widget/TextView;

    .line 66
    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mSemImcUtil:Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;

    .line 68
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    const/16 v10, 0x5ac

    .line 73
    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    move-result-object v11

    .line 77
    check-cast v11, Landroid/widget/LinearLayout;

    .line 79
    if-eqz v11, :cond_3

    .line 81
    move-object v12, v4

    .line 82
    check-cast v12, Landroid/widget/LinearLayout;

    .line 84
    invoke-virtual {v12, v11}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 87
    :cond_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 90
    move-result v11

    .line 91
    const/4 v12, 0x1

    .line 92
    const/16 v13, 0x8

    .line 94
    const/4 v14, 0x0

    .line 95
    if-eqz v11, :cond_4

    .line 97
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    goto/16 :goto_6

    .line 105
    :cond_4
    iget-object v5, v5, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 107
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    .line 110
    move-result-object v5

    .line 111
    const-string/jumbo v11, "com.samsung.android.honeyboard"

    .line 114
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    move-result v5

    .line 118
    if-eqz v5, :cond_a

    .line 120
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    iget-object v5, v1, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mSemImcUtil:Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;

    .line 128
    iget-object v6, v1, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mContext:Landroid/content/Context;

    .line 130
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    :try_start_0
    new-instance v5, Landroid/content/ComponentName;

    .line 135
    const-string/jumbo v7, "com.sec.android.app.kidshome"

    .line 138
    const-string/jumbo v8, "com.sec.android.app.kidshome.apps.ui.AppsActivity"

    .line 141
    invoke-direct {v5, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 147
    move-result-object v6

    .line 148
    new-instance v7, Landroid/content/Intent;

    .line 150
    const-string v8, "android.intent.action.MAIN"

    .line 152
    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    const-string v8, "android.intent.category.HOME"

    .line 157
    invoke-virtual {v7, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const/high16 v8, 0x10000

    .line 162
    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 165
    move-result-object v6

    .line 166
    new-instance v7, Landroid/content/ComponentName;

    .line 168
    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 170
    iget-object v8, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 172
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 174
    invoke-direct {v7, v8, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v7, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 180
    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    goto :goto_1

    .line 182
    :catch_0
    const-string/jumbo v5, "isKidsModeRunning: Exception is occurred."

    .line 185
    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    move v5, v14

    .line 189
    :goto_1
    if-nez v5, :cond_b

    .line 191
    iget-object v5, v1, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mSemImcUtil:Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;

    .line 193
    iget-object v6, v1, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mContext:Landroid/content/Context;

    .line 195
    iget v7, v1, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mUserId:I

    .line 197
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    const-string/jumbo v5, "user"

    .line 203
    invoke-virtual {v6, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 206
    move-result-object v5

    .line 207
    check-cast v5, Landroid/os/UserManager;

    .line 209
    invoke-virtual {v5}, Landroid/os/UserManager;->isUserUnlocked()Z

    .line 212
    move-result v5

    .line 213
    if-nez v5, :cond_5

    .line 215
    goto/16 :goto_6

    .line 217
    :cond_5
    const-string/jumbo v5, "keyguard"

    .line 220
    invoke-virtual {v6, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 223
    move-result-object v5

    .line 224
    check-cast v5, Landroid/app/KeyguardManager;

    .line 226
    if-eqz v5, :cond_6

    .line 228
    invoke-virtual {v5}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    .line 231
    move-result v8

    .line 232
    if-eqz v8, :cond_6

    .line 234
    invoke-virtual {v5}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    .line 237
    move-result v5

    .line 238
    if-eqz v5, :cond_6

    .line 240
    goto/16 :goto_6

    .line 242
    :cond_6
    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    .line 245
    move-result v5

    .line 246
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    .line 249
    move-result v8

    .line 250
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    .line 253
    move-result v9

    .line 254
    invoke-virtual {v4, v5, v8, v14, v9}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 257
    new-instance v5, Landroid/widget/LinearLayout;

    .line 259
    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 262
    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setId(I)V

    .line 265
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 268
    move-result-object v8

    .line 269
    const v9, 0x1080b6a

    .line 272
    invoke-virtual {v8, v9, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 275
    move-result-object v8

    .line 276
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 279
    move-result-object v9

    .line 280
    const v10, 0x1060264

    .line 283
    invoke-virtual {v9, v10, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 286
    move-result v0

    .line 287
    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 290
    new-instance v0, Landroid/widget/ImageView;

    .line 292
    invoke-direct {v0, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 295
    new-instance v9, Landroid/view/WindowManager$LayoutParams;

    .line 297
    invoke-direct {v9}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 300
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 303
    move-result-object v10

    .line 304
    const v13, 0x1050221

    .line 307
    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 310
    move-result v10

    .line 311
    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 313
    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 315
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 321
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 324
    move-result-object v8

    .line 325
    const v9, 0x108094d

    .line 328
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 331
    move-result-object v8

    .line 332
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 335
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 338
    const/16 v0, 0x11

    .line 340
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 343
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 346
    move-result-object v0

    .line 347
    const v8, 0x1040cfa

    .line 350
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 353
    move-result-object v0

    .line 354
    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    .line 356
    invoke-direct {v8}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 359
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 362
    move-result-object v9

    .line 363
    const v10, 0x1050222

    .line 366
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 369
    move-result v9

    .line 370
    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 372
    const/4 v9, -0x1

    .line 373
    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 375
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 378
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 381
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 384
    move-result-object v0

    .line 385
    const-string v8, "SEC_FLOATING_FEATURE_SIP_CONFIG_PACKAGE_NAME"

    .line 387
    invoke-virtual {v0, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 390
    move-result-object v0

    .line 391
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 394
    move-result v8

    .line 395
    new-instance v9, Ljava/lang/StringBuilder;

    .line 397
    const-string/jumbo v10, "isHoneyboardSupported: supported="

    .line 400
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 403
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 406
    const-string v10, " packageName="

    .line 408
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 417
    move-result-object v0

    .line 418
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    if-nez v8, :cond_7

    .line 423
    move v0, v12

    .line 424
    goto :goto_5

    .line 425
    :cond_7
    const-string/jumbo v0, "keyboard_setting_enable"

    .line 428
    filled-new-array {v0}, [Ljava/lang/String;

    .line 431
    move-result-object v19

    .line 432
    :try_start_1
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 435
    move-result-object v15

    .line 436
    const-string/jumbo v8, "content://com.samsung.android.honeyboard.provider.KeyboardSettingsProvider"

    .line 439
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 442
    move-result-object v16

    .line 443
    const/16 v17, 0x0

    .line 445
    const/16 v18, 0x0

    .line 447
    const/16 v20, 0x0

    .line 449
    invoke-virtual/range {v15 .. v20}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 452
    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 453
    if-eqz v8, :cond_8

    .line 455
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    .line 458
    move-result v9

    .line 459
    if-lez v9, :cond_8

    .line 461
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 464
    move-result v9

    .line 465
    if-eqz v9, :cond_8

    .line 467
    new-instance v9, Ljava/util/ArrayList;

    .line 469
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 472
    new-instance v10, Landroid/content/ContentValues;

    .line 474
    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 477
    invoke-static {v8, v10}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 480
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 486
    move-result-object v9

    .line 487
    check-cast v9, Landroid/content/ContentValues;

    .line 489
    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 492
    move-result-object v0

    .line 493
    if-eqz v0, :cond_8

    .line 495
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

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

    .line 517
    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 520
    goto :goto_5

    .line 521
    :catch_2
    :goto_4
    const-string/jumbo v8, "isSettingButtonEnabled: Exception is occurred."

    .line 524
    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_9
    :goto_5
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 530
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 533
    invoke-virtual {v5, v14}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 536
    new-instance v0, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda7;

    .line 538
    invoke-direct {v0, v6, v7}, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda7;-><init>(Landroid/content/Context;I)V

    .line 541
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 544
    move-object v0, v4

    .line 545
    check-cast v0, Landroid/widget/LinearLayout;

    .line 547
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 550
    goto :goto_6

    .line 551
    :cond_a
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 554
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 560
    :cond_b
    :goto_6
    const v0, 0x10204d2

    .line 563
    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 566
    move-result-object v0

    .line 567
    check-cast v0, Landroid/widget/RadioButton;

    .line 569
    iget v1, v1, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mCheckedItem:I

    .line 571
    if-ne v2, v1, :cond_c

    .line 573
    goto :goto_7

    .line 574
    :cond_c
    move v12, v14

    .line 575
    :goto_7
    invoke-virtual {v0, v12}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 578
    :cond_d
    :goto_8
    return-object v4
.end method
