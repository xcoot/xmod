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

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mUserId:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final clearEvents(I)V
    .locals 1

    .line 1
    const/16 v0, 0x2002

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->cancel()V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onDestroy()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mAutoActionObserver:Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v2, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    iget-object v3, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mAutoActionObserver:Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "AutoActionObserver not started."

    .line 23
    .line 24
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p0

    .line 28
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->cancel()V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    .line 36
    .line 37
    :cond_2
    return-void
.end method

.method public final onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iput v1, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mMetaState:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->cancel()V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 9

    .line 1
    const/16 v0, 0x2002

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_12

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    new-instance v0, Landroid/os/Handler;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 24
    .line 25
    .line 26
    new-instance v3, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    .line 27
    .line 28
    invoke-direct {v3, p0, v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;-><init>(Lcom/android/server/accessibility/autoaction/AutoActionController;Landroid/os/Handler;)V

    .line 29
    .line 30
    .line 31
    iput-object v3, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    .line 32
    .line 33
    new-instance v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;

    .line 34
    .line 35
    iget v4, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mUserId:I

    .line 36
    .line 37
    invoke-direct {v3, v4, v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;-><init>(ILandroid/os/Handler;)V

    .line 38
    .line 39
    .line 40
    iput-object v3, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mAutoActionObserver:Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v4, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    .line 49
    .line 50
    iget-object v5, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 51
    .line 52
    if-nez v5, :cond_0

    .line 53
    .line 54
    iget-object v5, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    .line 55
    .line 56
    if-nez v5, :cond_0

    .line 57
    .line 58
    iput-object v0, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 59
    .line 60
    iput-object v4, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    .line 61
    .line 62
    iget-object v4, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mAutoActionTypeSettingUri:Landroid/net/Uri;

    .line 63
    .line 64
    iget v5, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mUserId:I

    .line 65
    .line 66
    invoke-virtual {v0, v4, v2, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 67
    .line 68
    .line 69
    iget-object v0, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 70
    .line 71
    iget-object v4, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mAutoActionDelaySettingUri:Landroid/net/Uri;

    .line 72
    .line 73
    iget v5, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mUserId:I

    .line 74
    .line 75
    invoke-virtual {v0, v4, v2, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 76
    .line 77
    .line 78
    iget-object v0, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 79
    .line 80
    iget-object v4, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mCornerActionEnabledSettingUri:Landroid/net/Uri;

    .line 81
    .line 82
    iget v5, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mUserId:I

    .line 83
    .line 84
    invoke-virtual {v0, v4, v2, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 85
    .line 86
    .line 87
    iget-object v0, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 88
    .line 89
    iget-object v4, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mPauseAutoClickWithSettingUri:Landroid/net/Uri;

    .line 90
    .line 91
    iget v5, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mUserId:I

    .line 92
    .line 93
    invoke-virtual {v0, v4, v2, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 94
    .line 95
    .line 96
    iget-object v0, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mAutoActionTypeSettingUri:Landroid/net/Uri;

    .line 97
    .line 98
    invoke-virtual {v3, v1, v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->onChange(ZLandroid/net/Uri;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mAutoActionDelaySettingUri:Landroid/net/Uri;

    .line 102
    .line 103
    invoke-virtual {v3, v1, v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->onChange(ZLandroid/net/Uri;)V

    .line 104
    .line 105
    .line 106
    iget-object v0, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mCornerActionEnabledSettingUri:Landroid/net/Uri;

    .line 107
    .line 108
    invoke-virtual {v3, v1, v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->onChange(ZLandroid/net/Uri;)V

    .line 109
    .line 110
    .line 111
    iget-object v0, v3, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mPauseAutoClickWithSettingUri:Landroid/net/Uri;

    .line 112
    .line 113
    invoke-virtual {v3, v1, v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->onChange(ZLandroid/net/Uri;)V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 118
    .line 119
    const-string p1, "Observer already started."

    .line 120
    .line 121
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p0

    .line 125
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    const/4 v3, 0x7

    .line 130
    if-eq v0, v3, :cond_2

    .line 131
    .line 132
    const/16 v1, 0x9

    .line 133
    .line 134
    if-eq v0, v1, :cond_13

    .line 135
    .line 136
    const/16 v1, 0xa

    .line 137
    .line 138
    if-eq v0, v1, :cond_13

    .line 139
    .line 140
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->cancel()V

    .line 143
    .line 144
    .line 145
    goto/16 :goto_4

    .line 146
    .line 147
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-ne v0, v1, :cond_11

    .line 152
    .line 153
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    iput v3, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mMetaState:I

    .line 163
    .line 164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    iput v3, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mDisplayId:I

    .line 169
    .line 170
    iget-object v3, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 171
    .line 172
    if-nez v3, :cond_4

    .line 173
    .line 174
    :cond_3
    move v3, v2

    .line 175
    goto :goto_1

    .line 176
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    iget-object v4, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 181
    .line 182
    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 183
    .line 184
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 185
    .line 186
    .line 187
    move-result v5

    .line 188
    sub-float/2addr v4, v5

    .line 189
    iget-object v5, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 190
    .line 191
    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 192
    .line 193
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 194
    .line 195
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

    .line 201
    .line 202
    .line 203
    move-result-wide v3

    .line 204
    const-wide/high16 v5, 0x4034000000000000L    # 20.0

    .line 205
    .line 206
    cmpl-double v3, v3, v5

    .line 207
    .line 208
    if-lez v3, :cond_3

    .line 209
    .line 210
    move v3, v1

    .line 211
    :goto_1
    iget-object v4, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 212
    .line 213
    if-eqz v4, :cond_6

    .line 214
    .line 215
    if-eqz v3, :cond_5

    .line 216
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

    .line 222
    .line 223
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 224
    .line 225
    .line 226
    :cond_7
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    iput-object v4, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 231
    .line 232
    iput p3, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mEventPolicyFlags:I

    .line 233
    .line 234
    if-eqz v5, :cond_8

    .line 235
    .line 236
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 237
    .line 238
    .line 239
    move-result v4

    .line 240
    iget-object v5, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 241
    .line 242
    iget-object v6, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 243
    .line 244
    invoke-virtual {v5, v4, v6}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 245
    .line 246
    .line 247
    :cond_8
    if-eqz v3, :cond_13

    .line 248
    .line 249
    iget v3, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mDelay:I

    .line 250
    .line 251
    iget-object v4, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    .line 252
    .line 253
    if-eqz v4, :cond_e

    .line 254
    .line 255
    iget-object v4, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 256
    .line 257
    if-eqz v4, :cond_e

    .line 258
    .line 259
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 260
    .line 261
    .line 262
    move-result v4

    .line 263
    iget-object v5, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 264
    .line 265
    invoke-virtual {v5, v4}, Landroid/view/MotionEvent;->getX(I)F

    .line 266
    .line 267
    .line 268
    move-result v5

    .line 269
    iget-object v6, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 270
    .line 271
    invoke-virtual {v6, v4}, Landroid/view/MotionEvent;->getY(I)F

    .line 272
    .line 273
    .line 274
    move-result v4

    .line 275
    iget-object v6, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    .line 276
    .line 277
    iget-object v6, v6, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 278
    .line 279
    if-eqz v6, :cond_9

    .line 280
    .line 281
    new-instance v7, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda2;

    .line 282
    .line 283
    invoke-direct {v7, v6, v2}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;Z)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v6, v7}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 287
    .line 288
    .line 289
    :cond_9
    iget-object v6, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    .line 290
    .line 291
    invoke-virtual {v6}, Lcom/android/server/accessibility/autoaction/CornerActionController;->clearDuration()V

    .line 292
    .line 293
    .line 294
    iget-object v6, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    .line 295
    .line 296
    iget v7, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mDisplayId:I

    .line 297
    .line 298
    iget-object v8, v6, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 299
    .line 300
    if-nez v8, :cond_a

    .line 301
    .line 302
    new-instance v8, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 303
    .line 304
    invoke-virtual {v6, v7}, Lcom/android/server/accessibility/autoaction/CornerActionController;->getDisplayContext(I)Landroid/content/Context;

    .line 305
    .line 306
    .line 307
    move-result-object v7

    .line 308
    invoke-direct {v8, v7, v2}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;-><init>(Landroid/content/Context;I)V

    .line 309
    .line 310
    .line 311
    iput-object v8, v6, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 312
    .line 313
    :cond_a
    iget-object v2, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    .line 314
    .line 315
    iget v6, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mDisplayId:I

    .line 316
    .line 317
    invoke-virtual {v2, v6, v5, v4}, Lcom/android/server/accessibility/autoaction/CornerActionController;->getCorner(IFF)I

    .line 318
    .line 319
    .line 320
    move-result v2

    .line 321
    const/4 v6, -0x1

    .line 322
    if-ne v2, v6, :cond_b

    .line 323
    .line 324
    iget v2, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionType:I

    .line 325
    .line 326
    if-ne v2, v1, :cond_e

    .line 327
    .line 328
    :cond_b
    iget-object v2, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    .line 329
    .line 330
    iget-object v2, v2, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 331
    .line 332
    if-eqz v2, :cond_c

    .line 333
    .line 334
    new-instance v6, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda1;

    .line 335
    .line 336
    invoke-direct {v6, v2, v5, v4}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;FF)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v2, v6}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 340
    .line 341
    .line 342
    :cond_c
    iget-object v2, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    .line 343
    .line 344
    iget-object v2, v2, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 345
    .line 346
    if-eqz v2, :cond_d

    .line 347
    .line 348
    new-instance v4, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda2;

    .line 349
    .line 350
    invoke-direct {v4, v2, v1}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;Z)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v2, v4}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 354
    .line 355
    .line 356
    :cond_d
    iget-object v2, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    .line 357
    .line 358
    int-to-long v4, v3

    .line 359
    iget-object v6, v2, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 360
    .line 361
    if-eqz v6, :cond_e

    .line 362
    .line 363
    iget-boolean v7, v2, Lcom/android/server/accessibility/autoaction/CornerActionController;->mIsAnimating:Z

    .line 364
    .line 365
    if-nez v7, :cond_e

    .line 366
    .line 367
    iput-wide v4, v6, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mDurationTime:J

    .line 368
    .line 369
    new-instance v4, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda0;

    .line 370
    .line 371
    const/4 v5, 0x0

    .line 372
    invoke-direct {v4, v6, v5}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;I)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v6, v4}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 376
    .line 377
    .line 378
    iput-boolean v1, v2, Lcom/android/server/accessibility/autoaction/CornerActionController;->mIsAnimating:Z

    .line 379
    .line 380
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 381
    .line 382
    .line 383
    move-result-wide v4

    .line 384
    int-to-long v2, v3

    .line 385
    add-long/2addr v4, v2

    .line 386
    iget-boolean v6, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mActive:Z

    .line 387
    .line 388
    if-eqz v6, :cond_f

    .line 389
    .line 390
    iget-wide v7, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mScheduledActionTime:J

    .line 391
    .line 392
    cmp-long v7, v4, v7

    .line 393
    .line 394
    if-lez v7, :cond_f

    .line 395
    .line 396
    iput-wide v4, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mScheduledActionTime:J

    .line 397
    .line 398
    goto :goto_4

    .line 399
    :cond_f
    if-eqz v6, :cond_10

    .line 400
    .line 401
    iget-object v6, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mHandler:Landroid/os/Handler;

    .line 402
    .line 403
    invoke-virtual {v6, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 404
    .line 405
    .line 406
    :cond_10
    iput-boolean v1, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mActive:Z

    .line 407
    .line 408
    iput-wide v4, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mScheduledActionTime:J

    .line 409
    .line 410
    iget-object v1, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mHandler:Landroid/os/Handler;

    .line 411
    .line 412
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 413
    .line 414
    .line 415
    goto :goto_4

    .line 416
    :cond_11
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    .line 417
    .line 418
    invoke-virtual {v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->cancel()V

    .line 419
    .line 420
    .line 421
    goto :goto_4

    .line 422
    :cond_12
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    .line 423
    .line 424
    if-eqz v0, :cond_13

    .line 425
    .line 426
    invoke-virtual {v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->cancel()V

    .line 427
    .line 428
    .line 429
    :cond_13
    :goto_4
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 430
    .line 431
    .line 432
    return-void
.end method
