.class public final Lcom/android/server/wm/AppWarnings$UiHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/AppWarnings;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppWarnings;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/AppWarnings$UiHandler;->this$0:Lcom/android/server/wm/AppWarnings;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 11

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const v1, 0x1020202

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    const v5, 0x104000a

    .line 10
    .line 11
    .line 12
    const/16 v6, 0x7d2

    .line 13
    .line 14
    const/4 v7, 0x5

    .line 15
    const/high16 v8, 0x447a0000    # 1000.0f

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings$UiHandler;->this$0:Lcom/android/server/wm/AppWarnings;

    .line 18
    .line 19
    packed-switch v0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    goto/16 :goto_2

    .line 23
    .line 24
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->getUserIdForActivity(Lcom/android/server/wm/ActivityRecord;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mPackageNightModeDialogs:Landroid/util/SparseArray;

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lcom/android/server/wm/PackageNightModeDialog;

    .line 41
    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/android/server/wm/AppWarnings$BaseDialog;->dismiss()V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mPackageNightModeDialogs:Landroid/util/SparseArray;

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 50
    .line 51
    .line 52
    :cond_0
    if-eqz p1, :cond_20

    .line 53
    .line 54
    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->mShouldShowPackageNightModeDialog:Z

    .line 55
    .line 56
    if-eqz v1, :cond_20

    .line 57
    .line 58
    new-instance v1, Lcom/android/server/wm/PackageNightModeDialog;

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->getUiContextForActivity(Lcom/android/server/wm/ActivityRecord;)Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 65
    .line 66
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 67
    .line 68
    iget-object v9, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 69
    .line 70
    invoke-direct {v1, p0, v3, v9, v0}, Lcom/android/server/wm/AppWarnings$BaseDialog;-><init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;Ljava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    invoke-virtual {v5, v9, v8, v7}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    const v7, 0x1040956

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    new-instance v7, Landroid/app/AlertDialog$Builder;

    .line 97
    .line 98
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    invoke-virtual {v8}, Landroid/content/res/Configuration;->isNightModeActive()Z

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    if-eqz v8, :cond_1

    .line 111
    .line 112
    const v8, 0x10302d1

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_1
    const v8, 0x10302d2

    .line 117
    .line 118
    .line 119
    :goto_0
    invoke-direct {v7, v3, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 120
    .line 121
    .line 122
    const v8, 0x1040955

    .line 123
    .line 124
    .line 125
    invoke-virtual {v7, v8, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    new-instance v7, Lcom/android/server/wm/PackageNightModeDialog$$ExternalSyntheticLambda0;

    .line 130
    .line 131
    invoke-direct {v7, v3}, Lcom/android/server/wm/PackageNightModeDialog$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    .line 132
    .line 133
    .line 134
    const v3, 0x1040957

    .line 135
    .line 136
    .line 137
    invoke-virtual {v4, v3, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    iput-object v3, v1, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    .line 154
    .line 155
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 156
    .line 157
    .line 158
    iget-object v3, v1, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    .line 159
    .line 160
    invoke-virtual {v3}, Landroid/app/AlertDialog;->create()V

    .line 161
    .line 162
    .line 163
    iget-object v3, v1, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    .line 164
    .line 165
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    invoke-virtual {v3, v6}, Landroid/view/Window;->setType(I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    const-string v4, "PackageNightModeDialog"

    .line 177
    .line 178
    invoke-virtual {v3, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1}, Lcom/android/server/wm/AppWarnings$BaseDialog;->show()V

    .line 182
    .line 183
    .line 184
    iput-boolean v2, p1, Lcom/android/server/wm/ActivityRecord;->mShouldShowPackageNightModeDialog:Z

    .line 185
    .line 186
    iget-object p1, p0, Lcom/android/server/wm/AppWarnings;->mPackageNightModeDialogs:Landroid/util/SparseArray;

    .line 187
    .line 188
    if-nez p1, :cond_2

    .line 189
    .line 190
    new-instance p1, Landroid/util/SparseArray;

    .line 191
    .line 192
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 193
    .line 194
    .line 195
    iput-object p1, p0, Lcom/android/server/wm/AppWarnings;->mPackageNightModeDialogs:Landroid/util/SparseArray;

    .line 196
    .line 197
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mPackageNightModeDialogs:Landroid/util/SparseArray;

    .line 198
    .line 199
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    goto/16 :goto_2

    .line 203
    .line 204
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 205
    .line 206
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 207
    .line 208
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    .line 212
    .line 213
    if-eqz v0, :cond_3

    .line 214
    .line 215
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->isSpeg(Lcom/android/server/wm/ActivityRecord;)Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    if-eqz v0, :cond_3

    .line 220
    .line 221
    goto/16 :goto_2

    .line 222
    .line 223
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->getUserIdForActivity(Lcom/android/server/wm/ActivityRecord;)I

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedAbiDialogs:Landroid/util/SparseArray;

    .line 228
    .line 229
    if-eqz v1, :cond_4

    .line 230
    .line 231
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    check-cast v1, Lcom/android/server/wm/DeprecatedAbiDialog;

    .line 236
    .line 237
    if-eqz v1, :cond_4

    .line 238
    .line 239
    invoke-virtual {v1}, Lcom/android/server/wm/AppWarnings$BaseDialog;->dismiss()V

    .line 240
    .line 241
    .line 242
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedAbiDialogs:Landroid/util/SparseArray;

    .line 243
    .line 244
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 245
    .line 246
    .line 247
    :cond_4
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 248
    .line 249
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AppWarnings;->getPackageFlags(ILjava/lang/String;)I

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    const/16 v2, 0x8

    .line 254
    .line 255
    and-int/2addr v1, v2

    .line 256
    if-ne v1, v2, :cond_5

    .line 257
    .line 258
    goto/16 :goto_2

    .line 259
    .line 260
    :cond_5
    new-instance v1, Lcom/android/server/wm/DeprecatedAbiDialog;

    .line 261
    .line 262
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->getUiContextForActivity(Lcom/android/server/wm/ActivityRecord;)Landroid/content/Context;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 267
    .line 268
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 269
    .line 270
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 271
    .line 272
    invoke-direct {v1, p0, v2, v3, v0}, Lcom/android/server/wm/AppWarnings$BaseDialog;-><init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;Ljava/lang/String;I)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    invoke-virtual {p1, v3, v8, v7}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    const v3, 0x1040454

    .line 284
    .line 285
    .line 286
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v3

    .line 290
    new-instance v4, Landroid/app/AlertDialog$Builder;

    .line 291
    .line 292
    invoke-direct {v4, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 293
    .line 294
    .line 295
    new-instance v2, Lcom/android/server/wm/DeprecatedAbiDialog$$ExternalSyntheticLambda0;

    .line 296
    .line 297
    invoke-direct {v2, v1, p0}, Lcom/android/server/wm/DeprecatedAbiDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DeprecatedAbiDialog;Lcom/android/server/wm/AppWarnings;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v4, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 309
    .line 310
    .line 311
    move-result-object p1

    .line 312
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    iput-object p1, v1, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    .line 317
    .line 318
    invoke-virtual {p1}, Landroid/app/AlertDialog;->create()V

    .line 319
    .line 320
    .line 321
    iget-object p1, v1, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    .line 322
    .line 323
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    invoke-virtual {p1, v6}, Landroid/view/Window;->setType(I)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 331
    .line 332
    .line 333
    move-result-object p1

    .line 334
    const-string v2, "DeprecatedAbiDialog"

    .line 335
    .line 336
    invoke-virtual {p1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v1}, Lcom/android/server/wm/AppWarnings$BaseDialog;->show()V

    .line 340
    .line 341
    .line 342
    iget-object p1, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedAbiDialogs:Landroid/util/SparseArray;

    .line 343
    .line 344
    if-nez p1, :cond_6

    .line 345
    .line 346
    new-instance p1, Landroid/util/SparseArray;

    .line 347
    .line 348
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 349
    .line 350
    .line 351
    iput-object p1, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedAbiDialogs:Landroid/util/SparseArray;

    .line 352
    .line 353
    :cond_6
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedAbiDialogs:Landroid/util/SparseArray;

    .line 354
    .line 355
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 356
    .line 357
    .line 358
    goto/16 :goto_2

    .line 359
    .line 360
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 361
    .line 362
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 363
    .line 364
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 365
    .line 366
    .line 367
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    .line 368
    .line 369
    if-eqz v0, :cond_7

    .line 370
    .line 371
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->isSpeg(Lcom/android/server/wm/ActivityRecord;)Z

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    if-eqz v0, :cond_7

    .line 376
    .line 377
    goto/16 :goto_2

    .line 378
    .line 379
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->getUserIdForActivity(Lcom/android/server/wm/ActivityRecord;)I

    .line 380
    .line 381
    .line 382
    move-result v0

    .line 383
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedTargetSdkVersionDialogs:Landroid/util/SparseArray;

    .line 384
    .line 385
    if-eqz v1, :cond_8

    .line 386
    .line 387
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    check-cast v1, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;

    .line 392
    .line 393
    if-eqz v1, :cond_8

    .line 394
    .line 395
    invoke-virtual {v1}, Lcom/android/server/wm/AppWarnings$BaseDialog;->dismiss()V

    .line 396
    .line 397
    .line 398
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedTargetSdkVersionDialogs:Landroid/util/SparseArray;

    .line 399
    .line 400
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 401
    .line 402
    .line 403
    :cond_8
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 404
    .line 405
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AppWarnings;->getPackageFlags(ILjava/lang/String;)I

    .line 406
    .line 407
    .line 408
    move-result v1

    .line 409
    const/4 v2, 0x4

    .line 410
    and-int/2addr v1, v2

    .line 411
    if-ne v1, v2, :cond_9

    .line 412
    .line 413
    goto/16 :goto_2

    .line 414
    .line 415
    :cond_9
    new-instance v1, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;

    .line 416
    .line 417
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->getUiContextForActivity(Lcom/android/server/wm/ActivityRecord;)Landroid/content/Context;

    .line 418
    .line 419
    .line 420
    move-result-object v2

    .line 421
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 422
    .line 423
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 424
    .line 425
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 426
    .line 427
    invoke-direct {v1, p0, v2, v3, v0}, Lcom/android/server/wm/AppWarnings$BaseDialog;-><init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;Ljava/lang/String;I)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 431
    .line 432
    .line 433
    move-result-object v3

    .line 434
    invoke-virtual {p1, v3, v8, v7}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    .line 435
    .line 436
    .line 437
    move-result-object v3

    .line 438
    const v4, 0x1040456

    .line 439
    .line 440
    .line 441
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v4

    .line 445
    new-instance v7, Landroid/app/AlertDialog$Builder;

    .line 446
    .line 447
    invoke-direct {v7, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 448
    .line 449
    .line 450
    new-instance v8, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog$$ExternalSyntheticLambda0;

    .line 451
    .line 452
    const/4 v9, 0x0

    .line 453
    invoke-direct {v8, v9, v1, p0}, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v7, v5, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 457
    .line 458
    .line 459
    move-result-object v5

    .line 460
    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 461
    .line 462
    .line 463
    move-result-object v4

    .line 464
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 465
    .line 466
    .line 467
    move-result-object v3

    .line 468
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 469
    .line 470
    invoke-static {v2, p1}, Lcom/android/server/utils/AppInstallerUtil;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    .line 472
    .line 473
    move-result-object p1

    .line 474
    if-eqz p1, :cond_a

    .line 475
    .line 476
    new-instance v4, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog$$ExternalSyntheticLambda0;

    .line 477
    .line 478
    const/4 v5, 0x1

    .line 479
    invoke-direct {v4, v5, v2, p1}, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 480
    .line 481
    .line 482
    const p1, 0x1040455

    .line 483
    .line 484
    .line 485
    invoke-virtual {v3, p1, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 486
    .line 487
    .line 488
    :cond_a
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 489
    .line 490
    .line 491
    move-result-object p1

    .line 492
    iput-object p1, v1, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    .line 493
    .line 494
    invoke-virtual {p1}, Landroid/app/AlertDialog;->create()V

    .line 495
    .line 496
    .line 497
    iget-object p1, v1, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    .line 498
    .line 499
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 500
    .line 501
    .line 502
    move-result-object p1

    .line 503
    invoke-virtual {p1, v6}, Landroid/view/Window;->setType(I)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 507
    .line 508
    .line 509
    move-result-object p1

    .line 510
    const-string v2, "DeprecatedTargetSdkVersionDialog"

    .line 511
    .line 512
    invoke-virtual {p1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v1}, Lcom/android/server/wm/AppWarnings$BaseDialog;->show()V

    .line 516
    .line 517
    .line 518
    iget-object p1, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedTargetSdkVersionDialogs:Landroid/util/SparseArray;

    .line 519
    .line 520
    if-nez p1, :cond_b

    .line 521
    .line 522
    new-instance p1, Landroid/util/SparseArray;

    .line 523
    .line 524
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 525
    .line 526
    .line 527
    iput-object p1, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedTargetSdkVersionDialogs:Landroid/util/SparseArray;

    .line 528
    .line 529
    :cond_b
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedTargetSdkVersionDialogs:Landroid/util/SparseArray;

    .line 530
    .line 531
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 532
    .line 533
    .line 534
    goto/16 :goto_2

    .line 535
    .line 536
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 537
    .line 538
    check-cast v0, Ljava/lang/String;

    .line 539
    .line 540
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 541
    .line 542
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialogs:Landroid/util/SparseArray;

    .line 543
    .line 544
    if-eqz v1, :cond_d

    .line 545
    .line 546
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 547
    .line 548
    .line 549
    move-result-object v1

    .line 550
    check-cast v1, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    .line 551
    .line 552
    if-eqz v1, :cond_d

    .line 553
    .line 554
    if-eqz v0, :cond_c

    .line 555
    .line 556
    iget-object v2, v1, Lcom/android/server/wm/AppWarnings$BaseDialog;->mPackageName:Ljava/lang/String;

    .line 557
    .line 558
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 559
    .line 560
    .line 561
    move-result v2

    .line 562
    if-eqz v2, :cond_d

    .line 563
    .line 564
    :cond_c
    invoke-virtual {v1}, Lcom/android/server/wm/AppWarnings$BaseDialog;->dismiss()V

    .line 565
    .line 566
    .line 567
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialogs:Landroid/util/SparseArray;

    .line 568
    .line 569
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 570
    .line 571
    .line 572
    :cond_d
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedCompileSdkDialogs:Landroid/util/SparseArray;

    .line 573
    .line 574
    if-eqz v1, :cond_f

    .line 575
    .line 576
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    move-result-object v1

    .line 580
    check-cast v1, Lcom/android/server/wm/UnsupportedCompileSdkDialog;

    .line 581
    .line 582
    if-eqz v1, :cond_f

    .line 583
    .line 584
    if-eqz v0, :cond_e

    .line 585
    .line 586
    iget-object v2, v1, Lcom/android/server/wm/AppWarnings$BaseDialog;->mPackageName:Ljava/lang/String;

    .line 587
    .line 588
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 589
    .line 590
    .line 591
    move-result v2

    .line 592
    if-eqz v2, :cond_f

    .line 593
    .line 594
    :cond_e
    invoke-virtual {v1}, Lcom/android/server/wm/AppWarnings$BaseDialog;->dismiss()V

    .line 595
    .line 596
    .line 597
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedCompileSdkDialogs:Landroid/util/SparseArray;

    .line 598
    .line 599
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 600
    .line 601
    .line 602
    :cond_f
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedTargetSdkVersionDialogs:Landroid/util/SparseArray;

    .line 603
    .line 604
    if-eqz v1, :cond_11

    .line 605
    .line 606
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 607
    .line 608
    .line 609
    move-result-object v1

    .line 610
    check-cast v1, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;

    .line 611
    .line 612
    if-eqz v1, :cond_11

    .line 613
    .line 614
    if-eqz v0, :cond_10

    .line 615
    .line 616
    iget-object v2, v1, Lcom/android/server/wm/AppWarnings$BaseDialog;->mPackageName:Ljava/lang/String;

    .line 617
    .line 618
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 619
    .line 620
    .line 621
    move-result v2

    .line 622
    if-eqz v2, :cond_11

    .line 623
    .line 624
    :cond_10
    invoke-virtual {v1}, Lcom/android/server/wm/AppWarnings$BaseDialog;->dismiss()V

    .line 625
    .line 626
    .line 627
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedTargetSdkVersionDialogs:Landroid/util/SparseArray;

    .line 628
    .line 629
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 630
    .line 631
    .line 632
    :cond_11
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedAbiDialogs:Landroid/util/SparseArray;

    .line 633
    .line 634
    if-eqz v1, :cond_13

    .line 635
    .line 636
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 637
    .line 638
    .line 639
    move-result-object v1

    .line 640
    check-cast v1, Lcom/android/server/wm/DeprecatedAbiDialog;

    .line 641
    .line 642
    if-eqz v1, :cond_13

    .line 643
    .line 644
    if-eqz v0, :cond_12

    .line 645
    .line 646
    iget-object v2, v1, Lcom/android/server/wm/AppWarnings$BaseDialog;->mPackageName:Ljava/lang/String;

    .line 647
    .line 648
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 649
    .line 650
    .line 651
    move-result v2

    .line 652
    if-eqz v2, :cond_13

    .line 653
    .line 654
    :cond_12
    invoke-virtual {v1}, Lcom/android/server/wm/AppWarnings$BaseDialog;->dismiss()V

    .line 655
    .line 656
    .line 657
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedAbiDialogs:Landroid/util/SparseArray;

    .line 658
    .line 659
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 660
    .line 661
    .line 662
    :cond_13
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mPackageNightModeDialogs:Landroid/util/SparseArray;

    .line 663
    .line 664
    if-eqz v1, :cond_20

    .line 665
    .line 666
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 667
    .line 668
    .line 669
    move-result-object v1

    .line 670
    check-cast v1, Lcom/android/server/wm/PackageNightModeDialog;

    .line 671
    .line 672
    if-eqz v1, :cond_20

    .line 673
    .line 674
    if-eqz v0, :cond_14

    .line 675
    .line 676
    iget-object v2, v1, Lcom/android/server/wm/AppWarnings$BaseDialog;->mPackageName:Ljava/lang/String;

    .line 677
    .line 678
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 679
    .line 680
    .line 681
    move-result v0

    .line 682
    if-eqz v0, :cond_20

    .line 683
    .line 684
    :cond_14
    invoke-virtual {v1}, Lcom/android/server/wm/AppWarnings$BaseDialog;->dismiss()V

    .line 685
    .line 686
    .line 687
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mPackageNightModeDialogs:Landroid/util/SparseArray;

    .line 688
    .line 689
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 690
    .line 691
    .line 692
    goto/16 :goto_2

    .line 693
    .line 694
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 695
    .line 696
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 697
    .line 698
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 699
    .line 700
    .line 701
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    .line 702
    .line 703
    if-eqz v0, :cond_15

    .line 704
    .line 705
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->isSpeg(Lcom/android/server/wm/ActivityRecord;)Z

    .line 706
    .line 707
    .line 708
    move-result v0

    .line 709
    if-eqz v0, :cond_15

    .line 710
    .line 711
    goto/16 :goto_2

    .line 712
    .line 713
    :cond_15
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->getUserIdForActivity(Lcom/android/server/wm/ActivityRecord;)I

    .line 714
    .line 715
    .line 716
    move-result v0

    .line 717
    iget-object v2, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedCompileSdkDialogs:Landroid/util/SparseArray;

    .line 718
    .line 719
    if-eqz v2, :cond_16

    .line 720
    .line 721
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 722
    .line 723
    .line 724
    move-result-object v2

    .line 725
    check-cast v2, Lcom/android/server/wm/UnsupportedCompileSdkDialog;

    .line 726
    .line 727
    if-eqz v2, :cond_16

    .line 728
    .line 729
    invoke-virtual {v2}, Lcom/android/server/wm/AppWarnings$BaseDialog;->dismiss()V

    .line 730
    .line 731
    .line 732
    iget-object v2, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedCompileSdkDialogs:Landroid/util/SparseArray;

    .line 733
    .line 734
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 735
    .line 736
    .line 737
    :cond_16
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 738
    .line 739
    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/AppWarnings;->getPackageFlags(ILjava/lang/String;)I

    .line 740
    .line 741
    .line 742
    move-result v2

    .line 743
    const/4 v9, 0x2

    .line 744
    and-int/2addr v2, v9

    .line 745
    if-ne v2, v9, :cond_17

    .line 746
    .line 747
    goto/16 :goto_2

    .line 748
    .line 749
    :cond_17
    new-instance v2, Lcom/android/server/wm/UnsupportedCompileSdkDialog;

    .line 750
    .line 751
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->getUiContextForActivity(Lcom/android/server/wm/ActivityRecord;)Landroid/content/Context;

    .line 752
    .line 753
    .line 754
    move-result-object v9

    .line 755
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 756
    .line 757
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 758
    .line 759
    iget-object v10, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 760
    .line 761
    invoke-direct {v2, p0, v9, v10, v0}, Lcom/android/server/wm/AppWarnings$BaseDialog;-><init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;Ljava/lang/String;I)V

    .line 762
    .line 763
    .line 764
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 765
    .line 766
    .line 767
    move-result-object v10

    .line 768
    invoke-virtual {p1, v10, v8, v7}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    .line 769
    .line 770
    .line 771
    move-result-object v7

    .line 772
    const v8, 0x1040f82

    .line 773
    .line 774
    .line 775
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 776
    .line 777
    .line 778
    move-result-object v7

    .line 779
    invoke-virtual {v9, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 780
    .line 781
    .line 782
    move-result-object v7

    .line 783
    new-instance v8, Landroid/app/AlertDialog$Builder;

    .line 784
    .line 785
    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 786
    .line 787
    .line 788
    invoke-virtual {v8, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 789
    .line 790
    .line 791
    move-result-object v4

    .line 792
    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 793
    .line 794
    .line 795
    move-result-object v4

    .line 796
    const v5, 0x10901de

    .line 797
    .line 798
    .line 799
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    .line 800
    .line 801
    .line 802
    move-result-object v4

    .line 803
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 804
    .line 805
    invoke-static {v9, p1}, Lcom/android/server/utils/AppInstallerUtil;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 806
    .line 807
    .line 808
    move-result-object p1

    .line 809
    if-eqz p1, :cond_18

    .line 810
    .line 811
    new-instance v5, Lcom/android/server/wm/UnsupportedCompileSdkDialog$$ExternalSyntheticLambda0;

    .line 812
    .line 813
    invoke-direct {v5, v9, p1}, Lcom/android/server/wm/UnsupportedCompileSdkDialog$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 814
    .line 815
    .line 816
    const p1, 0x1040f81

    .line 817
    .line 818
    .line 819
    invoke-virtual {v4, p1, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 820
    .line 821
    .line 822
    :cond_18
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 823
    .line 824
    .line 825
    move-result-object p1

    .line 826
    iput-object p1, v2, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    .line 827
    .line 828
    invoke-virtual {p1}, Landroid/app/AlertDialog;->create()V

    .line 829
    .line 830
    .line 831
    iget-object p1, v2, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    .line 832
    .line 833
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 834
    .line 835
    .line 836
    move-result-object p1

    .line 837
    invoke-virtual {p1, v6}, Landroid/view/Window;->setType(I)V

    .line 838
    .line 839
    .line 840
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 841
    .line 842
    .line 843
    move-result-object p1

    .line 844
    const-string v4, "UnsupportedCompileSdkDialog"

    .line 845
    .line 846
    invoke-virtual {p1, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 847
    .line 848
    .line 849
    iget-object p1, v2, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    .line 850
    .line 851
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    .line 852
    .line 853
    .line 854
    move-result-object p1

    .line 855
    check-cast p1, Landroid/widget/CheckBox;

    .line 856
    .line 857
    invoke-virtual {p1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 858
    .line 859
    .line 860
    new-instance v1, Lcom/android/server/wm/UnsupportedCompileSdkDialog$$ExternalSyntheticLambda1;

    .line 861
    .line 862
    invoke-direct {v1, v2, p0}, Lcom/android/server/wm/UnsupportedCompileSdkDialog$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/UnsupportedCompileSdkDialog;Lcom/android/server/wm/AppWarnings;)V

    .line 863
    .line 864
    .line 865
    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 866
    .line 867
    .line 868
    invoke-virtual {v2}, Lcom/android/server/wm/AppWarnings$BaseDialog;->show()V

    .line 869
    .line 870
    .line 871
    iget-object p1, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedCompileSdkDialogs:Landroid/util/SparseArray;

    .line 872
    .line 873
    if-nez p1, :cond_19

    .line 874
    .line 875
    new-instance p1, Landroid/util/SparseArray;

    .line 876
    .line 877
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 878
    .line 879
    .line 880
    iput-object p1, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedCompileSdkDialogs:Landroid/util/SparseArray;

    .line 881
    .line 882
    :cond_19
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedCompileSdkDialogs:Landroid/util/SparseArray;

    .line 883
    .line 884
    invoke-virtual {p0, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 885
    .line 886
    .line 887
    goto/16 :goto_2

    .line 888
    .line 889
    :pswitch_5
    iget-object p1, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialogs:Landroid/util/SparseArray;

    .line 890
    .line 891
    if-nez p1, :cond_1a

    .line 892
    .line 893
    goto/16 :goto_2

    .line 894
    .line 895
    :cond_1a
    :goto_1
    iget-object p1, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialogs:Landroid/util/SparseArray;

    .line 896
    .line 897
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 898
    .line 899
    .line 900
    move-result p1

    .line 901
    if-ge v2, p1, :cond_1b

    .line 902
    .line 903
    iget-object p1, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialogs:Landroid/util/SparseArray;

    .line 904
    .line 905
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 906
    .line 907
    .line 908
    move-result-object p1

    .line 909
    check-cast p1, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    .line 910
    .line 911
    invoke-virtual {p1}, Lcom/android/server/wm/AppWarnings$BaseDialog;->dismiss()V

    .line 912
    .line 913
    .line 914
    add-int/lit8 v2, v2, 0x1

    .line 915
    .line 916
    goto :goto_1

    .line 917
    :cond_1b
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialogs:Landroid/util/SparseArray;

    .line 918
    .line 919
    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 920
    .line 921
    .line 922
    goto/16 :goto_2

    .line 923
    .line 924
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 925
    .line 926
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 927
    .line 928
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 929
    .line 930
    .line 931
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    .line 932
    .line 933
    if-eqz v0, :cond_1c

    .line 934
    .line 935
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->isSpeg(Lcom/android/server/wm/ActivityRecord;)Z

    .line 936
    .line 937
    .line 938
    move-result v0

    .line 939
    if-eqz v0, :cond_1c

    .line 940
    .line 941
    goto/16 :goto_2

    .line 942
    .line 943
    :cond_1c
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->getUserIdForActivity(Lcom/android/server/wm/ActivityRecord;)I

    .line 944
    .line 945
    .line 946
    move-result v0

    .line 947
    iget-object v2, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialogs:Landroid/util/SparseArray;

    .line 948
    .line 949
    if-eqz v2, :cond_1d

    .line 950
    .line 951
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 952
    .line 953
    .line 954
    move-result-object v2

    .line 955
    check-cast v2, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    .line 956
    .line 957
    if-eqz v2, :cond_1d

    .line 958
    .line 959
    invoke-virtual {v2}, Lcom/android/server/wm/AppWarnings$BaseDialog;->dismiss()V

    .line 960
    .line 961
    .line 962
    iget-object v2, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialogs:Landroid/util/SparseArray;

    .line 963
    .line 964
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 965
    .line 966
    .line 967
    :cond_1d
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 968
    .line 969
    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/AppWarnings;->getPackageFlags(ILjava/lang/String;)I

    .line 970
    .line 971
    .line 972
    move-result v2

    .line 973
    and-int/2addr v2, v3

    .line 974
    if-ne v2, v3, :cond_1e

    .line 975
    .line 976
    goto :goto_2

    .line 977
    :cond_1e
    new-instance v2, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    .line 978
    .line 979
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->getUiContextForActivity(Lcom/android/server/wm/ActivityRecord;)Landroid/content/Context;

    .line 980
    .line 981
    .line 982
    move-result-object v9

    .line 983
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 984
    .line 985
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 986
    .line 987
    iget-object v10, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 988
    .line 989
    invoke-direct {v2, p0, v9, v10, v0}, Lcom/android/server/wm/AppWarnings$BaseDialog;-><init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;Ljava/lang/String;I)V

    .line 990
    .line 991
    .line 992
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 993
    .line 994
    .line 995
    move-result-object v10

    .line 996
    invoke-virtual {p1, v10, v8, v7}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    .line 997
    .line 998
    .line 999
    move-result-object p1

    .line 1000
    const v7, 0x1040f84

    .line 1001
    .line 1002
    .line 1003
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 1004
    .line 1005
    .line 1006
    move-result-object p1

    .line 1007
    invoke-virtual {v9, v7, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1008
    .line 1009
    .line 1010
    move-result-object p1

    .line 1011
    new-instance v7, Landroid/app/AlertDialog$Builder;

    .line 1012
    .line 1013
    invoke-direct {v7, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1014
    .line 1015
    .line 1016
    invoke-virtual {v7, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v4

    .line 1020
    invoke-virtual {v4, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1021
    .line 1022
    .line 1023
    move-result-object p1

    .line 1024
    const v4, 0x10901df

    .line 1025
    .line 1026
    .line 1027
    invoke-virtual {p1, v4}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    .line 1028
    .line 1029
    .line 1030
    move-result-object p1

    .line 1031
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 1032
    .line 1033
    .line 1034
    move-result-object p1

    .line 1035
    iput-object p1, v2, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    .line 1036
    .line 1037
    invoke-virtual {p1}, Landroid/app/AlertDialog;->create()V

    .line 1038
    .line 1039
    .line 1040
    iget-object p1, v2, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    .line 1041
    .line 1042
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 1043
    .line 1044
    .line 1045
    move-result-object p1

    .line 1046
    invoke-virtual {p1, v6}, Landroid/view/Window;->setType(I)V

    .line 1047
    .line 1048
    .line 1049
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 1050
    .line 1051
    .line 1052
    move-result-object p1

    .line 1053
    const-string v4, "UnsupportedDisplaySizeDialog"

    .line 1054
    .line 1055
    invoke-virtual {p1, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1056
    .line 1057
    .line 1058
    iget-object p1, v2, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    .line 1059
    .line 1060
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    .line 1061
    .line 1062
    .line 1063
    move-result-object p1

    .line 1064
    check-cast p1, Landroid/widget/CheckBox;

    .line 1065
    .line 1066
    invoke-virtual {p1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1067
    .line 1068
    .line 1069
    new-instance v1, Lcom/android/server/wm/UnsupportedDisplaySizeDialog$$ExternalSyntheticLambda0;

    .line 1070
    .line 1071
    invoke-direct {v1, v2, p0}, Lcom/android/server/wm/UnsupportedDisplaySizeDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/UnsupportedDisplaySizeDialog;Lcom/android/server/wm/AppWarnings;)V

    .line 1072
    .line 1073
    .line 1074
    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1075
    .line 1076
    .line 1077
    invoke-virtual {v2}, Lcom/android/server/wm/AppWarnings$BaseDialog;->show()V

    .line 1078
    .line 1079
    .line 1080
    iget-object p1, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialogs:Landroid/util/SparseArray;

    .line 1081
    .line 1082
    if-nez p1, :cond_1f

    .line 1083
    .line 1084
    new-instance p1, Landroid/util/SparseArray;

    .line 1085
    .line 1086
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 1087
    .line 1088
    .line 1089
    iput-object p1, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialogs:Landroid/util/SparseArray;

    .line 1090
    .line 1091
    :cond_1f
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialogs:Landroid/util/SparseArray;

    .line 1092
    .line 1093
    invoke-virtual {p0, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1094
    .line 1095
    .line 1096
    :cond_20
    :goto_2
    return-void

    .line 1097
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
