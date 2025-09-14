.class public final Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mActive:Z

.field public final mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

.field public mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

.field public mCornerActionType:I

.field public mDelay:I

.field public mDisplayId:I

.field public mEventPolicyFlags:I

.field public final mHandler:Landroid/os/Handler;

.field public mIsPauseAutoClick:Z

.field public mLastMotionEvent:Landroid/view/MotionEvent;

.field public mMetaState:I

.field public mScheduledActionTime:J

.field public mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field public mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

.field public mType:I

.field public final synthetic this$0:Lcom/android/server/accessibility/autoaction/AutoActionController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoaction/AutoActionController;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->this$0:Lcom/android/server/accessibility/autoaction/AutoActionController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mHandler:Landroid/os/Handler;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->resetInternalState()V

    .line 12
    .line 13
    .line 14
    const/16 p1, 0x258

    .line 15
    .line 16
    iput p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mDelay:I

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mType:I

    .line 20
    .line 21
    iput p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionType:I

    .line 22
    .line 23
    new-instance p2, Landroid/view/MotionEvent$PointerCoords;

    .line 24
    .line 25
    invoke-direct {p2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->updateIsPauseAutoClick(Z)V

    .line 31
    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mActive:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    new-instance v1, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda2;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-direct {v1, v0, v2}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/android/server/accessibility/autoaction/CornerActionController;->clearDuration()V

    .line 26
    .line 27
    .line 28
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->resetInternalState()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mHandler:Landroid/os/Handler;

    .line 32
    .line 33
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final resetInternalState()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mActive:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

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
    iput-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 13
    .line 14
    :cond_0
    const-wide/16 v0, -0x1

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mScheduledActionTime:J

    .line 17
    .line 18
    return-void
.end method

.method public final run()V
    .locals 15

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 3
    .line 4
    .line 5
    move-result-wide v1

    .line 6
    iget-wide v3, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mScheduledActionTime:J

    .line 7
    .line 8
    cmp-long v5, v1, v3

    .line 9
    .line 10
    if-gez v5, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mHandler:Landroid/os/Handler;

    .line 13
    .line 14
    sub-long/2addr v3, v1

    .line 15
    invoke-virtual {v0, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 20
    .line 21
    if-eqz v1, :cond_15

    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->this$0:Lcom/android/server/accessibility/autoaction/AutoActionController;

    .line 24
    .line 25
    iget-object v2, v2, Lcom/android/server/accessibility/BaseEventStreamTransformation;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 26
    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    goto/16 :goto_6

    .line 30
    .line 31
    :cond_1
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    iget-object v2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    if-nez v2, :cond_2

    .line 39
    .line 40
    new-array v2, v0, [Landroid/view/MotionEvent$PointerProperties;

    .line 41
    .line 42
    iput-object v2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 43
    .line 44
    new-instance v4, Landroid/view/MotionEvent$PointerProperties;

    .line 45
    .line 46
    invoke-direct {v4}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 47
    .line 48
    .line 49
    aput-object v4, v2, v3

    .line 50
    .line 51
    :cond_2
    iget-object v2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 52
    .line 53
    iget-object v4, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 54
    .line 55
    aget-object v4, v4, v3

    .line 56
    .line 57
    invoke-virtual {v2, v1, v4}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 58
    .line 59
    .line 60
    iget-object v2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 61
    .line 62
    if-nez v2, :cond_3

    .line 63
    .line 64
    new-array v2, v0, [Landroid/view/MotionEvent$PointerCoords;

    .line 65
    .line 66
    iput-object v2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 67
    .line 68
    new-instance v4, Landroid/view/MotionEvent$PointerCoords;

    .line 69
    .line 70
    invoke-direct {v4}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 71
    .line 72
    .line 73
    aput-object v4, v2, v3

    .line 74
    .line 75
    :cond_3
    iget-object v2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 76
    .line 77
    iget-object v4, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 78
    .line 79
    aget-object v4, v4, v3

    .line 80
    .line 81
    invoke-virtual {v2, v1, v4}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 82
    .line 83
    .line 84
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 85
    .line 86
    .line 87
    move-result-wide v7

    .line 88
    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    .line 89
    .line 90
    if-eqz v1, :cond_14

    .line 91
    .line 92
    invoke-virtual {v1}, Lcom/android/server/accessibility/autoaction/CornerActionController;->clearDuration()V

    .line 93
    .line 94
    .line 95
    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    .line 96
    .line 97
    iget-object v1, v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 98
    .line 99
    if-eqz v1, :cond_4

    .line 100
    .line 101
    new-instance v2, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda2;

    .line 102
    .line 103
    invoke-direct {v2, v1, v3}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;Z)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 107
    .line 108
    .line 109
    :cond_4
    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    .line 110
    .line 111
    iget-object v2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 112
    .line 113
    aget-object v2, v2, v3

    .line 114
    .line 115
    iget v4, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 116
    .line 117
    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 118
    .line 119
    iget v5, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mDisplayId:I

    .line 120
    .line 121
    invoke-virtual {v1, v5, v4, v2}, Lcom/android/server/accessibility/autoaction/CornerActionController;->getCorner(IFF)I

    .line 122
    .line 123
    .line 124
    move-result v14

    .line 125
    iget v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionType:I

    .line 126
    .line 127
    const/4 v2, 0x2

    .line 128
    const/4 v4, -0x1

    .line 129
    if-nez v1, :cond_f

    .line 130
    .line 131
    if-eq v14, v4, :cond_14

    .line 132
    .line 133
    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    .line 134
    .line 135
    iget v5, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mDisplayId:I

    .line 136
    .line 137
    iget-object v6, v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mCornerActions:[Ljava/lang/String;

    .line 138
    .line 139
    const-string v7, ","

    .line 140
    .line 141
    if-eqz v6, :cond_7

    .line 142
    .line 143
    iget-object v4, v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 144
    .line 145
    if-eqz v4, :cond_5

    .line 146
    .line 147
    iget-object v6, v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    .line 148
    .line 149
    sget-object v8, Lcom/android/server/accessibility/autoaction/CornerActionController;->TTS_CORNER:[I

    .line 150
    .line 151
    aget v8, v8, v14

    .line 152
    .line 153
    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    iget-object v4, v4, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mView:Landroid/view/View;

    .line 158
    .line 159
    invoke-virtual {v4, v6}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 160
    .line 161
    .line 162
    :cond_5
    iget-object v4, v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mCornerActions:[Ljava/lang/String;

    .line 163
    .line 164
    aget-object v4, v4, v14

    .line 165
    .line 166
    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    array-length v6, v4

    .line 171
    if-le v6, v0, :cond_6

    .line 172
    .line 173
    move v4, v2

    .line 174
    goto :goto_0

    .line 175
    :cond_6
    aget-object v4, v4, v3

    .line 176
    .line 177
    invoke-virtual {v1, v5, v14, v4}, Lcom/android/server/accessibility/autoaction/CornerActionController;->performCornerAction(IILjava/lang/String;)I

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    :cond_7
    :goto_0
    iput v4, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionType:I

    .line 182
    .line 183
    if-ne v4, v2, :cond_e

    .line 184
    .line 185
    const-string v1, "AutoActionController sendAction SELECT_ACTION"

    .line 186
    .line 187
    const-string/jumbo v2, "usibi"

    .line 188
    .line 189
    .line 190
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    iget v13, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mDisplayId:I

    .line 194
    .line 195
    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    .line 196
    .line 197
    iget-object v1, v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mCornerActions:[Ljava/lang/String;

    .line 198
    .line 199
    aget-object v1, v1, v14

    .line 200
    .line 201
    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v12

    .line 205
    new-instance v1, Ljava/util/ArrayList;

    .line 206
    .line 207
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .line 209
    .line 210
    array-length v4, v12

    .line 211
    move v5, v3

    .line 212
    :goto_1
    if-ge v5, v4, :cond_c

    .line 213
    .line 214
    aget-object v6, v12, v5

    .line 215
    .line 216
    const-string/jumbo v7, "pause_resume_auto_click"

    .line 217
    .line 218
    .line 219
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v7

    .line 223
    if-eqz v7, :cond_9

    .line 224
    .line 225
    iget-boolean v6, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mIsPauseAutoClick:Z

    .line 226
    .line 227
    if-eqz v6, :cond_8

    .line 228
    .line 229
    const-string/jumbo v6, "resume_auto_click"

    .line 230
    .line 231
    .line 232
    goto :goto_2

    .line 233
    :cond_8
    const-string/jumbo v6, "pause_auto_click"

    .line 234
    .line 235
    .line 236
    goto :goto_2

    .line 237
    :cond_9
    const-string/jumbo v7, "sound_vibrate_mute"

    .line 238
    .line 239
    .line 240
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v7

    .line 244
    if-eqz v7, :cond_b

    .line 245
    .line 246
    iget-object v7, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->this$0:Lcom/android/server/accessibility/autoaction/AutoActionController;

    .line 247
    .line 248
    iget-object v7, v7, Lcom/android/server/accessibility/autoaction/AutoActionController;->mContext:Landroid/content/Context;

    .line 249
    .line 250
    const-string/jumbo v8, "vibrator"

    .line 251
    .line 252
    .line 253
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v7

    .line 257
    check-cast v7, Landroid/os/Vibrator;

    .line 258
    .line 259
    if-eqz v7, :cond_a

    .line 260
    .line 261
    invoke-virtual {v7}, Landroid/os/Vibrator;->hasVibrator()Z

    .line 262
    .line 263
    .line 264
    move-result v7

    .line 265
    if-eqz v7, :cond_a

    .line 266
    .line 267
    goto :goto_2

    .line 268
    :cond_a
    const-string/jumbo v6, "sound_mute"

    .line 269
    .line 270
    .line 271
    :cond_b
    :goto_2
    iget-object v7, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    .line 272
    .line 273
    iget-object v7, v7, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    .line 274
    .line 275
    invoke-static {v6}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;->getTitleResId(Ljava/lang/String;)I

    .line 276
    .line 277
    .line 278
    move-result v6

    .line 279
    invoke-virtual {v7, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v6

    .line 283
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    add-int/2addr v5, v0

    .line 287
    goto :goto_1

    .line 288
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    .line 289
    .line 290
    const-string v5, "AutoActionController showActionSelectPopup displayId : "

    .line 291
    .line 292
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v4

    .line 302
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    .line 304
    .line 305
    new-instance v2, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;

    .line 306
    .line 307
    iget-object v4, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    .line 308
    .line 309
    invoke-virtual {v4, v13}, Lcom/android/server/accessibility/autoaction/CornerActionController;->getDisplayContext(I)Landroid/content/Context;

    .line 310
    .line 311
    .line 312
    move-result-object v4

    .line 313
    invoke-direct {v2, v4, v14}, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;-><init>(Landroid/content/Context;I)V

    .line 314
    .line 315
    .line 316
    move v4, v3

    .line 317
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 318
    .line 319
    .line 320
    move-result v5

    .line 321
    if-ge v4, v5, :cond_d

    .line 322
    .line 323
    iget-object v5, v2, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mPopup:Landroid/widget/PopupMenu;

    .line 324
    .line 325
    invoke-virtual {v5}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 326
    .line 327
    .line 328
    move-result-object v5

    .line 329
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v6

    .line 333
    check-cast v6, Ljava/lang/CharSequence;

    .line 334
    .line 335
    invoke-interface {v5, v3, v4, v3, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 336
    .line 337
    .line 338
    add-int/2addr v4, v0

    .line 339
    goto :goto_3

    .line 340
    :cond_d
    new-instance v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$1;

    .line 341
    .line 342
    invoke-direct {v0, p0, v2}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$1;-><init>(Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;)V

    .line 343
    .line 344
    .line 345
    iget-object v1, v2, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mPopup:Landroid/widget/PopupMenu;

    .line 346
    .line 347
    invoke-virtual {v1, v0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 348
    .line 349
    .line 350
    new-instance v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$2;

    .line 351
    .line 352
    move-object v9, v0

    .line 353
    move-object v10, p0

    .line 354
    move-object v11, v2

    .line 355
    invoke-direct/range {v9 .. v14}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$2;-><init>(Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;[Ljava/lang/String;II)V

    .line 356
    .line 357
    .line 358
    iget-object v1, v2, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mPopup:Landroid/widget/PopupMenu;

    .line 359
    .line 360
    invoke-virtual {v1, v0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 361
    .line 362
    .line 363
    new-instance v0, Landroid/os/Handler;

    .line 364
    .line 365
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 370
    .line 371
    .line 372
    new-instance v1, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup$2;

    .line 373
    .line 374
    invoke-direct {v1, v2}, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup$2;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 378
    .line 379
    .line 380
    goto/16 :goto_6

    .line 381
    .line 382
    :cond_e
    const/4 v1, 0x3

    .line 383
    if-ne v4, v1, :cond_15

    .line 384
    .line 385
    iget-boolean v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mIsPauseAutoClick:Z

    .line 386
    .line 387
    xor-int/2addr v0, v1

    .line 388
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->updateIsPauseAutoClick(Z)V

    .line 389
    .line 390
    .line 391
    iput v3, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionType:I

    .line 392
    .line 393
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mHandler:Landroid/os/Handler;

    .line 394
    .line 395
    new-instance v1, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$3;

    .line 396
    .line 397
    invoke-direct {v1, p0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$3;-><init>(Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 401
    .line 402
    .line 403
    goto/16 :goto_6

    .line 404
    .line 405
    :cond_f
    if-ne v1, v0, :cond_13

    .line 406
    .line 407
    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    .line 408
    .line 409
    iget-object v2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 410
    .line 411
    iget-object v4, v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 412
    .line 413
    if-eqz v4, :cond_10

    .line 414
    .line 415
    invoke-virtual {v4}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    .line 416
    .line 417
    .line 418
    move-result v4

    .line 419
    if-eqz v4, :cond_10

    .line 420
    .line 421
    iget-object v4, v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 422
    .line 423
    invoke-virtual {v4, v3}, Lcom/samsung/android/widget/SemTipPopup;->dismiss(Z)V

    .line 424
    .line 425
    .line 426
    :cond_10
    iget-object v4, v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mGestureAction:Ljava/lang/String;

    .line 427
    .line 428
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 429
    .line 430
    .line 431
    const-string/jumbo v5, "drag"

    .line 432
    .line 433
    .line 434
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    move-result v5

    .line 438
    if-nez v5, :cond_11

    .line 439
    .line 440
    const-string/jumbo v5, "drag_and_drop"

    .line 441
    .line 442
    .line 443
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    move-result v4

    .line 447
    if-nez v4, :cond_11

    .line 448
    .line 449
    iget-object v0, v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mGestureAction:Ljava/lang/String;

    .line 450
    .line 451
    iget-object v1, v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    .line 452
    .line 453
    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;->create(Ljava/lang/String;Landroid/content/Context;Landroid/view/MotionEvent;)Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDisplayId()I

    .line 458
    .line 459
    .line 460
    move-result v1

    .line 461
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;->performCornerAction(I)V

    .line 462
    .line 463
    .line 464
    :goto_4
    move v0, v3

    .line 465
    goto :goto_5

    .line 466
    :cond_11
    iget-object v4, v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDragAction:Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;

    .line 467
    .line 468
    if-eqz v4, :cond_12

    .line 469
    .line 470
    invoke-virtual {v4, v2}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;->setMotionEventForDragAction(Landroid/view/MotionEvent;)V

    .line 471
    .line 472
    .line 473
    iget-object v0, v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDragAction:Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;

    .line 474
    .line 475
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDisplayId()I

    .line 476
    .line 477
    .line 478
    move-result v2

    .line 479
    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;->performCornerAction(I)V

    .line 480
    .line 481
    .line 482
    const/4 v0, 0x0

    .line 483
    iput-object v0, v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDragAction:Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;

    .line 484
    .line 485
    goto :goto_4

    .line 486
    :cond_12
    iget-object v3, v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mGestureAction:Ljava/lang/String;

    .line 487
    .line 488
    iget-object v4, v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    .line 489
    .line 490
    invoke-static {v3, v4, v2}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;->create(Ljava/lang/String;Landroid/content/Context;Landroid/view/MotionEvent;)Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;

    .line 491
    .line 492
    .line 493
    move-result-object v3

    .line 494
    iput-object v3, v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDragAction:Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;

    .line 495
    .line 496
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDisplayId()I

    .line 497
    .line 498
    .line 499
    move-result v1

    .line 500
    invoke-virtual {v3, v1}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;->performCornerAction(I)V

    .line 501
    .line 502
    .line 503
    :goto_5
    iput v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionType:I

    .line 504
    .line 505
    goto/16 :goto_6

    .line 506
    .line 507
    :cond_13
    if-ne v1, v2, :cond_14

    .line 508
    .line 509
    if-eq v14, v4, :cond_14

    .line 510
    .line 511
    goto :goto_6

    .line 512
    :cond_14
    iget v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mType:I

    .line 513
    .line 514
    if-eqz v1, :cond_15

    .line 515
    .line 516
    iget-boolean v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mIsPauseAutoClick:Z

    .line 517
    .line 518
    if-nez v1, :cond_15

    .line 519
    .line 520
    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->this$0:Lcom/android/server/accessibility/autoaction/AutoActionController;

    .line 521
    .line 522
    iget-object v1, v1, Lcom/android/server/accessibility/autoaction/AutoActionController;->mContext:Landroid/content/Context;

    .line 523
    .line 524
    const-string/jumbo v2, "input"

    .line 525
    .line 526
    .line 527
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    move-result-object v1

    .line 531
    check-cast v1, Landroid/hardware/input/InputManager;

    .line 532
    .line 533
    if-eqz v1, :cond_15

    .line 534
    .line 535
    iget-object v2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 536
    .line 537
    aget-object v2, v2, v3

    .line 538
    .line 539
    iget v10, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 540
    .line 541
    iget v11, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 542
    .line 543
    const/4 v12, 0x1

    .line 544
    const/4 v9, 0x0

    .line 545
    move-wide v5, v7

    .line 546
    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 547
    .line 548
    .line 549
    move-result-object v2

    .line 550
    const/16 v4, 0x1002

    .line 551
    .line 552
    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->setSource(I)V

    .line 553
    .line 554
    .line 555
    const/high16 v4, 0x800000

    .line 556
    .line 557
    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->setFlags(I)V

    .line 558
    .line 559
    .line 560
    iget v4, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mDisplayId:I

    .line 561
    .line 562
    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->setDisplayId(I)V

    .line 563
    .line 564
    .line 565
    invoke-static {v2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 566
    .line 567
    .line 568
    move-result-object v4

    .line 569
    const/16 v5, 0xb

    .line 570
    .line 571
    invoke-virtual {v4, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 572
    .line 573
    .line 574
    invoke-virtual {v4, v0}, Landroid/view/MotionEvent;->setActionButton(I)V

    .line 575
    .line 576
    .line 577
    invoke-static {v2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 578
    .line 579
    .line 580
    move-result-object v5

    .line 581
    const/16 v6, 0xc

    .line 582
    .line 583
    invoke-virtual {v5, v6}, Landroid/view/MotionEvent;->setAction(I)V

    .line 584
    .line 585
    .line 586
    invoke-virtual {v5, v0}, Landroid/view/MotionEvent;->setActionButton(I)V

    .line 587
    .line 588
    .line 589
    invoke-virtual {v5, v3}, Landroid/view/MotionEvent;->setButtonState(I)V

    .line 590
    .line 591
    .line 592
    invoke-static {v2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 593
    .line 594
    .line 595
    move-result-object v6

    .line 596
    invoke-virtual {v6, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 597
    .line 598
    .line 599
    invoke-virtual {v6, v3}, Landroid/view/MotionEvent;->setButtonState(I)V

    .line 600
    .line 601
    .line 602
    invoke-virtual {v1, v2, v3}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    .line 603
    .line 604
    .line 605
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 606
    .line 607
    .line 608
    invoke-virtual {v1, v4, v3}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    .line 609
    .line 610
    .line 611
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 612
    .line 613
    .line 614
    invoke-virtual {v1, v5, v3}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    .line 615
    .line 616
    .line 617
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 618
    .line 619
    .line 620
    invoke-virtual {v1, v6, v3}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    .line 621
    .line 622
    .line 623
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    .line 624
    .line 625
    .line 626
    :cond_15
    :goto_6
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->resetInternalState()V

    .line 627
    .line 628
    .line 629
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ActionScheduler: { active="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mActive:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", type="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mType:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", delay="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mDelay:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", scheduledActionTime="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-wide v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mScheduledActionTime:J

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", anchor={x:"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 49
    .line 50
    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v1, ", y:"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 61
    .line 62
    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string/jumbo v1, "}, metastate="

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mMetaState:I

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v1, ", policyFlags="

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mEventPolicyFlags:I

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v1, ", lastMotionEvent="

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 94
    .line 95
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string p0, " }"

    .line 99
    .line 100
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    return-object p0
.end method

.method public final updateIsPauseAutoClick(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mIsPauseAutoClick:Z

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->this$0:Lcom/android/server/accessibility/autoaction/AutoActionController;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v0, "accessibility_auto_click_paused_state"

    .line 12
    .line 13
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method
