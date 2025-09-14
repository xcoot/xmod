.class public final Lcom/android/server/display/OverlayDisplayWindow$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/OverlayDisplayWindow;


# direct methods
.method public constructor <init>(Lcom/android/server/display/OverlayDisplayWindow;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayWindow$3;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    .line 6
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 4
    move-result p1

    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 8
    move-result v0

    .line 9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 12
    move-result v1

    .line 13
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 16
    move-result v2

    .line 17
    invoke-virtual {p2, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 20
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow$3;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    .line 22
    iget-object v1, v1, Lcom/android/server/display/OverlayDisplayWindow;->mGestureDetector:Landroid/view/GestureDetector;

    .line 24
    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 27
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow$3;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    .line 29
    iget-object v1, v1, Lcom/android/server/display/OverlayDisplayWindow;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 31
    invoke-virtual {v1, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 34
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 37
    move-result v1

    .line 38
    const/4 v2, 0x1

    .line 39
    if-eq v1, v2, :cond_0

    .line 41
    const/4 v3, 0x3

    .line 42
    if-eq v1, v3, :cond_0

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayWindow$3;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    .line 47
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 49
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 51
    iput v3, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowX:I

    .line 53
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 55
    iput v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowY:I

    .line 57
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    .line 59
    invoke-virtual {v1}, Landroid/view/TextureView;->getScaleX()F

    .line 62
    move-result v1

    .line 63
    iput v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mWindowScale:F

    .line 65
    const/4 v1, 0x0

    .line 66
    iput v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveTranslationX:F

    .line 68
    iput v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveTranslationY:F

    .line 70
    const/high16 v1, 0x3f800000    # 1.0f

    .line 72
    iput v1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveScale:F

    .line 74
    :goto_0
    invoke-virtual {p2, p1, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 77
    return v2
.end method
