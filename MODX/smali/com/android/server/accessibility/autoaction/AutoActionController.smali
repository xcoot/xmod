.class public final Lcom/android/server/accessibility/autoaction/AutoActionController;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

.field public mAutoActionObserver:Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;

.field public final mContext:Landroid/content/Context;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mContext:Landroid/content/Context;

    .line 6
    iput p2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mUserId:I

    .line 8
    return-void
.end method


# virtual methods
.method public final clearEvents(I)V
    .locals 1

    .line 1
    const/16 v0, 0x2002

    .line 3
    if-ne p1, v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->cancel()V

    .line 12
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    .line 15
    return-void
.end method

.method public final onDestroy()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mAutoActionObserver:Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 6
    iget-object v2, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 8
    if-eqz v2, :cond_0

    .line 10
    iget-object v3, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    .line 12
    if-eqz v3, :cond_0

    .line 14
    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 17
    iput-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mAutoActionObserver:Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 22
    const-string v0, "AutoActionObserver not started."

    .line 24
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p0

    .line 28
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    .line 30
    if-eqz v0, :cond_2

    .line 32
    invoke-virtual {v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->cancel()V

    .line 35
    iput-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    .line 37
    :cond_2
    return-void
.end method

.method public final onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    .line 3
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    .line 17
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    .line 20
    move-result v1

    .line 21
    iput v1, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mMetaState:I

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    .line 26
    invoke-virtual {v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->cancel()V

    .line 29
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 32
    return-void
.end method

.method public final onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 9

    .line 1
    const/16 v0, 0x2002

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_12

    .line 9
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v0, :cond_1

    .line 15
    new-instance v0, Landroid/os/Handler;

    .line 17
    iget-object v3, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mContext:Landroid/content/Context;

    .line 19
    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 22
    move-result-object v3

    .line 23
    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 26
    new-instance v3, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    .line 28
    invoke-direct {v3, p0, v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;-><init>(Lcom/android/server/accessibility/autoaction/AutoActionController;Landroid/os/Handler;)V

    .line 31
    iput-object v3, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    .line 33
    new-instance v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;

    .line 35
    iget v4, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mUserId:I

    .line 37
    invoke-direct {v3, v4, v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;-><init>(ILandroid/os/Handler;)V

    .line 40
    iput-object v3, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mAutoActionObserver:Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;

    .line 42
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mContext:Landroid/content/Context;

    .line 44
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 47
    move-result-object v0

    .line 48
    iget-object v4, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    .line 50
    iget-object v5, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 52
    if-nez v5, :cond_0

    .line 54
    iget-object v5, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    .line 56
    if-nez v5, :cond_0

    .line 58
    iput-object v0, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 60
    iput-object v4, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    .line 62
    iget-object v4, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mAutoActionTypeSettingUri:Landroid/net/Uri;

    .line 64
    iget v5, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mUserId:I

    .line 66
    invoke-virtual {v0, v4, v2, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 69
    iget-object v0, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 71
    iget-object v4, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mAutoActionDelaySettingUri:Landroid/net/Uri;

    .line 73
    iget v5, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mUserId:I

    .line 75
    invoke-virtual {v0, v4, v2, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 78
    iget-object v0, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 80
    iget-object v4, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mCornerActionEnabledSettingUri:Landroid/net/Uri;

    .line 82
    iget v5, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mUserId:I

    .line 84
    invoke-virtual {v0, v4, v2, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 87
    iget-object v0, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 89
    iget-object v4, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mPauseAutoClickWithSettingUri:Landroid/net/Uri;

    .line 91
    iget v5, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mUserId:I

    .line 93
    invoke-virtual {v0, v4, v2, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 96
    iget-object v0, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mAutoActionTypeSettingUri:Landroid/net/Uri;

    .line 98
    invoke-virtual {v3, v1, v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->onChange(ZLandroid/net/Uri;)V

    .line 101
    iget-object v0, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mAutoActionDelaySettingUri:Landroid/net/Uri;

    .line 103
    invoke-virtual {v3, v1, v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->onChange(ZLandroid/net/Uri;)V

    .line 106
    iget-object v0, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mCornerActionEnabledSettingUri:Landroid/net/Uri;

    .line 108
    invoke-virtual {v3, v1, v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->onChange(ZLandroid/net/Uri;)V

    .line 111
    iget-object v0, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mPauseAutoClickWithSettingUri:Landroid/net/Uri;

    .line 113
    invoke-virtual {v3, v1, v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->onChange(ZLandroid/net/Uri;)V

    .line 116
    goto :goto_0

    .line 117
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 119
    const-string p1, "Observer already started."

    .line 121
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 124
    throw p0

    .line 125
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 128
    move-result v0

    .line 129
    const/4 v3, 0x7

    .line 130
    if-eq v0, v3, :cond_2

    .line 132
    const/16 v1, 0x9

    .line 134
    if-eq v0, v1, :cond_13

    .line 136
    const/16 v1, 0xa

    .line 138
    if-eq v0, v1, :cond_13

    .line 140
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    .line 142
    invoke-virtual {v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->cancel()V

    .line 145
    goto/16 :goto_4

    .line 147
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 150
    move-result v0

    .line 151
    if-ne v0, v1, :cond_11

    .line 153
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    .line 155
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    .line 161
    move-result v3

    .line 162
    iput v3, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mMetaState:I

    .line 164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    .line 167
    move-result v3

    .line 168
    iput v3, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mDisplayId:I

    .line 170
    iget-object v3, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 172
    if-nez v3, :cond_4

    .line 174
    :cond_3
    move v3, v2

    .line 175
    goto :goto_1

    .line 176
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 179
    move-result v3

    .line 180
    iget-object v4, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 182
    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 184
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 187
    move-result v5

    .line 188
    sub-float/2addr v4, v5

    .line 189
    iget-object v5, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 191
    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 193
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 196
    move-result v3

    .line 197
    sub-float/2addr v5, v3

    .line 198
    float-to-double v3, v4

    .line 199
    float-to-double v5, v5

    .line 200
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    .line 203
    move-result-wide v3

    .line 204
    const-wide/high16 v5, 0x4034000000000000L    # 20.0

    .line 206
    cmpl-double v3, v3, v5

    .line 208
    if-lez v3, :cond_3

    .line 210
    move v3, v1

    .line 211
    :goto_1
    iget-object v4, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 213
    if-eqz v4, :cond_6

    .line 215
    if-eqz v3, :cond_5

    .line 217
    goto :goto_2

    .line 218
    :cond_5
    move v5, v2

    .line 219
    goto :goto_3

    .line 220
    :cond_6
    :goto_2
    move v5, v1

    .line 221
    :goto_3
    if-eqz v4, :cond_7

    .line 223
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 226
    :cond_7
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 229
    move-result-object v4

    .line 230
    iput-object v4, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 232
    iput p3, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mEventPolicyFlags:I

    .line 234
    if-eqz v5, :cond_8

    .line 236
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 239
    move-result v4

    .line 240
    iget-object v5, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 242
    iget-object v6, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 244
    invoke-virtual {v5, v4, v6}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 247
    :cond_8
    if-eqz v3, :cond_13

    .line 249
    iget v3, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mDelay:I

    .line 251
    iget-object v4, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    .line 253
    if-eqz v4, :cond_e

    .line 255
    iget-object v4, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 257
    if-eqz v4, :cond_e

    .line 259
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 262
    move-result v4

    .line 263
    iget-object v5, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 265
    invoke-virtual {v5, v4}, Landroid/view/MotionEvent;->getX(I)F

    .line 268
    move-result v5

    .line 269
    iget-object v6, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 271
    invoke-virtual {v6, v4}, Landroid/view/MotionEvent;->getY(I)F

    .line 274
    move-result v4

    .line 275
    iget-object v6, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    .line 277
    iget-object v6, v6, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 279
    if-eqz v6, :cond_9

    .line 281
    new-instance v7, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda2;

    .line 283
    invoke-direct {v7, v6, v2}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;Z)V

    .line 286
    invoke-virtual {v6, v7}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 289
    :cond_9
    iget-object v6, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    .line 291
    invoke-virtual {v6}, Lcom/android/server/accessibility/autoaction/CornerActionController;->clearDuration()V

    .line 294
    iget-object v6, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    .line 296
    iget v7, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mDisplayId:I

    .line 298
    iget-object v8, v6, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 300
    if-nez v8, :cond_a

    .line 302
    new-instance v8, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 304
    invoke-virtual {v6, v7}, Lcom/android/server/accessibility/autoaction/CornerActionController;->getDisplayContext(I)Landroid/content/Context;

    .line 307
    move-result-object v7

    .line 308
    invoke-direct {v8, v7, v2}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;-><init>(Landroid/content/Context;I)V

    .line 311
    iput-object v8, v6, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 313
    :cond_a
    iget-object v2, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    .line 315
    iget v6, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mDisplayId:I

    .line 317
    invoke-virtual {v2, v6, v5, v4}, Lcom/android/server/accessibility/autoaction/CornerActionController;->getCorner(IFF)I

    .line 320
    move-result v2

    .line 321
    const/4 v6, -0x1

    .line 322
    if-ne v2, v6, :cond_b

    .line 324
    iget v2, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionType:I

    .line 326
    if-ne v2, v1, :cond_e

    .line 328
    :cond_b
    iget-object v2, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    .line 330
    iget-object v2, v2, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 332
    if-eqz v2, :cond_c

    .line 334
    new-instance v6, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda1;

    .line 336
    invoke-direct {v6, v2, v5, v4}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;FF)V

    .line 339
    invoke-virtual {v2, v6}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 342
    :cond_c
    iget-object v2, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    .line 344
    iget-object v2, v2, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 346
    if-eqz v2, :cond_d

    .line 348
    new-instance v4, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda2;

    .line 350
    invoke-direct {v4, v2, v1}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;Z)V

    .line 353
    invoke-virtual {v2, v4}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 356
    :cond_d
    iget-object v2, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    .line 358
    int-to-long v4, v3

    .line 359
    iget-object v6, v2, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 361
    if-eqz v6, :cond_e

    .line 363
    iget-boolean v7, v2, Lcom/android/server/accessibility/autoaction/CornerActionController;->mIsAnimating:Z

    .line 365
    if-nez v7, :cond_e

    .line 367
    iput-wide v4, v6, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mDurationTime:J

    .line 369
    new-instance v4, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda0;

    .line 371
    const/4 v5, 0x0

    .line 372
    invoke-direct {v4, v6, v5}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;I)V

    .line 375
    invoke-virtual {v6, v4}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 378
    iput-boolean v1, v2, Lcom/android/server/accessibility/autoaction/CornerActionController;->mIsAnimating:Z

    .line 380
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 383
    move-result-wide v4

    .line 384
    int-to-long v2, v3

    .line 385
    add-long/2addr v4, v2

    .line 386
    iget-boolean v6, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mActive:Z

    .line 388
    if-eqz v6, :cond_f

    .line 390
    iget-wide v7, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mScheduledActionTime:J

    .line 392
    cmp-long v7, v4, v7

    .line 394
    if-lez v7, :cond_f

    .line 396
    iput-wide v4, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mScheduledActionTime:J

    .line 398
    goto :goto_4

    .line 399
    :cond_f
    if-eqz v6, :cond_10

    .line 401
    iget-object v6, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mHandler:Landroid/os/Handler;

    .line 403
    invoke-virtual {v6, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 406
    :cond_10
    iput-boolean v1, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mActive:Z

    .line 408
    iput-wide v4, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mScheduledActionTime:J

    .line 410
    iget-object v1, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mHandler:Landroid/os/Handler;

    .line 412
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 415
    goto :goto_4

    .line 416
    :cond_11
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    .line 418
    invoke-virtual {v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->cancel()V

    .line 421
    goto :goto_4

    .line 422
    :cond_12
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    .line 424
    if-eqz v0, :cond_13

    .line 426
    invoke-virtual {v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->cancel()V

    .line 429
    :cond_13
    :goto_4
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 432
    return-void
.end method
