.class public final Lcom/android/server/display/color/ColorDisplayService$2;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/color/ColorDisplayService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/color/ColorDisplayService;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x6

    .line 3
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 4
    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    if-eqz p1, :cond_10

    .line 15
    .line 16
    const-string p2, "ColorDisplayService"

    .line 17
    .line 18
    const/4 v2, -0x1

    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    sparse-switch v3, :sswitch_data_0

    .line 24
    .line 25
    .line 26
    goto/16 :goto_1

    .line 27
    .line 28
    :sswitch_0
    const-string/jumbo v3, "reduce_bright_colors_activated"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    goto/16 :goto_1

    .line 38
    .line 39
    :cond_1
    const/16 v2, 0xc

    .line 40
    .line 41
    goto/16 :goto_1

    .line 42
    .line 43
    :sswitch_1
    const-string/jumbo v3, "night_display_custom_start_time"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-nez p1, :cond_2

    .line 51
    .line 52
    goto/16 :goto_1

    .line 53
    .line 54
    :cond_2
    const/16 v2, 0xb

    .line 55
    .line 56
    goto/16 :goto_1

    .line 57
    .line 58
    :sswitch_2
    const-string/jumbo v3, "display_color_mode"

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_3

    .line 66
    .line 67
    goto/16 :goto_1

    .line 68
    .line 69
    :cond_3
    const/16 v2, 0xa

    .line 70
    .line 71
    goto/16 :goto_1

    .line 72
    .line 73
    :sswitch_3
    const-string/jumbo v3, "reduce_bright_colors_level"

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-nez p1, :cond_4

    .line 81
    .line 82
    goto/16 :goto_1

    .line 83
    .line 84
    :cond_4
    const/16 v2, 0x9

    .line 85
    .line 86
    goto/16 :goto_1

    .line 87
    .line 88
    :sswitch_4
    const-string/jumbo v3, "display_white_balance_enabled"

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-nez p1, :cond_5

    .line 96
    .line 97
    goto/16 :goto_1

    .line 98
    .line 99
    :cond_5
    const/16 v2, 0x8

    .line 100
    .line 101
    goto/16 :goto_1

    .line 102
    .line 103
    :sswitch_5
    const-string/jumbo v3, "night_display_activated"

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-nez p1, :cond_6

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_6
    const/4 v2, 0x7

    .line 114
    goto :goto_1

    .line 115
    :sswitch_6
    const-string v3, "accessibility_display_daltonizer"

    .line 116
    .line 117
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-nez p1, :cond_7

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_7
    move v2, v1

    .line 125
    goto :goto_1

    .line 126
    :sswitch_7
    const-string v3, "accessibility_display_daltonizer_saturation_level"

    .line 127
    .line 128
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-nez p1, :cond_8

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_8
    const/4 v2, 0x5

    .line 136
    goto :goto_1

    .line 137
    :sswitch_8
    const-string v3, "accessibility_display_inversion_enabled"

    .line 138
    .line 139
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    if-nez p1, :cond_9

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_9
    const/4 v2, 0x4

    .line 147
    goto :goto_1

    .line 148
    :sswitch_9
    const-string v3, "accessibility_display_daltonizer_enabled"

    .line 149
    .line 150
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    if-nez p1, :cond_a

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_a
    const/4 v2, 0x3

    .line 158
    goto :goto_1

    .line 159
    :sswitch_a
    const-string/jumbo v3, "night_display_color_temperature"

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    if-nez p1, :cond_b

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_b
    move v2, v0

    .line 170
    goto :goto_1

    .line 171
    :sswitch_b
    const-string/jumbo v3, "night_display_custom_end_time"

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    if-nez p1, :cond_c

    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_c
    const/4 v2, 0x1

    .line 182
    goto :goto_1

    .line 183
    :sswitch_c
    const-string/jumbo v3, "night_display_auto_mode"

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    if-nez p1, :cond_d

    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_d
    const/4 v2, 0x0

    .line 194
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 195
    .line 196
    .line 197
    goto/16 :goto_3

    .line 198
    .line 199
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 200
    .line 201
    invoke-virtual {p1}, Lcom/android/server/display/color/ColorDisplayService;->onReduceBrightColorsActivationChanged()V

    .line 202
    .line 203
    .line 204
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 205
    .line 206
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    .line 207
    .line 208
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 209
    .line 210
    .line 211
    goto/16 :goto_3

    .line 212
    .line 213
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 214
    .line 215
    invoke-static {p0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$mgetNightDisplayCustomStartTimeInternal(Lcom/android/server/display/color/ColorDisplayService;)Landroid/hardware/display/Time;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-virtual {p1}, Landroid/hardware/display/Time;->getLocalTime()Ljava/time/LocalTime;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    const-string/jumbo v1, "onNightDisplayCustomStartTimeChanged: startTime="

    .line 226
    .line 227
    .line 228
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    .line 242
    .line 243
    if-eqz p0, :cond_10

    .line 244
    .line 245
    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;->onCustomStartTimeChanged(Ljava/time/LocalTime;)V

    .line 246
    .line 247
    .line 248
    goto/16 :goto_3

    .line 249
    .line 250
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 251
    .line 252
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getColorModeInternal()I

    .line 253
    .line 254
    .line 255
    move-result p1

    .line 256
    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->onDisplayColorModeChanged(I)V

    .line 257
    .line 258
    .line 259
    goto/16 :goto_3

    .line 260
    .line 261
    :pswitch_3
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 262
    .line 263
    invoke-virtual {p1}, Lcom/android/server/display/color/ColorDisplayService;->onReduceBrightColorsStrengthLevelChanged()V

    .line 264
    .line 265
    .line 266
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 267
    .line 268
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    .line 269
    .line 270
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 271
    .line 272
    .line 273
    goto/16 :goto_3

    .line 274
    .line 275
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 276
    .line 277
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->updateDisplayWhiteBalanceStatus()V

    .line 278
    .line 279
    .line 280
    goto/16 :goto_3

    .line 281
    .line 282
    :pswitch_5
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 283
    .line 284
    iget-object p1, p1, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 285
    .line 286
    invoke-virtual {p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivatedSetting()Z

    .line 287
    .line 288
    .line 289
    move-result p1

    .line 290
    iget-object p2, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 291
    .line 292
    iget-object p2, p2, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 293
    .line 294
    invoke-virtual {p2}, Lcom/android/server/display/color/TintController;->isActivatedStateNotSet()Z

    .line 295
    .line 296
    .line 297
    move-result p2

    .line 298
    if-nez p2, :cond_e

    .line 299
    .line 300
    iget-object p2, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 301
    .line 302
    iget-object p2, p2, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 303
    .line 304
    invoke-virtual {p2}, Lcom/android/server/display/color/TintController;->isActivated()Z

    .line 305
    .line 306
    .line 307
    move-result p2

    .line 308
    if-eq p2, p1, :cond_10

    .line 309
    .line 310
    :cond_e
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 311
    .line 312
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 313
    .line 314
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 319
    .line 320
    .line 321
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    .line 322
    .line 323
    .line 324
    move-result-object p2

    .line 325
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setActivated(Ljava/lang/Boolean;Ljava/time/LocalDateTime;)V

    .line 326
    .line 327
    .line 328
    goto/16 :goto_3

    .line 329
    .line 330
    :pswitch_6
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 331
    .line 332
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->onAccessibilityDaltonizerChanged()V

    .line 333
    .line 334
    .line 335
    goto/16 :goto_3

    .line 336
    .line 337
    :pswitch_7
    invoke-static {}, Lcom/android/server/accessibility/Flags;->enableColorCorrectionSaturation()Z

    .line 338
    .line 339
    .line 340
    move-result p1

    .line 341
    if-eqz p1, :cond_10

    .line 342
    .line 343
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 344
    .line 345
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->onAccessibilityDaltonizerChanged()V

    .line 346
    .line 347
    .line 348
    goto/16 :goto_3

    .line 349
    .line 350
    :pswitch_8
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 351
    .line 352
    invoke-virtual {p1}, Lcom/android/server/display/color/ColorDisplayService;->onAccessibilityInversionChanged()V

    .line 353
    .line 354
    .line 355
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 356
    .line 357
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getColorModeInternal()I

    .line 358
    .line 359
    .line 360
    move-result p1

    .line 361
    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->onDisplayColorModeChanged(I)V

    .line 362
    .line 363
    .line 364
    goto :goto_3

    .line 365
    :pswitch_9
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 366
    .line 367
    invoke-virtual {p1}, Lcom/android/server/display/color/ColorDisplayService;->onAccessibilityDaltonizerChanged()V

    .line 368
    .line 369
    .line 370
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 371
    .line 372
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getColorModeInternal()I

    .line 373
    .line 374
    .line 375
    move-result p1

    .line 376
    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->onDisplayColorModeChanged(I)V

    .line 377
    .line 378
    .line 379
    goto :goto_3

    .line 380
    :pswitch_a
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 381
    .line 382
    iget-object p1, p1, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 383
    .line 384
    invoke-virtual {p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->getColorTemperatureSetting()I

    .line 385
    .line 386
    .line 387
    move-result p1

    .line 388
    iget-object p2, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 389
    .line 390
    iget-object p2, p2, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 391
    .line 392
    iget-object v1, p2, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->mColorTemp:Ljava/lang/Integer;

    .line 393
    .line 394
    if-eqz v1, :cond_f

    .line 395
    .line 396
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 397
    .line 398
    .line 399
    move-result v1

    .line 400
    invoke-virtual {p2, v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->clampNightDisplayColorTemperature(I)I

    .line 401
    .line 402
    .line 403
    move-result p2

    .line 404
    goto :goto_2

    .line 405
    :cond_f
    invoke-virtual {p2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->getColorTemperatureSetting()I

    .line 406
    .line 407
    .line 408
    move-result p2

    .line 409
    :goto_2
    if-eq p2, p1, :cond_10

    .line 410
    .line 411
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 412
    .line 413
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 414
    .line 415
    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setMatrix(I)V

    .line 416
    .line 417
    .line 418
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 419
    .line 420
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    .line 421
    .line 422
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 423
    .line 424
    .line 425
    goto :goto_3

    .line 426
    :pswitch_b
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 427
    .line 428
    invoke-static {p0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$mgetNightDisplayCustomEndTimeInternal(Lcom/android/server/display/color/ColorDisplayService;)Landroid/hardware/display/Time;

    .line 429
    .line 430
    .line 431
    move-result-object p1

    .line 432
    invoke-virtual {p1}, Landroid/hardware/display/Time;->getLocalTime()Ljava/time/LocalTime;

    .line 433
    .line 434
    .line 435
    move-result-object p1

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    .line 437
    .line 438
    const-string/jumbo v1, "onNightDisplayCustomEndTimeChanged: endTime="

    .line 439
    .line 440
    .line 441
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    .line 453
    .line 454
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    .line 455
    .line 456
    if-eqz p0, :cond_10

    .line 457
    .line 458
    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;->onCustomEndTimeChanged(Ljava/time/LocalTime;)V

    .line 459
    .line 460
    .line 461
    goto :goto_3

    .line 462
    :pswitch_c
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$2;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 463
    .line 464
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getNightDisplayAutoModeInternal()I

    .line 465
    .line 466
    .line 467
    move-result p1

    .line 468
    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->onNightDisplayAutoModeChanged(I)V

    .line 469
    .line 470
    .line 471
    :cond_10
    :goto_3
    return-void

    .line 472
    nop

    .line 473
    :sswitch_data_0
    .sparse-switch
        -0x797bb571 -> :sswitch_c
        -0x6900ebe5 -> :sswitch_b
        -0x39c8c50c -> :sswitch_a
        -0x28f198ce -> :sswitch_9
        -0x20db1ad9 -> :sswitch_8
        0x15a05806 -> :sswitch_7
        0x1ccf6530 -> :sswitch_6
        0x2fb0ca2d -> :sswitch_5
        0x425e310b -> :sswitch_4
        0x4d7e1cc1 -> :sswitch_3
        0x5d15789c -> :sswitch_2
        0x5e128274 -> :sswitch_1
        0x62be648e -> :sswitch_0
    .end sparse-switch

    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    :pswitch_data_0
    .packed-switch 0x0
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
