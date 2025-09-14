.class public final Lcom/android/server/accessibility/AutoclickController$ClickScheduler;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mActive:Z

.field public final mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

.field public mDelay:I

.field public mEventPolicyFlags:I

.field public final mHandler:Landroid/os/Handler;

.field public mLastMotionEvent:Landroid/view/MotionEvent;

.field public mMetaState:I

.field public mScheduledClickTime:J

.field public mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field public mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

.field public final synthetic this$0:Lcom/android/server/accessibility/AutoclickController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AutoclickController;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/AutoclickController;

    .line 6
    iput-object p2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 11
    invoke-virtual {p0}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->resetInternalState()V

    .line 14
    const/16 p1, 0x258

    .line 16
    iput p1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mDelay:I

    .line 18
    new-instance p1, Landroid/view/MotionEvent$PointerCoords;

    .line 20
    invoke-direct {p1}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 25
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mActive:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->resetInternalState()V

    .line 9
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    .line 11
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    return-void
.end method

.method public final resetInternalState()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mActive:Z

    .line 4
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 14
    :cond_0
    const-wide/16 v0, -0x1

    .line 16
    iput-wide v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    .line 18
    return-void
.end method

.method public final run()V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 6
    move-result-wide v1

    .line 7
    iget-wide v3, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    .line 9
    cmp-long v5, v1, v3

    .line 11
    if-gez v5, :cond_0

    .line 13
    iget-object v5, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    .line 15
    sub-long/2addr v3, v1

    .line 16
    invoke-virtual {v5, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v1, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 22
    if-eqz v1, :cond_4

    .line 24
    iget-object v2, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/AutoclickController;

    .line 26
    iget-object v2, v2, Lcom/android/server/accessibility/BaseEventStreamTransformation;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 28
    if-nez v2, :cond_1

    .line 30
    goto/16 :goto_0

    .line 32
    :cond_1
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 35
    move-result v1

    .line 36
    iget-object v2, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 38
    const/4 v3, 0x1

    .line 39
    const/4 v4, 0x0

    .line 40
    if-nez v2, :cond_2

    .line 42
    new-array v2, v3, [Landroid/view/MotionEvent$PointerProperties;

    .line 44
    iput-object v2, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 46
    new-instance v5, Landroid/view/MotionEvent$PointerProperties;

    .line 48
    invoke-direct {v5}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 51
    aput-object v5, v2, v4

    .line 53
    :cond_2
    iget-object v2, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 55
    iget-object v5, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 57
    aget-object v5, v5, v4

    .line 59
    invoke-virtual {v2, v1, v5}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 62
    iget-object v2, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 64
    if-nez v2, :cond_3

    .line 66
    new-array v2, v3, [Landroid/view/MotionEvent$PointerCoords;

    .line 68
    iput-object v2, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 70
    new-instance v5, Landroid/view/MotionEvent$PointerCoords;

    .line 72
    invoke-direct {v5}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 75
    aput-object v5, v2, v4

    .line 77
    :cond_3
    iget-object v2, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 79
    iget-object v5, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 81
    aget-object v5, v5, v4

    .line 83
    invoke-virtual {v2, v1, v5}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 86
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 89
    move-result-wide v8

    .line 90
    move-wide v6, v8

    .line 91
    iget-object v12, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 93
    iget-object v13, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 95
    iget v14, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mMetaState:I

    .line 97
    iget-object v1, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 99
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 102
    move-result v18

    .line 103
    iget-object v1, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 105
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    .line 108
    move-result v20

    .line 109
    iget-object v1, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 111
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDisplayId()I

    .line 114
    move-result v21

    .line 115
    iget-object v1, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 117
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getFlags()I

    .line 120
    move-result v22

    .line 121
    const/high16 v17, 0x3f800000    # 1.0f

    .line 123
    const/16 v19, 0x0

    .line 125
    const/4 v10, 0x0

    .line 126
    const/4 v11, 0x1

    .line 127
    const/4 v15, 0x1

    .line 128
    const/high16 v16, 0x3f800000    # 1.0f

    .line 130
    invoke-static/range {v6 .. v22}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;

    .line 133
    move-result-object v1

    .line 134
    invoke-static {v1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 137
    move-result-object v2

    .line 138
    const/16 v5, 0xb

    .line 140
    invoke-virtual {v2, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 143
    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->setActionButton(I)V

    .line 146
    invoke-static {v1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 149
    move-result-object v5

    .line 150
    const/16 v6, 0xc

    .line 152
    invoke-virtual {v5, v6}, Landroid/view/MotionEvent;->setAction(I)V

    .line 155
    invoke-virtual {v5, v3}, Landroid/view/MotionEvent;->setActionButton(I)V

    .line 158
    invoke-virtual {v5, v4}, Landroid/view/MotionEvent;->setButtonState(I)V

    .line 161
    invoke-static {v1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 164
    move-result-object v6

    .line 165
    invoke-virtual {v6, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 168
    invoke-virtual {v6, v4}, Landroid/view/MotionEvent;->setButtonState(I)V

    .line 171
    iget-object v3, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/AutoclickController;

    .line 173
    iget v4, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    .line 175
    invoke-static {v3, v1, v1, v4}, Lcom/android/server/accessibility/AutoclickController;->access$001(Lcom/android/server/accessibility/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 178
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 181
    iget-object v1, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/AutoclickController;

    .line 183
    iget v3, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    .line 185
    invoke-static {v1, v2, v2, v3}, Lcom/android/server/accessibility/AutoclickController;->access$101(Lcom/android/server/accessibility/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 188
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 191
    iget-object v1, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/AutoclickController;

    .line 193
    iget v2, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    .line 195
    invoke-static {v1, v5, v5, v2}, Lcom/android/server/accessibility/AutoclickController;->access$201(Lcom/android/server/accessibility/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 198
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 201
    iget-object v1, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/AutoclickController;

    .line 203
    iget v2, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    .line 205
    invoke-static {v1, v6, v6, v2}, Lcom/android/server/accessibility/AutoclickController;->access$301(Lcom/android/server/accessibility/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 208
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    .line 211
    :cond_4
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->resetInternalState()V

    .line 214
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "ClickScheduler: { active="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-boolean v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mActive:Z

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ", delay="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mDelay:I

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, ", scheduledClickTime="

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-wide v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 33
    const-string v1, ", anchor={x:"

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-object v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 40
    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 45
    const-string v1, ", y:"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-object v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 52
    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 57
    const-string/jumbo v1, "}, metastate="

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mMetaState:I

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, ", policyFlags="

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, ", lastMotionEvent="

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-object p0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 85
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    const-string p0, " }"

    .line 90
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object p0

    .line 97
    return-object p0
.end method
