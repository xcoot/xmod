.class public final Lcom/android/server/display/OverlayDisplayWindow$5;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/OverlayDisplayWindow;


# direct methods
.method public constructor <init>(Lcom/android/server/display/OverlayDisplayWindow;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayWindow$5;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    .line 3
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow$5;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    .line 3
    iget v1, v0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveScale:F

    .line 5
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    .line 8
    move-result p1

    .line 9
    mul-float/2addr p1, v1

    .line 10
    iput p1, v0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveScale:F

    .line 12
    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayWindow$5;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    .line 14
    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayWindow;->relayout()V

    .line 17
    const/4 p0, 0x1

    .line 18
    return p0
.end method
