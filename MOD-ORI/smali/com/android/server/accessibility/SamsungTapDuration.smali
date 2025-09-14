.class public final Lcom/android/server/accessibility/SamsungTapDuration;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDownEvent:[Landroid/view/MotionEvent;

.field public final mDurationProgress:[Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

.field public final mHandler:Lcom/android/server/accessibility/SamsungTapDuration$1;

.field public mHoldingState:Z

.field public mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field public final mPolicyFlags:[I

.field public final mRawEvent:[Landroid/view/MotionEvent;

.field public mTapDurationObserver:Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;

.field public mTapDurationThreshold:F

.field public mTapDurationThresholdMilli:J


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    new-array v1, v0, [Landroid/view/MotionEvent;

    .line 6
    .line 7
    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDownEvent:[Landroid/view/MotionEvent;

    .line 8
    .line 9
    new-array v1, v0, [Landroid/view/MotionEvent;

    .line 10
    .line 11
    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mRawEvent:[Landroid/view/MotionEvent;

    .line 12
    .line 13
    new-array v1, v0, [Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    .line 14
    .line 15
    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    .line 16
    .line 17
    new-array v0, v0, [I

    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mPolicyFlags:[I

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHoldingState:Z

    .line 23
    .line 24
    new-instance v1, Lcom/android/server/accessibility/SamsungTapDuration$1;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/android/server/accessibility/SamsungTapDuration$1;-><init>(Lcom/android/server/accessibility/SamsungTapDuration;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHandler:Lcom/android/server/accessibility/SamsungTapDuration$1;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    new-instance v2, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;

    .line 34
    .line 35
    invoke-direct {v2, p0, p2, v1}, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;-><init>(Lcom/android/server/accessibility/SamsungTapDuration;ILcom/android/server/accessibility/SamsungTapDuration$1;)V

    .line 36
    .line 37
    .line 38
    iput-object v2, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mTapDurationObserver:Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    iget-object p1, v2, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 45
    .line 46
    if-nez p1, :cond_0

    .line 47
    .line 48
    iput-object p0, v2, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 49
    .line 50
    iget-object p1, v2, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mTapDurationSettingUri:Landroid/net/Uri;

    .line 51
    .line 52
    iget p2, v2, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mUserId:I

    .line 53
    .line 54
    invoke-virtual {p0, p1, v0, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 55
    .line 56
    .line 57
    iget-object p0, v2, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 58
    .line 59
    iget-object p1, v2, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mRemoveAnimationSettingUri:Landroid/net/Uri;

    .line 60
    .line 61
    iget p2, v2, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mUserId:I

    .line 62
    .line 63
    invoke-virtual {p0, p1, v0, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 64
    .line 65
    .line 66
    iget-object p0, v2, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mTapDurationSettingUri:Landroid/net/Uri;

    .line 67
    .line 68
    const/4 p1, 0x1

    .line 69
    invoke-virtual {v2, p1, p0}, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->onChange(ZLandroid/net/Uri;)V

    .line 70
    .line 71
    .line 72
    iget-object p0, v2, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mRemoveAnimationSettingUri:Landroid/net/Uri;

    .line 73
    .line 74
    invoke-virtual {v2, p1, p0}, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->onChange(ZLandroid/net/Uri;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 79
    .line 80
    const-string p1, "Observer already started."

    .line 81
    .line 82
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p0
.end method


# virtual methods
.method public final clearEvents(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final clearMotionEvents(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDownEvent:[Landroid/view/MotionEvent;

    .line 2
    .line 3
    aget-object v0, v0, p1

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDownEvent:[Landroid/view/MotionEvent;

    .line 12
    .line 13
    aput-object v1, v0, p1

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mRawEvent:[Landroid/view/MotionEvent;

    .line 16
    .line 17
    aget-object v0, v0, p1

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mRawEvent:[Landroid/view/MotionEvent;

    .line 25
    .line 26
    aput-object v1, v0, p1

    .line 27
    .line 28
    :cond_1
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mPolicyFlags:[I

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    aput v0, p0, p1

    .line 32
    .line 33
    return-void
.end method

.method public final onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final onActionTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x2

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v1, "Inject this event : "

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "SamsungTapDuration"

    .line 27
    .line 28
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 32
    .line 33
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method public final onDestroy()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHandler:Lcom/android/server/accessibility/SamsungTapDuration$1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    :goto_0
    const/4 v1, 0x4

    .line 9
    const/4 v2, 0x0

    .line 10
    if-ge v0, v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    .line 13
    .line 14
    aget-object v3, v1, v0

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    iput-object v2, v3, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    iget-object v4, v3, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mWindowManager:Landroid/view/WindowManager;

    .line 21
    .line 22
    iget-object v3, v3, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    .line 23
    .line 24
    invoke-interface {v4, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    aput-object v2, v1, v0

    .line 28
    .line 29
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mTapDurationObserver:Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    iget-object v1, v0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 41
    .line 42
    .line 43
    iput-object v2, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mTapDurationObserver:Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string v0, "ClickDelayObserver not started."

    .line 49
    .line 50
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :cond_3
    :goto_1
    return-void
.end method

.method public final onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x3

    .line 14
    if-gt v2, v3, :cond_1e

    .line 15
    .line 16
    if-lt v1, v3, :cond_0

    .line 17
    .line 18
    goto/16 :goto_12

    .line 19
    .line 20
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    const/4 v4, 0x0

    .line 25
    move v5, v4

    .line 26
    :goto_0
    const/4 v6, 0x4

    .line 27
    iget-object v7, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    .line 28
    .line 29
    if-ge v5, v6, :cond_3

    .line 30
    .line 31
    aget-object v6, v7, v5

    .line 32
    .line 33
    if-nez v6, :cond_2

    .line 34
    .line 35
    new-instance v6, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    .line 36
    .line 37
    iget-object v8, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    const-string/jumbo v9, "display"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    check-cast v8, Landroid/hardware/display/DisplayManager;

    .line 47
    .line 48
    if-eqz v8, :cond_1

    .line 49
    .line 50
    invoke-virtual {v8, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    if-eqz v8, :cond_1

    .line 55
    .line 56
    new-instance v9, Landroid/view/ContextThemeWrapper;

    .line 57
    .line 58
    iget-object v10, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    invoke-virtual {v10, v8}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    iget-object v10, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mContext:Landroid/content/Context;

    .line 65
    .line 66
    invoke-virtual {v10}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 67
    .line 68
    .line 69
    move-result-object v10

    .line 70
    invoke-direct {v9, v8, v10}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    iget-object v9, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mContext:Landroid/content/Context;

    .line 75
    .line 76
    :goto_1
    invoke-direct {v6, v9}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;-><init>(Landroid/content/Context;)V

    .line 77
    .line 78
    .line 79
    aput-object v6, v7, v5

    .line 80
    .line 81
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    const/4 v5, 0x1

    .line 89
    const-string v8, "SamsungTapDuration"

    .line 90
    .line 91
    iget-object v9, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHandler:Lcom/android/server/accessibility/SamsungTapDuration$1;

    .line 92
    .line 93
    iget-object v10, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mPolicyFlags:[I

    .line 94
    .line 95
    if-eqz v3, :cond_d

    .line 96
    .line 97
    if-eq v3, v5, :cond_a

    .line 98
    .line 99
    const/4 v5, 0x2

    .line 100
    if-eq v3, v5, :cond_8

    .line 101
    .line 102
    const/4 v2, 0x5

    .line 103
    if-eq v3, v2, :cond_6

    .line 104
    .line 105
    const/4 v0, 0x6

    .line 106
    if-eq v3, v0, :cond_4

    .line 107
    .line 108
    goto/16 :goto_12

    .line 109
    .line 110
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHoldingState:Z

    .line 111
    .line 112
    if-nez v0, :cond_5

    .line 113
    .line 114
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungTapDuration;->onActionTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/SamsungTapDuration;->clearMotionEvents(I)V

    .line 119
    .line 120
    .line 121
    aget-object p0, v7, v1

    .line 122
    .line 123
    if-eqz p0, :cond_1e

    .line 124
    .line 125
    new-instance p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$$ExternalSyntheticLambda0;

    .line 126
    .line 127
    const/4 p2, 0x1

    .line 128
    invoke-direct {p1, p0, p2}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 132
    .line 133
    .line 134
    goto/16 :goto_12

    .line 135
    .line 136
    :cond_6
    iget-boolean v2, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHoldingState:Z

    .line 137
    .line 138
    if-nez v2, :cond_7

    .line 139
    .line 140
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungTapDuration;->onActionTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 141
    .line 142
    .line 143
    :cond_7
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDownEvent:[Landroid/view/MotionEvent;

    .line 144
    .line 145
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    aput-object v3, v2, v1

    .line 150
    .line 151
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mRawEvent:[Landroid/view/MotionEvent;

    .line 152
    .line 153
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    aput-object p2, v2, v1

    .line 158
    .line 159
    aput p3, v10, v1

    .line 160
    .line 161
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 162
    .line 163
    .line 164
    move-result p2

    .line 165
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    invoke-virtual {p0, v1, p2, p1}, Lcom/android/server/accessibility/SamsungTapDuration;->setXY(IFF)V

    .line 170
    .line 171
    .line 172
    aget-object p0, v7, v1

    .line 173
    .line 174
    if-eqz p0, :cond_1e

    .line 175
    .line 176
    new-instance p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$$ExternalSyntheticLambda2;

    .line 177
    .line 178
    invoke-direct {p1, p0}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 182
    .line 183
    .line 184
    goto/16 :goto_12

    .line 185
    .line 186
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHoldingState:Z

    .line 187
    .line 188
    if-nez v0, :cond_9

    .line 189
    .line 190
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungTapDuration;->onActionTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 191
    .line 192
    .line 193
    :cond_9
    :goto_2
    if-ge v4, v2, :cond_1e

    .line 194
    .line 195
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    .line 196
    .line 197
    .line 198
    move-result p2

    .line 199
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    .line 200
    .line 201
    .line 202
    move-result p3

    .line 203
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/accessibility/SamsungTapDuration;->setXY(IFF)V

    .line 208
    .line 209
    .line 210
    add-int/lit8 v4, v4, 0x1

    .line 211
    .line 212
    goto :goto_2

    .line 213
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHoldingState:Z

    .line 214
    .line 215
    if-nez v0, :cond_b

    .line 216
    .line 217
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungTapDuration;->onActionTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 218
    .line 219
    .line 220
    :cond_b
    invoke-virtual {v9, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 221
    .line 222
    .line 223
    iput-boolean v4, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHoldingState:Z

    .line 224
    .line 225
    const-string p1, "Finish checking if this tap is valid "

    .line 226
    .line 227
    invoke-static {v8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/SamsungTapDuration;->clearMotionEvents(I)V

    .line 231
    .line 232
    .line 233
    :goto_3
    if-ge v4, v6, :cond_1e

    .line 234
    .line 235
    aget-object p0, v7, v4

    .line 236
    .line 237
    if-eqz p0, :cond_c

    .line 238
    .line 239
    new-instance p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$$ExternalSyntheticLambda0;

    .line 240
    .line 241
    const/4 p2, 0x1

    .line 242
    invoke-direct {p1, p0, p2}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;I)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 246
    .line 247
    .line 248
    :cond_c
    add-int/lit8 v4, v4, 0x1

    .line 249
    .line 250
    goto :goto_3

    .line 251
    :cond_d
    iput-boolean v5, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHoldingState:Z

    .line 252
    .line 253
    const-string v0, "Start checking if this tap is valid "

    .line 254
    .line 255
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDownEvent:[Landroid/view/MotionEvent;

    .line 259
    .line 260
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    aput-object v1, v0, v4

    .line 265
    .line 266
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mRawEvent:[Landroid/view/MotionEvent;

    .line 267
    .line 268
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 269
    .line 270
    .line 271
    move-result-object p2

    .line 272
    aput-object p2, v0, v4

    .line 273
    .line 274
    aput p3, v10, v4

    .line 275
    .line 276
    iget-wide p2, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mTapDurationThresholdMilli:J

    .line 277
    .line 278
    invoke-virtual {v9, v5, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 279
    .line 280
    .line 281
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    .line 282
    .line 283
    .line 284
    move-result p2

    .line 285
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    .line 286
    .line 287
    .line 288
    move-result p1

    .line 289
    invoke-virtual {p0, v4, p2, p1}, Lcom/android/server/accessibility/SamsungTapDuration;->setXY(IFF)V

    .line 290
    .line 291
    .line 292
    move p1, v4

    .line 293
    :goto_4
    if-ge p1, v6, :cond_1d

    .line 294
    .line 295
    aget-object p2, v7, p1

    .line 296
    .line 297
    if-eqz p2, :cond_1c

    .line 298
    .line 299
    iget-wide v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mTapDurationThresholdMilli:J

    .line 300
    .line 301
    iput-wide v0, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mDuration:J

    .line 302
    .line 303
    iget-boolean p3, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsShortThreshold:Z

    .line 304
    .line 305
    const-wide/16 v2, 0x12c

    .line 306
    .line 307
    cmp-long v0, v0, v2

    .line 308
    .line 309
    if-gez v0, :cond_e

    .line 310
    .line 311
    move v1, v5

    .line 312
    goto :goto_5

    .line 313
    :cond_e
    move v1, v4

    .line 314
    :goto_5
    if-eq p3, v1, :cond_1b

    .line 315
    .line 316
    if-gez v0, :cond_f

    .line 317
    .line 318
    move p3, v5

    .line 319
    goto :goto_6

    .line 320
    :cond_f
    move p3, v4

    .line 321
    :goto_6
    iput-boolean p3, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsShortThreshold:Z

    .line 322
    .line 323
    iget-object v0, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mCircle:Landroid/widget/ImageView;

    .line 324
    .line 325
    const/16 v1, 0x8

    .line 326
    .line 327
    if-nez p3, :cond_11

    .line 328
    .line 329
    iget-boolean v2, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsRemoveAnimationEnabled:Z

    .line 330
    .line 331
    if-eqz v2, :cond_10

    .line 332
    .line 333
    goto :goto_7

    .line 334
    :cond_10
    move v2, v4

    .line 335
    goto :goto_8

    .line 336
    :cond_11
    :goto_7
    move v2, v1

    .line 337
    :goto_8
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 338
    .line 339
    .line 340
    iget-object v0, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mArrow:Landroid/widget/ImageView;

    .line 341
    .line 342
    if-nez p3, :cond_13

    .line 343
    .line 344
    iget-boolean v2, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsRemoveAnimationEnabled:Z

    .line 345
    .line 346
    if-eqz v2, :cond_12

    .line 347
    .line 348
    goto :goto_9

    .line 349
    :cond_12
    move v2, v4

    .line 350
    goto :goto_a

    .line 351
    :cond_13
    :goto_9
    move v2, v1

    .line 352
    :goto_a
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 353
    .line 354
    .line 355
    iget-object v0, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mBackground:Landroid/widget/ImageView;

    .line 356
    .line 357
    if-nez p3, :cond_15

    .line 358
    .line 359
    iget-boolean v2, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsRemoveAnimationEnabled:Z

    .line 360
    .line 361
    if-eqz v2, :cond_14

    .line 362
    .line 363
    goto :goto_b

    .line 364
    :cond_14
    move v2, v4

    .line 365
    goto :goto_c

    .line 366
    :cond_15
    :goto_b
    move v2, v1

    .line 367
    :goto_c
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 368
    .line 369
    .line 370
    iget-object v0, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mProgress:Landroid/widget/ProgressBar;

    .line 371
    .line 372
    if-nez p3, :cond_17

    .line 373
    .line 374
    iget-boolean v2, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsRemoveAnimationEnabled:Z

    .line 375
    .line 376
    if-eqz v2, :cond_16

    .line 377
    .line 378
    goto :goto_d

    .line 379
    :cond_16
    move v2, v4

    .line 380
    goto :goto_e

    .line 381
    :cond_17
    :goto_d
    move v2, v1

    .line 382
    :goto_e
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 383
    .line 384
    .line 385
    iget-object v0, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mStandBy:Landroid/widget/ImageView;

    .line 386
    .line 387
    if-nez p3, :cond_19

    .line 388
    .line 389
    iget-boolean v2, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsRemoveAnimationEnabled:Z

    .line 390
    .line 391
    if-eqz v2, :cond_18

    .line 392
    .line 393
    goto :goto_f

    .line 394
    :cond_18
    move v2, v1

    .line 395
    goto :goto_10

    .line 396
    :cond_19
    :goto_f
    move v2, v4

    .line 397
    :goto_10
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 398
    .line 399
    .line 400
    iget-object v0, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mHold:Landroid/widget/ImageView;

    .line 401
    .line 402
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 403
    .line 404
    .line 405
    iget-object v0, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mContext:Landroid/content/Context;

    .line 406
    .line 407
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    if-eqz p3, :cond_1a

    .line 412
    .line 413
    const p3, 0x10500d2

    .line 414
    .line 415
    .line 416
    goto :goto_11

    .line 417
    :cond_1a
    const p3, 0x1050575

    .line 418
    .line 419
    .line 420
    :goto_11
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 421
    .line 422
    .line 423
    move-result p3

    .line 424
    iput p3, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mSize:I

    .line 425
    .line 426
    iget-object p3, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mStandBy:Landroid/widget/ImageView;

    .line 427
    .line 428
    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 429
    .line 430
    .line 431
    move-result-object p3

    .line 432
    iget v0, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mSize:I

    .line 433
    .line 434
    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 435
    .line 436
    iget-object p3, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mStandBy:Landroid/widget/ImageView;

    .line 437
    .line 438
    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 439
    .line 440
    .line 441
    move-result-object p3

    .line 442
    iget v0, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mSize:I

    .line 443
    .line 444
    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 445
    .line 446
    iget-object p3, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mHold:Landroid/widget/ImageView;

    .line 447
    .line 448
    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 449
    .line 450
    .line 451
    move-result-object p3

    .line 452
    iget v0, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mSize:I

    .line 453
    .line 454
    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 455
    .line 456
    iget-object p3, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mHold:Landroid/widget/ImageView;

    .line 457
    .line 458
    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 459
    .line 460
    .line 461
    move-result-object p3

    .line 462
    iget v0, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mSize:I

    .line 463
    .line 464
    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 465
    .line 466
    iget-object p3, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mStandBy:Landroid/widget/ImageView;

    .line 467
    .line 468
    invoke-virtual {p3}, Landroid/widget/ImageView;->requestLayout()V

    .line 469
    .line 470
    .line 471
    iget-object p2, p2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mHold:Landroid/widget/ImageView;

    .line 472
    .line 473
    invoke-virtual {p2}, Landroid/widget/ImageView;->requestLayout()V

    .line 474
    .line 475
    .line 476
    :cond_1b
    aget-object p2, v7, p1

    .line 477
    .line 478
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 479
    .line 480
    .line 481
    new-instance p3, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$$ExternalSyntheticLambda0;

    .line 482
    .line 483
    const/4 v0, 0x0

    .line 484
    invoke-direct {p3, p2, v0}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;I)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {p2, p3}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 488
    .line 489
    .line 490
    :cond_1c
    add-int/lit8 p1, p1, 0x1

    .line 491
    .line 492
    goto/16 :goto_4

    .line 493
    .line 494
    :cond_1d
    aget-object p0, v7, v4

    .line 495
    .line 496
    if-eqz p0, :cond_1e

    .line 497
    .line 498
    new-instance p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$$ExternalSyntheticLambda2;

    .line 499
    .line 500
    invoke-direct {p1, p0}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 504
    .line 505
    .line 506
    :cond_1e
    :goto_12
    return-void
.end method

.method public final setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/accessibility/BaseEventStreamTransformation;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 4
    .line 5
    return-void
.end method

.method public final setXY(IFF)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    if-le p1, v0, :cond_0

    .line 3
    .line 4
    const-string p0, "SamsungTapDuration"

    .line 5
    .line 6
    const-string/jumbo p1, "setXY()_pointerId is invalid!!"

    .line 7
    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    .line 14
    .line 15
    aget-object p0, p0, p1

    .line 16
    .line 17
    if-eqz p0, :cond_2

    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mDisplay:Landroid/view/Display;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-ne p1, v0, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 28
    .line 29
    float-to-int p2, p2

    .line 30
    iget v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mSize:I

    .line 31
    .line 32
    div-int/lit8 v0, v0, 0x2

    .line 33
    .line 34
    sub-int/2addr p2, v0

    .line 35
    iget v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mNavigationBarHeight:I

    .line 36
    .line 37
    sub-int/2addr p2, v0

    .line 38
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 42
    .line 43
    float-to-int p2, p2

    .line 44
    iget v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mSize:I

    .line 45
    .line 46
    div-int/lit8 v0, v0, 0x2

    .line 47
    .line 48
    sub-int/2addr p2, v0

    .line 49
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 50
    .line 51
    :goto_0
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 52
    .line 53
    float-to-int p2, p3

    .line 54
    iget p3, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mSize:I

    .line 55
    .line 56
    div-int/lit8 p3, p3, 0x2

    .line 57
    .line 58
    sub-int/2addr p2, p3

    .line 59
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 60
    .line 61
    new-instance p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$$ExternalSyntheticLambda0;

    .line 62
    .line 63
    const/4 p2, 0x2

    .line 64
    invoke-direct {p1, p0, p2}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    return-void
.end method
