.class public final Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;


# instance fields
.field public final mGesturesObserver:Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;

.field public final synthetic this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;Landroid/content/Context;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    .line 6
    invoke-static {}, Lcom/android/server/accessibility/Flags;->enableMagnificationMultipleFingerMultipleTapGesture()Z

    .line 9
    new-instance v0, Lcom/android/server/accessibility/gestures/MultiTap;

    .line 11
    iget-boolean v1, p1, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDetectSingleFingerTripleTap:Z

    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x3

    .line 15
    if-eqz v1, :cond_0

    .line 17
    move v4, v3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v4, v2

    .line 20
    :goto_0
    const/16 v5, 0x69

    .line 22
    if-eqz v1, :cond_1

    .line 24
    move v1, v5

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const/16 v1, 0x67

    .line 28
    :goto_1
    const/4 v6, 0x0

    .line 29
    invoke-direct {v0, p2, v4, v1, v6}, Lcom/android/server/accessibility/gestures/MultiTap;-><init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 32
    new-instance v1, Lcom/android/server/accessibility/gestures/MultiTapAndHold;

    .line 34
    iget-boolean v4, p1, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDetectSingleFingerTripleTap:Z

    .line 36
    if-eqz v4, :cond_2

    .line 38
    move v2, v3

    .line 39
    :cond_2
    const/16 v7, 0x6a

    .line 41
    if-eqz v4, :cond_3

    .line 43
    move v8, v7

    .line 44
    goto :goto_2

    .line 45
    :cond_3
    const/16 v8, 0x68

    .line 47
    :goto_2
    invoke-direct {v1, p2, v2, v8, v6}, Lcom/android/server/accessibility/gestures/MultiTap;-><init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 50
    new-instance v2, Lcom/android/server/accessibility/gestures/MultiTap;

    .line 52
    const/4 v8, 0x2

    .line 53
    if-eqz v4, :cond_4

    .line 55
    move v9, v3

    .line 56
    goto :goto_3

    .line 57
    :cond_4
    move v9, v8

    .line 58
    :goto_3
    if-eqz v4, :cond_5

    .line 60
    goto :goto_4

    .line 61
    :cond_5
    const/16 v5, 0xc9

    .line 63
    :goto_4
    invoke-direct {v2, p2, v9, v5, v6}, Lcom/android/server/accessibility/gestures/MultiTap;-><init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 66
    new-instance v5, Lcom/android/server/accessibility/gestures/MultiTapAndHold;

    .line 68
    if-eqz v4, :cond_6

    .line 70
    goto :goto_5

    .line 71
    :cond_6
    move v3, v8

    .line 72
    :goto_5
    if-eqz v4, :cond_7

    .line 74
    goto :goto_6

    .line 75
    :cond_7
    const/16 v7, 0xca

    .line 77
    :goto_6
    invoke-direct {v5, p2, v3, v7, v6}, Lcom/android/server/accessibility/gestures/MultiTap;-><init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 80
    iget-object p1, p1, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mContext:Landroid/content/Context;

    .line 82
    const-string v3, "accessibility"

    .line 84
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    .line 90
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->semIsScreenReaderEnabled()Z

    .line 93
    move-result p1

    .line 94
    new-instance v3, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;

    .line 96
    new-instance v4, Lcom/android/server/accessibility/magnification/SimpleSwipe;

    .line 98
    invoke-direct {v4, p2}, Lcom/android/server/accessibility/magnification/SimpleSwipe;-><init>(Landroid/content/Context;)V

    .line 101
    if-eqz p1, :cond_8

    .line 103
    move-object v0, v2

    .line 104
    :cond_8
    if-eqz p1, :cond_9

    .line 106
    move-object v1, v5

    .line 107
    :cond_9
    new-instance p1, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;

    .line 109
    invoke-direct {p1, p2}, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;-><init>(Landroid/content/Context;)V

    .line 112
    filled-new-array {v4, v0, v1, p1}, [Lcom/android/server/accessibility/gestures/GestureMatcher;

    .line 115
    move-result-object p1

    .line 116
    invoke-direct {v3, p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;-><init>(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;[Lcom/android/server/accessibility/gestures/GestureMatcher;)V

    .line 119
    iput-object v3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->mGesturesObserver:Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;

    .line 121
    return-void
.end method


# virtual methods
.method public final onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->mGesturesObserver:Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-boolean v0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->DBG:Z

    .line 8
    const-string v1, "MagnificationGesturesObserver"

    .line 10
    if-eqz v0, :cond_0

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    const-string v3, "DetectGesture: event = "

    .line 16
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 32
    move-result-object v2

    .line 33
    iput-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mLastEvent:Landroid/view/MotionEvent;

    .line 35
    new-instance v2, Lcom/android/server/accessibility/magnification/MotionEventInfo;

    .line 37
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 40
    move-result-object v3

    .line 41
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 44
    move-result-object v4

    .line 45
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v3, v2, Lcom/android/server/accessibility/magnification/MotionEventInfo;->mEvent:Landroid/view/MotionEvent;

    .line 50
    iput-object v4, v2, Lcom/android/server/accessibility/magnification/MotionEventInfo;->mRawEvent:Landroid/view/MotionEvent;

    .line 52
    iput p3, v2, Lcom/android/server/accessibility/magnification/MotionEventInfo;->mPolicyFlags:I

    .line 54
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mDelayedEventQueue:Ljava/util/List;

    .line 56
    if-nez v3, :cond_1

    .line 58
    new-instance v3, Ljava/util/LinkedList;

    .line 60
    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 63
    iput-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mDelayedEventQueue:Ljava/util/List;

    .line 65
    :cond_1
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mDelayedEventQueue:Ljava/util/List;

    .line 67
    check-cast v3, Ljava/util/LinkedList;

    .line 69
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;

    .line 74
    iget-object v2, v2, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    .line 76
    iget-object v3, v2, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 78
    iget v4, v2, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 80
    invoke-virtual {v3, v4}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isWindowMagnifierEnabled(I)Z

    .line 83
    move-result v3

    .line 84
    if-nez v3, :cond_2

    .line 86
    iget-boolean v2, v2, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDetectSingleFingerTripleTap:Z

    .line 88
    if-nez v2, :cond_2

    .line 90
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->notifyDetectionCancel()V

    .line 93
    goto :goto_1

    .line 94
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 97
    move-result v2

    .line 98
    if-nez v2, :cond_3

    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 103
    move-result-wide v2

    .line 104
    iput-wide v2, p0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mLastDownEventTime:J

    .line 106
    :cond_3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mGesturesObserver:Lcom/android/server/accessibility/magnification/GesturesObserver;

    .line 108
    iget-boolean v2, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mObserveStarted:Z

    .line 110
    const/4 v3, 0x1

    .line 111
    if-nez v2, :cond_6

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 116
    move-result v2

    .line 117
    if-eqz v2, :cond_5

    .line 119
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mListener:Lcom/android/server/accessibility/magnification/GesturesObserver$Listener;

    .line 121
    check-cast p2, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;

    .line 123
    if-eqz v0, :cond_4

    .line 125
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    new-instance p3, Ljava/lang/StringBuilder;

    .line 130
    const-string/jumbo v0, "onGestureCancelled:  event = "

    .line 133
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    move-result-object p1

    .line 143
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_4
    invoke-virtual {p2}, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->notifyDetectionCancel()V

    .line 149
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/GesturesObserver;->clear$1()V

    .line 152
    goto :goto_1

    .line 153
    :cond_5
    iput-boolean v3, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mObserveStarted:Z

    .line 155
    :cond_6
    iput-boolean v3, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mProcessMotionEvent:Z

    .line 157
    const/4 v0, 0x0

    .line 158
    move v1, v0

    .line 159
    :goto_0
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mGestureMatchers:Ljava/util/List;

    .line 161
    check-cast v2, Ljava/util/ArrayList;

    .line 163
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 166
    move-result v2

    .line 167
    if-ge v1, v2, :cond_8

    .line 169
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mGestureMatchers:Ljava/util/List;

    .line 171
    check-cast v2, Ljava/util/ArrayList;

    .line 173
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 176
    move-result-object v2

    .line 177
    check-cast v2, Lcom/android/server/accessibility/gestures/GestureMatcher;

    .line 179
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 182
    iget v2, v2, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    .line 184
    const/4 v3, 0x2

    .line 185
    if-ne v2, v3, :cond_7

    .line 187
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/GesturesObserver;->clear$1()V

    .line 190
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mProcessMotionEvent:Z

    .line 192
    goto :goto_1

    .line 193
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 195
    goto :goto_0

    .line 196
    :cond_8
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mProcessMotionEvent:Z

    .line 198
    :goto_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "DetectingState{mGestureTimeoutObserver="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->mGesturesObserver:Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    const/16 p0, 0x7d

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
