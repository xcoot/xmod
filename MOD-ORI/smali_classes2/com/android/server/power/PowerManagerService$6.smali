.class public final Lcom/android/server/power/PowerManagerService$6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/power/PowerManagerService$6;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final run$com$android$server$power$PowerManagerService$8()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    const-string v1, "PowerManagerService"

    .line 7
    .line 8
    const-string v2, "mEnsureTransitionToDozingReleaser"

    .line 9
    .line 10
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mEnsureTransitionToDozingReleaserRunning:Z

    .line 17
    .line 18
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDozeStartInProgress:Z

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 21
    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0
.end method

.method private final run$com$android$server$power$PowerManagerService$9()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    const-string v1, "PowerManagerService"

    .line 7
    .line 8
    const-string v2, "mCoverAuthReady since boot"

    .line 9
    .line 10
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mCoverAuthReady:Z

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mCoverAuthReadyRunnable:Ljava/lang/Runnable;

    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/power/PowerManagerService$6;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 19
    .line 20
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mNoUserActivityIntent:Landroid/content/Intent;

    .line 23
    .line 24
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 25
    .line 26
    const-string v3, "com.samsung.android.knox.permission.KNOX_CUSTOM_SYSTEM"

    .line 27
    .line 28
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mNoUserActivitySent:Z

    .line 35
    .line 36
    :cond_0
    return-void

    .line 37
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 38
    .line 39
    iget-boolean v1, v0, Lcom/android/server/power/PowerManagerService;->mNoUserActivitySent:Z

    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    if-ne v1, v2, :cond_1

    .line 43
    .line 44
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 55
    .line 56
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mUserActivityIntent:Landroid/content/Intent;

    .line 59
    .line 60
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 61
    .line 62
    const-string v3, "com.samsung.android.knox.permission.KNOX_CUSTOM_SYSTEM"

    .line 63
    .line 64
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 68
    .line 69
    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mNoUserActivitySent:Z

    .line 71
    .line 72
    :cond_1
    return-void

    .line 73
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$6;->run$com$android$server$power$PowerManagerService$9()V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$6;->run$com$android$server$power$PowerManagerService$8()V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 82
    .line 83
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 84
    .line 85
    monitor-enter v0

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 87
    .line 88
    iget v2, v1, Lcom/android/server/power/PowerManagerService;->mLastRequestedLimitationOfHdrBrightness:I

    .line 89
    .line 90
    iget v3, v1, Lcom/android/server/power/PowerManagerService;->mTargetBrightnessForHdrLimit:I

    .line 91
    .line 92
    if-ne v2, v3, :cond_2

    .line 93
    .line 94
    const/4 p0, 0x0

    .line 95
    iput-boolean p0, v1, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessLimitRunning:Z

    .line 96
    .line 97
    const-string p0, "PowerManagerService"

    .line 98
    .line 99
    const-string v1, "[api] HdrBrightnessLimitRunnable done"

    .line 100
    .line 101
    invoke-static {p0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    monitor-exit v0

    .line 105
    goto :goto_1

    .line 106
    :catchall_0
    move-exception p0

    .line 107
    goto :goto_2

    .line 108
    :cond_2
    if-le v2, v3, :cond_3

    .line 109
    .line 110
    const/4 v3, -0x1

    .line 111
    goto :goto_0

    .line 112
    :cond_3
    const/4 v3, 0x1

    .line 113
    :goto_0
    add-int/2addr v2, v3

    .line 114
    iput v2, v1, Lcom/android/server/power/PowerManagerService;->mLastRequestedLimitationOfHdrBrightness:I

    .line 115
    .line 116
    iput v2, v1, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessUpperLimit:I

    .line 117
    .line 118
    iget v2, v1, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 119
    .line 120
    or-int/lit8 v2, v2, 0x20

    .line 121
    .line 122
    iput v2, v1, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 123
    .line 124
    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 125
    .line 126
    .line 127
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 128
    .line 129
    iget-object v2, v1, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    .line 130
    .line 131
    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 137
    .line 138
    .line 139
    move-result-wide v3

    .line 140
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 141
    .line 142
    iget v1, v1, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessLimitPeriod:I

    .line 143
    .line 144
    int-to-long v5, v1

    .line 145
    add-long/2addr v3, v5

    .line 146
    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 147
    .line 148
    .line 149
    monitor-exit v0

    .line 150
    :goto_1
    return-void

    .line 151
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    throw p0

    .line 153
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 154
    .line 155
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 156
    .line 157
    monitor-enter v0

    .line 158
    :try_start_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 159
    .line 160
    iget v2, v1, Lcom/android/server/power/PowerManagerService;->mLastRequestedLimitationOfBrightness:I

    .line 161
    .line 162
    iget v3, v1, Lcom/android/server/power/PowerManagerService;->mTargetBrightnessForLimit:I

    .line 163
    .line 164
    if-ne v2, v3, :cond_4

    .line 165
    .line 166
    const/4 p0, 0x0

    .line 167
    iput-boolean p0, v1, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessLimitRunning:Z

    .line 168
    .line 169
    const-string p0, "PowerManagerService"

    .line 170
    .line 171
    const-string v1, "[api] BrightnessLimitRunnable done"

    .line 172
    .line 173
    invoke-static {p0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    monitor-exit v0

    .line 177
    goto :goto_4

    .line 178
    :catchall_1
    move-exception p0

    .line 179
    goto :goto_5

    .line 180
    :cond_4
    const/4 v4, -0x1

    .line 181
    if-le v2, v3, :cond_5

    .line 182
    .line 183
    move v3, v4

    .line 184
    goto :goto_3

    .line 185
    :cond_5
    const/4 v3, 0x1

    .line 186
    :goto_3
    add-int/2addr v2, v3

    .line 187
    iput v2, v1, Lcom/android/server/power/PowerManagerService;->mLastRequestedLimitationOfBrightness:I

    .line 188
    .line 189
    iput v4, v1, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessLowerLimit:I

    .line 190
    .line 191
    iput v2, v1, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessUpperLimit:I

    .line 192
    .line 193
    iget v2, v1, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 194
    .line 195
    or-int/lit8 v2, v2, 0x20

    .line 196
    .line 197
    iput v2, v1, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 198
    .line 199
    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 200
    .line 201
    .line 202
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 203
    .line 204
    iget-object v2, v1, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    .line 205
    .line 206
    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    .line 207
    .line 208
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 212
    .line 213
    .line 214
    move-result-wide v3

    .line 215
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 216
    .line 217
    iget v1, v1, Lcom/android/server/power/PowerManagerService;->mMasterBrightnessLimitPeriod:I

    .line 218
    .line 219
    int-to-long v5, v1

    .line 220
    add-long/2addr v3, v5

    .line 221
    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 222
    .line 223
    .line 224
    monitor-exit v0

    .line 225
    :goto_4
    return-void

    .line 226
    :goto_5
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 227
    throw p0

    .line 228
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 229
    .line 230
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 231
    .line 232
    monitor-enter v0

    .line 233
    :try_start_2
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 234
    .line 235
    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    .line 236
    .line 237
    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 238
    .line 239
    .line 240
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 241
    .line 242
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mprintWakeLockLocked(Lcom/android/server/power/PowerManagerService;)V

    .line 243
    .line 244
    .line 245
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 246
    .line 247
    iget-wide v2, v1, Lcom/android/server/power/PowerManagerService;->mDelayTimePrintWakeLock:J

    .line 248
    .line 249
    const-wide/16 v4, 0x1388

    .line 250
    .line 251
    add-long/2addr v2, v4

    .line 252
    iput-wide v2, v1, Lcom/android/server/power/PowerManagerService;->mDelayTimePrintWakeLock:J

    .line 253
    .line 254
    const-wide/32 v4, 0x1b7740

    .line 255
    .line 256
    .line 257
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 258
    .line 259
    .line 260
    move-result-wide v2

    .line 261
    iput-wide v2, v1, Lcom/android/server/power/PowerManagerService;->mDelayTimePrintWakeLock:J

    .line 262
    .line 263
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 264
    .line 265
    iget-object v2, v1, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    .line 266
    .line 267
    iget-wide v3, v1, Lcom/android/server/power/PowerManagerService;->mDelayTimePrintWakeLock:J

    .line 268
    .line 269
    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 270
    .line 271
    .line 272
    monitor-exit v0

    .line 273
    return-void

    .line 274
    :catchall_2
    move-exception p0

    .line 275
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 276
    throw p0

    .line 277
    :pswitch_6
    const-string v0, "UserActivityStateListenerState: "

    .line 278
    .line 279
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 280
    .line 281
    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 282
    .line 283
    monitor-enter v1

    .line 284
    :try_start_3
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 285
    .line 286
    const/4 v3, 0x0

    .line 287
    iput v3, v2, Lcom/android/server/power/PowerManagerService;->mLastUserActivityStateListenerState:I

    .line 288
    .line 289
    const-string v2, "PowerManagerService"

    .line 290
    .line 291
    new-instance v3, Ljava/lang/StringBuilder;

    .line 292
    .line 293
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 297
    .line 298
    iget v0, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityStateListenerState:I

    .line 299
    .line 300
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    .line 309
    .line 310
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 311
    .line 312
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mUserActivityStateListenerListeners:Ljava/util/ArrayList;

    .line 313
    .line 314
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 319
    .line 320
    .line 321
    move-result v2

    .line 322
    if-eqz v2, :cond_6

    .line 323
    .line 324
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v2

    .line 328
    check-cast v2, Landroid/os/PowerManagerInternal$UserActivityStateListener;

    .line 329
    .line 330
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$6;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 331
    .line 332
    iget v3, v3, Lcom/android/server/power/PowerManagerService;->mLastUserActivityStateListenerState:I

    .line 333
    .line 334
    invoke-interface {v2, v3}, Landroid/os/PowerManagerInternal$UserActivityStateListener;->onChanged(I)V

    .line 335
    .line 336
    .line 337
    goto :goto_6

    .line 338
    :catchall_3
    move-exception p0

    .line 339
    goto :goto_7

    .line 340
    :cond_6
    monitor-exit v1

    .line 341
    return-void

    .line 342
    :goto_7
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 343
    throw p0

    .line 344
    nop

    .line 345
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
