.class public final synthetic Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->guideDialog:Landroid/app/AlertDialog;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string p0, "PhoneWindowManagerExt"

    .line 15
    .line 16
    const-string/jumbo v0, "showHotKeyGuideDialog is showing"

    .line 17
    .line 18
    .line 19
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 26
    .line 27
    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    const v2, 0x1040629

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 36
    .line 37
    .line 38
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const/4 v2, 0x3

    .line 45
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    const v4, 0x1150006

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 61
    .line 62
    .line 63
    new-instance v1, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda17;

    .line 64
    .line 65
    const/4 v2, 0x1

    .line 66
    invoke-direct {v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda17;-><init>(I)V

    .line 67
    .line 68
    .line 69
    const v2, 0x104000a

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 73
    .line 74
    .line 75
    new-instance v1, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda18;

    .line 76
    .line 77
    const/4 v2, 0x1

    .line 78
    invoke-direct {v1, v2, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda18;-><init>(ILjava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->guideDialog:Landroid/app/AlertDialog;

    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    const-string v1, "HotKeyGuideDialog"

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->guideDialog:Landroid/app/AlertDialog;

    .line 104
    .line 105
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    const/16 v1, 0x7d8

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 112
    .line 113
    .line 114
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->guideDialog:Landroid/app/AlertDialog;

    .line 115
    .line 116
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 117
    .line 118
    .line 119
    :goto_0
    return-void

    .line 120
    :pswitch_0
    check-cast p0, Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 121
    .line 122
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->escDialog:Landroid/app/AlertDialog;

    .line 123
    .line 124
    if-eqz v0, :cond_1

    .line 125
    .line 126
    const-string p0, "PhoneWindowManagerExt"

    .line 127
    .line 128
    const-string v0, "escDialog is showing"

    .line 129
    .line 130
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 135
    .line 136
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 145
    .line 146
    and-int/lit8 v0, v0, 0x30

    .line 147
    .line 148
    const/16 v1, 0x20

    .line 149
    .line 150
    if-ne v0, v1, :cond_2

    .line 151
    .line 152
    const v0, 0x10302d1

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_2
    const v0, 0x10302d2

    .line 157
    .line 158
    .line 159
    :goto_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .line 160
    .line 161
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 162
    .line 163
    invoke-direct {v1, v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 164
    .line 165
    .line 166
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 167
    .line 168
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    const v2, 0x1040e68

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 180
    .line 181
    .line 182
    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda17;

    .line 183
    .line 184
    const/4 v2, 0x0

    .line 185
    invoke-direct {v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda17;-><init>(I)V

    .line 186
    .line 187
    .line 188
    const/high16 v2, 0x1040000

    .line 189
    .line 190
    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 191
    .line 192
    .line 193
    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda18;

    .line 194
    .line 195
    const/4 v2, 0x0

    .line 196
    invoke-direct {v0, v2, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda18;-><init>(ILjava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 200
    .line 201
    .line 202
    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$1;

    .line 203
    .line 204
    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$1;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    .line 205
    .line 206
    .line 207
    const v2, 0x1040e50

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->escDialog:Landroid/app/AlertDialog;

    .line 218
    .line 219
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    const/16 v1, 0x7d3

    .line 224
    .line 225
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 226
    .line 227
    .line 228
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->escDialog:Landroid/app/AlertDialog;

    .line 229
    .line 230
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    const/16 v1, 0x10

    .line 235
    .line 236
    invoke-virtual {v0, v1}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 237
    .line 238
    .line 239
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->escDialog:Landroid/app/AlertDialog;

    .line 240
    .line 241
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 242
    .line 243
    .line 244
    :goto_2
    return-void

    .line 245
    :pswitch_1
    check-cast p0, Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 246
    .line 247
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeAndUnlockTriggered:Z

    .line 248
    .line 249
    if-eqz v0, :cond_3

    .line 250
    .line 251
    const-string v0, "PhoneWindowManagerExt"

    .line 252
    .line 253
    const-string v1, "WakeAndUnlock not triggered"

    .line 254
    .line 255
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    const/4 v0, 0x0

    .line 259
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeAndUnlockTriggered:Z

    .line 260
    .line 261
    :cond_3
    return-void

    .line 262
    :pswitch_2
    check-cast p0, Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 263
    .line 264
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyboardShortcutPolicy:Lcom/android/server/policy/KeyboardShortcutManager;

    .line 265
    .line 266
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 267
    .line 268
    .line 269
    const-string v0, "KeyboardShortcutManager"

    .line 270
    .line 271
    const-string v1, "init()"

    .line 272
    .line 273
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .line 275
    .line 276
    sget-object v0, Lcom/android/server/policy/KeyboardShortcutManager;->SHORT_TYPE_LIST:[I

    .line 277
    .line 278
    const/4 v1, 0x0

    .line 279
    :goto_3
    const/4 v2, 0x5

    .line 280
    if-ge v1, v2, :cond_4

    .line 281
    .line 282
    aget v2, v0, v1

    .line 283
    .line 284
    iget-object v3, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mPreloadBehaviorMap:Landroid/util/SparseArray;

    .line 285
    .line 286
    invoke-virtual {p0, v2}, Lcom/android/server/policy/KeyboardShortcutManager;->getBehavior(I)Lcom/android/server/policy/KeyboardShortcutManager$Behavior;

    .line 287
    .line 288
    .line 289
    move-result-object v4

    .line 290
    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    add-int/lit8 v1, v1, 0x1

    .line 294
    .line 295
    goto :goto_3

    .line 296
    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mShortcutMap:Ljava/util/HashMap;

    .line 297
    .line 298
    const/16 v1, 0x1d

    .line 299
    .line 300
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    const-string v2, "app_shortcuts_command_a"

    .line 305
    .line 306
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    iget-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mShortcutMap:Ljava/util/HashMap;

    .line 310
    .line 311
    const/16 v1, 0x1e

    .line 312
    .line 313
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    const-string v2, "app_shortcuts_command_b"

    .line 318
    .line 319
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    iget-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mShortcutMap:Ljava/util/HashMap;

    .line 323
    .line 324
    const/16 v1, 0x1f

    .line 325
    .line 326
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    const-string v2, "app_shortcuts_command_c"

    .line 331
    .line 332
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    iget-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mShortcutMap:Ljava/util/HashMap;

    .line 336
    .line 337
    const/16 v1, 0x20

    .line 338
    .line 339
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    const-string v2, "app_shortcuts_command_d"

    .line 344
    .line 345
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    iget-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mShortcutMap:Ljava/util/HashMap;

    .line 349
    .line 350
    const/16 v1, 0x21

    .line 351
    .line 352
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    const-string v2, "app_shortcuts_command_e"

    .line 357
    .line 358
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    iget-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mShortcutMap:Ljava/util/HashMap;

    .line 362
    .line 363
    const/16 v1, 0x22

    .line 364
    .line 365
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    const-string v2, "app_shortcuts_command_f"

    .line 370
    .line 371
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    iget-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mShortcutMap:Ljava/util/HashMap;

    .line 375
    .line 376
    const/16 v1, 0x24

    .line 377
    .line 378
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    const-string v2, "app_shortcuts_command_h"

    .line 383
    .line 384
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    iget-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mShortcutMap:Ljava/util/HashMap;

    .line 388
    .line 389
    const/16 v1, 0x25

    .line 390
    .line 391
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    const-string v2, "app_shortcuts_command_i"

    .line 396
    .line 397
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    iget-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mShortcutMap:Ljava/util/HashMap;

    .line 401
    .line 402
    const/16 v1, 0x26

    .line 403
    .line 404
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 405
    .line 406
    .line 407
    move-result-object v1

    .line 408
    const-string v2, "app_shortcuts_command_j"

    .line 409
    .line 410
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    iget-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mShortcutMap:Ljava/util/HashMap;

    .line 414
    .line 415
    const/16 v1, 0x27

    .line 416
    .line 417
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    const-string v2, "app_shortcuts_command_k"

    .line 422
    .line 423
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    iget-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mShortcutMap:Ljava/util/HashMap;

    .line 427
    .line 428
    const/16 v1, 0x29

    .line 429
    .line 430
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 431
    .line 432
    .line 433
    move-result-object v1

    .line 434
    const-string v2, "app_shortcuts_command_m"

    .line 435
    .line 436
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    iget-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mShortcutMap:Ljava/util/HashMap;

    .line 440
    .line 441
    const/16 v1, 0x2b

    .line 442
    .line 443
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 444
    .line 445
    .line 446
    move-result-object v1

    .line 447
    const-string v2, "app_shortcuts_command_o"

    .line 448
    .line 449
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    iget-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mShortcutMap:Ljava/util/HashMap;

    .line 453
    .line 454
    const/16 v1, 0x2c

    .line 455
    .line 456
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 457
    .line 458
    .line 459
    move-result-object v1

    .line 460
    const-string v2, "app_shortcuts_command_p"

    .line 461
    .line 462
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    iget-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mShortcutMap:Ljava/util/HashMap;

    .line 466
    .line 467
    const/16 v1, 0x2e

    .line 468
    .line 469
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    const-string v2, "app_shortcuts_command_r"

    .line 474
    .line 475
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    iget-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mShortcutMap:Ljava/util/HashMap;

    .line 479
    .line 480
    const/16 v1, 0x2f

    .line 481
    .line 482
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 483
    .line 484
    .line 485
    move-result-object v1

    .line 486
    const-string v2, "app_shortcuts_command_s"

    .line 487
    .line 488
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    iget-object p0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mShortcutMap:Ljava/util/HashMap;

    .line 492
    .line 493
    const/16 v0, 0x36

    .line 494
    .line 495
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    const-string v1, "app_shortcuts_command_z"

    .line 500
    .line 501
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    return-void

    .line 505
    :pswitch_3
    check-cast p0, Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 506
    .line 507
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 508
    .line 509
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 510
    .line 511
    const/4 v1, 0x0

    .line 512
    invoke-virtual {v0, v1, v1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->init(IZ)V

    .line 513
    .line 514
    .line 515
    sget-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->ALL_KEYCODE_TYPE:[I

    .line 516
    .line 517
    array-length v2, v0

    .line 518
    :goto_4
    if-ge v1, v2, :cond_5

    .line 519
    .line 520
    aget v3, v0, v1

    .line 521
    .line 522
    invoke-virtual {p0, v3}, Lcom/android/server/policy/KeyCustomizationManager;->initPowerBehaviorAndSingleKeyGestureDetectorRule(I)V

    .line 523
    .line 524
    .line 525
    add-int/lit8 v1, v1, 0x1

    .line 526
    .line 527
    goto :goto_4

    .line 528
    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    .line 529
    .line 530
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    const v1, 0x10e00b7

    .line 535
    .line 536
    .line 537
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 538
    .line 539
    .line 540
    move-result v0

    .line 541
    int-to-long v0, v0

    .line 542
    iput-wide v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->defaultLongPressTimeout:J

    .line 543
    .line 544
    return-void

    .line 545
    :pswitch_4
    check-cast p0, Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 546
    .line 547
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 548
    .line 549
    new-instance v0, Landroid/content/Intent;

    .line 550
    .line 551
    const-string v1, "com.samsung.android.action.START_DOCK_OR_HOME"

    .line 552
    .line 553
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 554
    .line 555
    .line 556
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 557
    .line 558
    const-string v2, "com.samsung.android.permisson.START_DOCK_OR_HOME"

    .line 559
    .line 560
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 561
    .line 562
    .line 563
    return-void

    .line 564
    nop

    .line 565
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
