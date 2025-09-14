.class public final synthetic Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/magnification/MagnificationThumbnail;

.field public final synthetic f$1:Landroid/graphics/Rect;

.field public final synthetic f$2:F

.field public final synthetic f$3:F

.field public final synthetic f$4:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/magnification/MagnificationThumbnail;Landroid/graphics/Rect;FFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/accessibility/magnification/MagnificationThumbnail;

    .line 6
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda4;->f$1:Landroid/graphics/Rect;

    .line 8
    iput p3, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda4;->f$2:F

    .line 10
    iput p4, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda4;->f$3:F

    .line 12
    iput p5, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda4;->f$4:F

    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/accessibility/magnification/MagnificationThumbnail;

    .line 3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda4;->f$1:Landroid/graphics/Rect;

    .line 5
    iget v2, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda4;->f$2:F

    .line 7
    iget v3, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda4;->f$3:F

    .line 9
    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda4;->f$4:F

    .line 11
    iput-object v1, v0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mWindowBounds:Landroid/graphics/Rect;

    .line 13
    new-instance v1, Landroid/graphics/Point;

    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-direct {v1, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 19
    iget-object v4, v0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mContext:Landroid/content/Context;

    .line 21
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    move-result-object v4

    .line 25
    const v5, 0x1050272

    .line 28
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 31
    move-result v4

    .line 32
    iput v4, v1, Landroid/graphics/Point;->x:I

    .line 34
    iput v4, v1, Landroid/graphics/Point;->y:I

    .line 36
    iget-object v4, v0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mWindowBounds:Landroid/graphics/Rect;

    .line 38
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 41
    move-result v4

    .line 42
    int-to-float v4, v4

    .line 43
    const/high16 v5, 0x40e00000    # 7.0f

    .line 45
    div-float/2addr v4, v5

    .line 46
    float-to-int v4, v4

    .line 47
    iput v4, v0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailWidth:I

    .line 49
    iget-object v4, v0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mWindowBounds:Landroid/graphics/Rect;

    .line 51
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 54
    move-result v4

    .line 55
    int-to-float v4, v4

    .line 56
    div-float/2addr v4, v5

    .line 57
    float-to-int v4, v4

    .line 58
    iput v4, v0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailHeight:I

    .line 60
    iget v5, v1, Landroid/graphics/Point;->x:I

    .line 62
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 64
    iget-object v6, v0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mBackgroundParams:Landroid/view/WindowManager$LayoutParams;

    .line 66
    iget v7, v0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailWidth:I

    .line 68
    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 70
    iput v4, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 72
    iput v5, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 74
    iput v1, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 76
    iget-boolean v1, v0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mVisible:Z

    .line 78
    if-eqz v1, :cond_1

    .line 80
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->isFlipCoverScreen()Z

    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_0

    .line 86
    iget-object v1, v0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mSubDisplayWindowManager:Landroid/view/WindowManager;

    .line 88
    iget-object v4, v0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailLayout:Landroid/widget/FrameLayout;

    .line 90
    iget-object v5, v0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mBackgroundParams:Landroid/view/WindowManager$LayoutParams;

    .line 92
    invoke-interface {v1, v4, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    goto :goto_0

    .line 96
    :cond_0
    iget-object v1, v0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mWindowManager:Landroid/view/WindowManager;

    .line 98
    iget-object v4, v0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailLayout:Landroid/widget/FrameLayout;

    .line 100
    iget-object v5, v0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mBackgroundParams:Landroid/view/WindowManager$LayoutParams;

    .line 102
    invoke-interface {v1, v4, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    :cond_1
    :goto_0
    iget-boolean v1, v0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mVisible:Z

    .line 107
    if-eqz v1, :cond_2

    .line 109
    invoke-virtual {v0, v2, v3, p0}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->updateThumbnailMainThread(FFF)V

    .line 112
    new-instance p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda0;

    .line 114
    const/4 v1, 0x3

    .line 115
    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/magnification/MagnificationThumbnail;I)V

    .line 118
    const-wide/16 v1, 0xc8

    .line 120
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mHandler:Landroid/os/Handler;

    .line 122
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 125
    :cond_2
    return-void
.end method
