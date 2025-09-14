.class public final Lcom/android/server/am/UserSwitchingDialog;
.super Landroid/app/Dialog;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDisableAnimations:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mNeedToFreezeScreen:Z

.field public final mTraceCookie:I

.field public final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wm/WindowManagerService;)V
    .locals 5

    .line 1
    const v0, 0x103022f

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Landroid/os/Handler;

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    .line 17
    .line 18
    const-string/jumbo v0, "debug.usercontroller.disable_user_switching_dialog_animations"

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iput-boolean v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mDisableAnimations:Z

    .line 27
    .line 28
    iput-object p6, p0, Lcom/android/server/am/UserSwitchingDialog;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 29
    .line 30
    const/4 p6, 0x1

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget v3, p3, Landroid/content/pm/UserInfo;->id:I

    .line 38
    .line 39
    const-string/jumbo v4, "user_setup_complete"

    .line 40
    .line 41
    .line 42
    invoke-static {v2, v4, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-ne v2, p6, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move v2, p6

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    :goto_0
    move v2, v1

    .line 52
    :goto_1
    iput-boolean v2, p0, Lcom/android/server/am/UserSwitchingDialog;->mNeedToFreezeScreen:Z

    .line 53
    .line 54
    iget v2, p2, Landroid/content/pm/UserInfo;->id:I

    .line 55
    .line 56
    mul-int/lit16 v2, v2, 0x53e1

    .line 57
    .line 58
    iget v3, p3, Landroid/content/pm/UserInfo;->id:I

    .line 59
    .line 60
    add-int/2addr v2, v3

    .line 61
    iput v2, p0, Lcom/android/server/am/UserSwitchingDialog;->mTraceCookie:I

    .line 62
    .line 63
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 64
    .line 65
    .line 66
    const v2, 0x10901e0

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 70
    .line 71
    .line 72
    const v2, 0x102000b

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Landroid/widget/TextView;

    .line 80
    .line 81
    if-eqz v2, :cond_7

    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-static {p1}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-eqz p1, :cond_3

    .line 96
    .line 97
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isDemo()Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-eqz p1, :cond_2

    .line 102
    .line 103
    const p1, 0x1040451

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_2
    const p1, 0x1040452

    .line 108
    .line 109
    .line 110
    :goto_2
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    goto :goto_4

    .line 115
    :cond_3
    iget p1, p2, Landroid/content/pm/UserInfo;->id:I

    .line 116
    .line 117
    if-nez p1, :cond_4

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_4
    iget p1, p3, Landroid/content/pm/UserInfo;->id:I

    .line 121
    .line 122
    if-nez p1, :cond_5

    .line 123
    .line 124
    move-object p4, p5

    .line 125
    goto :goto_3

    .line 126
    :cond_5
    const/4 p4, 0x0

    .line 127
    :goto_3
    if-eqz p4, :cond_6

    .line 128
    .line 129
    move-object p1, p4

    .line 130
    goto :goto_4

    .line 131
    :cond_6
    iget-object p1, p3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 132
    .line 133
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    const p2, 0x1040d6b

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3, p2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    :goto_4
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    .line 149
    .line 150
    :cond_7
    const p1, 0x1020006

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    check-cast p1, Landroid/widget/ImageView;

    .line 158
    .line 159
    if-eqz p1, :cond_8

    .line 160
    .line 161
    iget-object p2, p3, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    .line 162
    .line 163
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    iget p3, p3, Landroid/content/pm/UserInfo;->id:I

    .line 168
    .line 169
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 170
    .line 171
    .line 172
    move-result-object p4

    .line 173
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 174
    .line 175
    .line 176
    move-result-object p4

    .line 177
    invoke-static {p4, p3, v1}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    .line 178
    .line 179
    .line 180
    move-result-object p3

    .line 181
    invoke-static {p4, p3}, Lcom/android/internal/util/UserIcons;->convertToBitmapAtUserIconSize(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 182
    .line 183
    .line 184
    move-result-object p3

    .line 185
    invoke-static {p2, p3}, Lcom/android/internal/util/ObjectUtils;->getOrElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object p2

    .line 189
    check-cast p2, Landroid/graphics/Bitmap;

    .line 190
    .line 191
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 192
    .line 193
    .line 194
    move-result p3

    .line 195
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 196
    .line 197
    .line 198
    move-result p4

    .line 199
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 200
    .line 201
    .line 202
    move-result-object p5

    .line 203
    invoke-static {p3, p4, p5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 204
    .line 205
    .line 206
    move-result-object p5

    .line 207
    new-instance v2, Landroid/graphics/Paint;

    .line 208
    .line 209
    invoke-direct {v2, p6}, Landroid/graphics/Paint;-><init>(I)V

    .line 210
    .line 211
    .line 212
    new-instance v3, Landroid/graphics/BitmapShader;

    .line 213
    .line 214
    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 215
    .line 216
    invoke-direct {v3, p2, v4, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 220
    .line 221
    .line 222
    new-instance p2, Landroid/graphics/Canvas;

    .line 223
    .line 224
    invoke-direct {p2, p5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 225
    .line 226
    .line 227
    new-instance v3, Landroid/graphics/RectF;

    .line 228
    .line 229
    int-to-float p3, p3

    .line 230
    int-to-float p4, p4

    .line 231
    const/4 v4, 0x0

    .line 232
    invoke-direct {v3, v4, v4, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 233
    .line 234
    .line 235
    const/high16 v4, 0x40000000    # 2.0f

    .line 236
    .line 237
    div-float/2addr p3, v4

    .line 238
    div-float/2addr p4, v4

    .line 239
    invoke-virtual {p2, v3, p3, p4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1, p5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 243
    .line 244
    .line 245
    :cond_8
    const p1, 0x10204c5

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    check-cast p1, Landroid/widget/ImageView;

    .line 253
    .line 254
    if-eqz p1, :cond_a

    .line 255
    .line 256
    if-eqz v0, :cond_9

    .line 257
    .line 258
    const/16 p2, 0x8

    .line 259
    .line 260
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 261
    .line 262
    .line 263
    goto :goto_5

    .line 264
    :cond_9
    new-instance p2, Landroid/util/TypedValue;

    .line 265
    .line 266
    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 267
    .line 268
    .line 269
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 270
    .line 271
    .line 272
    move-result-object p3

    .line 273
    invoke-virtual {p3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 274
    .line 275
    .line 276
    move-result-object p3

    .line 277
    const p4, 0x1120026

    .line 278
    .line 279
    .line 280
    invoke-virtual {p3, p4, p2, p6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 281
    .line 282
    .line 283
    iget p2, p2, Landroid/util/TypedValue;->data:I

    .line 284
    .line 285
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 286
    .line 287
    .line 288
    :cond_a
    :goto_5
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 289
    .line 290
    .line 291
    move-result-object p0

    .line 292
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    const/16 p2, 0x110

    .line 297
    .line 298
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 299
    .line 300
    const/4 p2, 0x3

    .line 301
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 302
    .line 303
    invoke-virtual {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 304
    .line 305
    .line 306
    const p1, 0x106000d

    .line 307
    .line 308
    .line 309
    invoke-virtual {p0, p1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 310
    .line 311
    .line 312
    const/16 p1, 0x7da

    .line 313
    .line 314
    invoke-virtual {p0, p1}, Landroid/view/Window;->setType(I)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {p0, v1}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 318
    .line 319
    .line 320
    return-void
.end method


# virtual methods
.method public final asyncTraceBegin(ILjava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "asyncTraceBegin-"

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "UserSwitchingDialog"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    iget p0, p0, Lcom/android/server/am/UserSwitchingDialog;->mTraceCookie:I

    .line 17
    .line 18
    add-int/2addr p0, p1

    .line 19
    const-wide/16 v0, 0x40

    .line 20
    .line 21
    invoke-static {v0, v1, p2, p0}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final asyncTraceEnd(ILjava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "UserSwitchingDialog"

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget p0, p0, Lcom/android/server/am/UserSwitchingDialog;->mTraceCookie:I

    .line 8
    .line 9
    add-int/2addr p0, p1

    .line 10
    const-wide/16 v2, 0x40

    .line 11
    .line 12
    invoke-static {v2, v3, v1, p0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    const-string p0, "asyncTraceEnd-"

    .line 16
    .line 17
    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final dismiss()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-boolean v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mNeedToFreezeScreen:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    const-string/jumbo v0, "traceBegin-"

    const-string/jumbo v1, "stopFreezingScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "UserSwitchingDialog"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x40

    .line 4
    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingScreen()V

    .line 6
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 7
    const-string/jumbo v0, "traceEnd-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :goto_0
    const-string/jumbo v0, "dialog"

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/UserSwitchingDialog;->asyncTraceEnd(ILjava/lang/String;)V

    return-void
.end method

.method public final dismiss(Ljava/lang/Runnable;)V
    .locals 3

    .line 9
    const-string v0, "UserSwitchingDialog"

    const-string/jumbo v1, "dismiss called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->dismiss()V

    goto :goto_1

    .line 11
    :cond_0
    new-instance v0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/UserSwitchingDialog;Ljava/lang/Runnable;)V

    .line 12
    iget-boolean p1, p0, Lcom/android/server/am/UserSwitchingDialog;->mDisableAnimations:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/server/am/UserSwitchingDialog;->mNeedToFreezeScreen:Z

    if-eqz p1, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    const-string/jumbo p1, "dismissAnimation"

    const/4 v1, 0x3

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/UserSwitchingDialog;->asyncTraceBegin(ILjava/lang/String;)V

    .line 14
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v1, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/UserSwitchingDialog;Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;)V

    const-string/jumbo v0, "dismiss"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/am/UserSwitchingDialog;->startDialogAnimation(Ljava/lang/String;Landroid/view/animation/Animation;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 15
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;->run()V

    :goto_1
    return-void
.end method

.method public final show()V
    .locals 2

    .line 1
    const-string/jumbo v0, "dialog"

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/UserSwitchingDialog;->asyncTraceBegin(ILjava/lang/String;)V

    .line 2
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final show(Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;)V
    .locals 3

    .line 3
    const-string v0, "UserSwitchingDialog"

    const-string/jumbo v1, "show called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->show()V

    .line 5
    new-instance v0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/UserSwitchingDialog;Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;)V

    .line 6
    iget-boolean p1, p0, Lcom/android/server/am/UserSwitchingDialog;->mDisableAnimations:Z

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;->run()V

    goto :goto_0

    .line 8
    :cond_0
    const-string/jumbo p1, "showAnimation"

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/UserSwitchingDialog;->asyncTraceBegin(ILjava/lang/String;)V

    .line 9
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v1, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/UserSwitchingDialog;Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;I)V

    const-string/jumbo v0, "show"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/am/UserSwitchingDialog;->startDialogAnimation(Ljava/lang/String;Landroid/view/animation/Animation;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final startDialogAnimation(Ljava/lang/String;Landroid/view/animation/Animation;Ljava/lang/Runnable;)V
    .locals 5

    .line 1
    const v0, 0x1020002

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-boolean v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mDisableAnimations:Z

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 19
    .line 20
    .line 21
    new-instance v2, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;

    .line 22
    .line 23
    invoke-direct {v2, p0, v1, p3}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/UserSwitchingDialog;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    .line 27
    .line 28
    new-instance p3, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;

    .line 29
    .line 30
    invoke-direct {p3, p1, v2}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;)V

    .line 31
    .line 32
    .line 33
    const-wide/16 v3, 0x3e8

    .line 34
    .line 35
    invoke-virtual {p0, p3, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 36
    .line 37
    .line 38
    const-wide/16 p0, 0x12c

    .line 39
    .line 40
    invoke-virtual {p2, p0, p1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 41
    .line 42
    .line 43
    new-instance p0, Lcom/android/server/am/UserSwitchingDialog$2;

    .line 44
    .line 45
    invoke-direct {p0, v2}, Lcom/android/server/am/UserSwitchingDialog$2;-><init>(Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 56
    .line 57
    .line 58
    return-void
.end method
