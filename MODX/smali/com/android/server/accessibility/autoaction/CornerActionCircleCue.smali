.class public final Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mDisplay:Landroid/view/Display;

.field public final mDragPointImageView:Landroid/widget/ImageView;

.field public mDurationTime:J

.field public final mHandler:Landroid/os/Handler;

.field public final mNavigationBarHeight:I

.field public final mParams:Landroid/view/WindowManager$LayoutParams;

.field public final mProgressImageView:Landroid/widget/ImageView;

.field public final mScale:F

.field public final mStandbyImageView:Landroid/widget/ImageView;

.field public final mUiThread:Ljava/lang/Thread;

.field public final mView:Landroid/view/View;

.field public final mWidth:I

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mNavigationBarHeight:I

    .line 7
    new-instance v1, Landroid/os/Handler;

    .line 9
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 12
    iput-object v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mHandler:Landroid/os/Handler;

    .line 14
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 17
    move-result-object v1

    .line 18
    iput-object v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mUiThread:Ljava/lang/Thread;

    .line 20
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mContext:Landroid/content/Context;

    .line 22
    if-eqz p1, :cond_4

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    .line 31
    move-result p1

    .line 32
    const/4 v1, 0x2

    .line 33
    if-ne p1, v1, :cond_0

    .line 35
    const/high16 p1, 0x3f000000    # 0.5f

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 40
    :goto_0
    iput p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mScale:F

    .line 42
    const-wide/16 v1, 0x0

    .line 44
    iput-wide v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mDurationTime:J

    .line 46
    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mContext:Landroid/content/Context;

    .line 48
    const-string/jumbo v2, "window"

    .line 51
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Landroid/view/WindowManager;

    .line 57
    iput-object v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mWindowManager:Landroid/view/WindowManager;

    .line 59
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 62
    move-result-object v1

    .line 63
    iput-object v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mDisplay:Landroid/view/Display;

    .line 65
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    .line 67
    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 70
    iput-object v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 72
    const/4 v2, -0x2

    .line 73
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 75
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 77
    const/16 v2, 0x7e8

    .line 79
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 81
    const/16 v2, 0x718

    .line 83
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 85
    const/4 v2, -0x3

    .line 86
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 88
    const/16 v2, 0x33

    .line 90
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 92
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 94
    const/high16 v3, 0x20000

    .line 96
    or-int/2addr v2, v3

    .line 97
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 99
    const/4 v2, 0x1

    .line 100
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 102
    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mContext:Landroid/content/Context;

    .line 104
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 107
    move-result-object v1

    .line 108
    const v3, 0x1090070

    .line 111
    const/4 v4, 0x0

    .line 112
    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 115
    move-result-object v1

    .line 116
    iput-object v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mView:Landroid/view/View;

    .line 118
    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    .line 121
    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mView:Landroid/view/View;

    .line 123
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 126
    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mView:Landroid/view/View;

    .line 128
    const/16 v3, 0x8

    .line 130
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 133
    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mView:Landroid/view/View;

    .line 135
    const v4, 0x1020622

    .line 138
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 141
    move-result-object v1

    .line 142
    check-cast v1, Landroid/widget/ImageView;

    .line 144
    iget-object v4, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mView:Landroid/view/View;

    .line 146
    const v5, 0x1020624

    .line 149
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 152
    move-result-object v4

    .line 153
    check-cast v4, Landroid/widget/ImageView;

    .line 155
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mView:Landroid/view/View;

    .line 163
    const v4, 0x1020628

    .line 166
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 169
    move-result-object v1

    .line 170
    check-cast v1, Landroid/widget/ImageView;

    .line 172
    iput-object v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mStandbyImageView:Landroid/widget/ImageView;

    .line 174
    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mView:Landroid/view/View;

    .line 176
    const v4, 0x1020626

    .line 179
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 182
    move-result-object v1

    .line 183
    check-cast v1, Landroid/widget/ImageView;

    .line 185
    iput-object v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mProgressImageView:Landroid/widget/ImageView;

    .line 187
    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mView:Landroid/view/View;

    .line 189
    const v4, 0x1020625

    .line 192
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 195
    move-result-object v1

    .line 196
    check-cast v1, Landroid/widget/ImageView;

    .line 198
    iput-object v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mDragPointImageView:Landroid/widget/ImageView;

    .line 200
    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mStandbyImageView:Landroid/widget/ImageView;

    .line 202
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 205
    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mStandbyImageView:Landroid/widget/ImageView;

    .line 207
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 210
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mProgressImageView:Landroid/widget/ImageView;

    .line 212
    const/4 v1, 0x0

    .line 213
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 216
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mProgressImageView:Landroid/widget/ImageView;

    .line 218
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 221
    if-nez p2, :cond_1

    .line 223
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mStandbyImageView:Landroid/widget/ImageView;

    .line 225
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 228
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mProgressImageView:Landroid/widget/ImageView;

    .line 230
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 233
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mDragPointImageView:Landroid/widget/ImageView;

    .line 235
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 238
    goto :goto_1

    .line 239
    :cond_1
    if-ne p2, v2, :cond_2

    .line 241
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mStandbyImageView:Landroid/widget/ImageView;

    .line 243
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 246
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mProgressImageView:Landroid/widget/ImageView;

    .line 248
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 251
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mDragPointImageView:Landroid/widget/ImageView;

    .line 253
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 256
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mView:Landroid/view/View;

    .line 258
    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 261
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mView:Landroid/view/View;

    .line 263
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 266
    move-result p1

    .line 267
    iput p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mWidth:I

    .line 269
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mWindowManager:Landroid/view/WindowManager;

    .line 271
    iget-object p2, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mView:Landroid/view/View;

    .line 273
    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 275
    invoke-interface {p1, p2, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mContext:Landroid/content/Context;

    .line 280
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 283
    move-result-object p1

    .line 284
    const p2, 0x1110227

    .line 287
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 290
    move-result p1

    .line 291
    if-eqz p1, :cond_3

    .line 293
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mContext:Landroid/content/Context;

    .line 295
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 298
    move-result-object p1

    .line 299
    const p2, 0x10502c9

    .line 302
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 305
    move-result v0

    .line 306
    :cond_3
    iput v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mNavigationBarHeight:I

    .line 308
    :cond_4
    return-void
.end method


# virtual methods
.method public final finalize()V
    .locals 0

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 4
    return-void
.end method

.method public final runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mUiThread:Ljava/lang/Thread;

    .line 7
    if-eq v0, v1, :cond_0

    .line 9
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mHandler:Landroid/os/Handler;

    .line 11
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 18
    :goto_0
    return-void
.end method
