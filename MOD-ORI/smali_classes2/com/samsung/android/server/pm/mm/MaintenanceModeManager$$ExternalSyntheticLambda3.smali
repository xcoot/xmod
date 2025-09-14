.class public final synthetic Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$$ExternalSyntheticLambda3;
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
    iput p1, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

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
    .locals 10

    .line 1
    iget v0, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Ljava/lang/String;

    .line 9
    .line 10
    :try_start_0
    const-string v0, "MaintenanceMode"

    .line 11
    .line 12
    invoke-static {p0, v0}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    :catch_0
    return-void

    .line 16
    :pswitch_0
    check-cast p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const-string v0, "MaintenanceMode"

    .line 22
    .line 23
    :try_start_1
    new-instance v1, Landroid/content/ComponentName;

    .line 24
    .line 25
    const-string v2, "android"

    .line 26
    .line 27
    const-class v3, Lcom/samsung/android/core/pm/mm/MaintenanceModeNotificationService;

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    new-instance v2, Landroid/content/Intent;

    .line 37
    .line 38
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    new-instance v3, Landroid/os/UserHandle;

    .line 47
    .line 48
    const/16 v4, 0x4d

    .line 49
    .line 50
    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_1
    move-exception v1

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v3, "Failed to register notification: "

    .line 61
    .line 62
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mContext:Landroid/content/Context;

    .line 80
    .line 81
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    new-instance v2, Landroid/widget/TextView;

    .line 86
    .line 87
    iget-object v3, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mContext:Landroid/content/Context;

    .line 88
    .line 89
    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 90
    .line 91
    .line 92
    iput-object v2, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mOverlayView:Landroid/widget/TextView;

    .line 93
    .line 94
    const v2, 0x10502a1

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    iget-object v3, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mOverlayView:Landroid/widget/TextView;

    .line 102
    .line 103
    const/16 v4, 0x11

    .line 104
    .line 105
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 106
    .line 107
    .line 108
    iget-object v3, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mOverlayView:Landroid/widget/TextView;

    .line 109
    .line 110
    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 111
    .line 112
    .line 113
    iget-object v2, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mOverlayView:Landroid/widget/TextView;

    .line 114
    .line 115
    iget-object v3, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mContext:Landroid/content/Context;

    .line 116
    .line 117
    const v4, 0x10602b1

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 125
    .line 126
    .line 127
    iget-object v2, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mOverlayView:Landroid/widget/TextView;

    .line 128
    .line 129
    const v3, 0x10303f4

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 133
    .line 134
    .line 135
    iget-object v2, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mOverlayView:Landroid/widget/TextView;

    .line 136
    .line 137
    iget-object v3, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mContext:Landroid/content/Context;

    .line 138
    .line 139
    const v4, 0x10602b2

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    .line 148
    .line 149
    iget-object v2, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mOverlayView:Landroid/widget/TextView;

    .line 150
    .line 151
    const v3, 0x10502a2

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    int-to-float v1, v1

    .line 159
    const/4 v3, 0x0

    .line 160
    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 161
    .line 162
    .line 163
    iget-object v1, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mOverlayView:Landroid/widget/TextView;

    .line 164
    .line 165
    const v2, 0x104079e

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 169
    .line 170
    .line 171
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    .line 172
    .line 173
    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 174
    .line 175
    .line 176
    iput-object v1, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mOverlayViewParams:Landroid/view/WindowManager$LayoutParams;

    .line 177
    .line 178
    const/16 v2, 0x7f6

    .line 179
    .line 180
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 181
    .line 182
    const/4 v2, -0x2

    .line 183
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 184
    .line 185
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 186
    .line 187
    const v2, 0x800053

    .line 188
    .line 189
    .line 190
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 191
    .line 192
    iget-object v2, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mOverlayView:Landroid/widget/TextView;

    .line 193
    .line 194
    invoke-virtual {v2}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 203
    .line 204
    iget-object v1, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mOverlayViewParams:Landroid/view/WindowManager$LayoutParams;

    .line 205
    .line 206
    const/16 v2, 0x18

    .line 207
    .line 208
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 209
    .line 210
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 211
    .line 212
    const v3, 0x20000010

    .line 213
    .line 214
    .line 215
    or-int/2addr v2, v3

    .line 216
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 217
    .line 218
    iget-object v1, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mContext:Landroid/content/Context;

    .line 219
    .line 220
    const-string/jumbo v2, "window"

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    check-cast v1, Landroid/view/WindowManager;

    .line 228
    .line 229
    iput-object v1, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mWm:Landroid/view/WindowManager;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 230
    .line 231
    goto :goto_1

    .line 232
    :catch_2
    move-exception v1

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    const-string v3, "Failed to make overlay: "

    .line 236
    .line 237
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .line 253
    .line 254
    :goto_1
    const/4 v1, 0x1

    .line 255
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->setOverlayVisibility(Z)V

    .line 256
    .line 257
    .line 258
    :try_start_3
    new-instance v4, Landroid/content/IntentFilter;

    .line 259
    .line 260
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 261
    .line 262
    .line 263
    const-string v2, "com.samsung.android.intent.action.HIDE_MAINTENANCE_MODE_MARK"

    .line 264
    .line 265
    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    const-string v2, "com.samsung.android.intent.action.SHOW_MAINTENANCE_MODE_MARK"

    .line 269
    .line 270
    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    iget-object v2, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mContext:Landroid/content/Context;

    .line 274
    .line 275
    iget-object v3, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mOverlayReceiver:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$1;

    .line 276
    .line 277
    iget-object v6, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mHandler:Landroid/os/Handler;

    .line 278
    .line 279
    const/4 v7, 0x2

    .line 280
    const/4 v5, 0x0

    .line 281
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 282
    .line 283
    .line 284
    goto :goto_2

    .line 285
    :catch_3
    move-exception v2

    .line 286
    new-instance v3, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    const-string v4, "Failed to register overlay receiver: "

    .line 289
    .line 290
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .line 306
    .line 307
    :goto_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->changeUsbDebuggingOption(Z)V

    .line 308
    .line 309
    .line 310
    return-void

    .line 311
    :pswitch_1
    check-cast p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

    .line 312
    .line 313
    iget-object v0, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mUms:Lcom/android/server/pm/UserManagerService;

    .line 314
    .line 315
    const-string/jumbo v1, "no_sms"

    .line 316
    .line 317
    .line 318
    const/4 v2, 0x1

    .line 319
    const/16 v3, 0x4d

    .line 320
    .line 321
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 322
    .line 323
    .line 324
    const-string/jumbo v1, "no_outgoing_calls"

    .line 325
    .line 326
    .line 327
    const/4 v4, 0x0

    .line 328
    invoke-virtual {v0, v1, v4, v3}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 329
    .line 330
    .line 331
    iget-object v0, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mContext:Landroid/content/Context;

    .line 332
    .line 333
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    const-string/jumbo v1, "user_setup_complete"

    .line 338
    .line 339
    .line 340
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 341
    .line 342
    .line 343
    iget-object p0, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mContext:Landroid/content/Context;

    .line 344
    .line 345
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 346
    .line 347
    .line 348
    move-result-object p0

    .line 349
    const-string/jumbo v0, "screen_off_timeout"

    .line 350
    .line 351
    .line 352
    const-wide/32 v1, 0x927c0

    .line 353
    .line 354
    .line 355
    invoke-static {p0, v0, v1, v2, v3}, Landroid/provider/Settings$System;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    .line 356
    .line 357
    .line 358
    :try_start_4
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 359
    .line 360
    .line 361
    move-result-object p0

    .line 362
    const-string v5, "com.sec.android.app.SecSetupWizard"

    .line 363
    .line 364
    const-string v9, "MaintenanceMode"

    .line 365
    .line 366
    const/4 v6, 0x2

    .line 367
    const/4 v7, 0x0

    .line 368
    const/16 v8, 0x4d

    .line 369
    .line 370
    move-object v4, p0

    .line 371
    invoke-interface/range {v4 .. v9}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    .line 372
    .line 373
    .line 374
    const-string v5, "com.google.android.setupwizard"

    .line 375
    .line 376
    const-string v9, "MaintenanceMode"

    .line 377
    .line 378
    const/4 v6, 0x2

    .line 379
    const/4 v7, 0x0

    .line 380
    const/16 v8, 0x4d

    .line 381
    .line 382
    move-object v4, p0

    .line 383
    invoke-interface/range {v4 .. v9}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 384
    .line 385
    .line 386
    goto :goto_3

    .line 387
    :catch_4
    move-exception p0

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    .line 389
    .line 390
    const-string v1, "Failed to disable SUW: "

    .line 391
    .line 392
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object p0

    .line 399
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object p0

    .line 406
    const-string v0, "MaintenanceMode"

    .line 407
    .line 408
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    .line 410
    .line 411
    :goto_3
    return-void

    .line 412
    :pswitch_2
    check-cast p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

    .line 413
    .line 414
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 415
    .line 416
    .line 417
    new-instance v0, Ljava/util/ArrayList;

    .line 418
    .line 419
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 420
    .line 421
    .line 422
    iget-object v1, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mLifecycleListeners:Ljava/util/ArrayList;

    .line 423
    .line 424
    monitor-enter v1

    .line 425
    :try_start_5
    iget-object v2, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mLifecycleListeners:Ljava/util/ArrayList;

    .line 426
    .line 427
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 428
    .line 429
    .line 430
    move-result-object v2

    .line 431
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 432
    .line 433
    .line 434
    move-result v3

    .line 435
    if-eqz v3, :cond_0

    .line 436
    .line 437
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v3

    .line 441
    check-cast v3, Lcom/android/server/locksettings/LockSettingsService$1;

    .line 442
    .line 443
    new-instance v4, Ljava/util/concurrent/CompletableFuture;

    .line 444
    .line 445
    invoke-direct {v4}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 449
    .line 450
    .line 451
    :try_start_6
    new-instance v5, Ljava/lang/StringBuilder;

    .line 452
    .line 453
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 454
    .line 455
    .line 456
    const-string v6, "Start to call onPostprocessing: "

    .line 457
    .line 458
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v5

    .line 468
    invoke-virtual {p0, v5}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->logDebugInfoAsync(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    new-instance v5, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$$ExternalSyntheticLambda10;

    .line 472
    .line 473
    invoke-direct {v5, p0, v3, v4}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$$ExternalSyntheticLambda10;-><init>(Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;Lcom/android/server/locksettings/LockSettingsService$1;Ljava/util/concurrent/CompletableFuture;)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 477
    .line 478
    .line 479
    const-string v6, "LockSettingsService"

    .line 480
    .line 481
    const-string/jumbo v7, "removeUser for MaintenanceMode"

    .line 482
    .line 483
    .line 484
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    .line 486
    .line 487
    iget-object v6, v3, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 488
    .line 489
    iput-object v5, v6, Lcom/android/server/locksettings/LockSettingsService;->mMaintenanceModeCallback:Ljava/util/function/Consumer;

    .line 490
    .line 491
    const/16 v5, 0x4d

    .line 492
    .line 493
    invoke-virtual {v6, v5}, Lcom/android/server/locksettings/LockSettingsService;->removeUserState(I)V

    .line 494
    .line 495
    .line 496
    new-instance v5, Ljava/lang/StringBuilder;

    .line 497
    .line 498
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 499
    .line 500
    .line 501
    const-string v6, "Finish calling onPostprocessing: "

    .line 502
    .line 503
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v5

    .line 513
    invoke-virtual {p0, v5}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->logDebugInfoAsync(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 514
    .line 515
    .line 516
    goto :goto_4

    .line 517
    :catchall_0
    move-exception p0

    .line 518
    goto :goto_6

    .line 519
    :catch_5
    move-exception v5

    .line 520
    :try_start_7
    new-instance v6, Ljava/lang/StringBuilder;

    .line 521
    .line 522
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 523
    .line 524
    .line 525
    const-string v7, "Got exception: "

    .line 526
    .line 527
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    const-string v3, " - "

    .line 534
    .line 535
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v3

    .line 542
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v3

    .line 549
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->logDebugInfoAsync(Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 553
    .line 554
    invoke-virtual {v4, v3}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 555
    .line 556
    .line 557
    goto :goto_4

    .line 558
    :cond_0
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 559
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 560
    .line 561
    .line 562
    move-result p0

    .line 563
    if-eqz p0, :cond_1

    .line 564
    .line 565
    goto :goto_5

    .line 566
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 567
    .line 568
    .line 569
    move-result p0

    .line 570
    new-array p0, p0, [Ljava/util/concurrent/CompletableFuture;

    .line 571
    .line 572
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 573
    .line 574
    .line 575
    move-result-object p0

    .line 576
    check-cast p0, [Ljava/util/concurrent/CompletableFuture;

    .line 577
    .line 578
    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->allOf([Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;

    .line 579
    .line 580
    .line 581
    move-result-object p0

    .line 582
    :try_start_8
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 583
    .line 584
    .line 585
    :catch_6
    :goto_5
    return-void

    .line 586
    :goto_6
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 587
    throw p0

    .line 588
    :pswitch_3
    check-cast p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

    .line 589
    .line 590
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 591
    .line 592
    .line 593
    const-string/jumbo v0, "persist.sys.is_in_maintenance_mode"

    .line 594
    .line 595
    .line 596
    const/4 v1, 0x0

    .line 597
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v2

    .line 601
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->changeUsbDebuggingOption(Z)V

    .line 605
    .line 606
    .line 607
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 608
    .line 609
    .line 610
    move-result-wide v2

    .line 611
    const-wide/16 v4, 0x3a98

    .line 612
    .line 613
    add-long/2addr v2, v4

    .line 614
    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->checkPendingAdbProcessing(IJ)V

    .line 615
    .line 616
    .line 617
    return-void

    .line 618
    nop

    .line 619
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
