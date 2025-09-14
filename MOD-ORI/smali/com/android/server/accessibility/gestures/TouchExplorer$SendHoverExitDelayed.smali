.class public final Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public mPointerIdBits:I

.field public mPolicyFlags:I

.field public mPrototype:Ljava/lang/Object;

.field public mRawEvent:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/gestures/TouchExplorer;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 16
    .line 17
    new-instance p1, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPrototype:Ljava/lang/Object;

    .line 23
    .line 24
    new-instance p1, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mRawEvent:Ljava/lang/Object;

    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPrototype:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/List;

    .line 4
    .line 5
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mRawEvent:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Ljava/util/List;

    .line 17
    .line 18
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final cancel()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->isPending()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mHandler:Landroid/os/Handler;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->clear()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void

    .line 23
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->isPending()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mHandler:Landroid/os/Handler;

    .line 32
    .line 33
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPrototype:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Landroid/view/MotionEvent;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mRawEvent:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Landroid/view/MotionEvent;

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 52
    .line 53
    .line 54
    :cond_2
    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPrototype:Ljava/lang/Object;

    .line 56
    .line 57
    iput-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mRawEvent:Ljava/lang/Object;

    .line 58
    .line 59
    const/4 v0, -0x1

    .line 60
    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPointerIdBits:I

    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPolicyFlags:I

    .line 64
    .line 65
    :cond_3
    return-void

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public clear()V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPointerIdBits:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPolicyFlags:I

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPrototype:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Ljava/util/List;

    .line 10
    .line 11
    check-cast v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    add-int/lit8 v0, v0, -0x1

    .line 18
    .line 19
    :goto_0
    if-ltz v0, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPrototype:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Ljava/util/List;

    .line 24
    .line 25
    check-cast v1, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroid/view/MotionEvent;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 34
    .line 35
    .line 36
    add-int/lit8 v0, v0, -0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mRawEvent:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Ljava/util/List;

    .line 42
    .line 43
    check-cast v0, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    add-int/lit8 v0, v0, -0x1

    .line 50
    .line 51
    :goto_1
    if-ltz v0, :cond_1

    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mRawEvent:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v1, Ljava/util/List;

    .line 56
    .line 57
    check-cast v1, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Landroid/view/MotionEvent;

    .line 64
    .line 65
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 66
    .line 67
    .line 68
    add-int/lit8 v0, v0, -0x1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    return-void
.end method

