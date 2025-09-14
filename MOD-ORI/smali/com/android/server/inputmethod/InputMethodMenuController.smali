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

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 5
    .line 6
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    .line 13
    .line 14
    new-instance v1, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/InputMethodMenuController;)V

    .line 17
    .line 18
    .line 19
    new-instance v2, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, v2, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 25
    .line 26
    iput-object v0, v2, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 27
    .line 28
    iput-object v1, v2, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;->mSemInputMethodMenuListener:Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda0;

    .line 29
    .line 30
    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSemImcUtil:Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final hideInputMethodMenuLocked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked$1()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->sendOnNavButtonFlagsChangedLocked()V

    .line 17
    .line 18
    .line 19
    const-string/jumbo v2, "imeSwitcherHidden"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateImeSwitchStatus(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final showInputMethodMenuLocked(ILjava/lang/String;ILjava/util/List;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 8
    .line 9
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodMenuController;->hideInputMethodMenuLocked()V

    .line 13
    .line 14
    .line 15
    const/4 v4, -0x1

    .line 16
    move/from16 v5, p3

    .line 17
    .line 18
    if-ne v5, v4, :cond_0

    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    if-eqz v6, :cond_0

    .line 25
    .line 26
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    iget v7, v3, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 31
    .line 32
    invoke-static {v7}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    iget-object v7, v7, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 37
    .line 38
    invoke-virtual {v7, v5}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    invoke-static {v5, v6}, Lcom/android/server/inputmethod/SubtypeUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    :cond_0
    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    iget-object v7, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSemImcUtil:Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;

    .line 55
    .line 56
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    new-instance v9, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda4;

    .line 64
    .line 65
    const/4 v10, 0x0

    .line 66
    invoke-direct {v9, v10}, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda4;-><init>(I)V

    .line 67
    .line 68
    .line 69
    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    invoke-interface {v8}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    const/4 v9, 0x0

    .line 78
    invoke-virtual {v8, v9}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    check-cast v8, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 83
    .line 84
    new-instance v10, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda4;

    .line 85
    .line 86
    const/4 v11, 0x1

    .line 87
    invoke-direct {v10, v11}, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda4;-><init>(I)V

    .line 88
    .line 89
    .line 90
    move-object v11, v2

    .line 91
    check-cast v11, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 94
    .line 95
    .line 96
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    if-eqz v6, :cond_1

    .line 100
    .line 101
    new-instance v6, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda4;

    .line 102
    .line 103
    const/4 v8, 0x2

    .line 104
    invoke-direct {v6, v8}, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda4;-><init>(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 108
    .line 109
    .line 110
    :cond_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    new-array v8, v6, [Landroid/view/inputmethod/InputMethodInfo;

    .line 115
    .line 116
    iput-object v8, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    .line 117
    .line 118
    new-array v8, v6, [I

    .line 119
    .line 120
    iput-object v8, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSubtypeIds:[I

    .line 121
    .line 122
    const/4 v8, 0x0

    .line 123
    move v12, v4

    .line 124
    move v10, v8

    .line 125
    :goto_0
    const-string v13, "InputMethodMenuController"

    .line 126
    .line 127
    if-ge v10, v6, :cond_8

    .line 128
    .line 129
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v14

    .line 133
    check-cast v14, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 134
    .line 135
    if-nez v14, :cond_2

    .line 136
    .line 137
    new-instance v14, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    const-string/jumbo v15, "showInputMethodMenu: index="

    .line 140
    .line 141
    .line 142
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v15, ", imList="

    .line 149
    .line 150
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v14

    .line 160
    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_2
    iget-object v13, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    .line 165
    .line 166
    iget-object v15, v14, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 167
    .line 168
    aput-object v15, v13, v10

    .line 169
    .line 170
    iget-object v13, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSubtypeIds:[I

    .line 171
    .line 172
    iget v14, v14, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    .line 173
    .line 174
    aput v14, v13, v10

    .line 175
    .line 176
    invoke-virtual {v15}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v13

    .line 180
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v13

    .line 184
    if-eqz v13, :cond_7

    .line 185
    .line 186
    iget-object v13, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSubtypeIds:[I

    .line 187
    .line 188
    aget v13, v13, v10

    .line 189
    .line 190
    if-eq v13, v4, :cond_4

    .line 191
    .line 192
    if-ne v5, v4, :cond_3

    .line 193
    .line 194
    if-eqz v13, :cond_4

    .line 195
    .line 196
    :cond_3
    if-ne v13, v5, :cond_5

    .line 197
    .line 198
    :cond_4
    move v12, v10

    .line 199
    :cond_5
    iget-object v13, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    .line 200
    .line 201
    aget-object v13, v13, v10

    .line 202
    .line 203
    if-nez v13, :cond_6

    .line 204
    .line 205
    move v13, v8

    .line 206
    goto :goto_1

    .line 207
    :cond_6
    const-string/jumbo v14, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    .line 208
    .line 209
    .line 210
    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v13

    .line 214
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v13

    .line 218
    :goto_1
    if-eqz v13, :cond_7

    .line 219
    .line 220
    move v12, v10

    .line 221
    :cond_7
    :goto_2
    add-int/lit8 v10, v10, 0x1

    .line 222
    .line 223
    goto :goto_0

    .line 224
    :cond_8
    if-ne v12, v4, :cond_9

    .line 225
    .line 226
    new-instance v4, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    const-string v6, "Switching menu shown with no item selected, IME id: "

    .line 229
    .line 230
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    const-string v1, ", subtype index: "

    .line 237
    .line 238
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    invoke-static {v13, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .line 250
    .line 251
    :cond_9
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogWindowContext:Lcom/android/server/inputmethod/InputMethodDialogWindowContext;

    .line 252
    .line 253
    if-nez v1, :cond_a

    .line 254
    .line 255
    new-instance v1, Lcom/android/server/inputmethod/InputMethodDialogWindowContext;

    .line 256
    .line 257
    invoke-direct {v1}, Lcom/android/server/inputmethod/InputMethodDialogWindowContext;-><init>()V

    .line 258
    .line 259
    .line 260
    iput-object v1, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogWindowContext:Lcom/android/server/inputmethod/InputMethodDialogWindowContext;

    .line 261
    .line 262
    :cond_a
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogWindowContext:Lcom/android/server/inputmethod/InputMethodDialogWindowContext;

    .line 263
    .line 264
    move/from16 v4, p1

    .line 265
    .line 266
    invoke-virtual {v1, v4}, Lcom/android/server/inputmethod/InputMethodDialogWindowContext;->get(I)Landroid/content/Context;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    new-instance v4, Landroid/app/AlertDialog$Builder;

    .line 271
    .line 272
    invoke-direct {v4, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 273
    .line 274
    .line 275
    iput-object v4, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 276
    .line 277
    new-instance v5, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda1;

    .line 278
    .line 279
    invoke-direct {v5, v0}, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/inputmethod/InputMethodMenuController;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 283
    .line 284
    .line 285
    iget-object v4, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 286
    .line 287
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    .line 288
    .line 289
    .line 290
    move-result-object v4

    .line 291
    sget-object v5, Lcom/android/internal/R$styleable;->DialogPreference:[I

    .line 292
    .line 293
    const v6, 0x101005d

    .line 294
    .line 295
    .line 296
    invoke-virtual {v4, v9, v5, v6, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 297
    .line 298
    .line 299
    move-result-object v5

    .line 300
    const/4 v6, 0x2

    .line 301
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 302
    .line 303
    .line 304
    move-result-object v10

    .line 305
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 306
    .line 307
    .line 308
    iget-object v5, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 309
    .line 310
    invoke-virtual {v5, v10}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 311
    .line 312
    .line 313
    const-class v5, Landroid/view/LayoutInflater;

    .line 314
    .line 315
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v5

    .line 319
    check-cast v5, Landroid/view/LayoutInflater;

    .line 320
    .line 321
    const v10, 0x10901bd

    .line 322
    .line 323
    .line 324
    invoke-virtual {v5, v10, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 325
    .line 326
    .line 327
    move-result-object v10

    .line 328
    iget-object v11, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 329
    .line 330
    invoke-virtual {v11, v10}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 331
    .line 332
    .line 333
    const v10, 0x10901bc

    .line 334
    .line 335
    .line 336
    invoke-virtual {v5, v10, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 337
    .line 338
    .line 339
    move-result-object v5

    .line 340
    iput-object v5, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchInSelectDialogView:Landroid/view/View;

    .line 341
    .line 342
    iget-object v10, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 343
    .line 344
    const v11, 0x1020340

    .line 345
    .line 346
    .line 347
    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 348
    .line 349
    .line 350
    move-result-object v11

    .line 351
    iget-object v13, v7, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 352
    .line 353
    invoke-virtual {v13}, Lcom/android/server/inputmethod/InputMethodManagerService;->isAccessoryKeyboard()I

    .line 354
    .line 355
    .line 356
    move-result v14

    .line 357
    if-eqz v14, :cond_b

    .line 358
    .line 359
    move v14, v8

    .line 360
    goto :goto_3

    .line 361
    :cond_b
    const/16 v14, 0x8

    .line 362
    .line 363
    :goto_3
    invoke-virtual {v11, v14}, Landroid/view/View;->setVisibility(I)V

    .line 364
    .line 365
    .line 366
    const v14, 0x1020341

    .line 367
    .line 368
    .line 369
    invoke-virtual {v5, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 370
    .line 371
    .line 372
    move-result-object v14

    .line 373
    check-cast v14, Landroid/widget/Switch;

    .line 374
    .line 375
    iget v15, v13, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 376
    .line 377
    invoke-static {v15}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 378
    .line 379
    .line 380
    move-result-object v15

    .line 381
    invoke-virtual {v15}, Lcom/android/server/inputmethod/InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    .line 382
    .line 383
    .line 384
    move-result v6

    .line 385
    invoke-virtual {v14, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v13}, Lcom/android/server/inputmethod/InputMethodManagerService;->isDexSetting()Z

    .line 389
    .line 390
    .line 391
    move-result v6

    .line 392
    const-string v8, "InputMethodManagerService"

    .line 393
    .line 394
    if-eqz v6, :cond_c

    .line 395
    .line 396
    const-string/jumbo v6, "keyboard_dex"

    .line 397
    .line 398
    .line 399
    const-string v9, "0"

    .line 400
    .line 401
    invoke-virtual {v13, v6, v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->getDexSettingsValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 402
    .line 403
    .line 404
    move-result v6

    .line 405
    const-string/jumbo v9, "getShowImeWithHardKeyboardValue for DEX: "

    .line 406
    .line 407
    .line 408
    invoke-static {v9, v8, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 409
    .line 410
    .line 411
    goto :goto_4

    .line 412
    :cond_c
    iget v6, v13, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 413
    .line 414
    invoke-static {v6}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 415
    .line 416
    .line 417
    move-result-object v6

    .line 418
    invoke-virtual {v6}, Lcom/android/server/inputmethod/InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    .line 419
    .line 420
    .line 421
    move-result v6

    .line 422
    const-string/jumbo v9, "getShowImeWithHardKeyboardValue for Phone: "

    .line 423
    .line 424
    .line 425
    invoke-static {v9, v8, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 426
    .line 427
    .line 428
    :goto_4
    invoke-virtual {v14, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v14}, Landroid/widget/Switch;->semSetSamsungBasicInteraction()V

    .line 432
    .line 433
    .line 434
    new-instance v6, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda0;

    .line 435
    .line 436
    invoke-direct {v6, v7}, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v14, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 440
    .line 441
    .line 442
    new-instance v6, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda1;

    .line 443
    .line 444
    const/4 v8, 0x0

    .line 445
    invoke-direct {v6, v14, v8}, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda1;-><init>(Landroid/widget/Switch;I)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v11, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 449
    .line 450
    .line 451
    const v6, 0x10205c2

    .line 452
    .line 453
    .line 454
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 455
    .line 456
    .line 457
    move-result-object v6

    .line 458
    invoke-virtual {v13}, Lcom/android/server/inputmethod/InputMethodManagerService;->isDeskTopMode()Z

    .line 459
    .line 460
    .line 461
    move-result v8

    .line 462
    iget-object v9, v7, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 463
    .line 464
    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardLocked()Z

    .line 465
    .line 466
    .line 467
    move-result v11

    .line 468
    if-eqz v11, :cond_d

    .line 469
    .line 470
    iget v11, v13, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 471
    .line 472
    invoke-virtual {v9, v11}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardSecure(I)Z

    .line 473
    .line 474
    .line 475
    move-result v9

    .line 476
    if-eqz v9, :cond_d

    .line 477
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

    .line 482
    .line 483
    .line 484
    move-result-object v11

    .line 485
    const-string/jumbo v14, "com.android.settings"

    .line 486
    .line 487
    .line 488
    invoke-virtual {v11, v14}, Lcom/samsung/android/knox/SemEnterpriseDeviceManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    .line 489
    .line 490
    .line 491
    move-result-object v11

    .line 492
    move-object/from16 v18, v1

    .line 493
    .line 494
    const-string/jumbo v1, "key_show_keyboard_button"

    .line 495
    .line 496
    .line 497
    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 498
    .line 499
    .line 500
    move-result-object v11

    .line 501
    if-nez v8, :cond_f

    .line 502
    .line 503
    if-eqz v11, :cond_e

    .line 504
    .line 505
    const-string/jumbo v8, "hide"

    .line 506
    .line 507
    .line 508
    invoke-virtual {v11, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 509
    .line 510
    .line 511
    move-result v8

    .line 512
    if-nez v8, :cond_f

    .line 513
    .line 514
    :cond_e
    invoke-static {v4}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    .line 515
    .line 516
    .line 517
    move-result v8

    .line 518
    if-nez v8, :cond_f

    .line 519
    .line 520
    if-nez v9, :cond_f

    .line 521
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

    .line 526
    .line 527
    const/4 v9, 0x0

    .line 528
    goto :goto_7

    .line 529
    :cond_10
    const/16 v9, 0x8

    .line 530
    .line 531
    :goto_7
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 532
    .line 533
    .line 534
    const v9, 0x10203a1

    .line 535
    .line 536
    .line 537
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 538
    .line 539
    .line 540
    move-result-object v9

    .line 541
    check-cast v9, Landroid/widget/TextView;

    .line 542
    .line 543
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 544
    .line 545
    .line 546
    move-result-object v11

    .line 547
    const v0, 0x1040f0b

    .line 548
    .line 549
    .line 550
    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v0

    .line 554
    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 555
    .line 556
    .line 557
    move-result-object v11

    .line 558
    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v11

    .line 562
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    invoke-static {v11, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 571
    .line 572
    .line 573
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 574
    .line 575
    .line 576
    move-result-object v11

    .line 577
    move-object/from16 v19, v3

    .line 578
    .line 579
    const v3, 0x1040e67

    .line 580
    .line 581
    .line 582
    invoke-virtual {v11, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object v3

    .line 586
    new-instance v2, Landroid/text/SpannableString;

    .line 587
    .line 588
    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 589
    .line 590
    .line 591
    move/from16 v20, v12

    .line 592
    .line 593
    const-string v12, "%s"

    .line 594
    .line 595
    invoke-virtual {v3, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 596
    .line 597
    .line 598
    move-result v3

    .line 599
    const v12, 0x1060486

    .line 600
    .line 601
    .line 602
    move-object/from16 p1, v10

    .line 603
    .line 604
    const/4 v10, 0x0

    .line 605
    invoke-virtual {v11, v12, v10}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 606
    .line 607
    .line 608
    move-result v12

    .line 609
    move-object/from16 v16, v13

    .line 610
    .line 611
    const v13, 0x1080c78

    .line 612
    .line 613
    .line 614
    invoke-virtual {v11, v13, v10}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 615
    .line 616
    .line 617
    move-result-object v10

    .line 618
    invoke-virtual {v10, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 619
    .line 620
    .line 621
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 622
    .line 623
    .line 624
    move-result v11

    .line 625
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 626
    .line 627
    .line 628
    move-result v12

    .line 629
    const/4 v13, 0x0

    .line 630
    invoke-virtual {v10, v13, v13, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 631
    .line 632
    .line 633
    new-instance v11, Landroid/text/style/ImageSpan;

    .line 634
    .line 635
    invoke-direct {v11, v10}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 636
    .line 637
    .line 638
    add-int/lit8 v10, v3, 0x2

    .line 639
    .line 640
    const/16 v12, 0x11

    .line 641
    .line 642
    invoke-virtual {v2, v11, v3, v10, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 643
    .line 644
    .line 645
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 646
    .line 647
    .line 648
    const/4 v2, 0x1

    .line 649
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->semSetHoverPopupType(I)V

    .line 650
    .line 651
    .line 652
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    .line 653
    .line 654
    .line 655
    move-result-object v3

    .line 656
    if-eqz v3, :cond_11

    .line 657
    .line 658
    const/16 v2, 0x3231

    .line 659
    .line 660
    invoke-virtual {v3, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setGravity(I)V

    .line 661
    .line 662
    .line 663
    invoke-virtual {v3, v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    .line 664
    .line 665
    .line 666
    :cond_11
    const v0, 0x10205c3

    .line 667
    .line 668
    .line 669
    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 670
    .line 671
    .line 672
    move-result-object v0

    .line 673
    check-cast v0, Landroid/widget/Switch;

    .line 674
    .line 675
    invoke-virtual {v0}, Landroid/widget/Switch;->semSetSamsungBasicInteraction()V

    .line 676
    .line 677
    .line 678
    invoke-static {v4}, Lcom/samsung/android/knox/SemEnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/SemEnterpriseDeviceManager;

    .line 679
    .line 680
    .line 681
    move-result-object v2

    .line 682
    invoke-virtual {v2, v14}, Lcom/samsung/android/knox/SemEnterpriseDeviceManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    .line 683
    .line 684
    .line 685
    move-result-object v2

    .line 686
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 687
    .line 688
    .line 689
    move-result-object v1

    .line 690
    if-eqz v8, :cond_12

    .line 691
    .line 692
    if-eqz v1, :cond_12

    .line 693
    .line 694
    const-string/jumbo v2, "grayout"

    .line 695
    .line 696
    .line 697
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 698
    .line 699
    .line 700
    move-result v1

    .line 701
    if-eqz v1, :cond_12

    .line 702
    .line 703
    const/4 v1, 0x1

    .line 704
    const/16 v17, 0x1

    .line 705
    .line 706
    goto :goto_8

    .line 707
    :cond_12
    const/4 v1, 0x1

    .line 708
    const/16 v17, 0x0

    .line 709
    .line 710
    :goto_8
    xor-int/lit8 v2, v17, 0x1

    .line 711
    .line 712
    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 713
    .line 714
    .line 715
    if-eqz v8, :cond_13

    .line 716
    .line 717
    invoke-virtual {v15}, Lcom/android/server/inputmethod/InputMethodSettings;->isShowKeyboardButton()Z

    .line 718
    .line 719
    .line 720
    move-result v1

    .line 721
    if-eqz v1, :cond_13

    .line 722
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

    .line 727
    .line 728
    .line 729
    new-instance v1, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda2;

    .line 730
    .line 731
    invoke-direct {v1, v7, v15}, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;Lcom/android/server/inputmethod/InputMethodSettings;)V

    .line 732
    .line 733
    .line 734
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 735
    .line 736
    .line 737
    new-instance v1, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda1;

    .line 738
    .line 739
    const/4 v2, 0x1

    .line 740
    invoke-direct {v1, v0, v2}, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda1;-><init>(Landroid/widget/Switch;I)V

    .line 741
    .line 742
    .line 743
    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 744
    .line 745
    .line 746
    move-object/from16 v0, v16

    .line 747
    .line 748
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSamsungIMMSHWKeyboard:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 749
    .line 750
    iget v1, v1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 751
    .line 752
    and-int/lit8 v2, v1, 0xf

    .line 753
    .line 754
    if-eqz v2, :cond_14

    .line 755
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

    .line 760
    .line 761
    if-eqz v1, :cond_15

    .line 762
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

    .line 767
    .line 768
    .line 769
    const-string v3, "InputMethodManagerServicePhysicalKey"

    .line 770
    .line 771
    invoke-static {v2, v3, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 772
    .line 773
    .line 774
    if-nez v13, :cond_18

    .line 775
    .line 776
    if-eqz v1, :cond_16

    .line 777
    .line 778
    goto :goto_c

    .line 779
    :cond_16
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 780
    .line 781
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 782
    .line 783
    .line 784
    move-result-object v0

    .line 785
    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    .line 786
    .line 787
    const/4 v1, 0x2

    .line 788
    if-ne v0, v1, :cond_17

    .line 789
    .line 790
    goto :goto_c

    .line 791
    :cond_17
    if-eqz v8, :cond_19

    .line 792
    .line 793
    :cond_18
    :goto_c
    move-object/from16 v0, p1

    .line 794
    .line 795
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 796
    .line 797
    .line 798
    :cond_19
    new-instance v0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;

    .line 799
    .line 800
    move-object/from16 v1, p4

    .line 801
    .line 802
    move/from16 v12, v20

    .line 803
    .line 804
    invoke-direct {v0, v12, v4, v1}, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;-><init>(ILandroid/content/Context;Ljava/util/List;)V

    .line 805
    .line 806
    .line 807
    move-object/from16 v1, v19

    .line 808
    .line 809
    iget v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 810
    .line 811
    iput v2, v0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mUserId:I

    .line 812
    .line 813
    new-instance v2, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda2;

    .line 814
    .line 815
    move-object/from16 v3, p0

    .line 816
    .line 817
    invoke-direct {v2, v3, v0}, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/inputmethod/InputMethodMenuController;Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;)V

    .line 818
    .line 819
    .line 820
    iget-object v4, v3, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 821
    .line 822
    invoke-virtual {v4, v0, v12, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 823
    .line 824
    .line 825
    iget-object v0, v3, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 826
    .line 827
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 828
    .line 829
    .line 830
    move-result-object v0

    .line 831
    iput-object v0, v3, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    .line 832
    .line 833
    new-instance v2, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda3;

    .line 834
    .line 835
    invoke-direct {v2, v3}, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/inputmethod/InputMethodMenuController;)V

    .line 836
    .line 837
    .line 838
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 839
    .line 840
    .line 841
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->isDEXStandAloneMode()Z

    .line 842
    .line 843
    .line 844
    move-result v0

    .line 845
    if-eqz v0, :cond_1a

    .line 846
    .line 847
    iget-object v0, v3, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    .line 848
    .line 849
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    .line 850
    .line 851
    .line 852
    move-result-object v0

    .line 853
    const/4 v2, 0x0

    .line 854
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 855
    .line 856
    .line 857
    :cond_1a
    iget-object v0, v3, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    .line 858
    .line 859
    const/4 v2, 0x1

    .line 860
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 861
    .line 862
    .line 863
    iget-object v0, v3, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    .line 864
    .line 865
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 866
    .line 867
    .line 868
    move-result-object v0

    .line 869
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 870
    .line 871
    .line 872
    move-result-object v4

    .line 873
    const/16 v5, 0x7dc

    .line 874
    .line 875
    invoke-virtual {v0, v5}, Landroid/view/Window;->setType(I)V

    .line 876
    .line 877
    .line 878
    invoke-virtual {v0, v2}, Landroid/view/Window;->setHideOverlayWindows(Z)V

    .line 879
    .line 880
    .line 881
    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getWindowContextToken()Landroid/os/IBinder;

    .line 882
    .line 883
    .line 884
    move-result-object v2

    .line 885
    iput-object v2, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 886
    .line 887
    iget v2, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 888
    .line 889
    or-int/lit8 v2, v2, 0x10

    .line 890
    .line 891
    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 892
    .line 893
    const-string v2, "Select input method"

    .line 894
    .line 895
    invoke-virtual {v4, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 896
    .line 897
    .line 898
    invoke-virtual {v0, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 899
    .line 900
    .line 901
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked$1()V

    .line 902
    .line 903
    .line 904
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->sendOnNavButtonFlagsChangedLocked()V

    .line 905
    .line 906
    .line 907
    iget-object v0, v3, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    .line 908
    .line 909
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 910
    .line 911
    .line 912
    const-string/jumbo v0, "imeSwitcherShown"

    .line 913
    .line 914
    .line 915
    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateImeSwitchStatus(Ljava/lang/String;)V

    .line 916
    .line 917
    .line 918
    return-void
.end method

.method public final updateKeyboardFromSettingsLocked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 2
    .line 3
    iget v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 4
    .line 5
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mShowImeWithHardKeyboard:Z

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchInSelectDialogView:Landroid/view/View;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchInSelectDialogView:Landroid/view/View;

    .line 30
    .line 31
    const v1, 0x1020341

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/widget/Switch;

    .line 39
    .line 40
    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mShowImeWithHardKeyboard:Z

    .line 41
    .line 42
    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method
