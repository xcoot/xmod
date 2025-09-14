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

    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->this$0:Lcom/android/server/accessibility/autoaction/AutoActionController;

    .line 6
    iput-object p2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mHandler:Landroid/os/Handler;

    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 11
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->resetInternalState()V

    .line 14
    const/16 p1, 0x258

    .line 16
    iput p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mDelay:I

    .line 18
    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mType:I

    .line 21
    iput p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionType:I

    .line 23
    new-instance p2, Landroid/view/MotionEvent$PointerCoords;

    .line 25
    invoke-direct {p2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 30
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->updateIsPauseAutoClick(Z)V

    .line 33
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mActive:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    .line 8
    if-eqz v0, :cond_2

    .line 10
    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 12
    if-eqz v0, :cond_1

    .line 14
    new-instance v1, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda2;

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-direct {v1, v0, v2}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;Z)V

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    .line 25
    invoke-virtual {v0}, Lcom/android/server/accessibility/autoaction/CornerActionController;->clearDuration()V

    .line 28
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->resetInternalState()V

    .line 31
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mHandler:Landroid/os/Handler;

    .line 33
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 36
    return-void
.end method

.method public final resetInternalState()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mActive:Z

    .line 4
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 14
    :cond_0
    const-wide/16 v0, -0x1

    .line 16
    iput-wide v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mScheduledActionTime:J

    .line 18
    return-void
.end method

