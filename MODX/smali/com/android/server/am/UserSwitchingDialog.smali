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

    .line 4
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 7
    new-instance v0, Landroid/os/Handler;

    .line 9
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 16
    iput-object v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    .line 18
    const-string/jumbo v0, "debug.usercontroller.disable_user_switching_dialog_animations"

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 25
    move-result v0

    .line 26
    iput-boolean v0, p0, Lcom/android/server/am/UserSwitchingDialog;->mDisableAnimations:Z

    .line 28
    iput-object p6, p0, Lcom/android/server/am/UserSwitchingDialog;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 30
    const/4 p6, 0x1

    .line 31
    if-nez v0, :cond_1

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 36
    move-result-object v2

    .line 37
    iget v3, p3, Landroid/content/pm/UserInfo;->id:I

    .line 39
    const-string/jumbo v4, "user_setup_complete"

    .line 42
    invoke-static {v2, v4, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 45
    move-result v2

    .line 46
    if-ne v2, p6, :cond_0

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

    .line 54
    iget v2, p2, Landroid/content/pm/UserInfo;->id:I

    .line 56
    mul-int/lit16 v2, v2, 0x53e1

    .line 58
    iget v3, p3, Landroid/content/pm/UserInfo;->id:I

    .line 60
    add-int/2addr v2, v3

    .line 61
    iput v2, p0, Lcom/android/server/am/UserSwitchingDialog;->mTraceCookie:I

    .line 63
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 66
    const v2, 0x10901e0

    .line 69
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 72
    const v2, 0x102000b

    .line 75
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Landroid/widget/TextView;

    .line 81
    if-eqz v2, :cond_7

    .line 83
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 90
    move-result-object v3

    .line 91
    invoke-static {p1}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    .line 94
    move-result p1

    .line 95
    if-eqz p1, :cond_3

    .line 97
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isDemo()Z

    .line 100
    move-result p1

    .line 101
    if-eqz p1, :cond_2

    .line 103
    const p1, 0x1040451

    .line 106
    goto :goto_2

    .line 107
    :cond_2
    const p1, 0x1040452

    .line 110
    :goto_2
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 113
    move-result-object p1

    .line 114
    goto :goto_4

    .line 115
    :cond_3
    iget p1, p2, Landroid/content/pm/UserInfo;->id:I

    .line 117
    if-nez p1, :cond_4

    .line 119
    goto :goto_3

    .line 120
    :cond_4
    iget p1, p3, Landroid/content/pm/UserInfo;->id:I

    .line 122
    if-nez p1, :cond_5

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

    .line 129
    move-object p1, p4

    .line 130
    goto :goto_4

    .line 131
    :cond_6
    iget-object p1, p3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 133
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 136
    move-result-object p1

    .line 137
    const p2, 0x1040d6b

    .line 140
    invoke-virtual {v3, p2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 143
    move-result-object p1

    .line 144
    :goto_4
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    .line 147
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    :cond_7
    const p1, 0x1020006

    .line 153
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 156
    move-result-object p1

    .line 157
    check-cast p1, Landroid/widget/ImageView;

    .line 159
    if-eqz p1, :cond_8

    .line 161
    iget-object p2, p3, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    .line 163
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 166
    move-result-object p2

    .line 167
    iget p3, p3, Landroid/content/pm/UserInfo;->id:I

    .line 169
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 172
    move-result-object p4

    .line 173
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 176
    move-result-object p4

    .line 177
    invoke-static {p4, p3, v1}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    .line 180
    move-result-object p3

    .line 181
    invoke-static {p4, p3}, Lcom/android/internal/util/UserIcons;->convertToBitmapAtUserIconSize(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 184
    move-result-object p3

    .line 185
    invoke-static {p2, p3}, Lcom/android/internal/util/ObjectUtils;->getOrElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    move-result-object p2

    .line 189
    check-cast p2, Landroid/graphics/Bitmap;

    .line 191
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 194
    move-result p3

    .line 195
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 198
    move-result p4

    .line 199
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 202
    move-result-object p5

    .line 203
    invoke-static {p3, p4, p5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 206
    move-result-object p5

    .line 207
    new-instance v2, Landroid/graphics/Paint;

    .line 209
    invoke-direct {v2, p6}, Landroid/graphics/Paint;-><init>(I)V

    .line 212
    new-instance v3, Landroid/graphics/BitmapShader;

    .line 214
    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 216
    invoke-direct {v3, p2, v4, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 219
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 222
    new-instance p2, Landroid/graphics/Canvas;

    .line 224
    invoke-direct {p2, p5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 227
    new-instance v3, Landroid/graphics/RectF;

    .line 229
    int-to-float p3, p3

    .line 230
    int-to-float p4, p4

    .line 231
    const/4 v4, 0x0

    .line 232
    invoke-direct {v3, v4, v4, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 235
    const/high16 v4, 0x40000000    # 2.0f

    .line 237
    div-float/2addr p3, v4

    .line 238
    div-float/2addr p4, v4

    .line 239
    invoke-virtual {p2, v3, p3, p4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 242
    invoke-virtual {p1, p5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 245
    :cond_8
    const p1, 0x10204c5

    .line 248
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 251
    move-result-object p1

    .line 252
    check-cast p1, Landroid/widget/ImageView;

    .line 254
    if-eqz p1, :cond_a

    .line 256
    if-eqz v0, :cond_9

    .line 258
    const/16 p2, 0x8

    .line 260
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    goto :goto_5

    .line 264
    :cond_9
    new-instance p2, Landroid/util/TypedValue;

    .line 266
    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 269
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 272
    move-result-object p3

    .line 273
    invoke-virtual {p3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 276
    move-result-object p3

    .line 277
    const p4, 0x1120026

    .line 280
    invoke-virtual {p3, p4, p2, p6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 283
    iget p2, p2, Landroid/util/TypedValue;->data:I

    .line 285
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 288
    :cond_a
    :goto_5
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 291
    move-result-object p0

    .line 292
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 295
    move-result-object p1

    .line 296
    const/16 p2, 0x110

    .line 298
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 300
    const/4 p2, 0x3

    .line 301
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 303
    invoke-virtual {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 306
    const p1, 0x106000d

    .line 309
    invoke-virtual {p0, p1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 312
    const/16 p1, 0x7da

    .line 314
    invoke-virtual {p0, p1}, Landroid/view/Window;->setType(I)V

    .line 317
    invoke-virtual {p0, v1}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 320
    return-void
.end method


# virtual methods
.method public final asyncTraceBegin(ILjava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "asyncTraceBegin-"

    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "UserSwitchingDialog"

    .line 9
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p2

    .line 16
    iget p0, p0, Lcom/android/server/am/UserSwitchingDialog;->mTraceCookie:I

    .line 18
    add-int/2addr p0, p1

    .line 19
    const-wide/16 v0, 0x40

    .line 21
    invoke-static {v0, v1, p2, p0}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 24
    return-void
.end method

.method public final asyncTraceEnd(ILjava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "UserSwitchingDialog"

    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    iget p0, p0, Lcom/android/server/am/UserSwitchingDialog;->mTraceCookie:I

    .line 9
    add-int/2addr p0, p1

    .line 10
    const-wide/16 v2, 0x40

    .line 12
    invoke-static {v2, v3, v1, p0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 15
    const-string p0, "asyncTraceEnd-"

    .line 17
    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 21
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    iget-boolean v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mDisableAnimations:Z

    .line 10
    if-nez v1, :cond_1

    .line 12
    if-nez v0, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 21
    new-instance v2, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;

    .line 23
    invoke-direct {v2, p0, v1, p3}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/UserSwitchingDialog;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Runnable;)V

    .line 26
    iget-object p0, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    .line 28
    new-instance p3, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;

    .line 30
    invoke-direct {p3, p1, v2}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;)V

    .line 33
    const-wide/16 v3, 0x3e8

    .line 35
    invoke-virtual {p0, p3, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 38
    const-wide/16 p0, 0x12c

    .line 40
    invoke-virtual {p2, p0, p1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 43
    new-instance p0, Lcom/android/server/am/UserSwitchingDialog$2;

    .line 45
    invoke-direct {p0, v2}, Lcom/android/server/am/UserSwitchingDialog$2;-><init>(Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;)V

    .line 48
    invoke-virtual {p2, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 51
    invoke-virtual {v0, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 54
    return-void

    .line 55
    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 58
    return-void
.end method
