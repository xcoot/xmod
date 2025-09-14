.class public final Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/SystemPerformancePointerEventListener;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/SystemPerformancePointerEventListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;->this$0:Lcom/android/server/wm/SystemPerformancePointerEventListener;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    iget-object p3, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;->this$0:Lcom/android/server/wm/SystemPerformancePointerEventListener;

    .line 6
    .line 7
    iget-object p3, p3, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {p3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    invoke-virtual {p3}, Landroid/view/Display;->getRefreshRate()F

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    const/high16 p4, 0x42b40000    # 90.0f

    .line 18
    .line 19
    cmpl-float p3, p3, p4

    .line 20
    .line 21
    if-ltz p3, :cond_0

    .line 22
    .line 23
    iget-object p3, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;->this$0:Lcom/android/server/wm/SystemPerformancePointerEventListener;

    .line 24
    .line 25
    iget-object p4, p3, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 26
    .line 27
    if-eqz p4, :cond_0

    .line 28
    .line 29
    iget-wide v0, p3, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mLastAcquireTime:J

    .line 30
    .line 31
    sub-long v0, p1, v0

    .line 32
    .line 33
    const-wide/16 v2, 0x1f4

    .line 34
    .line 35
    cmp-long p4, v0, v2

    .line 36
    .line 37
    if-ltz p4, :cond_0

    .line 38
    .line 39
    iget-object p4, p3, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollReleaseRunnable:Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda0;

    .line 40
    .line 41
    if-eqz p4, :cond_0

    .line 42
    .line 43
    iget-object v0, p3, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollAcquireRunnable:Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda0;

    .line 44
    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    iget-object p3, p3, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mHandler:Landroid/os/Handler;

    .line 48
    .line 49
    invoke-virtual {p3, p4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 50
    .line 51
    .line 52
    iget-object p3, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;->this$0:Lcom/android/server/wm/SystemPerformancePointerEventListener;

    .line 53
    .line 54
    iget-object p4, p3, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mHandler:Landroid/os/Handler;

    .line 55
    .line 56
    iget-object p3, p3, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollAcquireRunnable:Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda0;

    .line 57
    .line 58
    invoke-virtual {p4, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;->this$0:Lcom/android/server/wm/SystemPerformancePointerEventListener;

    .line 62
    .line 63
    iput-wide p1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mLastAcquireTime:J

    .line 64
    .line 65
    iget-object p1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mHandler:Landroid/os/Handler;

    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollReleaseRunnable:Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda0;

    .line 68
    .line 69
    const-wide/16 p2, 0x3e8

    .line 70
    .line 71
    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 72
    .line 73
    .line 74
    :cond_0
    const/4 p0, 0x1

    .line 75
    return p0
.end method
