.class public final Lcom/android/server/display/DisplayPowerState$4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/display/DisplayPowerState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayPowerState;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/display/DisplayPowerState$4;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/server/display/DisplayPowerState$4;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    .line 8
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawPending:Z

    .line 11
    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    .line 13
    if-eqz v1, :cond_0

    .line 15
    iget v1, v0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    .line 17
    iget-object v0, v0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    .line 19
    invoke-virtual {v0, v1}, Lcom/android/server/display/ColorFade;->draw(F)V

    .line 22
    sget-object v0, Lcom/android/server/display/DisplayPowerState;->COUNTER_COLOR_FADE:Ljava/lang/String;

    .line 24
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    .line 26
    iget v1, v1, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    .line 28
    const/high16 v2, 0x42c80000    # 100.0f

    .line 30
    mul-float/2addr v1, v2

    .line 31
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 34
    move-result v1

    .line 35
    const-wide/32 v2, 0x20000

    .line 38
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 41
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    .line 43
    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    .line 46
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mCleanListener:Ljava/lang/Runnable;

    .line 48
    if-eqz v0, :cond_1

    .line 50
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    .line 52
    if-eqz v1, :cond_1

    .line 54
    const/4 v1, 0x0

    .line 55
    iput-object v1, p0, Lcom/android/server/display/DisplayPowerState;->mCleanListener:Ljava/lang/Runnable;

    .line 57
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 60
    :cond_1
    return-void

    .line 61
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    .line 63
    const/4 v1, 0x0

    .line 64
    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdatePending:Z

    .line 66
    iget v2, v0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    .line 68
    const/high16 v3, -0x40800000    # -1.0f

    .line 70
    const/4 v4, 0x0

    .line 71
    const/4 v5, 0x1

    .line 72
    if-eq v2, v5, :cond_2

    .line 74
    iget v6, v0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    .line 76
    cmpl-float v6, v6, v4

    .line 78
    if-lez v6, :cond_2

    .line 80
    iget v6, v0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:F

    .line 82
    goto :goto_0

    .line 83
    :cond_2
    move v6, v3

    .line 84
    :goto_0
    if-eq v2, v5, :cond_3

    .line 86
    iget v7, v0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    .line 88
    cmpl-float v4, v7, v4

    .line 90
    if-lez v4, :cond_3

    .line 92
    iget v3, v0, Lcom/android/server/display/DisplayPowerState;->mSdrScreenBrightness:F

    .line 94
    :cond_3
    iget-object v0, v0, Lcom/android/server/display/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    .line 96
    const-string v4, "Requesting new screen state: state="

    .line 98
    iget-object v7, v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    .line 100
    monitor-enter v7

    .line 101
    :try_start_0
    iget v8, v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    .line 103
    if-eq v2, v8, :cond_4

    .line 105
    move v8, v5

    .line 106
    goto :goto_1

    .line 107
    :cond_4
    move v8, v1

    .line 108
    :goto_1
    iget v9, v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:F

    .line 110
    cmpl-float v9, v6, v9

    .line 112
    if-nez v9, :cond_6

    .line 114
    iget v9, v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingSdrBacklight:F

    .line 116
    cmpl-float v9, v3, v9

    .line 118
    if-eqz v9, :cond_5

    .line 120
    goto :goto_2

    .line 121
    :cond_5
    move v9, v1

    .line 122
    goto :goto_3

    .line 123
    :catchall_0
    move-exception p0

    .line 124
    goto/16 :goto_9

    .line 126
    :cond_6
    :goto_2
    move v9, v5

    .line 127
    :goto_3
    if-nez v8, :cond_7

    .line 129
    if-eqz v9, :cond_f

    .line 131
    :cond_7
    sget-boolean v10, Lcom/android/server/display/DisplayPowerState;->DEBUG:Z

    .line 133
    if-eqz v10, :cond_8

    .line 135
    const-string v10, "DisplayPowerState"

    .line 137
    new-instance v11, Ljava/lang/StringBuilder;

    .line 139
    invoke-direct {v11, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    .line 145
    move-result-object v4

    .line 146
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string v4, ", backlight="

    .line 151
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    move-result-object v4

    .line 161
    invoke-static {v10, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_8
    iput v2, v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    .line 166
    iput v6, v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:F

    .line 168
    iput v3, v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingSdrBacklight:F

    .line 170
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mStateChangeInProgress:Z

    .line 172
    if-nez v2, :cond_a

    .line 174
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mBacklightChangeInProgress:Z

    .line 176
    if-eqz v3, :cond_9

    .line 178
    goto :goto_4

    .line 179
    :cond_9
    move v3, v1

    .line 180
    goto :goto_5

    .line 181
    :cond_a
    :goto_4
    move v3, v5

    .line 182
    :goto_5
    if-nez v8, :cond_c

    .line 184
    if-eqz v2, :cond_b

    .line 186
    goto :goto_6

    .line 187
    :cond_b
    move v2, v1

    .line 188
    goto :goto_7

    .line 189
    :cond_c
    :goto_6
    move v2, v5

    .line 190
    :goto_7
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mStateChangeInProgress:Z

    .line 192
    if-nez v9, :cond_d

    .line 194
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mBacklightChangeInProgress:Z

    .line 196
    if-eqz v2, :cond_e

    .line 198
    :cond_d
    move v1, v5

    .line 199
    :cond_e
    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mBacklightChangeInProgress:Z

    .line 201
    if-nez v3, :cond_f

    .line 203
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    .line 205
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 208
    :cond_f
    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mStateChangeInProgress:Z

    .line 210
    xor-int/2addr v0, v5

    .line 211
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    if-eqz v0, :cond_11

    .line 214
    sget-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG:Z

    .line 216
    if-eqz v0, :cond_10

    .line 218
    const-string v0, "DisplayPowerState"

    .line 220
    const-string v1, "Screen ready"

    .line 222
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_10
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerState$4;->this$0:Lcom/android/server/display/DisplayPowerState;

    .line 227
    iput-boolean v5, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    .line 229
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mCleanListener:Ljava/lang/Runnable;

    .line 231
    if-eqz v0, :cond_12

    .line 233
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    .line 235
    if-eqz v1, :cond_12

    .line 237
    const/4 v1, 0x0

    .line 238
    iput-object v1, p0, Lcom/android/server/display/DisplayPowerState;->mCleanListener:Ljava/lang/Runnable;

    .line 240
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 243
    goto :goto_8

    .line 244
    :cond_11
    sget-boolean p0, Lcom/android/server/display/DisplayPowerState;->DEBUG:Z

    .line 246
    if-eqz p0, :cond_12

    .line 248
    const-string p0, "DisplayPowerState"

    .line 250
    const-string v0, "Screen not ready"

    .line 252
    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_12
    :goto_8
    return-void

    .line 256
    :goto_9
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    throw p0

    .line 258
    nop

    .line 259
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
