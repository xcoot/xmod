.class public final Lcom/android/server/accessibility/AutoclickController;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mClickDelayObserver:Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;

.field public mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

.field public final mContext:Landroid/content/Context;

.field public final mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/server/accessibility/AccessibilityTraceManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/android/server/accessibility/AutoclickController;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/accessibility/AutoclickController;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    iput p2, p0, Lcom/android/server/accessibility/AutoclickController;->mUserId:I

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic access$001(Lcom/android/server/accessibility/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$101(Lcom/android/server/accessibility/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$201(Lcom/android/server/accessibility/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$301(Lcom/android/server/accessibility/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 2
    .line 3
    .line 4
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
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->cancel()V

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
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mClickDelayObserver:Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v2, v0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    iget-object v3, v0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/android/server/accessibility/AutoclickController;->mClickDelayObserver:Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "ClickDelayObserver not started."

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
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->cancel()V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    .line 36
    .line 37
    :cond_2
    return-void
.end method

.method public final onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 2
    .line 3
    const-wide/16 v1, 0x1000

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string/jumbo v4, "event="

    .line 14
    .line 15
    .line 16
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v4, ";policyFlags="

    .line 23
    .line 24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const-string v4, "AutoclickController.onKeyEvent"

    .line 35
    .line 36
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-static {v0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    iput v1, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mMetaState:I

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->cancel()V

    .line 65
    .line 66
    .line 67
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 2
    .line 3
    const-wide/16 v1, 0x1000

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string/jumbo v4, "event="

    .line 14
    .line 15
    .line 16
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v4, ";rawEvent="

    .line 23
    .line 24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v4, ";policyFlags="

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const-string v4, "AutoclickController.onMotionEvent"

    .line 43
    .line 44
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    const/16 v0, 0x2002

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_f

    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    const/4 v2, 0x0

    .line 59
    if-nez v0, :cond_4

    .line 60
    .line 61
    new-instance v0, Landroid/os/Handler;

    .line 62
    .line 63
    iget-object v3, p0, Lcom/android/server/accessibility/AutoclickController;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 70
    .line 71
    .line 72
    new-instance v3, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    .line 73
    .line 74
    invoke-direct {v3, p0, v0}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;-><init>(Lcom/android/server/accessibility/AutoclickController;Landroid/os/Handler;)V

    .line 75
    .line 76
    .line 77
    iput-object v3, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    .line 78
    .line 79
    new-instance v3, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;

    .line 80
    .line 81
    iget v4, p0, Lcom/android/server/accessibility/AutoclickController;->mUserId:I

    .line 82
    .line 83
    invoke-direct {v3, v4, v0}, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;-><init>(ILandroid/os/Handler;)V

    .line 84
    .line 85
    .line 86
    iput-object v3, p0, Lcom/android/server/accessibility/AutoclickController;->mClickDelayObserver:Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;

    .line 87
    .line 88
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mContext:Landroid/content/Context;

    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iget-object v4, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    .line 95
    .line 96
    iget-object v5, v3, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 97
    .line 98
    if-nez v5, :cond_3

    .line 99
    .line 100
    iget-object v5, v3, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    .line 101
    .line 102
    if-nez v5, :cond_3

    .line 103
    .line 104
    if-eqz v0, :cond_2

    .line 105
    .line 106
    if-eqz v4, :cond_1

    .line 107
    .line 108
    iput-object v0, v3, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 109
    .line 110
    iput-object v4, v3, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    .line 111
    .line 112
    iget-object v4, v3, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mAutoclickDelaySettingUri:Landroid/net/Uri;

    .line 113
    .line 114
    iget v5, v3, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mUserId:I

    .line 115
    .line 116
    invoke-virtual {v0, v4, v2, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 117
    .line 118
    .line 119
    iget-object v0, v3, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mAutoclickDelaySettingUri:Landroid/net/Uri;

    .line 120
    .line 121
    invoke-virtual {v3, v1, v0}, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->onChange(ZLandroid/net/Uri;)V

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    .line 126
    .line 127
    const-string/jumbo p1, "clickScheduler not set."

    .line 128
    .line 129
    .line 130
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw p0

    .line 134
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    .line 135
    .line 136
    const-string/jumbo p1, "contentResolver not set."

    .line 137
    .line 138
    .line 139
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p0

    .line 143
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 144
    .line 145
    const-string p1, "Observer already started."

    .line 146
    .line 147
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw p0

    .line 151
    :cond_4
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    const/4 v3, 0x7

    .line 156
    if-eq v0, v3, :cond_5

    .line 157
    .line 158
    const/16 v1, 0x9

    .line 159
    .line 160
    if-eq v0, v1, :cond_10

    .line 161
    .line 162
    const/16 v1, 0xa

    .line 163
    .line 164
    if-eq v0, v1, :cond_10

    .line 165
    .line 166
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    .line 167
    .line 168
    invoke-virtual {v0}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->cancel()V

    .line 169
    .line 170
    .line 171
    goto/16 :goto_2

    .line 172
    .line 173
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-ne v0, v1, :cond_e

    .line 178
    .line 179
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    iput v3, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mMetaState:I

    .line 189
    .line 190
    iget-object v3, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 191
    .line 192
    if-nez v3, :cond_7

    .line 193
    .line 194
    :cond_6
    move v3, v2

    .line 195
    goto :goto_1

    .line 196
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    iget-object v4, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 201
    .line 202
    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 203
    .line 204
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    sub-float/2addr v4, v5

    .line 209
    iget-object v5, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 210
    .line 211
    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 212
    .line 213
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 214
    .line 215
    .line 216
    move-result v3

    .line 217
    sub-float/2addr v5, v3

    .line 218
    float-to-double v3, v4

    .line 219
    float-to-double v5, v5

    .line 220
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    .line 221
    .line 222
    .line 223
    move-result-wide v3

    .line 224
    const-wide/high16 v5, 0x4034000000000000L    # 20.0

    .line 225
    .line 226
    cmpl-double v3, v3, v5

    .line 227
    .line 228
    if-lez v3, :cond_6

    .line 229
    .line 230
    move v3, v1

    .line 231
    :goto_1
    iget-object v4, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 232
    .line 233
    if-eqz v4, :cond_8

    .line 234
    .line 235
    if-eqz v3, :cond_9

    .line 236
    .line 237
    :cond_8
    move v2, v1

    .line 238
    :cond_9
    if-eqz v4, :cond_a

    .line 239
    .line 240
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 241
    .line 242
    .line 243
    :cond_a
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    iput-object v4, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 248
    .line 249
    iput p3, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    .line 250
    .line 251
    if-eqz v2, :cond_b

    .line 252
    .line 253
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    iget-object v4, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 258
    .line 259
    iget-object v5, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 260
    .line 261
    invoke-virtual {v4, v2, v5}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 262
    .line 263
    .line 264
    :cond_b
    if-eqz v3, :cond_10

    .line 265
    .line 266
    iget v2, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mDelay:I

    .line 267
    .line 268
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 269
    .line 270
    .line 271
    move-result-wide v3

    .line 272
    int-to-long v5, v2

    .line 273
    add-long/2addr v3, v5

    .line 274
    iget-boolean v2, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mActive:Z

    .line 275
    .line 276
    if-eqz v2, :cond_c

    .line 277
    .line 278
    iget-wide v7, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    .line 279
    .line 280
    cmp-long v7, v3, v7

    .line 281
    .line 282
    if-lez v7, :cond_c

    .line 283
    .line 284
    iput-wide v3, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    .line 285
    .line 286
    goto :goto_2

    .line 287
    :cond_c
    if-eqz v2, :cond_d

    .line 288
    .line 289
    iget-object v2, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    .line 290
    .line 291
    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 292
    .line 293
    .line 294
    :cond_d
    iput-boolean v1, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mActive:Z

    .line 295
    .line 296
    iput-wide v3, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    .line 297
    .line 298
    iget-object v1, v0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    .line 299
    .line 300
    invoke-virtual {v1, v0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 301
    .line 302
    .line 303
    goto :goto_2

    .line 304
    :cond_e
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    .line 305
    .line 306
    invoke-virtual {v0}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->cancel()V

    .line 307
    .line 308
    .line 309
    goto :goto_2

    .line 310
    :cond_f
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    .line 311
    .line 312
    if-eqz v0, :cond_10

    .line 313
    .line 314
    invoke-virtual {v0}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->cancel()V

    .line 315
    .line 316
    .line 317
    :cond_10
    :goto_2
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 318
    .line 319
    .line 320
    return-void
.end method