.method public final isPending()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mHandler:Landroid/os/Handler;

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    .line 9
    .line 10
    iget v0, v0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x1

    .line 17
    if-le v0, v1, :cond_0

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v1, "Attempted touch exploration with "

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    .line 29
    .line 30
    iget p0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    .line 31
    .line 32
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p0, " pointers down."

    .line 40
    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    const-string v0, "TouchExplorer"

    .line 49
    .line 50
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    goto/16 :goto_1

    .line 54
    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPrototype:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v0, Ljava/util/List;

    .line 58
    .line 59
    check-cast v0, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_1

    .line 66
    .line 67
    goto/16 :goto_1

    .line 68
    .line 69
    :cond_1
    invoke-static {}, Lcom/android/server/accessibility/Flags;->sendHoverEventsBasedOnEventStream()Z

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 73
    .line 74
    iget v2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPolicyFlags:I

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 80
    .line 81
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 82
    .line 83
    const/16 v2, 0x200

    .line 84
    .line 85
    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendAccessibilityEvent(I)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 89
    .line 90
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    .line 91
    .line 92
    iget-boolean v0, v0, Lcom/android/server/accessibility/gestures/GestureManifold;->mSendMotionEventsEnabled:Z

    .line 93
    .line 94
    if-eqz v0, :cond_2

    .line 95
    .line 96
    new-instance v0, Landroid/accessibilityservice/AccessibilityGestureEvent;

    .line 97
    .line 98
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 99
    .line 100
    iget-object v2, v2, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 101
    .line 102
    iget-object v2, v2, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedEvent:Landroid/view/MotionEvent;

    .line 103
    .line 104
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDisplayId()I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 109
    .line 110
    iget-object v3, v3, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    .line 111
    .line 112
    iget-object v3, v3, Lcom/android/server/accessibility/gestures/GestureManifold;->mEvents:Ljava/util/List;

    .line 113
    .line 114
    const/4 v4, -0x2

    .line 115
    invoke-direct {v0, v4, v2, v3}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(IILjava/util/List;)V

    .line 116
    .line 117
    .line 118
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 119
    .line 120
    invoke-virtual {v2, v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->dispatchGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    .line 121
    .line 122
    .line 123
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPrototype:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v0, Ljava/util/List;

    .line 126
    .line 127
    check-cast v0, Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-nez v0, :cond_5

    .line 134
    .line 135
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mRawEvent:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v0, Ljava/util/List;

    .line 138
    .line 139
    check-cast v0, Ljava/util/ArrayList;

    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-nez v0, :cond_5

    .line 146
    .line 147
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 148
    .line 149
    iget-object v2, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 150
    .line 151
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPrototype:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast v0, Ljava/util/List;

    .line 154
    .line 155
    check-cast v0, Ljava/util/ArrayList;

    .line 156
    .line 157
    const/4 v3, 0x0

    .line 158
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    move-object v6, v0

    .line 163
    check-cast v6, Landroid/view/MotionEvent;

    .line 164
    .line 165
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mRawEvent:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast v0, Ljava/util/List;

    .line 168
    .line 169
    check-cast v0, Ljava/util/ArrayList;

    .line 170
    .line 171
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    move-object v7, v0

    .line 176
    check-cast v7, Landroid/view/MotionEvent;

    .line 177
    .line 178
    iget v4, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPointerIdBits:I

    .line 179
    .line 180
    iget v5, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPolicyFlags:I

    .line 181
    .line 182
    const/16 v3, 0x9

    .line 183
    .line 184
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 185
    .line 186
    .line 187
    sget-boolean v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    .line 188
    .line 189
    const-string v2, "SendHoverEnterAndMoveDelayed"

    .line 190
    .line 191
    if-eqz v0, :cond_3

    .line 192
    .line 193
    const-string v0, "Injecting motion event: ACTION_HOVER_ENTER"

    .line 194
    .line 195
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    :cond_3
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPrototype:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast v0, Ljava/util/List;

    .line 201
    .line 202
    check-cast v0, Ljava/util/ArrayList;

    .line 203
    .line 204
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    :goto_0
    if-ge v1, v0, :cond_5

    .line 209
    .line 210
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 211
    .line 212
    iget-object v4, v3, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 213
    .line 214
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPrototype:Ljava/lang/Object;

    .line 215
    .line 216
    check-cast v3, Ljava/util/List;

    .line 217
    .line 218
    check-cast v3, Ljava/util/ArrayList;

    .line 219
    .line 220
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    move-object v8, v3

    .line 225
    check-cast v8, Landroid/view/MotionEvent;

    .line 226
    .line 227
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mRawEvent:Ljava/lang/Object;

    .line 228
    .line 229
    check-cast v3, Ljava/util/List;

    .line 230
    .line 231
    check-cast v3, Ljava/util/ArrayList;

    .line 232
    .line 233
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    move-object v9, v3

    .line 238
    check-cast v9, Landroid/view/MotionEvent;

    .line 239
    .line 240
    iget v6, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPointerIdBits:I

    .line 241
    .line 242
    iget v7, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPolicyFlags:I

    .line 243
    .line 244
    const/4 v5, 0x7

    .line 245
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 246
    .line 247
    .line 248
    sget-boolean v3, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    .line 249
    .line 250
    if-eqz v3, :cond_4

    .line 251
    .line 252
    const-string v3, "Injecting motion event: ACTION_HOVER_MOVE"

    .line 253
    .line 254
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    .line 256
    .line 257
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 258
    .line 259
    goto :goto_0

    .line 260
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->clear()V

    .line 261
    .line 262
    .line 263
    :goto_1
    return-void

    .line 264
    :pswitch_0
    sget-boolean v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    .line 265
    .line 266
    if-eqz v0, :cond_6

    .line 267
    .line 268
    const-string v0, "SendHoverExitDelayed"

    .line 269
    .line 270
    const-string v1, "Injecting motion event: ACTION_HOVER_EXIT"

    .line 271
    .line 272
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .line 274
    .line 275
    :cond_6
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 276
    .line 277
    iget-object v1, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 278
    .line 279
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPrototype:Ljava/lang/Object;

    .line 280
    .line 281
    move-object v5, v0

    .line 282
    check-cast v5, Landroid/view/MotionEvent;

    .line 283
    .line 284
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mRawEvent:Ljava/lang/Object;

    .line 285
    .line 286
    move-object v6, v0

    .line 287
    check-cast v6, Landroid/view/MotionEvent;

    .line 288
    .line 289
    iget v3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPointerIdBits:I

    .line 290
    .line 291
    iget v4, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPolicyFlags:I

    .line 292
    .line 293
    const/16 v2, 0xa

    .line 294
    .line 295
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 296
    .line 297
    .line 298
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 299
    .line 300
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    .line 301
    .line 302
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    if-nez v0, :cond_7

    .line 307
    .line 308
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 309
    .line 310
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    .line 311
    .line 312
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 313
    .line 314
    .line 315
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 316
    .line 317
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    .line 318
    .line 319
    iget-object v1, v0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 320
    .line 321
    iget-object v1, v1, Lcom/android/server/accessibility/gestures/TouchExplorer;->mHandler:Landroid/os/Handler;

    .line 322
    .line 323
    iget v2, v0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->mDelay:I

    .line 324
    .line 325
    int-to-long v2, v2

    .line 326
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 327
    .line 328
    .line 329
    :cond_7
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 330
    .line 331
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    .line 332
    .line 333
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    .line 334
    .line 335
    .line 336
    move-result v0

    .line 337
    if-eqz v0, :cond_8

    .line 338
    .line 339
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 340
    .line 341
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    .line 342
    .line 343
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 344
    .line 345
    .line 346
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 347
    .line 348
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    .line 349
    .line 350
    iget-object v1, v0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 351
    .line 352
    iget-object v1, v1, Lcom/android/server/accessibility/gestures/TouchExplorer;->mHandler:Landroid/os/Handler;

    .line 353
    .line 354
    iget v2, v0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->mDelay:I

    .line 355
    .line 356
    int-to-long v2, v2

    .line 357
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 358
    .line 359
    .line 360
    :cond_8
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPrototype:Ljava/lang/Object;

    .line 361
    .line 362
    check-cast v0, Landroid/view/MotionEvent;

    .line 363
    .line 364
    if-eqz v0, :cond_9

    .line 365
    .line 366
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 367
    .line 368
    .line 369
    :cond_9
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mRawEvent:Ljava/lang/Object;

    .line 370
    .line 371
    check-cast v0, Landroid/view/MotionEvent;

    .line 372
    .line 373
    if-eqz v0, :cond_a

    .line 374
    .line 375
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 376
    .line 377
    .line 378
    :cond_a
    const/4 v0, 0x0

    .line 379
    iput-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPrototype:Ljava/lang/Object;

    .line 380
    .line 381
    iput-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mRawEvent:Ljava/lang/Object;

    .line 382
    .line 383
    const/4 v0, -0x1

    .line 384
    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPointerIdBits:I

    .line 385
    .line 386
    const/4 v0, 0x0

    .line 387
    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPolicyFlags:I

    .line 388
    .line 389
    return-void

    .line 390
    nop

    .line 391
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
