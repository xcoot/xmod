.class public final synthetic Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/input/InputSettingsObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/InputSettingsObserver;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/InputSettingsObserver;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/InputSettingsObserver;

    .line 5
    check-cast p1, Ljava/lang/String;

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 10
    iget-object p1, p0, Lcom/android/server/input/InputSettingsObserver;->mService:Lcom/android/server/input/InputManagerService;

    .line 12
    const-string/jumbo v0, "pointer_location"

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/server/input/InputSettingsObserver;->getBoolean(Ljava/lang/String;)Z

    .line 18
    move-result p0

    .line 19
    invoke-virtual {p1, p0}, Lcom/android/server/input/InputManagerService;->updatePointerLocationEnabled(Z)V

    .line 22
    return-void

    .line 23
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 25
    const-string/jumbo v0, "show_touches"

    .line 28
    invoke-virtual {p0, v0}, Lcom/android/server/input/InputSettingsObserver;->getBoolean(Ljava/lang/String;)Z

    .line 31
    move-result p0

    .line 32
    invoke-interface {p1, p0}, Lcom/android/server/input/NativeInputManagerService;->setShowTouches(Z)V

    .line 35
    return-void

    .line 36
    :pswitch_1
    iget-object p1, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 38
    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 40
    invoke-static {p0}, Landroid/hardware/input/InputSettings;->useTouchpadRightClickZone(Landroid/content/Context;)Z

    .line 43
    move-result p0

    .line 44
    invoke-interface {p1, p0}, Lcom/android/server/input/NativeInputManagerService;->setTouchpadRightClickZoneEnabled(Z)V

    .line 47
    return-void

    .line 48
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 50
    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 52
    invoke-static {p0}, Landroid/hardware/input/InputSettings;->useTouchpadTapDragging(Landroid/content/Context;)Z

    .line 55
    move-result p0

    .line 56
    invoke-interface {p1, p0}, Lcom/android/server/input/NativeInputManagerService;->setTouchpadTapDraggingEnabled(Z)V

    .line 59
    return-void

    .line 60
    :pswitch_3
    iget-object p1, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 62
    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 64
    invoke-static {p0}, Landroid/hardware/input/InputSettings;->useTouchpadTapToClick(Landroid/content/Context;)Z

    .line 67
    move-result p0

    .line 68
    invoke-interface {p1, p0}, Lcom/android/server/input/NativeInputManagerService;->setTouchpadTapToClickEnabled(Z)V

    .line 71
    return-void

    .line 72
    :pswitch_4
    iget-object p1, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 74
    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 76
    invoke-static {p0}, Landroid/hardware/input/InputSettings;->useTouchpadNaturalScrolling(Landroid/content/Context;)Z

    .line 79
    move-result p0

    .line 80
    invoke-interface {p1, p0}, Lcom/android/server/input/NativeInputManagerService;->setTouchpadNaturalScrollingEnabled(Z)V

    .line 83
    return-void

    .line 84
    :pswitch_5
    iget-object p1, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 86
    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 88
    invoke-static {p0}, Landroid/hardware/input/InputSettings;->getTouchpadPointerSpeed(Landroid/content/Context;)I

    .line 91
    move-result p0

    .line 92
    const/4 v0, -0x7

    .line 93
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    .line 96
    move-result p0

    .line 97
    const/4 v0, 0x7

    .line 98
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    .line 101
    move-result p0

    .line 102
    invoke-interface {p1, p0}, Lcom/android/server/input/NativeInputManagerService;->setTouchpadPointerSpeed(I)V

    .line 105
    return-void

    .line 106
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 108
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 111
    move-result-object v0

    .line 112
    const-string/jumbo v1, "long_press_timeout"

    .line 115
    const/16 v2, 0x190

    .line 117
    const/4 v3, -0x2

    .line 118
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 121
    move-result v0

    .line 122
    const-string/jumbo v1, "input_native_boot"

    .line 125
    const-string/jumbo v3, "deep_press_enabled"

    .line 128
    const/4 v4, 0x1

    .line 129
    invoke-static {v1, v3, v4}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 132
    move-result v1

    .line 133
    if-eqz v1, :cond_0

    .line 135
    if-gt v0, v2, :cond_0

    .line 137
    goto :goto_0

    .line 138
    :cond_0
    const/4 v4, 0x0

    .line 139
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 141
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    if-eqz v4, :cond_1

    .line 146
    const-string v3, "Enabling"

    .line 148
    goto :goto_1

    .line 149
    :cond_1
    const-string v3, "Disabling"

    .line 151
    :goto_1
    const-string v5, " motion classifier because "

    .line 153
    const-string v6, ": feature "

    .line 155
    invoke-static {v2, v3, v5, p1, v6}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    if-eqz v1, :cond_2

    .line 160
    const-string/jumbo p1, "enabled"

    .line 163
    goto :goto_2

    .line 164
    :cond_2
    const-string/jumbo p1, "disabled"

    .line 167
    :goto_2
    const-string v1, ", long press timeout = "

    .line 169
    const-string v3, " ms"

    .line 171
    invoke-static {v0, p1, v1, v3, v2}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 174
    move-result-object p1

    .line 175
    const-string v0, "InputManager"

    .line 177
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 182
    invoke-interface {p0, v4}, Lcom/android/server/input/NativeInputManagerService;->setMotionClassifierEnabled(Z)V

    .line 185
    return-void

    .line 186
    :pswitch_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    invoke-static {}, Landroid/view/flags/Flags;->enableVectorCursorA11ySettings()Z

    .line 192
    move-result p1

    .line 193
    if-nez p1, :cond_3

    .line 195
    goto :goto_3

    .line 196
    :cond_3
    iget-object p1, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 198
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 201
    move-result-object p1

    .line 202
    const/high16 v0, 0x3f800000    # 1.0f

    .line 204
    const/4 v1, -0x2

    .line 205
    const-string/jumbo v2, "pointer_scale"

    .line 208
    invoke-static {p1, v2, v0, v1}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    .line 211
    move-result p1

    .line 212
    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mService:Lcom/android/server/input/InputManagerService;

    .line 214
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->setPointerScale(F)V

    .line 217
    :goto_3
    return-void

    .line 218
    :pswitch_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    invoke-static {}, Landroid/view/flags/Flags;->enableVectorCursorA11ySettings()Z

    .line 224
    move-result p1

    .line 225
    if-nez p1, :cond_4

    .line 227
    goto :goto_4

    .line 228
    :cond_4
    iget-object p1, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 230
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 233
    move-result-object p1

    .line 234
    const/4 v0, 0x0

    .line 235
    const/4 v1, -0x2

    .line 236
    const-string/jumbo v2, "pointer_fill_style"

    .line 239
    invoke-static {p1, v2, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 242
    move-result p1

    .line 243
    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mService:Lcom/android/server/input/InputManagerService;

    .line 245
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->setPointerFillStyle(I)V

    .line 248
    :goto_4
    return-void

    .line 249
    :pswitch_9
    iget-object p1, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 251
    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 253
    const/4 v0, 0x1

    .line 254
    invoke-static {p0, v0}, Landroid/hardware/input/InputSettings;->isStylusPointerIconEnabled(Landroid/content/Context;Z)Z

    .line 257
    move-result p0

    .line 258
    invoke-interface {p1, p0}, Lcom/android/server/input/NativeInputManagerService;->setStylusPointerIconEnabled(Z)V

    .line 261
    return-void

    .line 262
    :pswitch_a
    iget-object p1, p0, Lcom/android/server/input/InputSettingsObserver;->mService:Lcom/android/server/input/InputManagerService;

    .line 264
    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 266
    invoke-static {p0}, Landroid/hardware/input/InputSettings;->isAccessibilityStickyKeysEnabled(Landroid/content/Context;)Z

    .line 269
    move-result p0

    .line 270
    invoke-virtual {p1, p0}, Lcom/android/server/input/InputManagerService;->setAccessibilityStickyKeysEnabled(Z)V

    .line 273
    return-void

    .line 274
    :pswitch_b
    iget-object p1, p0, Lcom/android/server/input/InputSettingsObserver;->mService:Lcom/android/server/input/InputManagerService;

    .line 276
    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 278
    invoke-static {p0}, Landroid/hardware/input/InputSettings;->getAccessibilitySlowKeysThreshold(Landroid/content/Context;)I

    .line 281
    move-result p0

    .line 282
    invoke-virtual {p1, p0}, Lcom/android/server/input/InputManagerService;->setAccessibilitySlowKeysThreshold(I)V

    .line 285
    return-void

    .line 286
    :pswitch_c
    iget-object p1, p0, Lcom/android/server/input/InputSettingsObserver;->mService:Lcom/android/server/input/InputManagerService;

    .line 288
    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 290
    invoke-static {p0}, Landroid/hardware/input/InputSettings;->getAccessibilityBounceKeysThreshold(Landroid/content/Context;)I

    .line 293
    move-result p0

    .line 294
    invoke-virtual {p1, p0}, Lcom/android/server/input/InputManagerService;->setAccessibilityBounceKeysThreshold(I)V

    .line 297
    return-void

    .line 298
    :pswitch_d
    iget-object p1, p0, Lcom/android/server/input/InputSettingsObserver;->mService:Lcom/android/server/input/InputManagerService;

    .line 300
    const-string/jumbo v0, "show_rotary_input"

    .line 303
    invoke-virtual {p0, v0}, Lcom/android/server/input/InputSettingsObserver;->getBoolean(Ljava/lang/String;)Z

    .line 306
    move-result p0

    .line 307
    invoke-virtual {p1, p0}, Lcom/android/server/input/InputManagerService;->updateShowRotaryInput(Z)V

    .line 310
    return-void

    .line 311
    :pswitch_e
    iget-object p1, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 313
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 316
    move-result-object p1

    .line 317
    const/4 v0, -0x2

    .line 318
    const-string/jumbo v1, "pointer_speed"

    .line 321
    const/4 v2, 0x0

    .line 322
    invoke-static {p1, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 325
    move-result p1

    .line 326
    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 328
    const/4 v0, -0x7

    .line 329
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 332
    move-result p1

    .line 333
    const/4 v0, 0x7

    .line 334
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 337
    move-result p1

    .line 338
    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setPointerSpeed(I)V

    .line 341
    return-void

    .line 342
    :pswitch_f
    invoke-virtual {p0}, Lcom/android/server/input/InputSettingsObserver;->updateKeyRepeatInfo()V

    .line 345
    return-void

    .line 346
    :pswitch_10
    invoke-virtual {p0}, Lcom/android/server/input/InputSettingsObserver;->updateKeyRepeatInfo()V

    .line 349
    return-void

    .line 350
    :pswitch_11
    iget-object p1, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 352
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 355
    move-result-object p1

    .line 356
    const-string v0, "accessibility_large_pointer_icon"

    .line 358
    const/4 v1, 0x0

    .line 359
    const/4 v2, -0x2

    .line 360
    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 363
    move-result p1

    .line 364
    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mService:Lcom/android/server/input/InputManagerService;

    .line 366
    const/4 v0, 0x1

    .line 367
    if-ne p1, v0, :cond_5

    .line 369
    move v1, v0

    .line 370
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/server/input/InputManagerService;->setUseLargePointerIcons(Z)V

    .line 373
    return-void

    .line 374
    :pswitch_12
    iget-object p1, p0, Lcom/android/server/input/InputSettingsObserver;->mService:Lcom/android/server/input/InputManagerService;

    .line 376
    const-string/jumbo v0, "show_key_presses"

    .line 379
    invoke-virtual {p0, v0}, Lcom/android/server/input/InputSettingsObserver;->getBoolean(Ljava/lang/String;)Z

    .line 382
    move-result p0

    .line 383
    invoke-virtual {p1, p0}, Lcom/android/server/input/InputManagerService;->updateShowKeyPresses(Z)V

    .line 386
    return-void

    .line 387
    :pswitch_13
    iget-object p1, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 389
    invoke-static {p1}, Landroid/hardware/input/InputSettings;->getMaximumObscuringOpacityForTouch(Landroid/content/Context;)F

    .line 392
    move-result p1

    .line 393
    const/4 v0, 0x0

    .line 394
    cmpg-float v0, p1, v0

    .line 396
    if-ltz v0, :cond_7

    .line 398
    const/high16 v0, 0x3f800000    # 1.0f

    .line 400
    cmpl-float v0, p1, v0

    .line 402
    if-lez v0, :cond_6

    .line 404
    goto :goto_5

    .line 405
    :cond_6
    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 407
    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setMaximumObscuringOpacityForTouch(F)V

    .line 410
    goto :goto_6

    .line 411
    :cond_7
    :goto_5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 413
    const-string v0, "Invalid maximum obscuring opacity "

    .line 415
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 421
    const-string p1, ", it should be >= 0 and <= 1, rejecting update."

    .line 423
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 429
    move-result-object p0

    .line 430
    const-string p1, "InputManager"

    .line 432
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :goto_6
    return-void

    .line 436
    :pswitch_14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 439
    const-string p1, "InputManager"

    .line 441
    const/4 v0, 0x0

    .line 442
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 444
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 447
    move-result-object v1

    .line 448
    const-string/jumbo v2, "touchpad_scrolling_direction"

    .line 451
    const/4 v3, -0x2

    .line 452
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 455
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    goto :goto_7

    .line 457
    :catch_0
    move-exception v1

    .line 458
    const-string v2, "Exception getReverseSwipeSetting \'0\'"

    .line 460
    invoke-static {p1, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 463
    move v1, v0

    .line 464
    :goto_7
    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 466
    if-eqz v1, :cond_8

    .line 468
    const/4 v0, 0x1

    .line 469
    :cond_8
    invoke-interface {p0, v0}, Lcom/android/server/input/NativeInputManagerService;->setReverseSwipeGesture(Z)V

    .line 472
    new-instance p0, Ljava/lang/StringBuilder;

    .line 474
    const-string/jumbo v0, "updateReverseSwipeFromSetting : "

    .line 477
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 483
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 486
    move-result-object p0

    .line 487
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    return-void

    .line 491
    :pswitch_15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 494
    const-string p1, "InputManager"

    .line 496
    const/4 v0, 0x1

    .line 497
    :try_start_1
    iget-object v1, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 499
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 502
    move-result-object v1

    .line 503
    const-string/jumbo v2, "tap_to_click_enabled"

    .line 506
    const/4 v3, -0x2

    .line 507
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 510
    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 511
    goto :goto_8

    .line 512
    :catch_1
    move-exception v1

    .line 513
    const-string v2, "Exception getTapToClickSetting \'1\'"

    .line 515
    invoke-static {p1, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 518
    move v1, v0

    .line 519
    :goto_8
    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 521
    if-eqz v1, :cond_9

    .line 523
    goto :goto_9

    .line 524
    :cond_9
    const/4 v0, 0x0

    .line 525
    :goto_9
    invoke-interface {p0, v0}, Lcom/android/server/input/NativeInputManagerService;->setEnableTapToClick(Z)V

    .line 528
    new-instance p0, Ljava/lang/StringBuilder;

    .line 530
    const-string/jumbo v0, "updateTapToClickFromSetting : "

    .line 533
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 539
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 542
    move-result-object p0

    .line 543
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    return-void

    .line 547
    :pswitch_16
    iget-object p1, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 549
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 552
    move-result-object p1

    .line 553
    const-string/jumbo v0, "enabled_accessibility_services"

    .line 556
    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 559
    move-result-object p1

    .line 560
    if-eqz p1, :cond_c

    .line 562
    const-string v0, "(?i).*com.samsung.android.app.talkback.TalkBackService.*"

    .line 564
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 567
    move-result v0

    .line 568
    if-nez v0, :cond_b

    .line 570
    const-string v0, "(?i).*com.google.android.marvin.talkback.TalkBackService.*"

    .line 572
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 575
    move-result v0

    .line 576
    if-eqz v0, :cond_a

    .line 578
    goto :goto_a

    .line 579
    :cond_a
    const/4 v0, 0x0

    .line 580
    goto :goto_b

    .line 581
    :cond_b
    :goto_a
    const/4 v0, 0x1

    .line 582
    :goto_b
    const-string v1, "accessibility service : "

    .line 584
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 587
    move-result-object p1

    .line 588
    const-string v1, "InputManager"

    .line 590
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    new-instance p1, Ljava/lang/StringBuilder;

    .line 595
    const-string/jumbo v2, "talkbackEnabled : "

    .line 598
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 601
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 604
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 607
    move-result-object p1

    .line 608
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 613
    invoke-interface {p0, v0}, Lcom/android/server/input/NativeInputManagerService;->setTalkBack(Z)V

    .line 616
    :cond_c
    return-void

    .line 617
    :pswitch_17
    iget-object p1, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 619
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 622
    move-result-object p1

    .line 623
    const/4 v0, 0x4

    .line 624
    const/4 v1, -0x2

    .line 625
    const-string/jumbo v2, "mouse_additional_2_option"

    .line 628
    invoke-static {p1, v2, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 631
    move-result p1

    .line 632
    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 634
    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setForwardButtonBehavior(I)V

    .line 637
    return-void

    .line 638
    :pswitch_18
    iget-object p1, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 640
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 643
    move-result-object p1

    .line 644
    const/4 v0, 0x7

    .line 645
    const/4 v1, -0x2

    .line 646
    const-string/jumbo v2, "mouse_additional_1_option"

    .line 649
    invoke-static {p1, v2, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 652
    move-result p1

    .line 653
    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 655
    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setBackButtonBehavior(I)V

    .line 658
    return-void

    .line 659
    :pswitch_19
    iget-object p1, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 661
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 664
    move-result-object p1

    .line 665
    const/4 v0, 0x3

    .line 666
    const/4 v1, -0x2

    .line 667
    const-string/jumbo v2, "mouse_middle_button_option"

    .line 670
    invoke-static {p1, v2, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 673
    move-result p1

    .line 674
    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 676
    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setTertiaryButtonBehavior(I)V

    .line 679
    return-void

    .line 680
    :pswitch_1a
    invoke-virtual {p0}, Lcom/android/server/input/InputSettingsObserver;->updatePointerIconCustomFromSettings()V

    .line 683
    return-void

    .line 684
    :pswitch_1b
    iget-object p1, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 686
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 689
    move-result-object p1

    .line 690
    const/4 v0, 0x1

    .line 691
    const/4 v1, -0x2

    .line 692
    const-string/jumbo v2, "mouse_secondary_button_option"

    .line 695
    invoke-static {p1, v2, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 698
    move-result p1

    .line 699
    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 701
    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setSecondaryButtonBehavior(I)V

    .line 704
    return-void

    .line 705
    :pswitch_1c
    invoke-virtual {p0}, Lcom/android/server/input/InputSettingsObserver;->updatePointerIconCustomFromSettings()V

    .line 708
    return-void

    .line 709
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
