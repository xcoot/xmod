.class public final Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mOverscroller:Landroid/widget/OverScroller;

.field public final synthetic this$0:Lcom/android/server/wm/SystemGesturesPointerEventListener;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/SystemGesturesPointerEventListener;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/widget/OverScroller;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    iget-object v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    .line 13
    .line 14
    iget-wide v3, v3, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mLastFlingTime:J

    .line 15
    .line 16
    const-wide/16 v5, 0x0

    .line 17
    .line 18
    cmp-long v5, v3, v5

    .line 19
    .line 20
    const/4 v6, 0x1

    .line 21
    if-eqz v5, :cond_0

    .line 22
    .line 23
    const-wide/16 v7, 0x1388

    .line 24
    .line 25
    add-long/2addr v3, v7

    .line 26
    cmp-long v3, v1, v3

    .line 27
    .line 28
    if-lez v3, :cond_0

    .line 29
    .line 30
    iget-object v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    .line 31
    .line 32
    invoke-virtual {v3, v6}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v7, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    .line 36
    .line 37
    move/from16 v3, p3

    .line 38
    .line 39
    float-to-int v10, v3

    .line 40
    move/from16 v3, p4

    .line 41
    .line 42
    float-to-int v11, v3

    .line 43
    const/high16 v14, -0x80000000

    .line 44
    .line 45
    const v15, 0x7fffffff

    .line 46
    .line 47
    .line 48
    const/4 v8, 0x0

    .line 49
    const/4 v9, 0x0

    .line 50
    const/high16 v12, -0x80000000

    .line 51
    .line 52
    const v13, 0x7fffffff

    .line 53
    .line 54
    .line 55
    invoke-virtual/range {v7 .. v15}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 56
    .line 57
    .line 58
    iget-object v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    .line 59
    .line 60
    invoke-virtual {v3}, Landroid/widget/OverScroller;->getDuration()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    const/16 v4, 0x1388

    .line 65
    .line 66
    if-le v3, v4, :cond_1

    .line 67
    .line 68
    move v3, v4

    .line 69
    :cond_1
    iget-object v4, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    .line 70
    .line 71
    iput-wide v1, v4, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mLastFlingTime:J

    .line 72
    .line 73
    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    .line 74
    .line 75
    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 76
    .line 77
    .line 78
    iget-object v0, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    .line 79
    .line 80
    iget-object v0, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_PERFORMANCE:Z

    .line 86
    .line 87
    if-eqz v1, :cond_2

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 91
    .line 92
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 93
    .line 94
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 95
    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    const/4 v1, 0x0

    .line 99
    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManagerInternal;->setPowerBoost(II)V

    .line 100
    .line 101
    .line 102
    :cond_3
    :goto_0
    return v6
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return v0
.end method
