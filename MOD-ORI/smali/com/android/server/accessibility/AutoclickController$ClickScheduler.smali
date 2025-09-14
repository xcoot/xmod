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

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/AutoclickController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->resetInternalState()V

    .line 12
    .line 13
    .line 14
    const/16 p1, 0x258

    .line 15
    .line 16
    iput p1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mDelay:I

    .line 17
    .line 18
    new-instance p1, Landroid/view/MotionEvent$PointerCoords;

    .line 19
    .line 20
    invoke-direct {p1}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mActive:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->resetInternalState()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final resetInternalState()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mActive:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 13
    .line 14
    :cond_0
    const-wide/16 v0, -0x1

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    .line 17
    .line 18
    return-void
.end method

.method public final run()V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    iget-wide v3, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    .line 8
    .line 9
    cmp-long v5, v1, v3

    .line 10
    .line 11
    if-gez v5, :cond_0

    .line 12
    .line 13
    iget-object v5, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    sub-long/2addr v3, v1

    .line 16
    invoke-virtual {v5, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v1, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 21
    .line 22
    if-eqz v1, :cond_4

    .line 23
    .line 24
    iget-object v2, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/AutoclickController;

    .line 25
    .line 26
    iget-object v2, v2, Lcom/android/server/accessibility/BaseEventStreamTransformation;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 27
    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    goto/16 :goto_0

    .line 31
    .line 32
    :cond_1
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iget-object v2, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    const/4 v4, 0x0

    .line 40
    if-nez v2, :cond_2

    .line 41
    .line 42
    new-array v2, v3, [Landroid/view/MotionEvent$PointerProperties;

    .line 43
    .line 44
    iput-object v2, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 45
    .line 46
    new-instance v5, Landroid/view/MotionEvent$PointerProperties;

    .line 47
    .line 48
    invoke-direct {v5}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 49
    .line 50
    .line 51
    aput-object v5, v2, v4

    .line 52
    .line 53
    :cond_2
    iget-object v2, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 54
    .line 55
    iget-object v5, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 56
    .line 57
    aget-object v5, v5, v4

    .line 58
    .line 59
    invoke-virtual {v2, v1, v5}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 60
    .line 61
    .line 62
    iget-object v2, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 63
    .line 64
    if-nez v2, :cond_3

    .line 65
    .line 66
    new-array v2, v3, [Landroid/view/MotionEvent$PointerCoords;

    .line 67
    .line 68
    iput-object v2, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 69
    .line 70
    new-instance v5, Landroid/view/MotionEvent$PointerCoords;

    .line 71
    .line 72
    invoke-direct {v5}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 73
    .line 74
    .line 75
    aput-object v5, v2, v4

    .line 76
    .line 77
    :cond_3
    iget-object v2, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 78
    .line 79
    iget-object v5, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 80
    .line 81
    aget-object v5, v5, v4

    .line 82
    .line 83
    invoke-virtual {v2, v1, v5}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 84
    .line 85
    .line 86
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 87
    .line 88
    .line 89
    move-result-wide v8

    .line 90
    move-wide v6, v8

    .line 91
    iget-object v12, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 92
    .line 93
    iget-object v13, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 94
    .line 95
    iget v14, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mMetaState:I

    .line 96
    .line 97
    iget-object v1, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 98
    .line 99
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 100
    .line 101
    .line 102
    move-result v18

    .line 103
    iget-object v1, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 104
    .line 105
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    .line 106
    .line 107
    .line 108
    move-result v20

    .line 109
    iget-object v1, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 110
    .line 111
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDisplayId()I

    .line 112
    .line 113
    .line 114
    move-result v21

    .line 115
    iget-object v1, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 116
    .line 117
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getFlags()I

    .line 118
    .line 119
    .line 120
    move-result v22

    .line 121
    const/high16 v17, 0x3f800000    # 1.0f

    .line 122
    .line 123
    const/16 v19, 0x0

    .line 124
    .line 125
    const/4 v10, 0x0

    .line 126
    const/4 v11, 0x1

    .line 127
    const/4 v15, 0x1

    .line 128
    const/high16 v16, 0x3f800000    # 1.0f

    .line 129
    .line 130
    invoke-static/range {v6 .. v22}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-static {v1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    const/16 v5, 0xb

    .line 139
    .line 140
    invoke-virtual {v2, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->setActionButton(I)V

    .line 144
    .line 145
    .line 146
    invoke-static {v1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    const/16 v6, 0xc

    .line 151
    .line 152
    invoke-virtual {v5, v6}, Landroid/view/MotionEvent;->setAction(I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v5, v3}, Landroid/view/MotionEvent;->setActionButton(I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v5, v4}, Landroid/view/MotionEvent;->setButtonState(I)V

    .line 159
    .line 160
    .line 161
    invoke-static {v1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    invoke-virtual {v6, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v6, v4}, Landroid/view/MotionEvent;->setButtonState(I)V

    .line 169
    .line 170
    .line 171
    iget-object v3, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/AutoclickController;

    .line 172
    .line 173
    iget v4, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    .line 174
    .line 175
    invoke-static {v3, v1, v1, v4}, Lcom/android/server/accessibility/AutoclickController;->access$001(Lcom/android/server/accessibility/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 179
    .line 180
    .line 181
    iget-object v1, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/AutoclickController;

    .line 182
    .line 183
    iget v3, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    .line 184
    .line 185
    invoke-static {v1, v2, v2, v3}, Lcom/android/server/accessibility/AutoclickController;->access$101(Lcom/android/server/accessibility/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 189
    .line 190
    .line 191
    iget-object v1, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/AutoclickController;

    .line 192
    .line 193
    iget v2, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    .line 194
    .line 195
    invoke-static {v1, v5, v5, v2}, Lcom/android/server/accessibility/AutoclickController;->access$201(Lcom/android/server/accessibility/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 199
    .line 200
    .line 201
    iget-object v1, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/AutoclickController;

    .line 202
    .line 203
    iget v2, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    .line 204
    .line 205
    invoke-static {v1, v6, v6, v2}, Lcom/android/server/accessibility/AutoclickController;->access$301(Lcom/android/server/accessibility/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    .line 209
    .line 210
    .line 211
    :cond_4
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->resetInternalState()V

    .line 212
    .line 213
    .line 214
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ClickScheduler: { active="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mActive:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", delay="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mDelay:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", scheduledClickTime="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-wide v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", anchor={x:"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 39
    .line 40
    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, ", y:"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 51
    .line 52
    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string/jumbo v1, "}, metastate="

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mMetaState:I

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v1, ", policyFlags="

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v1, ", lastMotionEvent="

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-object p0, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 84
    .line 85
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string p0, " }"

    .line 89
    .line 90
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    return-object p0
.end method
