.class public final Lcom/android/server/power/shutdown/ShutdownDialog;
.super Landroid/app/Dialog;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final animationPlayer:Lcom/android/server/power/shutdown/AnimationPlayer;

.field public logHandler:Landroid/os/Handler;

.field public final mContext:Landroid/content/Context;

.field public mImageView:Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;

.field public mLogView:Landroid/widget/TextView;

.field public final soundPlayer:Lcom/android/server/power/shutdown/SoundPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 1
    const v0, 0x1030007

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    new-instance v0, Lcom/android/server/power/shutdown/SoundPlayer;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Lcom/android/server/power/shutdown/SoundPlayer;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->soundPlayer:Lcom/android/server/power/shutdown/SoundPlayer;

    .line 15
    .line 16
    new-instance v0, Lcom/android/server/power/shutdown/WebpPlayer;

    .line 17
    .line 18
    const-string v1, ".webp"

    .line 19
    .line 20
    invoke-direct {v0, p1, v1}, Lcom/android/server/power/shutdown/AnimationPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 24
    .line 25
    iget-object v2, v0, Lcom/android/server/power/shutdown/AnimationPlayer;->resourceManager:Lcom/android/server/power/shutdown/ResourceManager;

    .line 26
    .line 27
    iget-object v3, v2, Lcom/android/server/power/shutdown/ResourceManager;->mainImages:Ljava/util/List;

    .line 28
    .line 29
    iget-object v4, v2, Lcom/android/server/power/shutdown/ResourceManager;->subImages:Ljava/util/List;

    .line 30
    .line 31
    iget-object v5, v2, Lcom/android/server/power/shutdown/ResourceManager;->mainLoopImage:Ljava/io/File;

    .line 32
    .line 33
    iget-object v6, v2, Lcom/android/server/power/shutdown/ResourceManager;->subLoopImage:Ljava/io/File;

    .line 34
    .line 35
    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const-string v4, "isAvailable %s, %s, [%s,%s]"

    .line 40
    .line 41
    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const-string v5, "Shutdown-WebpPlayer"

    .line 46
    .line 47
    invoke-static {v5, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    iget-object v2, v2, Lcom/android/server/power/shutdown/ResourceManager;->mainImages:Ljava/util/List;

    .line 51
    .line 52
    check-cast v2, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    const/4 v3, 0x1

    .line 59
    xor-int/2addr v2, v3

    .line 60
    if-eqz v2, :cond_0

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    new-instance v0, Lcom/android/server/power/shutdown/QmgPlayer;

    .line 64
    .line 65
    invoke-direct {v0, p1}, Lcom/android/server/power/shutdown/QmgPlayer;-><init>(Landroid/content/Context;)V

    .line 66
    .line 67
    .line 68
    invoke-static {}, Lcom/android/server/power/LibQmg;->qmgCheckSupportQmg()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-ne v2, v3, :cond_1

    .line 73
    .line 74
    iget-object v2, v0, Lcom/android/server/power/shutdown/QmgPlayer;->mainImages:Ljava/util/List;

    .line 75
    .line 76
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-nez v2, :cond_1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    new-instance v0, Lcom/android/server/power/shutdown/PngPlayer;

    .line 84
    .line 85
    const-string v2, ".png"

    .line 86
    .line 87
    invoke-direct {v0, p1, v2}, Lcom/android/server/power/shutdown/AnimationPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const/4 p1, 0x0

    .line 91
    iput-object p1, v0, Lcom/android/server/power/shutdown/PngPlayer;->mainBitmap:Landroid/graphics/Bitmap;

    .line 92
    .line 93
    iput-object p1, v0, Lcom/android/server/power/shutdown/PngPlayer;->subBitmap:Landroid/graphics/Bitmap;

    .line 94
    .line 95
    iget-object v2, v0, Lcom/android/server/power/shutdown/AnimationPlayer;->resourceManager:Lcom/android/server/power/shutdown/ResourceManager;

    .line 96
    .line 97
    iget-object v5, v2, Lcom/android/server/power/shutdown/ResourceManager;->mainImages:Ljava/util/List;

    .line 98
    .line 99
    iget-object v6, v2, Lcom/android/server/power/shutdown/ResourceManager;->subImages:Ljava/util/List;

    .line 100
    .line 101
    iget-object v7, v2, Lcom/android/server/power/shutdown/ResourceManager;->mainLoopImage:Ljava/io/File;

    .line 102
    .line 103
    iget-object v8, v2, Lcom/android/server/power/shutdown/ResourceManager;->subLoopImage:Ljava/io/File;

    .line 104
    .line 105
    filled-new-array {v5, v6, v7, v8}, [Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    invoke-static {v1, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    const-string v4, "Shutdown-PngPlayer"

    .line 114
    .line 115
    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    iget-object v1, v2, Lcom/android/server/power/shutdown/ResourceManager;->mainImages:Ljava/util/List;

    .line 119
    .line 120
    check-cast v1, Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_3

    .line 127
    .line 128
    iget-object v1, v2, Lcom/android/server/power/shutdown/ResourceManager;->subImages:Ljava/util/List;

    .line 129
    .line 130
    check-cast v1, Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_3

    .line 137
    .line 138
    iget-object v1, v2, Lcom/android/server/power/shutdown/ResourceManager;->mainLoopImage:Ljava/io/File;

    .line 139
    .line 140
    if-nez v1, :cond_3

    .line 141
    .line 142
    iget-object v1, v2, Lcom/android/server/power/shutdown/ResourceManager;->subLoopImage:Ljava/io/File;

    .line 143
    .line 144
    if-eqz v1, :cond_2

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_2
    const-string v0, "Shutdown-AnimationPlayer"

    .line 148
    .line 149
    const-string v1, "createPlayer can not make available player"

    .line 150
    .line 151
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    move-object v0, p1

    .line 155
    :cond_3
    :goto_0
    iput-object v0, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->animationPlayer:Lcom/android/server/power/shutdown/AnimationPlayer;

    .line 156
    .line 157
    if-nez v0, :cond_4

    .line 158
    .line 159
    const-string p1, "Shutdown-ShutdownDialog"

    .line 160
    .line 161
    const-string v0, "can\'t find available animation player"

    .line 162
    .line 163
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    :cond_4
    const/4 p1, 0x0

    .line 167
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    if-eqz p0, :cond_5

    .line 175
    .line 176
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    const-string v1, "ShutdownDialog"

    .line 181
    .line 182
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 183
    .line 184
    .line 185
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 186
    .line 187
    const v2, -0x7f95fa80

    .line 188
    .line 189
    .line 190
    or-int/2addr v1, v2

    .line 191
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 192
    .line 193
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 194
    .line 195
    or-int/lit8 v1, v1, 0x10

    .line 196
    .line 197
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 198
    .line 199
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 200
    .line 201
    or-int/lit8 v1, v1, 0x2

    .line 202
    .line 203
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 204
    .line 205
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 206
    .line 207
    or-int/lit8 v1, v1, 0x2

    .line 208
    .line 209
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 210
    .line 211
    const/high16 v1, 0x10000

    .line 212
    .line 213
    invoke-virtual {p0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 214
    .line 215
    .line 216
    const/16 v1, 0x7e5

    .line 217
    .line 218
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 219
    .line 220
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 221
    .line 222
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p0, p1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 226
    .line 227
    .line 228
    :cond_5
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "onCreate "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->animationPlayer:Lcom/android/server/power/shutdown/AnimationPlayer;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "Shutdown-ShutdownDialog"

    .line 19
    .line 20
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 37
    .line 38
    .line 39
    :cond_0
    new-instance p1, Landroid/widget/FrameLayout;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    invoke-direct {p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 47
    .line 48
    const/4 v1, -0x1

    .line 49
    const/16 v2, 0x11

    .line 50
    .line 51
    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    .line 56
    .line 57
    const/high16 v0, -0x1000000

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 60
    .line 61
    .line 62
    new-instance v0, Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;

    .line 63
    .line 64
    iget-object v3, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->mContext:Landroid/content/Context;

    .line 65
    .line 66
    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 67
    .line 68
    .line 69
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 70
    .line 71
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 72
    .line 73
    .line 74
    const/4 v3, 0x1

    .line 75
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->mImageView:Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;

    .line 79
    .line 80
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 81
    .line 82
    invoke-direct {v3, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    .line 87
    .line 88
    new-instance v0, Landroid/os/Handler;

    .line 89
    .line 90
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 95
    .line 96
    .line 97
    iput-object v0, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->logHandler:Landroid/os/Handler;

    .line 98
    .line 99
    new-instance v0, Landroid/widget/TextView;

    .line 100
    .line 101
    iget-object v2, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->mContext:Landroid/content/Context;

    .line 102
    .line 103
    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 104
    .line 105
    .line 106
    iput-object v0, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    .line 107
    .line 108
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 109
    .line 110
    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    .line 117
    .line 118
    const v1, -0xff0001

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->mImageView:Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;

    .line 125
    .line 126
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    .line 130
    .line 131
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 135
    .line 136
    .line 137
    iget-object p1, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->animationPlayer:Lcom/android/server/power/shutdown/AnimationPlayer;

    .line 138
    .line 139
    if-eqz p1, :cond_1

    .line 140
    .line 141
    iget-object p0, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->mImageView:Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;

    .line 142
    .line 143
    invoke-virtual {p1, p0}, Lcom/android/server/power/shutdown/AnimationPlayer;->setView(Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;)V

    .line 144
    .line 145
    .line 146
    :cond_1
    return-void
.end method

.method public final onStart()V
    .locals 8

    .line 1
    const-string/jumbo v0, "onStart"

    .line 2
    .line 3
    .line 4
    const-string v1, "Shutdown-ShutdownDialog"

    .line 5
    .line 6
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_4

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->animationPlayer:Lcom/android/server/power/shutdown/AnimationPlayer;

    .line 19
    .line 20
    if-eqz v2, :cond_4

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/android/server/power/shutdown/AnimationPlayer;->getMainAnimationWidthHeight()Landroid/util/Pair;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    const-string v0, "disableWindowRotation imageSize is null!"

    .line 29
    .line 30
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_0
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v3, Ljava/lang/Integer;

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v2, Ljava/lang/Integer;

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-ne v4, v5, :cond_1

    .line 51
    .line 52
    const-string v0, "disableWindowRotation width and height are same as "

    .line 53
    .line 54
    invoke-static {v4, v0, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    .line 63
    .line 64
    invoke-direct {v7}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v7, v6}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 68
    .line 69
    .line 70
    const/4 v6, 0x0

    .line 71
    if-le v4, v5, :cond_2

    .line 72
    .line 73
    iput v6, v7, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    const/4 v4, 0x1

    .line 77
    iput v4, v7, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 78
    .line 79
    :goto_0
    invoke-virtual {v0, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 80
    .line 81
    .line 82
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 83
    .line 84
    iget v4, v7, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 85
    .line 86
    if-nez v4, :cond_3

    .line 87
    .line 88
    const-string v4, "LANDSCAPE"

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    const-string v4, "PORTRAIT"

    .line 92
    .line 93
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v7, "disableWindowRotation width["

    .line 96
    .line 97
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v3, "] height["

    .line 104
    .line 105
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v2, "] orientation["

    .line 112
    .line 113
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v2, "]"

    .line 117
    .line 118
    invoke-static {v5, v4, v2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    new-array v3, v6, [Ljava/lang/Object;

    .line 123
    .line 124
    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->animationPlayer:Lcom/android/server/power/shutdown/AnimationPlayer;

    .line 132
    .line 133
    if-eqz v0, :cond_5

    .line 134
    .line 135
    invoke-interface {v0}, Lcom/android/server/power/shutdown/PlayerInterface;->start()V

    .line 136
    .line 137
    .line 138
    :cond_5
    iget-object p0, p0, Lcom/android/server/power/shutdown/ShutdownDialog;->soundPlayer:Lcom/android/server/power/shutdown/SoundPlayer;

    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/android/server/power/shutdown/SoundPlayer;->start()V

    .line 141
    .line 142
    .line 143
    return-void
.end method

.method public final onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 2
    .line 3
    .line 4
    const-string p0, "Shutdown-ShutdownDialog"

    .line 5
    .line 6
    const-string/jumbo v0, "onStop"

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void
.end method
