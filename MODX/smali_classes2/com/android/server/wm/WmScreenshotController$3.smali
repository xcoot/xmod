.class public final Lcom/android/server/wm/WmScreenshotController$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/wm/WmScreenshotController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WmScreenshotController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/wm/WmScreenshotController$3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/wm/WmScreenshotController$3;->this$0:Lcom/android/server/wm/WmScreenshotController;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    .line 1
    iget p1, p0, Lcom/android/server/wm/WmScreenshotController$3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "com.samsung.android.capture.ScreenshotExecutor"

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_e

    .line 17
    .line 18
    const-string v0, "capturedOrigin"

    .line 19
    .line 20
    const/4 v1, -0x1

    .line 21
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x3

    .line 30
    const/4 v2, 0x0

    .line 31
    const/4 v3, 0x1

    .line 32
    const-string v4, "WindowManager"

    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    if-eq v6, v1, :cond_d

    .line 36
    .line 37
    const/4 v1, 0x4

    .line 38
    const-string v7, "Region"

    .line 39
    .line 40
    const-string v8, "Fullscreen"

    .line 41
    .line 42
    const-string/jumbo v9, "type"

    .line 43
    .line 44
    .line 45
    const/4 v10, 0x2

    .line 46
    if-eq v6, v1, :cond_a

    .line 47
    .line 48
    const/4 v1, 0x5

    .line 49
    if-eq v6, v1, :cond_5

    .line 50
    .line 51
    const/4 v1, 0x6

    .line 52
    if-eq v6, v1, :cond_6

    .line 53
    .line 54
    const/16 v1, 0x64

    .line 55
    .line 56
    if-eq v6, v1, :cond_0

    .line 57
    .line 58
    const-string p0, "Error. capturedOrigin("

    .line 59
    .line 60
    const-string p1, ") is not supported."

    .line 61
    .line 62
    invoke-static {v6, p0, p1, v4}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    goto/16 :goto_6

    .line 66
    .line 67
    :cond_0
    const-string v1, "callingPackageName"

    .line 68
    .line 69
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_1

    .line 78
    .line 79
    const-string p0, "Can not take a screenshot, callingPackageName is empty."

    .line 80
    .line 81
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    goto/16 :goto_6

    .line 85
    .line 86
    :cond_1
    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    if-eqz v8, :cond_2

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    if-eqz v7, :cond_3

    .line 102
    .line 103
    move v3, v10

    .line 104
    :cond_3
    :goto_0
    const-string v7, "displayId"

    .line 105
    .line 106
    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    if-nez v7, :cond_4

    .line 115
    .line 116
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    :cond_4
    const-string v7, "Custom info, callingPackageName="

    .line 121
    .line 122
    const-string v8, " type="

    .line 123
    .line 124
    const-string v9, " displayId="

    .line 125
    .line 126
    invoke-static {v7, v1, v8, v2, v9}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-static {v1, p2, v4}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :cond_5
    :goto_1
    move-object v7, v0

    .line 134
    goto :goto_4

    .line 135
    :cond_6
    if-nez v0, :cond_7

    .line 136
    .line 137
    const-string p0, "Error. bundle is null"

    .line 138
    .line 139
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    goto/16 :goto_6

    .line 143
    .line 144
    :cond_7
    const-string/jumbo p2, "rect"

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    check-cast p2, Landroid/graphics/Rect;

    .line 152
    .line 153
    if-eqz p2, :cond_9

    .line 154
    .line 155
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-eqz v1, :cond_8

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_8
    const/16 p2, 0x65

    .line 163
    .line 164
    move v3, p2

    .line 165
    goto :goto_1

    .line 166
    :cond_9
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    const-string p1, "Error. rect is "

    .line 169
    .line 170
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    goto :goto_6

    .line 184
    :cond_a
    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-eqz v0, :cond_b

    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_b
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-eqz v0, :cond_c

    .line 200
    .line 201
    move v3, v10

    .line 202
    :goto_3
    iget-object p2, p0, Lcom/android/server/wm/WmScreenshotController$3;->this$0:Lcom/android/server/wm/WmScreenshotController;

    .line 203
    .line 204
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    move-object v7, v2

    .line 208
    move v5, v10

    .line 209
    goto :goto_4

    .line 210
    :cond_c
    const-string p0, "Error. extra type was wrong. type="

    .line 211
    .line 212
    invoke-static {p0, p2, v4}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    goto :goto_6

    .line 216
    :cond_d
    move-object v7, v2

    .line 217
    :goto_4
    const-string p2, "Receive "

    .line 218
    .line 219
    const-string v0, " screenType="

    .line 220
    .line 221
    const-string v1, " direction=1 display="

    .line 222
    .line 223
    invoke-static {v3, p2, p1, v0, v1}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    const-string p2, " from="

    .line 231
    .line 232
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    iget-object p2, p0, Lcom/android/server/wm/WmScreenshotController$3;->this$0:Lcom/android/server/wm/WmScreenshotController;

    .line 236
    .line 237
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 238
    .line 239
    .line 240
    packed-switch v6, :pswitch_data_1

    .line 241
    .line 242
    .line 243
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p2

    .line 247
    goto :goto_5

    .line 248
    :pswitch_0
    const-string p2, "FLEX_PANEL"

    .line 249
    .line 250
    goto :goto_5

    .line 251
    :pswitch_1
    const-string p2, "BIXBY"

    .line 252
    .line 253
    goto :goto_5

    .line 254
    :pswitch_2
    const-string p2, "DEX"

    .line 255
    .line 256
    goto :goto_5

    .line 257
    :pswitch_3
    const-string p2, "QUICK_PANEL"

    .line 258
    .line 259
    goto :goto_5

    .line 260
    :pswitch_4
    const-string p2, "PALM"

    .line 261
    .line 262
    goto :goto_5

    .line 263
    :pswitch_5
    const-string p2, "KEY"

    .line 264
    .line 265
    :goto_5
    invoke-static {p1, p2, v4}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    iget-object v2, p0, Lcom/android/server/wm/WmScreenshotController$3;->this$0:Lcom/android/server/wm/WmScreenshotController;

    .line 269
    .line 270
    const/4 v4, 0x1

    .line 271
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WmScreenshotController;->sendTakeScreenshotRunnable(IIIILandroid/os/Bundle;)V

    .line 272
    .line 273
    .line 274
    :cond_e
    :goto_6
    return-void

    .line 275
    :pswitch_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    iget-object p2, p0, Lcom/android/server/wm/WmScreenshotController$3;->this$0:Lcom/android/server/wm/WmScreenshotController;

    .line 280
    .line 281
    iget-object p2, p2, Lcom/android/server/wm/WmScreenshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 282
    .line 283
    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 284
    .line 285
    check-cast p2, Lcom/android/server/policy/PhoneWindowManager;

    .line 286
    .line 287
    invoke-virtual {p2}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    .line 288
    .line 289
    .line 290
    move-result p2

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    .line 292
    .line 293
    const-string v1, "Receive "

    .line 294
    .line 295
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    const-string v1, ", isKeyguardLocked="

    .line 302
    .line 303
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    const-string v1, "WindowManager"

    .line 314
    .line 315
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    .line 317
    .line 318
    if-eqz p2, :cond_f

    .line 319
    .line 320
    goto :goto_9

    .line 321
    :cond_f
    iget-object p2, p0, Lcom/android/server/wm/WmScreenshotController$3;->this$0:Lcom/android/server/wm/WmScreenshotController;

    .line 322
    .line 323
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 324
    .line 325
    .line 326
    const-string p2, "com.samsung.android.motion.SWEEP_LEFT"

    .line 327
    .line 328
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    move-result p2

    .line 332
    if-eqz p2, :cond_10

    .line 333
    .line 334
    const/4 p1, 0x2

    .line 335
    :goto_7
    move v2, p1

    .line 336
    goto :goto_8

    .line 337
    :cond_10
    const-string p2, "com.samsung.android.motion.SWEEP_RIGHT"

    .line 338
    .line 339
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move-result p2

    .line 343
    if-eqz p2, :cond_11

    .line 344
    .line 345
    const/4 p1, 0x3

    .line 346
    goto :goto_7

    .line 347
    :cond_11
    const-string p2, "com.samsung.android.motion.SWEEP_FULL_SCREEN"

    .line 348
    .line 349
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    move-result p1

    .line 353
    if-eqz p1, :cond_12

    .line 354
    .line 355
    const/4 p1, 0x1

    .line 356
    goto :goto_7

    .line 357
    :cond_12
    const/4 p1, -0x1

    .line 358
    goto :goto_7

    .line 359
    :goto_8
    if-lez v2, :cond_13

    .line 360
    .line 361
    iget-object v0, p0, Lcom/android/server/wm/WmScreenshotController$3;->this$0:Lcom/android/server/wm/WmScreenshotController;

    .line 362
    .line 363
    const/4 v1, 0x1

    .line 364
    const/4 v3, 0x0

    .line 365
    const/4 v4, 0x2

    .line 366
    const/4 v5, 0x0

    .line 367
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WmScreenshotController;->sendTakeScreenshotRunnable(IIIILandroid/os/Bundle;)V

    .line 368
    .line 369
    .line 370
    :cond_13
    :goto_9
    return-void

    .line 371
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch

    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
