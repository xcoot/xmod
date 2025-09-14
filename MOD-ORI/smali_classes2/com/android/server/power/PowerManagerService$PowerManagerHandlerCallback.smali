.class public final Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v1, Landroid/os/Message;->what:I

    .line 6
    .line 7
    const v3, 0xffff

    .line 8
    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x1

    .line 12
    packed-switch v2, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    goto/16 :goto_7

    .line 16
    .line 17
    :pswitch_0
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 18
    .line 19
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 20
    .line 21
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v2

    .line 24
    :try_start_0
    iget-object v6, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    sub-int/2addr v6, v5

    .line 31
    :goto_0
    if-ltz v6, :cond_1

    .line 32
    .line 33
    iget-object v7, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    check-cast v7, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 40
    .line 41
    iget v8, v7, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    .line 42
    .line 43
    and-int/2addr v8, v3

    .line 44
    const/16 v9, 0x100

    .line 45
    .line 46
    if-ne v8, v9, :cond_0

    .line 47
    .line 48
    invoke-virtual {v0, v7, v6, v1}, Lcom/android/server/power/PowerManagerService;->removeWakeLockNoUpdateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;II)V

    .line 49
    .line 50
    .line 51
    move v4, v5

    .line 52
    goto :goto_1

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    goto :goto_2

    .line 55
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, -0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    if-eqz v4, :cond_2

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 61
    .line 62
    .line 63
    :cond_2
    monitor-exit v2

    .line 64
    goto/16 :goto_7

    .line 65
    .line 66
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw v0

    .line 68
    :pswitch_1
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 69
    .line 70
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 71
    .line 72
    monitor-enter v1

    .line 73
    :try_start_1
    iget v2, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 74
    .line 75
    or-int/lit16 v2, v2, 0x4000

    .line 76
    .line 77
    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 80
    .line 81
    .line 82
    monitor-exit v1

    .line 83
    goto/16 :goto_7

    .line 84
    .line 85
    :catchall_1
    move-exception v0

    .line 86
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 87
    throw v0

    .line 88
    :pswitch_2
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 89
    .line 90
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 91
    .line 92
    monitor-enter v1

    .line 93
    :try_start_2
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 99
    .line 100
    .line 101
    move-result-wide v6

    .line 102
    iput-wide v6, v0, Lcom/android/server/power/PowerManagerService;->mNotifyLongDispatched:J

    .line 103
    .line 104
    const-wide/32 v8, 0xea60

    .line 105
    .line 106
    .line 107
    sub-long/2addr v6, v8

    .line 108
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    const-wide v12, 0x7fffffffffffffffL

    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    :goto_3
    if-ge v4, v2, :cond_5

    .line 120
    .line 121
    iget-object v14, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v14

    .line 127
    check-cast v14, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 128
    .line 129
    iget v15, v14, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    .line 130
    .line 131
    and-int/2addr v15, v3

    .line 132
    if-ne v15, v5, :cond_4

    .line 133
    .line 134
    iget-boolean v15, v14, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    .line 135
    .line 136
    if-eqz v15, :cond_4

    .line 137
    .line 138
    iget-boolean v15, v14, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    .line 139
    .line 140
    if-nez v15, :cond_4

    .line 141
    .line 142
    iget-wide v10, v14, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    .line 143
    .line 144
    cmp-long v15, v10, v6

    .line 145
    .line 146
    if-gez v15, :cond_3

    .line 147
    .line 148
    invoke-virtual {v0, v14}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockLongStartedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 149
    .line 150
    .line 151
    goto :goto_4

    .line 152
    :catchall_2
    move-exception v0

    .line 153
    goto :goto_6

    .line 154
    :cond_3
    add-long/2addr v10, v8

    .line 155
    cmp-long v14, v10, v12

    .line 156
    .line 157
    if-gez v14, :cond_4

    .line 158
    .line 159
    move-wide v12, v10

    .line 160
    :cond_4
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_5
    const-wide/16 v2, 0x0

    .line 164
    .line 165
    iput-wide v2, v0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    .line 166
    .line 167
    iget-object v4, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    .line 168
    .line 169
    const/4 v6, 0x4

    .line 170
    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 171
    .line 172
    .line 173
    const-wide v7, 0x7fffffffffffffffL

    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    cmp-long v4, v12, v7

    .line 179
    .line 180
    if-eqz v4, :cond_6

    .line 181
    .line 182
    iput-wide v12, v0, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J

    .line 183
    .line 184
    iput-wide v12, v0, Lcom/android/server/power/PowerManagerService;->mNotifyLongScheduled:J

    .line 185
    .line 186
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    .line 187
    .line 188
    invoke-virtual {v0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    invoke-virtual {v2, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v2, v12, v13}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 196
    .line 197
    .line 198
    goto :goto_5

    .line 199
    :cond_6
    iput-wide v2, v0, Lcom/android/server/power/PowerManagerService;->mNotifyLongNextCheck:J

    .line 200
    .line 201
    :goto_5
    monitor-exit v1

    .line 202
    goto :goto_7

    .line 203
    :goto_6
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 204
    throw v0

    .line 205
    :pswitch_3
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 206
    .line 207
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 208
    .line 209
    monitor-enter v2

    .line 210
    :try_start_3
    iget v1, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 211
    .line 212
    or-int/lit16 v1, v1, 0x800

    .line 213
    .line 214
    iput v1, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 215
    .line 216
    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 217
    .line 218
    .line 219
    monitor-exit v2

    .line 220
    goto :goto_7

    .line 221
    :catchall_3
    move-exception v0

    .line 222
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 223
    throw v0

    .line 224
    :pswitch_4
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 225
    .line 226
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 227
    .line 228
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mhandleSandman(Lcom/android/server/power/PowerManagerService;I)V

    .line 229
    .line 230
    .line 231
    goto :goto_7

    .line 232
    :pswitch_5
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 233
    .line 234
    iget-object v2, v1, Lcom/android/server/power/PowerManagerService;->mAbuseWakeLockDetector:Lcom/android/server/power/AbuseWakeLockDetector;

    .line 235
    .line 236
    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    .line 237
    .line 238
    invoke-virtual {v2, v1}, Lcom/android/server/power/AbuseWakeLockDetector;->handleAbuseWakelockWhenUserActivityChanged(Ljava/util/ArrayList;)V

    .line 239
    .line 240
    .line 241
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 242
    .line 243
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mhandleUserActivityTimeout(Lcom/android/server/power/PowerManagerService;)V

    .line 244
    .line 245
    .line 246
    :goto_7
    return v5

    .line 247
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
