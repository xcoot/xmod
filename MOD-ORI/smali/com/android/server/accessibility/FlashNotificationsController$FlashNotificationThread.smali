.class public final Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mColor:I

.field public final mFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

.field public mForceStop:Z

.field public mShouldDoCameraFlash:Z

.field public mShouldDoScreenFlash:Z

.field public final synthetic this$0:Lcom/android/server/accessibility/FlashNotificationsController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/FlashNotificationsController;Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mColor:I

    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mShouldDoScreenFlash:Z

    .line 10
    .line 11
    iput-boolean p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mShouldDoCameraFlash:Z

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    .line 14
    .line 15
    iput-boolean p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mForceStop:Z

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final delay(J)V
    .locals 5

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-lez v2, :cond_2

    .line 6
    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    add-long/2addr v2, p1

    .line 12
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    :catch_0
    iget-boolean p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mForceStop:Z

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide p1

    .line 24
    sub-long p1, v2, p1

    .line 25
    .line 26
    cmp-long v4, p1, v0

    .line 27
    .line 28
    if-gtz v4, :cond_0

    .line 29
    .line 30
    :cond_2
    :goto_0
    return-void
.end method

.method public final run()V
    .locals 6

    .line 1
    const-string v0, "FlashNotifController"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "run started: "

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    .line 12
    .line 13
    iget-object v2, v2, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mTag:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    const/4 v0, -0x8

    .line 26
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    .line 30
    .line 31
    iget v1, v0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mColor:I

    .line 32
    .line 33
    iput v1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mColor:I

    .line 34
    .line 35
    iget v1, v0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mNotiType:I

    .line 36
    .line 37
    and-int/lit8 v2, v1, 0x2

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    const/4 v4, 0x2

    .line 41
    const/4 v5, 0x1

    .line 42
    if-ne v2, v4, :cond_0

    .line 43
    .line 44
    move v2, v5

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move v2, v3

    .line 47
    :goto_0
    iput-boolean v2, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mShouldDoScreenFlash:Z

    .line 48
    .line 49
    and-int/2addr v1, v5

    .line 50
    if-ne v1, v5, :cond_1

    .line 51
    .line 52
    iget v0, v0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mType:I

    .line 53
    .line 54
    const/4 v1, 0x3

    .line 55
    if-eq v0, v1, :cond_1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    move v5, v3

    .line 59
    :goto_1
    iput-boolean v5, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mShouldDoCameraFlash:Z

    .line 60
    .line 61
    const-string v0, "FlashNotifController"

    .line 62
    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string/jumbo v2, "mShouldDoScreenFlash: "

    .line 66
    .line 67
    .line 68
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-boolean v2, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mShouldDoScreenFlash:Z

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v2, ", mShouldDoCameraFlash: "

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-boolean v2, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mShouldDoCameraFlash:Z

    .line 82
    .line 83
    invoke-static {v0, v1, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 84
    .line 85
    .line 86
    monitor-enter p0

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 88
    .line 89
    iget-object v0, v0, Lcom/android/server/accessibility/FlashNotificationsController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 90
    .line 91
    const-wide/32 v1, 0x493e0

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .line 96
    .line 97
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->startFlashNotification()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 98
    .line 99
    .line 100
    :try_start_2
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/android/server/accessibility/FlashNotificationsController;->doScreenFlashNotificationOff()V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/android/server/accessibility/FlashNotificationsController;->doCameraFlashNotificationOff()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    .line 109
    .line 110
    :try_start_3
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 111
    .line 112
    iget-object v0, v0, Lcom/android/server/accessibility/FlashNotificationsController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 113
    .line 114
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :catchall_0
    move-exception v0

    .line 119
    goto :goto_7

    .line 120
    :catch_0
    :try_start_4
    const-string v0, "FlashNotifController"

    .line 121
    .line 122
    const-string v1, "Error while releasing FlashNotificationsController wakelock (already released by the system?)"

    .line 123
    .line 124
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    :goto_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 128
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 129
    .line 130
    iget-object v0, v0, Lcom/android/server/accessibility/FlashNotificationsController;->mFlashNotifications:Ljava/util/LinkedList;

    .line 131
    .line 132
    monitor-enter v0

    .line 133
    :try_start_5
    iget-object v1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 134
    .line 135
    iget-object v1, v1, Lcom/android/server/accessibility/FlashNotificationsController;->mThread:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;

    .line 136
    .line 137
    const/4 v2, 0x0

    .line 138
    if-ne v1, p0, :cond_2

    .line 139
    .line 140
    iget-object v1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 141
    .line 142
    iput-object v2, v1, Lcom/android/server/accessibility/FlashNotificationsController;->mThread:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :catchall_1
    move-exception p0

    .line 146
    goto :goto_5

    .line 147
    :cond_2
    :goto_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mForceStop:Z

    .line 148
    .line 149
    if-nez v1, :cond_5

    .line 150
    .line 151
    iget-object v1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    .line 152
    .line 153
    iget-object v4, v1, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mToken:Landroid/os/IBinder;

    .line 154
    .line 155
    if-eqz v4, :cond_4

    .line 156
    .line 157
    iget-object v1, v1, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 158
    .line 159
    if-nez v1, :cond_3

    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_3
    :try_start_6
    invoke-interface {v4, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 163
    .line 164
    .line 165
    :catch_1
    :cond_4
    :goto_4
    :try_start_7
    iget-object v1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 166
    .line 167
    iput-object v2, v1, Lcom/android/server/accessibility/FlashNotificationsController;->mCurrentFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    .line 168
    .line 169
    :cond_5
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 170
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 171
    .line 172
    iput-boolean v3, v0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraFlashNotificationRunning:Z

    .line 173
    .line 174
    const-string v0, "FlashNotifController"

    .line 175
    .line 176
    const-string/jumbo v1, "mIsCameraFlashNotificationRunning false in thread run"

    .line 177
    .line 178
    .line 179
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    const-string v0, "FlashNotifController"

    .line 183
    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    const-string/jumbo v2, "run finished: "

    .line 187
    .line 188
    .line 189
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    .line 193
    .line 194
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mTag:Ljava/lang/String;

    .line 195
    .line 196
    invoke-static {v1, p0, v0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    return-void

    .line 200
    :goto_5
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 201
    throw p0

    .line 202
    :catchall_2
    move-exception v0

    .line 203
    :try_start_9
    iget-object v1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 204
    .line 205
    invoke-virtual {v1}, Lcom/android/server/accessibility/FlashNotificationsController;->doScreenFlashNotificationOff()V

    .line 206
    .line 207
    .line 208
    iget-object v1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 209
    .line 210
    invoke-virtual {v1}, Lcom/android/server/accessibility/FlashNotificationsController;->doCameraFlashNotificationOff()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 211
    .line 212
    .line 213
    :try_start_a
    iget-object v1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 214
    .line 215
    iget-object v1, v1, Lcom/android/server/accessibility/FlashNotificationsController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 216
    .line 217
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 218
    .line 219
    .line 220
    goto :goto_6

    .line 221
    :catch_2
    :try_start_b
    const-string v1, "FlashNotifController"

    .line 222
    .line 223
    const-string v2, "Error while releasing FlashNotificationsController wakelock (already released by the system?)"

    .line 224
    .line 225
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    :goto_6
    throw v0

    .line 229
    :goto_7
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 230
    throw v0
.end method

.method public final startFlashNotification()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mForceStop:Z

    .line 3
    .line 4
    if-nez v0, :cond_4

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    .line 7
    .line 8
    iget v1, v0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mType:I

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    if-eq v1, v2, :cond_0

    .line 12
    .line 13
    iget v1, v0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mRepeat:I

    .line 14
    .line 15
    if-ltz v1, :cond_0

    .line 16
    .line 17
    add-int/lit8 v2, v1, -0x1

    .line 18
    .line 19
    iput v2, v0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mRepeat:I

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mShouldDoScreenFlash:Z

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 29
    .line 30
    iget v2, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mColor:I

    .line 31
    .line 32
    iget-boolean v0, v0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mForceStartScreenFlash:Z

    .line 33
    .line 34
    invoke-static {v1, v2, v0}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$mdoScreenFlashNotificationOn(Lcom/android/server/accessibility/FlashNotificationsController;IZ)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    goto :goto_3

    .line 40
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mShouldDoCameraFlash:Z

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$mdoCameraFlashNotificationOn(Lcom/android/server/accessibility/FlashNotificationsController;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    .line 50
    .line 51
    iget v0, v0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mOnDuration:I

    .line 52
    .line 53
    int-to-long v0, v0

    .line 54
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->delay(J)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/android/server/accessibility/FlashNotificationsController;->doScreenFlashNotificationOff()V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/android/server/accessibility/FlashNotificationsController;->doCameraFlashNotificationOff()V

    .line 65
    .line 66
    .line 67
    iget-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mForceStop:Z

    .line 68
    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    .line 73
    .line 74
    iget v0, v0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->mOffDuration:I

    .line 75
    .line 76
    int-to-long v0, v0

    .line 77
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->delay(J)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_4
    :goto_2
    monitor-exit p0

    .line 82
    return-void

    .line 83
    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    throw v0
.end method