.method public final run()V
    .locals 15

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 5
    move-result-wide v1

    .line 6
    iget-wide v3, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mScheduledActionTime:J

    .line 8
    cmp-long v5, v1, v3

    .line 10
    if-gez v5, :cond_0

    .line 12
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mHandler:Landroid/os/Handler;

    .line 14
    sub-long/2addr v3, v1

    .line 15
    invoke-virtual {v0, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 21
    if-eqz v1, :cond_15

    .line 23
    iget-object v2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->this$0:Lcom/android/server/accessibility/autoaction/AutoActionController;

    .line 25
    iget-object v2, v2, Lcom/android/server/accessibility/BaseEventStreamTransformation;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 27
    if-nez v2, :cond_1

    .line 29
    goto/16 :goto_6

    .line 31
    :cond_1
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 34
    move-result v1

    .line 35
    iget-object v2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 37
    const/4 v3, 0x0

    .line 38
    if-nez v2, :cond_2

    .line 40
    new-array v2, v0, [Landroid/view/MotionEvent$PointerProperties;

    .line 42
    iput-object v2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 44
    new-instance v4, Landroid/view/MotionEvent$PointerProperties;

    .line 46
    invoke-direct {v4}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 49
    aput-object v4, v2, v3

    .line 51
    :cond_2
    iget-object v2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 53
    iget-object v4, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 55
    aget-object v4, v4, v3

    .line 57
    invoke-virtual {v2, v1, v4}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 60
    iget-object v2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 62
    if-nez v2, :cond_3

    .line 64
    new-array v2, v0, [Landroid/view/MotionEvent$PointerCoords;

    .line 66
    iput-object v2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 68
    new-instance v4, Landroid/view/MotionEvent$PointerCoords;

    .line 70
    invoke-direct {v4}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 73
    aput-object v4, v2, v3

    .line 75
    :cond_3
    iget-object v2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 77
    iget-object v4, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 79
    aget-object v4, v4, v3

    .line 81
    invoke-virtual {v2, v1, v4}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 84
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 87
    move-result-wide v7

    .line 88
    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    .line 90
    if-eqz v1, :cond_14

    .line 92
    invoke-virtual {v1}, Lcom/android/server/accessibility/autoaction/CornerActionController;->clearDuration()V

    .line 95
    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    .line 97
    iget-object v1, v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 99
    if-eqz v1, :cond_4

    .line 101
    new-instance v2, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda2;

    .line 103
    invoke-direct {v2, v1, v3}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;Z)V

    .line 106
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 109
    :cond_4
    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    .line 111
    iget-object v2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 113
    aget-object v2, v2, v3

    .line 115
    iget v4, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 117
    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 119
    iget v5, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mDisplayId:I

    .line 121
    invoke-virtual {v1, v5, v4, v2}, Lcom/android/server/accessibility/autoaction/CornerActionController;->getCorner(IFF)I

    .line 124
    move-result v14

    .line 125
    iget v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionType:I

    .line 127
    const/4 v2, 0x2

    .line 128
    const/4 v4, -0x1

    .line 129
    if-nez v1, :cond_f

    .line 131
    if-eq v14, v4, :cond_14

    .line 133
    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    .line 135
    iget v5, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mDisplayId:I

    .line 137
    iget-object v6, v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mCornerActions:[Ljava/lang/String;

    .line 139
    const-string v7, ","

    .line 141
    if-eqz v6, :cond_7

    .line 143
    iget-object v4, v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 145
    if-eqz v4, :cond_5

    .line 147
    iget-object v6, v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    .line 149
    sget-object v8, Lcom/android/server/accessibility/autoaction/CornerActionController;->TTS_CORNER:[I

    .line 151
    aget v8, v8, v14

    .line 153
    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 156
    move-result-object v6

    .line 157
    iget-object v4, v4, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mView:Landroid/view/View;

    .line 159
    invoke-virtual {v4, v6}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 162
    :cond_5
    iget-object v4, v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mCornerActions:[Ljava/lang/String;

    .line 164
    aget-object v4, v4, v14

    .line 166
    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 169
    move-result-object v4

    .line 170
    array-length v6, v4

    .line 171
    if-le v6, v0, :cond_6

    .line 173
    move v4, v2

    .line 174
    goto :goto_0

    .line 175
    :cond_6
    aget-object v4, v4, v3

    .line 177
    invoke-virtual {v1, v5, v14, v4}, Lcom/android/server/accessibility/autoaction/CornerActionController;->performCornerAction(IILjava/lang/String;)I

    .line 180
    move-result v4

    .line 181
    :cond_7
    :goto_0
    iput v4, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionType:I

    .line 183
    if-ne v4, v2, :cond_e

    .line 185
    const-string v1, "AutoActionController sendAction SELECT_ACTION"

    .line 187
    const-string/jumbo v2, "usibi"

    .line 190
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget v13, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mDisplayId:I

    .line 195
    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    .line 197
    iget-object v1, v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mCornerActions:[Ljava/lang/String;

    .line 199
    aget-object v1, v1, v14

    .line 201
    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 204
    move-result-object v12

    .line 205
    new-instance v1, Ljava/util/ArrayList;

    .line 207
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 210
    array-length v4, v12

    .line 211
    move v5, v3

    .line 212
    :goto_1
    if-ge v5, v4, :cond_c

    .line 214
    aget-object v6, v12, v5

    .line 216
    const-string/jumbo v7, "pause_resume_auto_click"

    .line 219
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 222
    move-result v7

    .line 223
    if-eqz v7, :cond_9

    .line 225
    iget-boolean v6, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mIsPauseAutoClick:Z

    .line 227
    if-eqz v6, :cond_8

    .line 229
    const-string/jumbo v6, "resume_auto_click"

    .line 232
    goto :goto_2

    .line 233
    :cond_8
    const-string/jumbo v6, "pause_auto_click"

    .line 236
    goto :goto_2

    .line 237
    :cond_9
    const-string/jumbo v7, "sound_vibrate_mute"

    .line 240
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 243
    move-result v7

    .line 244
    if-eqz v7, :cond_b

    .line 246
    iget-object v7, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->this$0:Lcom/android/server/accessibility/autoaction/AutoActionController;

    .line 248
    iget-object v7, v7, Lcom/android/server/accessibility/autoaction/AutoActionController;->mContext:Landroid/content/Context;

    .line 250
    const-string/jumbo v8, "vibrator"

    .line 253
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 256
    move-result-object v7

    .line 257
    check-cast v7, Landroid/os/Vibrator;

    .line 259
    if-eqz v7, :cond_a

    .line 261
    invoke-virtual {v7}, Landroid/os/Vibrator;->hasVibrator()Z

    .line 264
    move-result v7

    .line 265
    if-eqz v7, :cond_a

    .line 267
    goto :goto_2

    .line 268
    :cond_a
    const-string/jumbo v6, "sound_mute"

    .line 271
    :cond_b
    :goto_2
    iget-object v7, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    .line 273
    iget-object v7, v7, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    .line 275
    invoke-static {v6}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;->getTitleResId(Ljava/lang/String;)I

    .line 278
    move-result v6

    .line 279
    invoke-virtual {v7, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 282
    move-result-object v6

    .line 283
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    add-int/2addr v5, v0

    .line 287
    goto :goto_1

    .line 288
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    .line 290
    const-string v5, "AutoActionController showActionSelectPopup displayId : "

    .line 292
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    move-result-object v4

    .line 302
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    new-instance v2, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;

    .line 307
    iget-object v4, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    .line 309
    invoke-virtual {v4, v13}, Lcom/android/server/accessibility/autoaction/CornerActionController;->getDisplayContext(I)Landroid/content/Context;

    .line 312
    move-result-object v4

    .line 313
    invoke-direct {v2, v4, v14}, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;-><init>(Landroid/content/Context;I)V

    .line 316
    move v4, v3

    .line 317
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 320
    move-result v5

    .line 321
    if-ge v4, v5, :cond_d

    .line 323
    iget-object v5, v2, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mPopup:Landroid/widget/PopupMenu;

    .line 325
    invoke-virtual {v5}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 328
    move-result-object v5

    .line 329
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 332
    move-result-object v6

    .line 333
    check-cast v6, Ljava/lang/CharSequence;

    .line 335
    invoke-interface {v5, v3, v4, v3, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 338
    add-int/2addr v4, v0

    .line 339
    goto :goto_3

    .line 340
    :cond_d
    new-instance v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$1;

    .line 342
    invoke-direct {v0, p0, v2}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$1;-><init>(Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;)V

    .line 345
    iget-object v1, v2, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mPopup:Landroid/widget/PopupMenu;

    .line 347
    invoke-virtual {v1, v0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 350
    new-instance v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$2;

    .line 352
    move-object v9, v0

    .line 353
    move-object v10, p0

    .line 354
    move-object v11, v2

    .line 355
    invoke-direct/range {v9 .. v14}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$2;-><init>(Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;[Ljava/lang/String;II)V

    .line 358
    iget-object v1, v2, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mPopup:Landroid/widget/PopupMenu;

    .line 360
    invoke-virtual {v1, v0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 363
    new-instance v0, Landroid/os/Handler;

    .line 365
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 368
    move-result-object v1

    .line 369
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 372
    new-instance v1, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup$2;

    .line 374
    invoke-direct {v1, v2}, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup$2;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;)V

    .line 377
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 380
    goto/16 :goto_6

    .line 382
    :cond_e
    const/4 v1, 0x3

    .line 383
    if-ne v4, v1, :cond_15

    .line 385
    iget-boolean v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mIsPauseAutoClick:Z

    .line 387
    xor-int/2addr v0, v1

    .line 388
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->updateIsPauseAutoClick(Z)V

    .line 391
    iput v3, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionType:I

    .line 393
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mHandler:Landroid/os/Handler;

    .line 395
    new-instance v1, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$3;

    .line 397
    invoke-direct {v1, p0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$3;-><init>(Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;)V

    .line 400
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 403
    goto/16 :goto_6

    .line 405
    :cond_f
    if-ne v1, v0, :cond_13

    .line 407
    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    .line 409
    iget-object v2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 411
    iget-object v4, v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 413
    if-eqz v4, :cond_10

    .line 415
    invoke-virtual {v4}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    .line 418
    move-result v4

    .line 419
    if-eqz v4, :cond_10

    .line 421
    iget-object v4, v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 423
    invoke-virtual {v4, v3}, Lcom/samsung/android/widget/SemTipPopup;->dismiss(Z)V

    .line 426
    :cond_10
    iget-object v4, v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mGestureAction:Ljava/lang/String;

    .line 428
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 431
    const-string/jumbo v5, "drag"

    .line 434
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 437
    move-result v5

    .line 438
    if-nez v5, :cond_11

    .line 440
    const-string/jumbo v5, "drag_and_drop"

    .line 443
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 446
    move-result v4

    .line 447
    if-nez v4, :cond_11

    .line 449
    iget-object v0, v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mGestureAction:Ljava/lang/String;

    .line 451
    iget-object v1, v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    .line 453
    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;->create(Ljava/lang/String;Landroid/content/Context;Landroid/view/MotionEvent;)Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;

    .line 456
    move-result-object v0

    .line 457
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDisplayId()I

    .line 460
    move-result v1

    .line 461
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;->performCornerAction(I)V

    .line 464
    :goto_4
    move v0, v3

    .line 465
    goto :goto_5

    .line 466
    :cond_11
    iget-object v4, v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDragAction:Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;

    .line 468
    if-eqz v4, :cond_12

    .line 470
    invoke-virtual {v4, v2}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;->setMotionEventForDragAction(Landroid/view/MotionEvent;)V

    .line 473
    iget-object v0, v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDragAction:Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;

    .line 475
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDisplayId()I

    .line 478
    move-result v2

    .line 479
    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;->performCornerAction(I)V

    .line 482
    const/4 v0, 0x0

    .line 483
    iput-object v0, v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDragAction:Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;

    .line 485
    goto :goto_4

    .line 486
    :cond_12
    iget-object v3, v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mGestureAction:Ljava/lang/String;

    .line 488
    iget-object v4, v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    .line 490
    invoke-static {v3, v4, v2}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;->create(Ljava/lang/String;Landroid/content/Context;Landroid/view/MotionEvent;)Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;

    .line 493
    move-result-object v3

    .line 494
    iput-object v3, v1, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDragAction:Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;

    .line 496
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDisplayId()I

    .line 499
    move-result v1

    .line 500
    invoke-virtual {v3, v1}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;->performCornerAction(I)V

    .line 503
    :goto_5
    iput v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionType:I

    .line 505
    goto/16 :goto_6

    .line 507
    :cond_13
    if-ne v1, v2, :cond_14

    .line 509
    if-eq v14, v4, :cond_14

    .line 511
    goto :goto_6

    .line 512
    :cond_14
    iget v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mType:I

    .line 514
    if-eqz v1, :cond_15

    .line 516
    iget-boolean v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mIsPauseAutoClick:Z

    .line 518
    if-nez v1, :cond_15

    .line 520
    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->this$0:Lcom/android/server/accessibility/autoaction/AutoActionController;

    .line 522
    iget-object v1, v1, Lcom/android/server/accessibility/autoaction/AutoActionController;->mContext:Landroid/content/Context;

    .line 524
    const-string/jumbo v2, "input"

    .line 527
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 530
    move-result-object v1

    .line 531
    check-cast v1, Landroid/hardware/input/InputManager;

    .line 533
    if-eqz v1, :cond_15

    .line 535
    iget-object v2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 537
    aget-object v2, v2, v3

    .line 539
    iget v10, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 541
    iget v11, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 543
    const/4 v12, 0x1

    .line 544
    const/4 v9, 0x0

    .line 545
    move-wide v5, v7

    .line 546
    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 549
    move-result-object v2

    .line 550
    const/16 v4, 0x1002

    .line 552
    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->setSource(I)V

    .line 555
    const/high16 v4, 0x800000

    .line 557
    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->setFlags(I)V

    .line 560
    iget v4, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mDisplayId:I

    .line 562
    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->setDisplayId(I)V

    .line 565
    invoke-static {v2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 568
    move-result-object v4

    .line 569
    const/16 v5, 0xb

    .line 571
    invoke-virtual {v4, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 574
    invoke-virtual {v4, v0}, Landroid/view/MotionEvent;->setActionButton(I)V

    .line 577
    invoke-static {v2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 580
    move-result-object v5

    .line 581
    const/16 v6, 0xc

    .line 583
    invoke-virtual {v5, v6}, Landroid/view/MotionEvent;->setAction(I)V

    .line 586
    invoke-virtual {v5, v0}, Landroid/view/MotionEvent;->setActionButton(I)V

    .line 589
    invoke-virtual {v5, v3}, Landroid/view/MotionEvent;->setButtonState(I)V

    .line 592
    invoke-static {v2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 595
    move-result-object v6

    .line 596
    invoke-virtual {v6, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 599
    invoke-virtual {v6, v3}, Landroid/view/MotionEvent;->setButtonState(I)V

    .line 602
    invoke-virtual {v1, v2, v3}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    .line 605
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 608
    invoke-virtual {v1, v4, v3}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    .line 611
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 614
    invoke-virtual {v1, v5, v3}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    .line 617
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 620
    invoke-virtual {v1, v6, v3}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    .line 623
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    .line 626
    :cond_15
    :goto_6
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->resetInternalState()V

    .line 629
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "ActionScheduler: { active="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-boolean v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mActive:Z

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ", type="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mType:I

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, ", delay="

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mDelay:I

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    const-string v1, ", scheduledActionTime="

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-wide v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mScheduledActionTime:J

    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 43
    const-string v1, ", anchor={x:"

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 50
    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 55
    const-string v1, ", y:"

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 62
    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 67
    const-string/jumbo v1, "}, metastate="

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mMetaState:I

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, ", policyFlags="

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mEventPolicyFlags:I

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    const-string v1, ", lastMotionEvent="

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 95
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    const-string p0, " }"

    .line 100
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object p0

    .line 107
    return-object p0
.end method

.method public final updateIsPauseAutoClick(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mIsPauseAutoClick:Z

    .line 3
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->this$0:Lcom/android/server/accessibility/autoaction/AutoActionController;

    .line 5
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mContext:Landroid/content/Context;

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    move-result-object p0

    .line 11
    const-string v0, "accessibility_auto_click_paused_state"

    .line 13
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 16
    return-void
.end method
