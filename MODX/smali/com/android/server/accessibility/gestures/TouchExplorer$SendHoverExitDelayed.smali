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

    .line 3
    packed-switch p2, :pswitch_data_0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 11
    return-void

    .line 12
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 17
    new-instance p1, Ljava/util/ArrayList;

    .line 19
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPrototype:Ljava/lang/Object;

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    .line 26
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mRawEvent:Ljava/lang/Object;

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

    .line 3
    check-cast v0, Ljava/util/List;

    .line 5
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 8
    move-result-object p1

    .line 9
    check-cast v0, Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mRawEvent:Ljava/lang/Object;

    .line 16
    check-cast p0, Ljava/util/List;

    .line 18
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 21
    move-result-object p1

    .line 22
    check-cast p0, Ljava/util/ArrayList;

    .line 24
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    return-void
.end method

.method public final cancel()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->isPending()Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 14
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mHandler:Landroid/os/Handler;

    .line 16
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 19
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->clear()V

    .line 22
    :cond_0
    return-void

    .line 23
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->isPending()Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_3

    .line 29
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 31
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mHandler:Landroid/os/Handler;

    .line 33
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 36
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPrototype:Ljava/lang/Object;

    .line 38
    check-cast v0, Landroid/view/MotionEvent;

    .line 40
    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mRawEvent:Ljava/lang/Object;

    .line 47
    check-cast v0, Landroid/view/MotionEvent;

    .line 49
    if-eqz v0, :cond_2

    .line 51
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 54
    :cond_2
    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPrototype:Ljava/lang/Object;

    .line 57
    iput-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mRawEvent:Ljava/lang/Object;

    .line 59
    const/4 v0, -0x1

    .line 60
    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPointerIdBits:I

    .line 62
    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPolicyFlags:I

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

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPolicyFlags:I

    .line 7
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPrototype:Ljava/lang/Object;

    .line 9
    check-cast v0, Ljava/util/List;

    .line 11
    check-cast v0, Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 16
    move-result v0

    .line 17
    add-int/lit8 v0, v0, -0x1

    .line 19
    :goto_0
    if-ltz v0, :cond_0

    .line 21
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPrototype:Ljava/lang/Object;

    .line 23
    check-cast v1, Ljava/util/List;

    .line 25
    check-cast v1, Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroid/view/MotionEvent;

    .line 33
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 36
    add-int/lit8 v0, v0, -0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mRawEvent:Ljava/lang/Object;

    .line 41
    check-cast v0, Ljava/util/List;

    .line 43
    check-cast v0, Ljava/util/ArrayList;

    .line 45
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 48
    move-result v0

    .line 49
    add-int/lit8 v0, v0, -0x1

    .line 51
    :goto_1
    if-ltz v0, :cond_1

    .line 53
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mRawEvent:Ljava/lang/Object;

    .line 55
    check-cast v1, Ljava/util/List;

    .line 57
    check-cast v1, Ljava/util/ArrayList;

    .line 59
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Landroid/view/MotionEvent;

    .line 65
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 68
    add-int/lit8 v0, v0, -0x1

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

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 8
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mHandler:Landroid/os/Handler;

    .line 10
    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 17
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mHandler:Landroid/os/Handler;

    .line 19
    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

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

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 8
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    .line 10
    iget v0, v0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x1

    .line 17
    if-le v0, v1, :cond_0

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    const-string v1, "Attempted touch exploration with "

    .line 23
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 28
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    .line 30
    iget p0, p0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    .line 32
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    .line 35
    move-result p0

    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    const-string p0, " pointers down."

    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    const-string v0, "TouchExplorer"

    .line 50
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    goto/16 :goto_1

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPrototype:Ljava/lang/Object;

    .line 57
    check-cast v0, Ljava/util/List;

    .line 59
    check-cast v0, Ljava/util/ArrayList;

    .line 61
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_1

    .line 67
    goto/16 :goto_1

    .line 69
    :cond_1
    invoke-static {}, Lcom/android/server/accessibility/Flags;->sendHoverEventsBasedOnEventStream()Z

    .line 72
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 74
    iget v2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPolicyFlags:I

    .line 76
    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    .line 79
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 81
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 83
    const/16 v2, 0x200

    .line 85
    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendAccessibilityEvent(I)V

    .line 88
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 90
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    .line 92
    iget-boolean v0, v0, Lcom/android/server/accessibility/gestures/GestureManifold;->mSendMotionEventsEnabled:Z

    .line 94
    if-eqz v0, :cond_2

    .line 96
    new-instance v0, Landroid/accessibilityservice/AccessibilityGestureEvent;

    .line 98
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 100
    iget-object v2, v2, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 102
    iget-object v2, v2, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedEvent:Landroid/view/MotionEvent;

    .line 104
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDisplayId()I

    .line 107
    move-result v2

    .line 108
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 110
    iget-object v3, v3, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    .line 112
    iget-object v3, v3, Lcom/android/server/accessibility/gestures/GestureManifold;->mEvents:Ljava/util/List;

    .line 114
    const/4 v4, -0x2

    .line 115
    invoke-direct {v0, v4, v2, v3}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(IILjava/util/List;)V

    .line 118
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 120
    invoke-virtual {v2, v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->dispatchGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPrototype:Ljava/lang/Object;

    .line 125
    check-cast v0, Ljava/util/List;

    .line 127
    check-cast v0, Ljava/util/ArrayList;

    .line 129
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 132
    move-result v0

    .line 133
    if-nez v0, :cond_5

    .line 135
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mRawEvent:Ljava/lang/Object;

    .line 137
    check-cast v0, Ljava/util/List;

    .line 139
    check-cast v0, Ljava/util/ArrayList;

    .line 141
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 144
    move-result v0

    .line 145
    if-nez v0, :cond_5

    .line 147
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 149
    iget-object v2, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 151
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPrototype:Ljava/lang/Object;

    .line 153
    check-cast v0, Ljava/util/List;

    .line 155
    check-cast v0, Ljava/util/ArrayList;

    .line 157
    const/4 v3, 0x0

    .line 158
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 161
    move-result-object v0

    .line 162
    move-object v6, v0

    .line 163
    check-cast v6, Landroid/view/MotionEvent;

    .line 165
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mRawEvent:Ljava/lang/Object;

    .line 167
    check-cast v0, Ljava/util/List;

    .line 169
    check-cast v0, Ljava/util/ArrayList;

    .line 171
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 174
    move-result-object v0

    .line 175
    move-object v7, v0

    .line 176
    check-cast v7, Landroid/view/MotionEvent;

    .line 178
    iget v4, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPointerIdBits:I

    .line 180
    iget v5, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPolicyFlags:I

    .line 182
    const/16 v3, 0x9

    .line 184
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 187
    sget-boolean v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    .line 189
    const-string v2, "SendHoverEnterAndMoveDelayed"

    .line 191
    if-eqz v0, :cond_3

    .line 193
    const-string v0, "Injecting motion event: ACTION_HOVER_ENTER"

    .line 195
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_3
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPrototype:Ljava/lang/Object;

    .line 200
    check-cast v0, Ljava/util/List;

    .line 202
    check-cast v0, Ljava/util/ArrayList;

    .line 204
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 207
    move-result v0

    .line 208
    :goto_0
    if-ge v1, v0, :cond_5

    .line 210
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 212
    iget-object v4, v3, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 214
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPrototype:Ljava/lang/Object;

    .line 216
    check-cast v3, Ljava/util/List;

    .line 218
    check-cast v3, Ljava/util/ArrayList;

    .line 220
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 223
    move-result-object v3

    .line 224
    move-object v8, v3

    .line 225
    check-cast v8, Landroid/view/MotionEvent;

    .line 227
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mRawEvent:Ljava/lang/Object;

    .line 229
    check-cast v3, Ljava/util/List;

    .line 231
    check-cast v3, Ljava/util/ArrayList;

    .line 233
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 236
    move-result-object v3

    .line 237
    move-object v9, v3

    .line 238
    check-cast v9, Landroid/view/MotionEvent;

    .line 240
    iget v6, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPointerIdBits:I

    .line 242
    iget v7, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPolicyFlags:I

    .line 244
    const/4 v5, 0x7

    .line 245
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 248
    sget-boolean v3, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    .line 250
    if-eqz v3, :cond_4

    .line 252
    const-string v3, "Injecting motion event: ACTION_HOVER_MOVE"

    .line 254
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 259
    goto :goto_0

    .line 260
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->clear()V

    .line 263
    :goto_1
    return-void

    .line 264
    :pswitch_0
    sget-boolean v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    .line 266
    if-eqz v0, :cond_6

    .line 268
    const-string v0, "SendHoverExitDelayed"

    .line 270
    const-string v1, "Injecting motion event: ACTION_HOVER_EXIT"

    .line 272
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_6
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 277
    iget-object v1, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 279
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPrototype:Ljava/lang/Object;

    .line 281
    move-object v5, v0

    .line 282
    check-cast v5, Landroid/view/MotionEvent;

    .line 284
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mRawEvent:Ljava/lang/Object;

    .line 286
    move-object v6, v0

    .line 287
    check-cast v6, Landroid/view/MotionEvent;

    .line 289
    iget v3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPointerIdBits:I

    .line 291
    iget v4, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPolicyFlags:I

    .line 293
    const/16 v2, 0xa

    .line 295
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 298
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 300
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    .line 302
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    .line 305
    move-result v0

    .line 306
    if-nez v0, :cond_7

    .line 308
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 310
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    .line 312
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 315
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 317
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    .line 319
    iget-object v1, v0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 321
    iget-object v1, v1, Lcom/android/server/accessibility/gestures/TouchExplorer;->mHandler:Landroid/os/Handler;

    .line 323
    iget v2, v0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->mDelay:I

    .line 325
    int-to-long v2, v2

    .line 326
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 329
    :cond_7
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 331
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    .line 333
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    .line 336
    move-result v0

    .line 337
    if-eqz v0, :cond_8

    .line 339
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 341
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    .line 343
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 346
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 348
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    .line 350
    iget-object v1, v0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 352
    iget-object v1, v1, Lcom/android/server/accessibility/gestures/TouchExplorer;->mHandler:Landroid/os/Handler;

    .line 354
    iget v2, v0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->mDelay:I

    .line 356
    int-to-long v2, v2

    .line 357
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 360
    :cond_8
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPrototype:Ljava/lang/Object;

    .line 362
    check-cast v0, Landroid/view/MotionEvent;

    .line 364
    if-eqz v0, :cond_9

    .line 366
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 369
    :cond_9
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mRawEvent:Ljava/lang/Object;

    .line 371
    check-cast v0, Landroid/view/MotionEvent;

    .line 373
    if-eqz v0, :cond_a

    .line 375
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 378
    :cond_a
    const/4 v0, 0x0

    .line 379
    iput-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPrototype:Ljava/lang/Object;

    .line 381
    iput-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mRawEvent:Ljava/lang/Object;

    .line 383
    const/4 v0, -0x1

    .line 384
    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPointerIdBits:I

    .line 386
    const/4 v0, 0x0

    .line 387
    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPolicyFlags:I

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
