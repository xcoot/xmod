.class public final Lcom/android/server/display/OverlayDisplayWindow$4;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/OverlayDisplayWindow;


# direct methods
.method public constructor <init>(Lcom/android/server/display/OverlayDisplayWindow;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayWindow$4;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    .line 3
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayWindow$4;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    .line 3
    iget p1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveTranslationX:F

    .line 5
    sub-float/2addr p1, p3

    .line 6
    iput p1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveTranslationX:F

    .line 8
    iget p1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveTranslationY:F

    .line 10
    sub-float/2addr p1, p4

    .line 11
    iput p1, p0, Lcom/android/server/display/OverlayDisplayWindow;->mLiveTranslationY:F

    .line 13
    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayWindow;->relayout()V

    .line 16
    const/4 p0, 0x1

    .line 17
    return p0
.end method
