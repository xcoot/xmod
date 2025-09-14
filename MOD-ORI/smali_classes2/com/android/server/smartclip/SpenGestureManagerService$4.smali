.class public final Lcom/android/server/smartclip/SpenGestureManagerService$4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/smartclip/SpenGestureManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$4;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$4;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 8
    .line 9
    const-string v2, "lock_screen_quick_note"

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, -0x2

    .line 13
    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v5, 0x1

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    move v2, v5

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v2, v3

    .line 23
    :goto_0
    iput-boolean v2, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsEnableLockScreenQuickNote:Z

    .line 24
    .line 25
    const-string/jumbo v1, "spen_double_tap_launch"

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1, v5, v4}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const-string v1, "SpenGestureManagerService"

    .line 33
    .line 34
    if-eqz v0, :cond_14

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$4;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    const-string v2, "keyguard"

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Landroid/app/KeyguardManager;

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    const-string v0, "SpenGestureManagerService :isKeyguardLocked : true"

    .line 60
    .line 61
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$4;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 65
    .line 66
    iget-boolean v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsEnableLockScreenQuickNote:Z

    .line 67
    .line 68
    if-nez v0, :cond_1

    .line 69
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v2, "Double tap is disable : "

    .line 73
    .line 74
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$4;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 78
    .line 79
    iget-boolean p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsEnableLockScreenQuickNote:Z

    .line 80
    .line 81
    invoke-static {v1, v0, p0}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$4;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 91
    .line 92
    const-string v2, "activity"

    .line 93
    .line 94
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Landroid/app/ActivityManager;

    .line 99
    .line 100
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    const/4 v2, 0x2

    .line 105
    if-ne v0, v2, :cond_2

    .line 106
    .line 107
    move v0, v5

    .line 108
    goto :goto_1

    .line 109
    :cond_2
    move v0, v3

    .line 110
    :goto_1
    if-eqz v0, :cond_3

    .line 111
    .line 112
    const-string v2, "isScreenPinningEnabled : Screen pinning mode enabled"

    .line 113
    .line 114
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    :cond_3
    if-ne v0, v5, :cond_4

    .line 118
    .line 119
    const-string p0, "Double tap is disabled : Screen pinning mode enabled"

    .line 120
    .line 121
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_4
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$4;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->getTopMostPackage()Landroid/content/ComponentName;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    const-string v2, "isSystemKeyEventRequested : 187"

    .line 135
    .line 136
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    if-nez v0, :cond_5

    .line 140
    .line 141
    const-string v0, "isSystemKeyEventRequested : component name is null"

    .line 142
    .line 143
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    :goto_2
    move v0, v3

    .line 147
    goto :goto_3

    .line 148
    :cond_5
    const-string/jumbo v2, "window"

    .line 149
    .line 150
    .line 151
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    if-eqz v2, :cond_6

    .line 160
    .line 161
    const/16 v6, 0xbb

    .line 162
    .line 163
    :try_start_0
    invoke-interface {v2, v6, v0}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-eqz v0, :cond_7

    .line 168
    .line 169
    const-string v2, "isSystemKeyEventRequested : system key is requested"

    .line 170
    .line 171
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .line 173
    .line 174
    goto :goto_3

    .line 175
    :catch_0
    move-exception v0

    .line 176
    const-string v2, "isSystemKeyEventRequested : e="

    .line 177
    .line 178
    invoke-static {v0, v2, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_6
    const-string v0, "isSystemKeyEventRequested : wm is null"

    .line 183
    .line 184
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_7
    :goto_3
    if-eqz v0, :cond_8

    .line 189
    .line 190
    sget-object p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 191
    .line 192
    const-string p0, "Double tap is disabled : App switching is blocked"

    .line 193
    .line 194
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    return-void

    .line 198
    :cond_8
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$4;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 199
    .line 200
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->getTopMostPackage()Landroid/content/ComponentName;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    new-instance v2, Landroid/content/Intent;

    .line 208
    .line 209
    const-string v6, "com.samsung.android.sdk.spen.BLOCK_DOUBLE_TAP_ACTION"

    .line 210
    .line 211
    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 215
    .line 216
    .line 217
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 218
    .line 219
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    const/16 v7, 0x80

    .line 224
    .line 225
    invoke-virtual {v0, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    if-eqz v2, :cond_a

    .line 238
    .line 239
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 244
    .line 245
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 246
    .line 247
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 248
    .line 249
    if-eqz v2, :cond_9

    .line 250
    .line 251
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    if-eqz v2, :cond_9

    .line 256
    .line 257
    goto :goto_4

    .line 258
    :cond_a
    move v5, v3

    .line 259
    :goto_4
    if-eqz v5, :cond_b

    .line 260
    .line 261
    sget-object p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 262
    .line 263
    const-string p0, "Double tap is disabled by MetaData : This is a double-tap blocked app."

    .line 264
    .line 265
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    .line 267
    .line 268
    return-void

    .line 269
    :cond_b
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 270
    .line 271
    const-string v0, "Double tapped!"

    .line 272
    .line 273
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .line 275
    .line 276
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$4;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 277
    .line 278
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mThemeManager:Lcom/android/server/smartclip/SpenThemeManager;

    .line 279
    .line 280
    const-string/jumbo v2, "persona"

    .line 281
    .line 282
    .line 283
    if-eqz v0, :cond_f

    .line 284
    .line 285
    iget-object v5, v0, Lcom/android/server/smartclip/SpenThemeManager;->mContext:Landroid/content/Context;

    .line 286
    .line 287
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 288
    .line 289
    .line 290
    move-result-object v5

    .line 291
    const-string/jumbo v6, "pen_custom_double_tap_action_enabled"

    .line 292
    .line 293
    .line 294
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 295
    .line 296
    .line 297
    move-result v3

    .line 298
    iget-object v0, v0, Lcom/android/server/smartclip/SpenThemeManager;->mContext:Landroid/content/Context;

    .line 299
    .line 300
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    const-string/jumbo v5, "pen_custom_double_tap_action_shortcut"

    .line 305
    .line 306
    .line 307
    invoke-static {v0, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    const-string v5, "SpenThemeManager"

    .line 312
    .line 313
    if-nez v3, :cond_c

    .line 314
    .line 315
    const-string v0, "Cannot launch custom double tab action. It is disabled."

    .line 316
    .line 317
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    .line 319
    .line 320
    goto :goto_6

    .line 321
    :cond_c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 322
    .line 323
    .line 324
    move-result v0

    .line 325
    if-eqz v0, :cond_d

    .line 326
    .line 327
    const-string v0, "Cannot launch custom double tab action. Shortcut info is empty."

    .line 328
    .line 329
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    .line 331
    .line 332
    goto :goto_6

    .line 333
    :cond_d
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mThemeManager:Lcom/android/server/smartclip/SpenThemeManager;

    .line 334
    .line 335
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 336
    .line 337
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    .line 342
    .line 343
    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedKnoxId()I

    .line 344
    .line 345
    .line 346
    move-result v1

    .line 347
    if-nez v1, :cond_e

    .line 348
    .line 349
    goto :goto_5

    .line 350
    :cond_e
    move v4, v1

    .line 351
    :goto_5
    new-instance v1, Landroid/os/UserHandle;

    .line 352
    .line 353
    invoke-direct {v1, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 354
    .line 355
    .line 356
    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mLastDoubleTapPosition:Landroid/graphics/Point;

    .line 357
    .line 358
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 359
    .line 360
    .line 361
    const-string v3, "Launch custom double tab action."

    .line 362
    .line 363
    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    .line 365
    .line 366
    new-instance v3, Landroid/content/Intent;

    .line 367
    .line 368
    const-string v4, "com.samsung.android.service.aircommand.ACTION_CUSTOM_DOUBLE_TAP"

    .line 369
    .line 370
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    const-string v4, "com.samsung.android.service.aircommand"

    .line 374
    .line 375
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    .line 377
    .line 378
    iget v4, v2, Landroid/graphics/Point;->x:I

    .line 379
    .line 380
    const-string/jumbo v5, "tabX"

    .line 381
    .line 382
    .line 383
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 384
    .line 385
    .line 386
    const-string/jumbo v4, "tabY"

    .line 387
    .line 388
    .line 389
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 390
    .line 391
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 392
    .line 393
    .line 394
    iget-object v0, v0, Lcom/android/server/smartclip/SpenThemeManager;->mContext:Landroid/content/Context;

    .line 395
    .line 396
    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 397
    .line 398
    .line 399
    goto/16 :goto_8

    .line 400
    .line 401
    :cond_f
    :goto_6
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mLastDoubleTapPosition:Landroid/graphics/Point;

    .line 402
    .line 403
    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 404
    .line 405
    invoke-virtual {v3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v2

    .line 409
    check-cast v2, Lcom/samsung/android/knox/SemPersonaManager;

    .line 410
    .line 411
    invoke-virtual {v2}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedKnoxId()I

    .line 412
    .line 413
    .line 414
    move-result v2

    .line 415
    if-nez v2, :cond_10

    .line 416
    .line 417
    goto :goto_7

    .line 418
    :cond_10
    move v4, v2

    .line 419
    :goto_7
    new-instance v2, Landroid/os/UserHandle;

    .line 420
    .line 421
    invoke-direct {v2, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 422
    .line 423
    .line 424
    iget v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I

    .line 425
    .line 426
    const/16 v4, 0x14

    .line 427
    .line 428
    if-lt v3, v4, :cond_12

    .line 429
    .line 430
    new-instance v3, Landroid/content/Intent;

    .line 431
    .line 432
    const-string v4, "com.samsung.action.POPUP_NOTE_DOUBLETAB"

    .line 433
    .line 434
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    const-string v4, "com.samsung.android.app.notes"

    .line 438
    .line 439
    const-string v5, "com.samsung.android.app.notes.popupnote.PopupNoteService"

    .line 440
    .line 441
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    .line 443
    .line 444
    if-eqz v0, :cond_11

    .line 445
    .line 446
    const-string/jumbo v4, "tapX"

    .line 447
    .line 448
    .line 449
    iget v5, v0, Landroid/graphics/Point;->x:I

    .line 450
    .line 451
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 452
    .line 453
    .line 454
    const-string/jumbo v4, "tapY"

    .line 455
    .line 456
    .line 457
    iget v5, v0, Landroid/graphics/Point;->y:I

    .line 458
    .line 459
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 460
    .line 461
    .line 462
    :cond_11
    sget-object v4, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 463
    .line 464
    invoke-virtual {v4, v3, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 465
    .line 466
    .line 467
    new-instance v2, Ljava/lang/StringBuilder;

    .line 468
    .line 469
    const-string v3, "launchActionMemo : Trying to launch Samsung notes action memo. tapPos="

    .line 470
    .line 471
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    .line 483
    .line 484
    goto :goto_8

    .line 485
    :cond_12
    new-instance v0, Landroid/content/Intent;

    .line 486
    .line 487
    const-string v3, "com.samsung.action.MINI_MODE_SERVICE"

    .line 488
    .line 489
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    const-string v4, "com.samsung.android.snote"

    .line 493
    .line 494
    const-string v5, "com.samsung.android.snote.control.ui.quickmemo.service.QuickMemo_Service"

    .line 495
    .line 496
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 497
    .line 498
    .line 499
    const-string v4, "launchActionMemo : Trying to launch Snote aciton memo.."

    .line 500
    .line 501
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    .line 503
    .line 504
    sget-object v4, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 505
    .line 506
    invoke-virtual {v4, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    if-nez v0, :cond_13

    .line 511
    .line 512
    const-string v0, "launchActionMemo : Snote action memo launch failed. Trying to launch diotek PenMemo..."

    .line 513
    .line 514
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    .line 516
    .line 517
    new-instance v0, Landroid/content/Intent;

    .line 518
    .line 519
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    const-string v3, "com.diotek.mini_penmemo"

    .line 523
    .line 524
    const-string v4, "com.diotek.mini_penmemo.Mini_PenMemo_Service"

    .line 525
    .line 526
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 527
    .line 528
    .line 529
    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 530
    .line 531
    invoke-virtual {v3, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    if-nez v0, :cond_13

    .line 536
    .line 537
    const-string v0, "launchActionMemo : Diotek PenMemo launch failed. Sending legacy quick memo broadcasting"

    .line 538
    .line 539
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    .line 541
    .line 542
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 543
    .line 544
    new-instance v1, Landroid/content/Intent;

    .line 545
    .line 546
    const-string v3, "android.intent.action.QUICKMEMO_LAUNCH"

    .line 547
    .line 548
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 552
    .line 553
    .line 554
    :cond_13
    :goto_8
    const/4 v0, 0x0

    .line 555
    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mLastDoubleTapPosition:Landroid/graphics/Point;

    .line 556
    .line 557
    return-void

    .line 558
    :cond_14
    const-string p0, "Double tap is disable : Spen double tap launch disabled"

    .line 559
    .line 560
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    .line 562
    .line 563
    return-void
.end method
