.class public final Lcom/android/server/wm/SystemPerformancePointerEventListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mGestureDetector:Lcom/android/server/wm/SystemPerformancePointerEventListener$1;

.field public final mHandler:Landroid/os/Handler;

.field public mLastAcquireTime:J

.field public final mScrollAcquireRunnable:Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda0;

.field public final mScrollDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

.field public final mScrollReleaseRunnable:Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/android/server/wm/SystemPerformancePointerEventListener;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    new-instance v0, Landroid/os/Handler;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mHandler:Landroid/os/Handler;

    .line 18
    .line 19
    const-string v1, "WM_SCROLL_DETECTED"

    .line 20
    .line 21
    invoke-static {p1, v1}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    const v1, 0x10002003

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v1}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency(I)[I

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    array-length v3, v2

    .line 39
    if-lez v3, :cond_0

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    aget v2, v2, v3

    .line 43
    .line 44
    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->addResourceValue(II)V

    .line 45
    .line 46
    .line 47
    const-wide/16 v1, 0x0

    .line 48
    .line 49
    iput-wide v1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mLastAcquireTime:J

    .line 50
    .line 51
    new-instance p1, Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda0;

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-direct {p1, p0, v1}, Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/SystemPerformancePointerEventListener;I)V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollReleaseRunnable:Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda0;

    .line 58
    .line 59
    new-instance p1, Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda0;

    .line 60
    .line 61
    const/4 v1, 0x1

    .line 62
    invoke-direct {p1, p0, v1}, Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/SystemPerformancePointerEventListener;I)V

    .line 63
    .line 64
    .line 65
    iput-object p1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollAcquireRunnable:Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda0;

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    const-string p1, "SemDvfsManager Not Initialized..."

    .line 69
    .line 70
    const-string v1, "SystemPerformancePointerEventListener"

    .line 71
    .line 72
    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    const/4 p1, 0x0

    .line 76
    iput-object p1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 77
    .line 78
    :cond_1
    :goto_0
    new-instance p1, Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda0;

    .line 79
    .line 80
    const/4 v1, 0x2

    .line 81
    invoke-direct {p1, p0, v1}, Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/SystemPerformancePointerEventListener;I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 85
    .line 86
    .line 87
    return-void
.end method


# virtual methods
.method public final onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mGestureDetector:Lcom/android/server/wm/SystemPerformancePointerEventListener$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mGestureDetector:Lcom/android/server/wm/SystemPerformancePointerEventListener$1;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const/4 v0, 0x1

    .line 21
    if-eq p1, v0, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x3

    .line 24
    if-eq p1, v0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    iget-object p1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollReleaseRunnable:Lcom/android/server/wm/SystemPerformancePointerEventListener$$ExternalSyntheticLambda0;

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mHandler:Landroid/os/Handler;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 43
    .line 44
    .line 45
    const-wide/16 v0, 0x0

    .line 46
    .line 47
    iput-wide v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mLastAcquireTime:J

    .line 48
    .line 49
    :cond_2
    :goto_0
    return-void
.end method
