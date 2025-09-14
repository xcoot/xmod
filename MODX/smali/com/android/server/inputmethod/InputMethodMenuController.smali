.class public final Lcom/android/server/inputmethod/InputMethodMenuController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mDialogBuilder:Landroid/app/AlertDialog$Builder;

.field public mDialogWindowContext:Lcom/android/server/inputmethod/InputMethodDialogWindowContext;

.field public mIms:[Landroid/view/inputmethod/InputMethodInfo;

.field public final mSemImcUtil:Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;

.field public final mService:Lcom/android/server/inputmethod/InputMethodManagerService;

.field public mShowImeWithHardKeyboard:Z

.field public mSubtypeIds:[I

.field public mSwitchInSelectDialogView:Landroid/view/View;

.field public mSwitchingDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 6
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    .line 8
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    .line 14
    new-instance v1, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda0;

    .line 16
    invoke-direct {v1, p0}, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/InputMethodMenuController;)V

    .line 19
    new-instance v2, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;

    .line 21
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, v2, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 26
    iput-object v0, v2, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 28
    iput-object v1, v2, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;->mSemInputMethodMenuListener:Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda0;

    .line 30
    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSemImcUtil:Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;

    .line 32
    return-void
.end method


# virtual methods
.method public final hideInputMethodMenuLocked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    .line 11
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 13
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked$1()V

    .line 16
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->sendOnNavButtonFlagsChangedLocked()V

    .line 19
    const-string/jumbo v2, "imeSwitcherHidden"

    .line 22
    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateImeSwitchStatus(Ljava/lang/String;)V

    .line 25
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 27
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    .line 29
    :cond_0
    return-void
.end method

.method public final showInputMethodMenuLocked(ILjava/lang/String;ILjava/util/List;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p2

    .line 5
    move-object/from16 v2, p4

    .line 7
    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 9
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodMenuController;->hideInputMethodMenuLocked()V

    .line 15
    const/4 v4, -0x1

    .line 16
    move/from16 v5, p3

    .line 18
    if-ne v5, v4, :cond_0

    .line 20
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    .line 23
    move-result-object v6

    .line 24
    if-eqz v6, :cond_0

    .line 26
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    .line 29
    move-result-object v5

    .line 30
    iget v7, v3, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 32
    invoke-static {v7}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 35
    move-result-object v7

    .line 36
    iget-object v7, v7, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 38
    invoke-virtual {v7, v5}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    .line 41
    move-result-object v5

    .line 42
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    .line 45
    move-result v6

    .line 46
    invoke-static {v5, v6}, Lcom/android/server/inputmethod/SubtypeUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    .line 49
    move-result v5

    .line 50
    :cond_0
    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    .line 53
    move-result v6

    .line 54
    iget-object v7, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSemImcUtil:Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;

    .line 56
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 62
    move-result-object v8

    .line 63
    new-instance v9, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda4;

    .line 65
    const/4 v10, 0x0

    .line 66
    invoke-direct {v9, v10}, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda4;-><init>(I)V

    .line 69
    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 72
    move-result-object v8

    .line 73
    invoke-interface {v8}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    .line 76
    move-result-object v8

    .line 77
    const/4 v9, 0x0

    .line 78
    invoke-virtual {v8, v9}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    move-result-object v8

    .line 82
    check-cast v8, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 84
    new-instance v10, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda4;

    .line 86
    const/4 v11, 0x1

    .line 87
    invoke-direct {v10, v11}, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda4;-><init>(I)V

    .line 90
    move-object v11, v2

    .line 91
    check-cast v11, Ljava/util/ArrayList;

    .line 93
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 96
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    if-eqz v6, :cond_1

    .line 101
    new-instance v6, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda4;

    .line 103
    const/4 v8, 0x2

    .line 104
    invoke-direct {v6, v8}, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda4;-><init>(I)V

    .line 107
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 110
    :cond_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 113
    move-result v6

    .line 114
    new-array v8, v6, [Landroid/view/inputmethod/InputMethodInfo;

    .line 116
    iput-object v8, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    .line 118
    new-array v8, v6, [I

    .line 120
    iput-object v8, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSubtypeIds:[I

    .line 122
    const/4 v8, 0x0

    .line 123
    move v12, v4

    .line 124
    move v10, v8

    .line 125
    :goto_0
    const-string v13, "InputMethodMenuController"

    .line 127
    if-ge v10, v6, :cond_8

    .line 129
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 132
    move-result-object v14

    .line 133
    check-cast v14, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 135
    if-nez v14, :cond_2

    .line 137
    new-instance v14, Ljava/lang/StringBuilder;

    .line 139
    const-string/jumbo v15, "showInputMethodMenu: index="

    .line 142
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    const-string v15, ", imList="

    .line 150
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    move-result-object v14

    .line 160
    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    goto :goto_2

    .line 164
    :cond_2
    iget-object v13, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    .line 166
    iget-object v15, v14, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 168
    aput-object v15, v13, v10

    .line 170
    iget-object v13, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSubtypeIds:[I

    .line 172
    iget v14, v14, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    .line 174
    aput v14, v13, v10

    .line 176
    invoke-virtual {v15}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 179
    move-result-object v13

    .line 180
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    move-result v13

    .line 184
    if-eqz v13, :cond_7

    .line 186
    iget-object v13, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSubtypeIds:[I

    .line 188
    aget v13, v13, v10

    .line 190
    if-eq v13, v4, :cond_4

    .line 192
    if-ne v5, v4, :cond_3

    .line 194
    if-eqz v13, :cond_4

    .line 196
    :cond_3
    if-ne v13, v5, :cond_5

    .line 198
    :cond_4
    move v12, v10

    .line 199
    :cond_5
    iget-object v13, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    .line 201
    aget-object v13, v13, v10

    .line 203
    if-nez v13, :cond_6

    .line 205
    move v13, v8

    .line 206
    goto :goto_1

    .line 207
    :cond_6
    const-string/jumbo v14, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    .line 210
    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 213
    move-result-object v13

    .line 214
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    move-result v13

    .line 218
    :goto_1
    if-eqz v13, :cond_7

    .line 220
    move v12, v10

    .line 221
    :cond_7
    :goto_2
    add-int/lit8 v10, v10, 0x1

    .line 223
    goto :goto_0

    .line 224
    :cond_8
    if-ne v12, v4, :cond_9

    .line 226
    new-instance v4, Ljava/lang/StringBuilder;

    .line 228
    const-string v6, "Switching menu shown with no item selected, IME id: "

    .line 230
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    const-string v1, ", subtype index: "

    .line 238
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    move-result-object v1

    .line 248
    invoke-static {v13, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_9
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogWindowContext:Lcom/android/server/inputmethod/InputMethodDialogWindowContext;

    .line 253
    if-nez v1, :cond_a

    .line 255
    new-instance v1, Lcom/android/server/inputmethod/InputMethodDialogWindowContext;

    .line 257
    invoke-direct {v1}, Lcom/android/server/inputmethod/InputMethodDialogWindowContext;-><init>()V

    .line 260
    iput-object v1, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogWindowContext:Lcom/android/server/inputmethod/InputMethodDialogWindowContext;

    .line 262
    :cond_a
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogWindowContext:Lcom/android/server/inputmethod/InputMethodDialogWindowContext;

    .line 264
    move/from16 v4, p1

    .line 266
    invoke-virtual {v1, v4}, Lcom/android/server/inputmethod/InputMethodDialogWindowContext;->get(I)Landroid/content/Context;

    .line 269
    move-result-object v1

    .line 270
    new-instance v4, Landroid/app/AlertDialog$Builder;

    .line 272
    invoke-direct {v4, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 275
    iput-object v4, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 277
    new-instance v5, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda1;

    .line 279
    invoke-direct {v5, v0}, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/inputmethod/InputMethodMenuController;)V

    .line 282
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 285
    iget-object v4, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 287
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    .line 290
    move-result-object v4

    .line 291
    sget-object v5, Lcom/android/internal/R$styleable;->DialogPreference:[I

    .line 293
    const v6, 0x101005d

    .line 296
    invoke-virtual {v4, v9, v5, v6, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 299
    move-result-object v5

    .line 300
    const/4 v6, 0x2

    .line 301
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 304
    move-result-object v10

    .line 305
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 308
    iget-object v5, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 310
    invoke-virtual {v5, v10}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 313
    const-class v5, Landroid/view/LayoutInflater;

    .line 315
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 318
    move-result-object v5

    .line 319
    check-cast v5, Landroid/view/LayoutInflater;

    .line 321
    const v10, 0x10901bd

    .line 324
    invoke-virtual {v5, v10, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 327
    move-result-object v10

    .line 328
    iget-object v11, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 330
    invoke-virtual {v11, v10}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 333
    const v10, 0x10901bc

    .line 336
    invoke-virtual {v5, v10, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 339
    move-result-object v5

    .line 340
    iput-object v5, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchInSelectDialogView:Landroid/view/View;

    .line 342
    iget-object v10, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 344
    const v11, 0x1020340

    .line 347
    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 350
    move-result-object v11

    .line 351
    iget-object v13, v7, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 353
    invoke-virtual {v13}, Lcom/android/server/inputmethod/InputMethodManagerService;->isAccessoryKeyboard()I

    .line 356
    move-result v14

    .line 357
    if-eqz v14, :cond_b

    .line 359
    move v14, v8

    .line 360
    goto :goto_3

    .line 361
    :cond_b
    const/16 v14, 0x8

    .line 363
    :goto_3
    invoke-virtual {v11, v14}, Landroid/view/View;->setVisibility(I)V

    .line 366
    const v14, 0x1020341

    .line 369
    invoke-virtual {v5, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 372
    move-result-object v14

    .line 373
    check-cast v14, Landroid/widget/Switch;

    .line 375
    iget v15, v13, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 377
    invoke-static {v15}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 380
    move-result-object v15

    .line 381
    invoke-virtual {v15}, Lcom/android/server/inputmethod/InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    .line 384
    move-result v6

    .line 385
    invoke-virtual {v14, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 388
    invoke-virtual {v13}, Lcom/android/server/inputmethod/InputMethodManagerService;->isDexSetting()Z

    .line 391
    move-result v6

    .line 392
    const-string v8, "InputMethodManagerService"

    .line 394
    if-eqz v6, :cond_c

    .line 396
    const-string/jumbo v6, "keyboard_dex"

    .line 399
    const-string v9, "0"

    .line 401
    invoke-virtual {v13, v6, v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->getDexSettingsValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 404
    move-result v6

    .line 405
    const-string/jumbo v9, "getShowImeWithHardKeyboardValue for DEX: "

    .line 408
    invoke-static {v9, v8, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 411
    goto :goto_4

    .line 412
    :cond_c
    iget v6, v13, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 414
    invoke-static {v6}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 417
    move-result-object v6

    .line 418
    invoke-virtual {v6}, Lcom/android/server/inputmethod/InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    .line 421
    move-result v6

    .line 422
    const-string/jumbo v9, "getShowImeWithHardKeyboardValue for Phone: "

    .line 425
    invoke-static {v9, v8, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 428
    :goto_4
    invoke-virtual {v14, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 431
    invoke-virtual {v14}, Landroid/widget/Switch;->semSetSamsungBasicInteraction()V

    .line 434
    new-instance v6, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda0;

    .line 436
    invoke-direct {v6, v7}, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;)V

    .line 439
    invoke-virtual {v14, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 442
    new-instance v6, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda1;

    .line 444
    const/4 v8, 0x0

    .line 445
    invoke-direct {v6, v14, v8}, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda1;-><init>(Landroid/widget/Switch;I)V

    .line 448
    invoke-virtual {v11, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    const v6, 0x10205c2

    .line 454
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 457
    move-result-object v6

    .line 458
    invoke-virtual {v13}, Lcom/android/server/inputmethod/InputMethodManagerService;->isDeskTopMode()Z

    .line 461
    move-result v8

    .line 462
    iget-object v9, v7, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 464
    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardLocked()Z

    .line 467
    move-result v11

    .line 468
    if-eqz v11, :cond_d

    .line 470
    iget v11, v13, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 472
    invoke-virtual {v9, v11}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardSecure(I)Z

    .line 475
    move-result v9

    .line 476
    if-eqz v9, :cond_d

    .line 478
    const/4 v9, 0x1

    .line 479
    goto :goto_5

    .line 480
    :cond_d
    const/4 v9, 0x0

    .line 481
    :goto_5
    invoke-static {v4}, Lcom/samsung/android/knox/SemEnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/SemEnterpriseDeviceManager;

    .line 484
    move-result-object v11

    .line 485
    const-string/jumbo v14, "com.android.settings"

    .line 488
    invoke-virtual {v11, v14}, Lcom/samsung/android/knox/SemEnterpriseDeviceManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    .line 491
    move-result-object v11

    .line 492
    move-object/from16 v18, v1

    .line 494
    const-string/jumbo v1, "key_show_keyboard_button"

    .line 497
    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 500
    move-result-object v11

    .line 501
    if-nez v8, :cond_f

    .line 503
    if-eqz v11, :cond_e

    .line 505
    const-string/jumbo v8, "hide"

    .line 508
    invoke-virtual {v11, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 511
    move-result v8

    .line 512
    if-nez v8, :cond_f

    .line 514
    :cond_e
    invoke-static {v4}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    .line 517
    move-result v8

    .line 518
    if-nez v8, :cond_f

    .line 520
    if-nez v9, :cond_f

    .line 522
    const/4 v8, 0x1

    .line 523
    goto :goto_6

    .line 524
    :cond_f
    const/4 v8, 0x0

    .line 525
    :goto_6
    if-eqz v8, :cond_10

    .line 527
    const/4 v9, 0x0

    .line 528
    goto :goto_7

    .line 529
    :cond_10
    const/16 v9, 0x8

    .line 531
    :goto_7
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 534
    const v9, 0x10203a1

    .line 537
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 540
    move-result-object v9

    .line 541
    check-cast v9, Landroid/widget/TextView;

    .line 543
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 546
    move-result-object v11

    .line 547
    const v0, 0x1040f0b

    .line 550
    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 553
    move-result-object v0

    .line 554
    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 557
    move-result-object v11

    .line 558
    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 561
    move-result-object v11

    .line 562
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 565
    move-result-object v0

    .line 566
    invoke-static {v11, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 569
    move-result-object v0

    .line 570
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 573
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 576
    move-result-object v11

    .line 577
    move-object/from16 v19, v3

    .line 579
    const v3, 0x1040e67

    .line 582
    invoke-virtual {v11, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 585
    move-result-object v3

    .line 586
    new-instance v2, Landroid/text/SpannableString;

    .line 588
    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 591
    move/from16 v20, v12

    .line 593
    const-string v12, "%s"

    .line 595
    invoke-virtual {v3, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 598
    move-result v3

    .line 599
    const v12, 0x1060486

    .line 602
    move-object/from16 p1, v10

    .line 604
    const/4 v10, 0x0

    .line 605
    invoke-virtual {v11, v12, v10}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 608
    move-result v12

    .line 609
    move-object/from16 v16, v13

    .line 611
    const v13, 0x1080c78

    .line 614
    invoke-virtual {v11, v13, v10}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 617
    move-result-object v10

    .line 618
    invoke-virtual {v10, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 621
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 624
    move-result v11

    .line 625
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 628
    move-result v12

    .line 629
    const/4 v13, 0x0

    .line 630
    invoke-virtual {v10, v13, v13, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 633
    new-instance v11, Landroid/text/style/ImageSpan;

    .line 635
    invoke-direct {v11, v10}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 638
    add-int/lit8 v10, v3, 0x2

    .line 640
    const/16 v12, 0x11

    .line 642
    invoke-virtual {v2, v11, v3, v10, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 645
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 648
    const/4 v2, 0x1

    .line 649
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->semSetHoverPopupType(I)V

    .line 652
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    .line 655
    move-result-object v3

    .line 656
    if-eqz v3, :cond_11

    .line 658
    const/16 v2, 0x3231

    .line 660
    invoke-virtual {v3, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setGravity(I)V

    .line 663
    invoke-virtual {v3, v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    .line 666
    :cond_11
    const v0, 0x10205c3

    .line 669
    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 672
    move-result-object v0

    .line 673
    check-cast v0, Landroid/widget/Switch;

    .line 675
    invoke-virtual {v0}, Landroid/widget/Switch;->semSetSamsungBasicInteraction()V

    .line 678
    invoke-static {v4}, Lcom/samsung/android/knox/SemEnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/SemEnterpriseDeviceManager;

    .line 681
    move-result-object v2

    .line 682
    invoke-virtual {v2, v14}, Lcom/samsung/android/knox/SemEnterpriseDeviceManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    .line 685
    move-result-object v2

    .line 686
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 689
    move-result-object v1

    .line 690
    if-eqz v8, :cond_12

    .line 692
    if-eqz v1, :cond_12

    .line 694
    const-string/jumbo v2, "grayout"

    .line 697
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 700
    move-result v1

    .line 701
    if-eqz v1, :cond_12

    .line 703
    const/4 v1, 0x1

    .line 704
    const/16 v17, 0x1

    .line 706
    goto :goto_8

    .line 707
    :cond_12
    const/4 v1, 0x1

    .line 708
    const/16 v17, 0x0

    .line 710
    :goto_8
    xor-int/lit8 v2, v17, 0x1

    .line 712
    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 715
    if-eqz v8, :cond_13

    .line 717
    invoke-virtual {v15}, Lcom/android/server/inputmethod/InputMethodSettings;->isShowKeyboardButton()Z

    .line 720
    move-result v1

    .line 721
    if-eqz v1, :cond_13

    .line 723
    const/4 v13, 0x1

    .line 724
    goto :goto_9

    .line 725
    :cond_13
    const/4 v13, 0x0

    .line 726
    :goto_9
    invoke-virtual {v0, v13}, Landroid/widget/Switch;->setChecked(Z)V

    .line 729
    new-instance v1, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda2;

    .line 731
    invoke-direct {v1, v7, v15}, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;Lcom/android/server/inputmethod/InputMethodSettings;)V

    .line 734
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 737
    new-instance v1, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda1;

    .line 739
    const/4 v2, 0x1

    .line 740
    invoke-direct {v1, v0, v2}, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda1;-><init>(Landroid/widget/Switch;I)V

    .line 743
    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 746
    move-object/from16 v0, v16

    .line 748
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSamsungIMMSHWKeyboard:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 750
    iget v1, v1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 752
    and-int/lit8 v2, v1, 0xf

    .line 754
    if-eqz v2, :cond_14

    .line 756
    const/4 v13, 0x1

    .line 757
    goto :goto_a

    .line 758
    :cond_14
    const/4 v13, 0x0

    .line 759
    :goto_a
    and-int/lit16 v1, v1, 0x80

    .line 761
    if-eqz v1, :cond_15

    .line 763
    const/4 v1, 0x1

    .line 764
    goto :goto_b

    .line 765
    :cond_15
    const/4 v1, 0x0

    .line 766
    :goto_b
    const-string/jumbo v2, "isConnectedDexOnPC "

    .line 769
    const-string v3, "InputMethodManagerServicePhysicalKey"

    .line 771
    invoke-static {v2, v3, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 774
    if-nez v13, :cond_18

    .line 776
    if-eqz v1, :cond_16

    .line 778
    goto :goto_c

    .line 779
    :cond_16
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 781
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 784
    move-result-object v0

    .line 785
    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    .line 787
    const/4 v1, 0x2

    .line 788
    if-ne v0, v1, :cond_17

    .line 790
    goto :goto_c

    .line 791
    :cond_17
    if-eqz v8, :cond_19

    .line 793
    :cond_18
    :goto_c
    move-object/from16 v0, p1

    .line 795
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 798
    :cond_19
    new-instance v0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;

    .line 800
    move-object/from16 v1, p4

    .line 802
    move/from16 v12, v20

    .line 804
    invoke-direct {v0, v12, v4, v1}, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;-><init>(ILandroid/content/Context;Ljava/util/List;)V

    .line 807
    move-object/from16 v1, v19

    .line 809
    iget v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 811
    iput v2, v0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mUserId:I

    .line 813
    new-instance v2, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda2;

    .line 815
    move-object/from16 v3, p0

    .line 817
    invoke-direct {v2, v3, v0}, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/inputmethod/InputMethodMenuController;Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;)V

    .line 820
    iget-object v4, v3, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 822
    invoke-virtual {v4, v0, v12, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 825
    iget-object v0, v3, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 827
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 830
    move-result-object v0

    .line 831
    iput-object v0, v3, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    .line 833
    new-instance v2, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda3;

    .line 835
    invoke-direct {v2, v3}, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/inputmethod/InputMethodMenuController;)V

    .line 838
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 841
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->isDEXStandAloneMode()Z

    .line 844
    move-result v0

    .line 845
    if-eqz v0, :cond_1a

    .line 847
    iget-object v0, v3, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    .line 849
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    .line 852
    move-result-object v0

    .line 853
    const/4 v2, 0x0

    .line 854
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 857
    :cond_1a
    iget-object v0, v3, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    .line 859
    const/4 v2, 0x1

    .line 860
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 863
    iget-object v0, v3, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    .line 865
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 868
    move-result-object v0

    .line 869
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 872
    move-result-object v4

    .line 873
    const/16 v5, 0x7dc

    .line 875
    invoke-virtual {v0, v5}, Landroid/view/Window;->setType(I)V

    .line 878
    invoke-virtual {v0, v2}, Landroid/view/Window;->setHideOverlayWindows(Z)V

    .line 881
    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getWindowContextToken()Landroid/os/IBinder;

    .line 884
    move-result-object v2

    .line 885
    iput-object v2, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 887
    iget v2, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 889
    or-int/lit8 v2, v2, 0x10

    .line 891
    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 893
    const-string v2, "Select input method"

    .line 895
    invoke-virtual {v4, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 898
    invoke-virtual {v0, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 901
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked$1()V

    .line 904
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->sendOnNavButtonFlagsChangedLocked()V

    .line 907
    iget-object v0, v3, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    .line 909
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 912
    const-string/jumbo v0, "imeSwitcherShown"

    .line 915
    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateImeSwitchStatus(Ljava/lang/String;)V

    .line 918
    return-void
.end method

.method public final updateKeyboardFromSettingsLocked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 3
    iget v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 5
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    .line 12
    move-result v0

    .line 13
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mShowImeWithHardKeyboard:Z

    .line 15
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    .line 17
    if-eqz v0, :cond_0

    .line 19
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchInSelectDialogView:Landroid/view/View;

    .line 21
    if-eqz v1, :cond_0

    .line 23
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchInSelectDialogView:Landroid/view/View;

    .line 31
    const v1, 0x1020341

    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/widget/Switch;

    .line 40
    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mShowImeWithHardKeyboard:Z

    .line 42
    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 45
    :cond_0
    return-void
.end method
