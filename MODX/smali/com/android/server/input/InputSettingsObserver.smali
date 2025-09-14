.class public final Lcom/android/server/input/InputSettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mNative:Lcom/android/server/input/NativeInputManagerService;

.field public final mObservers:Ljava/util/Map;

.field public final mService:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService$InputManagerHandler;Lcom/android/server/input/InputManagerService;Lcom/android/server/input/NativeInputManagerService$NativeImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    iput-object p1, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/android/server/input/InputSettingsObserver;->mHandler:Landroid/os/Handler;

    .line 8
    iput-object p3, p0, Lcom/android/server/input/InputSettingsObserver;->mService:Lcom/android/server/input/InputManagerService;

    .line 10
    iput-object p4, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 12
    const/16 p1, 0x25

    .line 14
    new-array p1, p1, [Ljava/util/Map$Entry;

    .line 16
    const-string/jumbo p2, "mouse_pointer_size_step"

    .line 19
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 22
    move-result-object p2

    .line 23
    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    .line 25
    const/4 p4, 0x0

    .line 26
    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    .line 29
    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 32
    move-result-object p2

    .line 33
    const/4 p3, 0x0

    .line 34
    aput-object p2, p1, p3

    .line 36
    const-string/jumbo p2, "mouse_pointer_color"

    .line 39
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 42
    move-result-object p2

    .line 43
    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    .line 45
    const/4 p4, 0x2

    .line 46
    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    .line 49
    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 52
    move-result-object p2

    .line 53
    const/4 p3, 0x1

    .line 54
    aput-object p2, p1, p3

    .line 56
    const-string/jumbo p2, "pointer_speed"

    .line 59
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 62
    move-result-object p2

    .line 63
    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    .line 65
    const/16 p4, 0xe

    .line 67
    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    .line 70
    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 73
    move-result-object p2

    .line 74
    const/4 p3, 0x2

    .line 75
    aput-object p2, p1, p3

    .line 77
    const-string/jumbo p2, "touchpad_pointer_speed"

    .line 80
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 83
    move-result-object p2

    .line 84
    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    .line 86
    const/16 p4, 0x17

    .line 88
    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    .line 91
    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 94
    move-result-object p2

    .line 95
    const/4 p3, 0x3

    .line 96
    aput-object p2, p1, p3

    .line 98
    const-string/jumbo p2, "touchpad_natural_scrolling"

    .line 101
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 104
    move-result-object p2

    .line 105
    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    .line 107
    const/16 p4, 0x18

    .line 109
    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    .line 112
    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 115
    move-result-object p2

    .line 116
    const/4 p3, 0x4

    .line 117
    aput-object p2, p1, p3

    .line 119
    const-string/jumbo p2, "touchpad_tap_to_click"

    .line 122
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 125
    move-result-object p2

    .line 126
    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    .line 128
    const/16 p4, 0x19

    .line 130
    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    .line 133
    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 136
    move-result-object p2

    .line 137
    const/4 p3, 0x5

    .line 138
    aput-object p2, p1, p3

    .line 140
    const-string/jumbo p2, "touchpad_tap_dragging"

    .line 143
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 146
    move-result-object p2

    .line 147
    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    .line 149
    const/16 p4, 0x1a

    .line 151
    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    .line 154
    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 157
    move-result-object p2

    .line 158
    const/4 p3, 0x6

    .line 159
    aput-object p2, p1, p3

    .line 161
    const-string/jumbo p2, "touchpad_right_click_zone"

    .line 164
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 167
    move-result-object p2

    .line 168
    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    .line 170
    const/16 p4, 0x1b

    .line 172
    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    .line 175
    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 178
    move-result-object p2

    .line 179
    const/4 p3, 0x7

    .line 180
    aput-object p2, p1, p3

    .line 182
    const-string/jumbo p2, "show_touches"

    .line 185
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 188
    move-result-object p2

    .line 189
    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    .line 191
    const/16 p4, 0x1c

    .line 193
    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    .line 196
    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 199
    move-result-object p2

    .line 200
    const/16 p3, 0x8

    .line 202
    aput-object p2, p1, p3

    .line 204
    const-string/jumbo p2, "pointer_location"

    .line 207
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 210
    move-result-object p2

    .line 211
    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    .line 213
    const/16 p4, 0x1d

    .line 215
    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    .line 218
    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 221
    move-result-object p2

    .line 222
    const/16 p3, 0x9

    .line 224
    aput-object p2, p1, p3

    .line 226
    const-string p2, "accessibility_large_pointer_icon"

    .line 228
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 231
    move-result-object p2

    .line 232
    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    .line 234
    const/16 p4, 0xb

    .line 236
    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    .line 239
    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 242
    move-result-object p2

    .line 243
    const/16 p3, 0xa

    .line 245
    aput-object p2, p1, p3

    .line 247
    const-string/jumbo p2, "long_press_timeout"

    .line 250
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 253
    move-result-object p2

    .line 254
    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    .line 256
    const/16 p4, 0x16

    .line 258
    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    .line 261
    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 264
    move-result-object p2

    .line 265
    const/16 p3, 0xb

    .line 267
    aput-object p2, p1, p3

    .line 269
    const-string/jumbo p2, "pen_hovering_pointer"

    .line 272
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 275
    move-result-object p2

    .line 276
    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;

    .line 278
    const/4 p4, 0x0

    .line 279
    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    .line 282
    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 285
    move-result-object p2

    .line 286
    const/16 p3, 0xc

    .line 288
    aput-object p2, p1, p3

    .line 290
    const-string/jumbo p2, "pen_hovering"

    .line 293
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 296
    move-result-object p2

    .line 297
    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;

    .line 299
    const/4 p4, 0x1

    .line 300
    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    .line 303
    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 306
    move-result-object p2

    .line 307
    const/16 p3, 0xd

    .line 309
    aput-object p2, p1, p3

    .line 311
    const-string/jumbo p2, "cover_test_mode"

    .line 314
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 317
    move-result-object p2

    .line 318
    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;

    .line 320
    const/4 p4, 0x2

    .line 321
    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    .line 324
    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 327
    move-result-object p2

    .line 328
    const/16 p3, 0xe

    .line 330
    aput-object p2, p1, p3

    .line 332
    const-string/jumbo p2, "new_dex"

    .line 335
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 338
    move-result-object p2

    .line 339
    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;

    .line 341
    const/4 p4, 0x3

    .line 342
    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    .line 345
    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 348
    move-result-object p2

    .line 349
    const/16 p3, 0xf

    .line 351
    aput-object p2, p1, p3

    .line 353
    const-string/jumbo p2, "primary_mouse_button_option"

    .line 356
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 359
    move-result-object p2

    .line 360
    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;

    .line 362
    const/4 p4, 0x4

    .line 363
    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    .line 366
    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 369
    move-result-object p2

    .line 370
    const/16 p3, 0x10

    .line 372
    aput-object p2, p1, p3

    .line 374
    const-string/jumbo p2, "mouse_scrolling_speed"

    .line 377
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 380
    move-result-object p2

    .line 381
    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;

    .line 383
    const/4 p4, 0x5

    .line 384
    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    .line 387
    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 390
    move-result-object p2

    .line 391
    const/16 p3, 0x11

    .line 393
    aput-object p2, p1, p3

    .line 395
    const-string/jumbo p2, "enhance_pointer_precision"

    .line 398
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 401
    move-result-object p2

    .line 402
    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;

    .line 404
    const/4 p4, 0x6

    .line 405
    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    .line 408
    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 411
    move-result-object p2

    .line 412
    const/16 p3, 0x12

    .line 414
    aput-object p2, p1, p3

    .line 416
    const-string/jumbo p2, "mouse_secondary_button_option"

    .line 419
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 422
    move-result-object p2

    .line 423
    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    .line 425
    const/4 p4, 0x1

    .line 426
    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    .line 429
    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 432
    move-result-object p2

    .line 433
    const/16 p3, 0x13

    .line 435
    aput-object p2, p1, p3

    .line 437
    const-string/jumbo p2, "mouse_middle_button_option"

    .line 440
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 443
    move-result-object p2

    .line 444
    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    .line 446
    const/4 p4, 0x3

    .line 447
    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    .line 450
    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 453
    move-result-object p2

    .line 454
    const/16 p3, 0x14

    .line 456
    aput-object p2, p1, p3

    .line 458
    const-string/jumbo p2, "mouse_additional_1_option"

    .line 461
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 464
    move-result-object p2

    .line 465
    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    .line 467
    const/4 p4, 0x4

    .line 468
    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    .line 471
    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 474
    move-result-object p2

    .line 475
    const/16 p3, 0x15

    .line 477
    aput-object p2, p1, p3

    .line 479
    const-string/jumbo p2, "mouse_additional_2_option"

    .line 482
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 485
    move-result-object p2

    .line 486
    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    .line 488
    const/4 p4, 0x5

    .line 489
    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    .line 492
    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 495
    move-result-object p2

    .line 496
    const/16 p3, 0x16

    .line 498
    aput-object p2, p1, p3

    .line 500
    const-string/jumbo p2, "enabled_accessibility_services"

    .line 503
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 506
    move-result-object p2

    .line 507
    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    .line 509
    const/4 p4, 0x6

    .line 510
    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    .line 513
    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 516
    move-result-object p2

    .line 517
    const/16 p3, 0x17

    .line 519
    aput-object p2, p1, p3

    .line 521
    const-string/jumbo p2, "tap_to_click_enabled"

    .line 524
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 527
    move-result-object p2

    .line 528
    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    .line 530
    const/4 p4, 0x7

    .line 531
    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    .line 534
    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 537
    move-result-object p2

    .line 538
    const/16 p3, 0x18

    .line 540
    aput-object p2, p1, p3

    .line 542
    const-string/jumbo p2, "touchpad_scrolling_direction"

    .line 545
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 548
    move-result-object p2

    .line 549
    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    .line 551
    const/16 p4, 0x8

    .line 553
    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    .line 556
    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 559
    move-result-object p2

    .line 560
    const/16 p3, 0x19

    .line 562
    aput-object p2, p1, p3

    .line 564
    const-string/jumbo p2, "maximum_obscuring_opacity_for_touch"

    .line 567
    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 570
    move-result-object p2

    .line 571
    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    .line 573
    const/16 p4, 0x9

    .line 575
    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    .line 578
    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 581
    move-result-object p2

    .line 582
    const/16 p3, 0x1a

    .line 584
    aput-object p2, p1, p3

    .line 586
    const-string/jumbo p2, "show_key_presses"

    .line 589
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 592
    move-result-object p2

    .line 593
    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    .line 595
    const/16 p4, 0xa

    .line 597
    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    .line 600
    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 603
    move-result-object p2

    .line 604
    const/16 p3, 0x1b

    .line 606
    aput-object p2, p1, p3

    .line 608
    const-string/jumbo p2, "key_repeat_timeout"

    .line 611
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 614
    move-result-object p2

    .line 615
    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    .line 617
    const/16 p4, 0xc

    .line 619
    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    .line 622
    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 625
    move-result-object p2

    .line 626
    const/16 p3, 0x1c

    .line 628
    aput-object p2, p1, p3

    .line 630
    const-string/jumbo p2, "key_repeat_delay"

    .line 633
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 636
    move-result-object p2

    .line 637
    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    .line 639
    const/16 p4, 0xd

    .line 641
    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    .line 644
    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 647
    move-result-object p2

    .line 648
    const/16 p3, 0x1d

    .line 650
    aput-object p2, p1, p3

    .line 652
    const-string/jumbo p2, "show_rotary_input"

    .line 655
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 658
    move-result-object p2

    .line 659
    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    .line 661
    const/16 p4, 0xf

    .line 663
    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    .line 666
    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 669
    move-result-object p2

    .line 670
    const/16 p3, 0x1e

    .line 672
    aput-object p2, p1, p3

    .line 674
    const-string p2, "accessibility_bounce_keys"

    .line 676
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 679
    move-result-object p2

    .line 680
    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    .line 682
    const/16 p4, 0x10

    .line 684
    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    .line 687
    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 690
    move-result-object p2

    .line 691
    const/16 p3, 0x1f

    .line 693
    aput-object p2, p1, p3

    .line 695
    const-string p2, "accessibility_slow_keys"

    .line 697
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 700
    move-result-object p2

    .line 701
    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    .line 703
    const/16 p4, 0x11

    .line 705
    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    .line 708
    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 711
    move-result-object p2

    .line 712
    const/16 p3, 0x20

    .line 714
    aput-object p2, p1, p3

    .line 716
    const-string p2, "accessibility_sticky_keys"

    .line 718
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 721
    move-result-object p2

    .line 722
    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    .line 724
    const/16 p4, 0x12

    .line 726
    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    .line 729
    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 732
    move-result-object p2

    .line 733
    const/16 p3, 0x21

    .line 735
    aput-object p2, p1, p3

    .line 737
    const-string/jumbo p2, "stylus_pointer_icon_enabled"

    .line 740
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 743
    move-result-object p2

    .line 744
    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    .line 746
    const/16 p4, 0x13

    .line 748
    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    .line 751
    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 754
    move-result-object p2

    .line 755
    const/16 p3, 0x22

    .line 757
    aput-object p2, p1, p3

    .line 759
    const-string/jumbo p2, "pointer_fill_style"

    .line 762
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 765
    move-result-object p2

    .line 766
    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    .line 768
    const/16 p4, 0x14

    .line 770
    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    .line 773
    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 776
    move-result-object p2

    .line 777
    const/16 p3, 0x23

    .line 779
    aput-object p2, p1, p3

    .line 781
    const-string/jumbo p2, "pointer_scale"

    .line 784
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 787
    move-result-object p2

    .line 788
    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    .line 790
    const/16 p4, 0x15

    .line 792
    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    .line 795
    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 798
    move-result-object p2

    .line 799
    const/16 p3, 0x24

    .line 801
    aput-object p2, p1, p3

    .line 803
    invoke-static {p1}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    .line 806
    move-result-object p1

    .line 807
    iput-object p1, p0, Lcom/android/server/input/InputSettingsObserver;->mObservers:Ljava/util/Map;

    .line 809
    return-void
.end method


# virtual methods
.method public final getBoolean(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object p0

    .line 7
    const/4 v0, -0x2

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {p0, p1, v1, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 15
    const/4 v1, 0x1

    .line 16
    :cond_0
    return v1
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mObservers:Ljava/util/Map;

    .line 3
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/util/function/Consumer;

    .line 9
    const-string/jumbo p1, "setting changed"

    .line 12
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 15
    return-void
.end method

.method public final updateKeyRepeatInfo()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    .line 10
    move-result v1

    .line 11
    const-string/jumbo v2, "key_repeat_timeout"

    .line 14
    const/4 v3, -0x2

    .line 15
    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 18
    move-result v0

    .line 19
    iget-object v1, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 21
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    move-result-object v1

    .line 25
    const-string/jumbo v2, "key_repeat_delay"

    .line 28
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    .line 31
    move-result v4

    .line 32
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 35
    move-result v1

    .line 36
    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 38
    invoke-interface {p0, v0, v1}, Lcom/android/server/input/NativeInputManagerService;->setKeyRepeatConfiguration(II)V

    .line 41
    return-void
.end method

.method public final updatePointerIconCustomFromSettings()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "mouse_pointer_color"

    .line 10
    const v2, 0xffffff

    .line 13
    const/4 v3, -0x2

    .line 14
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 17
    move-result v0

    .line 18
    iget-object v1, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 20
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 23
    move-result-object v1

    .line 24
    const-string/jumbo v2, "mouse_pointer_size_step"

    .line 27
    const/4 v4, 0x1

    .line 28
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 31
    move-result v1

    .line 32
    int-to-float v1, v1

    .line 33
    const/high16 v2, 0x3f800000    # 1.0f

    .line 35
    add-float/2addr v1, v2

    .line 36
    const/high16 v2, 0x40000000    # 2.0f

    .line 38
    div-float/2addr v1, v2

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    const-string/jumbo v3, "updatePointerIcon color=0x"

    .line 44
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string v3, " size="

    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v2

    .line 66
    const-string v3, "InputManager"

    .line 68
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-static {v0, v1}, Landroid/view/PointerIcon;->setCustomIcons(IF)V

    .line 74
    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mService:Lcom/android/server/input/InputManagerService;

    .line 76
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->setCustomPointerIcons(IF)V

    .line 79
    return-void
.end method

.method public final updateShowHoveringFromSettings()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 7
    move-result-object v1

    .line 8
    const-string/jumbo v2, "pen_hovering_pointer"

    .line 11
    const/4 v3, -0x2

    .line 12
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 15
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    const/4 v2, 0x1

    .line 17
    if-ne v1, v2, :cond_0

    .line 19
    move v0, v2

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v1

    .line 22
    const-string v2, "Exception getShowHoveringSetting \'false\'"

    .line 24
    const-string v3, "InputManager"

    .line 26
    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 31
    invoke-interface {p0, v0}, Lcom/android/server/input/NativeInputManagerService;->setShowHovering(Z)V

    .line 34
    return-void
.end method
