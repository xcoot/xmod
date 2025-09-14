.class public final Lcom/android/server/sepunion/cover/NfcLedCoverController;
.super Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final mResponsePattern:[B


# instance fields
.field public mCallDurationTimer:Ljava/util/Timer;

.field public mCallDurationUpdateTask:Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;

.field public mCallInProgressDisplay:Z

.field public mCallStartTime:J

.field public final mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public mCoverEventsDisabledForSamsungPay:Z

.field public mFactoryTransceiveResponseIntentSent:Z

.field public final mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

.field public mIsLedOn:Z

.field public mLedCoverRetryPostTime:J

.field public mLedCoverStartRetryCount:I

.field public mLedCoverTransceiveRetryCount:I

.field public final mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mListeners:Ljava/util/ArrayList;

.field public mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

.field public final mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mPollingTouchEvents:Z

.field public mPrevCommand:I

.field public final mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mTestCount:I

.field public mTestMode:I

.field public final mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static -$$Nest$mgetCallDuration(Lcom/android/server/sepunion/cover/NfcLedCoverController;)[B
    .locals 13

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    new-array v0, v0, [B

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    aput-byte v1, v0, v1

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    aput-byte v1, v0, v2

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    aput-byte v1, v0, v3

    .line 15
    .line 16
    const/4 v4, 0x3

    .line 17
    aput-byte v1, v0, v4

    .line 18
    .line 19
    iget-wide v5, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallStartTime:J

    .line 20
    .line 21
    const-wide/16 v7, -0x1

    .line 22
    .line 23
    cmp-long v5, v5, v7

    .line 24
    .line 25
    if-nez v5, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 29
    .line 30
    .line 31
    move-result-wide v5

    .line 32
    iget-wide v7, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallStartTime:J

    .line 33
    .line 34
    sub-long/2addr v5, v7

    .line 35
    const-wide/16 v7, 0x3e8

    .line 36
    .line 37
    div-long/2addr v5, v7

    .line 38
    const-wide/16 v7, 0x3c

    .line 39
    .line 40
    div-long v9, v5, v7

    .line 41
    .line 42
    const-wide/16 v11, 0x64

    .line 43
    .line 44
    rem-long/2addr v9, v11

    .line 45
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const/4 v9, 0x0

    .line 54
    const-string v10, "%02d"

    .line 55
    .line 56
    invoke-static {v9, v10, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    rem-long/2addr v5, v7

    .line 65
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-static {v9, v10, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    aget-byte v6, p0, v1

    .line 82
    .line 83
    aput-byte v6, v0, v1

    .line 84
    .line 85
    aget-byte p0, p0, v2

    .line 86
    .line 87
    aput-byte p0, v0, v2

    .line 88
    .line 89
    aget-byte p0, v5, v1

    .line 90
    .line 91
    aput-byte p0, v0, v3

    .line 92
    .line 93
    aget-byte p0, v5, v2

    .line 94
    .line 95
    aput-byte p0, v0, v4

    .line 96
    .line 97
    :goto_0
    return-object v0
.end method

.method public static -$$Nest$mhandleEventResponse(Lcom/android/server/sepunion/cover/NfcLedCoverController;II)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "CoverManager_NfcLedCoverController"

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v2, "HandleEventResponse: type: "

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, " action: "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    if-ne p2, v0, :cond_3

    .line 33
    .line 34
    const-string p2, "CoverManager_NfcLedCoverController"

    .line 35
    .line 36
    const-string v0, "Event touch: accept"

    .line 37
    .line 38
    invoke-static {p2, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 42
    .line 43
    monitor-enter v0

    .line 44
    :try_start_0
    iget-object p2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 61
    .line 62
    iget v2, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    .line 63
    .line 64
    if-ne p1, v2, :cond_0

    .line 65
    .line 66
    iget-object v1, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    .line 67
    .line 68
    const-string v2, "CoverManager_NfcLedCoverController"

    .line 69
    .line 70
    if-nez v1, :cond_1

    .line 71
    .line 72
    const-string/jumbo v1, "null listener received TouchAccept!"

    .line 73
    .line 74
    .line 75
    invoke-static {v2, v1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    :try_start_1
    invoke-static {v1}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    if-eqz v1, :cond_0

    .line 84
    .line 85
    invoke-interface {v1}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onCoverTouchAccept()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catch_0
    move-exception v1

    .line 90
    :try_start_2
    const-string v3, "Failed onCoverTouchAccept callback"

    .line 91
    .line 92
    invoke-static {v2, v3, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catchall_0
    move-exception p0

    .line 97
    goto :goto_1

    .line 98
    :cond_2
    monitor-exit v0

    .line 99
    goto :goto_4

    .line 100
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    throw p0

    .line 102
    :cond_3
    const/4 v0, 0x2

    .line 103
    if-ne p2, v0, :cond_7

    .line 104
    .line 105
    const-string p2, "CoverManager_NfcLedCoverController"

    .line 106
    .line 107
    const-string v0, "Event touch: reject"

    .line 108
    .line 109
    invoke-static {p2, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 113
    .line 114
    monitor-enter v0

    .line 115
    :try_start_3
    iget-object p2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    :cond_4
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_6

    .line 126
    .line 127
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    check-cast v1, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 132
    .line 133
    iget v2, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    .line 134
    .line 135
    if-ne p1, v2, :cond_4

    .line 136
    .line 137
    iget-object v1, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    .line 138
    .line 139
    const-string v2, "CoverManager_NfcLedCoverController"

    .line 140
    .line 141
    if-nez v1, :cond_5

    .line 142
    .line 143
    const-string/jumbo v1, "null listener received TouchReject!"

    .line 144
    .line 145
    .line 146
    invoke-static {v2, v1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_5
    :try_start_4
    invoke-static {v1}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    if-eqz v1, :cond_4

    .line 155
    .line 156
    invoke-interface {v1}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onCoverTouchReject()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :catch_1
    move-exception v1

    .line 161
    :try_start_5
    const-string v3, "Failed onCoverTouchReject callback"

    .line 162
    .line 163
    invoke-static {v2, v3, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    .line 165
    .line 166
    goto :goto_2

    .line 167
    :catchall_1
    move-exception p0

    .line 168
    goto :goto_3

    .line 169
    :cond_6
    monitor-exit v0

    .line 170
    goto :goto_4

    .line 171
    :goto_3
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 172
    throw p0

    .line 173
    :cond_7
    const-string p1, "CoverManager_NfcLedCoverController"

    .line 174
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    const-string v1, "Unknown event action: "

    .line 178
    .line 179
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p2

    .line 189
    invoke-static {p1, p2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    :goto_4
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 193
    .line 194
    invoke-static {p0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 195
    .line 196
    .line 197
    return-void
.end method

.method public static -$$Nest$mhandleSendDataToNfcLedCover(Lcom/android/server/sepunion/cover/NfcLedCoverController;I[B)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    const-string v3, "Wrong listener type requested for command:"

    .line 6
    .line 7
    const-string v4, "Error parsing response for command "

    .line 8
    .line 9
    const-string v0, "Repeat command after LED_COVER_RETRY_DELAY: 500 count: "

    .line 10
    .line 11
    iget-object v5, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 12
    .line 13
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 14
    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x0

    .line 18
    const-string v7, "CoverManager_NfcLedCoverController"

    .line 19
    .line 20
    const/16 v8, 0x12

    .line 21
    .line 22
    const/4 v9, 0x4

    .line 23
    iget-object v10, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    .line 24
    .line 25
    const/4 v11, 0x1

    .line 26
    move/from16 v12, p1

    .line 27
    .line 28
    if-ne v12, v9, :cond_2

    .line 29
    .line 30
    :try_start_0
    iput-boolean v6, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    .line 31
    .line 32
    iget-object v13, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    .line 33
    .line 34
    if-eqz v13, :cond_0

    .line 35
    .line 36
    invoke-virtual {v13}, Ljava/util/Timer;->cancel()V

    .line 37
    .line 38
    .line 39
    iput-object v5, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    .line 40
    .line 41
    iput-object v5, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const-string v13, "Call duration should not be null in stop or was already stopped"

    .line 45
    .line 46
    invoke-static {v7, v13}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    :goto_0
    const-wide/16 v13, -0x1

    .line 50
    .line 51
    iput-wide v13, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallStartTime:J

    .line 52
    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    array-length v13, v2

    .line 56
    if-lez v13, :cond_2

    .line 57
    .line 58
    aget-byte v13, v2, v6

    .line 59
    .line 60
    if-nez v13, :cond_2

    .line 61
    .line 62
    iget v12, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPrevCommand:I

    .line 63
    .line 64
    if-ne v12, v9, :cond_1

    .line 65
    .line 66
    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    .line 67
    .line 68
    .line 69
    move-result v12

    .line 70
    if-eqz v12, :cond_1

    .line 71
    .line 72
    const-string v0, "CMD_LED_CALL_END was already processed so return"

    .line 73
    .line 74
    invoke-static {v7, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    .line 77
    :goto_1
    iget-object v0, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 80
    .line 81
    .line 82
    goto/16 :goto_9

    .line 83
    .line 84
    :catchall_0
    move-exception v0

    .line 85
    goto/16 :goto_a

    .line 86
    .line 87
    :cond_1
    :try_start_1
    const-string v12, "CMD_LED_CALL_END called but with dummy data, switch to LED_OFF and stop CallTimer"

    .line 88
    .line 89
    invoke-static {v7, v12}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move v12, v8

    .line 93
    :cond_2
    const v13, 0xfffe

    .line 94
    .line 95
    .line 96
    const/16 v14, 0xd

    .line 97
    .line 98
    const/4 v15, 0x3

    .line 99
    if-ne v12, v13, :cond_3

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->startCallInProgressDisplayTimer([B)V

    .line 102
    .line 103
    .line 104
    move v12, v15

    .line 105
    goto/16 :goto_3

    .line 106
    .line 107
    :cond_3
    if-ne v12, v8, :cond_4

    .line 108
    .line 109
    iget-boolean v13, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    .line 110
    .line 111
    if-nez v13, :cond_4

    .line 112
    .line 113
    iget-object v0, v1, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    invoke-static {v11}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->setWirelessChargeEnabled(Z)V

    .line 119
    .line 120
    .line 121
    const-string v0, "Led cover already off"

    .line 122
    .line 123
    invoke-static {v7, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    iput-boolean v6, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_4
    const-string v13, "Ensuring NFC LED Cover started"

    .line 130
    .line 131
    invoke-static {v7, v13}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->tryStartLedCover()Z

    .line 135
    .line 136
    .line 137
    move-result v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    const-string v5, "android.intent.action.NFC_LED_COVER_MAX_RETRY_DONE"

    .line 139
    .line 140
    if-nez v13, :cond_6

    .line 141
    .line 142
    :try_start_2
    iget v3, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 143
    .line 144
    if-ge v3, v14, :cond_5

    .line 145
    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iget v0, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 152
    .line 153
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-static {v7, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    iput v9, v0, Landroid/os/Message;->what:I

    .line 168
    .line 169
    iput v12, v0, Landroid/os/Message;->arg1:I

    .line 170
    .line 171
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 172
    .line 173
    const-wide/16 v2, 0x1f4

    .line 174
    .line 175
    invoke-virtual {v10, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 176
    .line 177
    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 179
    .line 180
    .line 181
    move-result-wide v2

    .line 182
    iput-wide v2, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverRetryPostTime:J

    .line 183
    .line 184
    iget v0, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 185
    .line 186
    add-int/2addr v0, v11

    .line 187
    iput v0, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 188
    .line 189
    iget-object v0, v1, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    .line 190
    .line 191
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    invoke-static {}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->stopLedCover()V

    .line 195
    .line 196
    .line 197
    goto :goto_1

    .line 198
    :cond_5
    const-string v0, "Could not start NFC LED Cover"

    .line 199
    .line 200
    invoke-static {v7, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    iput v6, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 204
    .line 205
    new-instance v0, Landroid/content/Intent;

    .line 206
    .line 207
    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    iget-object v2, v1, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mContext:Landroid/content/Context;

    .line 211
    .line 212
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 213
    .line 214
    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 215
    .line 216
    .line 217
    const-string v0, "Sent done intent, fail start"

    .line 218
    .line 219
    invoke-static {v7, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->stopLedCover$1()V

    .line 223
    .line 224
    .line 225
    iput-boolean v6, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mFactoryTransceiveResponseIntentSent:Z

    .line 226
    .line 227
    goto/16 :goto_1

    .line 228
    .line 229
    :cond_6
    iput v6, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 230
    .line 231
    invoke-static {v12, v2}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->buildNfcCoverLedData$1(I[B)[B

    .line 232
    .line 233
    .line 234
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 235
    :try_start_3
    iget-object v9, v1, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    .line 236
    .line 237
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 238
    .line 239
    .line 240
    invoke-static {v0}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->transceiveDataWithLedCover([B)[B

    .line 241
    .line 242
    .line 243
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 244
    goto :goto_2

    .line 245
    :catch_0
    move-exception v0

    .line 246
    :try_start_4
    const-string v9, "Error in trancieve command"

    .line 247
    .line 248
    invoke-static {v7, v9, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 249
    .line 250
    .line 251
    const/4 v0, 0x0

    .line 252
    :goto_2
    invoke-static {v12, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->isValidResponse(I[B)Z

    .line 253
    .line 254
    .line 255
    move-result v9

    .line 256
    if-nez v9, :cond_8

    .line 257
    .line 258
    new-instance v9, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    const-string v4, ": "

    .line 267
    .line 268
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-static {v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v4

    .line 275
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v4

    .line 282
    invoke-static {v7, v4}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .line 284
    .line 285
    invoke-virtual {v1, v12, v2, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->handleInvalidCommand$1(I[B[B)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v1, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->sendNfcFailIntentForFactoryMode([B)V

    .line 289
    .line 290
    .line 291
    iget v0, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestMode:I

    .line 292
    .line 293
    if-nez v0, :cond_7

    .line 294
    .line 295
    goto/16 :goto_1

    .line 296
    .line 297
    :cond_7
    const-string v0, "TEST mode enabled, ignore NFC Led Cover response"

    .line 298
    .line 299
    invoke-static {v7, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .line 301
    .line 302
    :cond_8
    iput-boolean v6, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mFactoryTransceiveResponseIntentSent:Z

    .line 303
    .line 304
    new-instance v0, Landroid/content/Intent;

    .line 305
    .line 306
    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    iget-object v4, v1, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mContext:Landroid/content/Context;

    .line 310
    .line 311
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 312
    .line 313
    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 314
    .line 315
    .line 316
    const-string v0, "Sent done intent, sucess"

    .line 317
    .line 318
    invoke-static {v7, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    .line 320
    .line 321
    iput v6, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 322
    .line 323
    invoke-virtual {v1, v12, v2}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->scheduleLedOffTimeout(I[B)V

    .line 324
    .line 325
    .line 326
    :goto_3
    iget v0, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPrevCommand:I

    .line 327
    .line 328
    iput v12, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPrevCommand:I

    .line 329
    .line 330
    const/4 v4, 0x2

    .line 331
    if-eq v12, v4, :cond_a

    .line 332
    .line 333
    if-eq v12, v15, :cond_a

    .line 334
    .line 335
    if-eq v12, v14, :cond_9

    .line 336
    .line 337
    const/16 v5, 0xe

    .line 338
    .line 339
    if-eq v12, v5, :cond_a

    .line 340
    .line 341
    const/16 v5, 0x14

    .line 342
    .line 343
    if-eq v12, v5, :cond_a

    .line 344
    .line 345
    goto :goto_4

    .line 346
    :cond_9
    if-eqz v2, :cond_c

    .line 347
    .line 348
    array-length v5, v2

    .line 349
    if-lez v5, :cond_c

    .line 350
    .line 351
    aget-byte v5, v2, v6

    .line 352
    .line 353
    if-eq v5, v11, :cond_a

    .line 354
    .line 355
    if-ne v5, v15, :cond_c

    .line 356
    .line 357
    :cond_a
    iget-object v5, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    .line 358
    .line 359
    if-nez v5, :cond_b

    .line 360
    .line 361
    new-instance v5, Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    .line 362
    .line 363
    invoke-direct {v5, v1, v12, v2}, Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;-><init>(Lcom/android/server/sepunion/cover/NfcLedCoverController;I[B)V

    .line 364
    .line 365
    .line 366
    iput-object v5, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    .line 367
    .line 368
    goto :goto_4

    .line 369
    :cond_b
    iput v12, v5, Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;->code:I

    .line 370
    .line 371
    iput-object v2, v5, Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;->data:[B

    .line 372
    .line 373
    :cond_c
    :goto_4
    const/16 v5, 0xe0

    .line 374
    .line 375
    const/4 v9, 0x6

    .line 376
    if-eq v12, v4, :cond_f

    .line 377
    .line 378
    if-eq v12, v9, :cond_10

    .line 379
    .line 380
    const/16 v13, 0xa

    .line 381
    .line 382
    if-eq v12, v13, :cond_e

    .line 383
    .line 384
    if-eq v12, v8, :cond_d

    .line 385
    .line 386
    if-eq v12, v5, :cond_10

    .line 387
    .line 388
    goto :goto_5

    .line 389
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->stopLedCover$1()V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v1, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->notifyLedOffListeners(I)V

    .line 393
    .line 394
    .line 395
    :cond_e
    iput-boolean v6, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    .line 396
    .line 397
    :goto_5
    iput-boolean v6, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    .line 398
    .line 399
    invoke-virtual {v10, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 400
    .line 401
    .line 402
    iget-object v0, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 403
    .line 404
    invoke-static {v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 405
    .line 406
    .line 407
    goto/16 :goto_1

    .line 408
    .line 409
    :cond_f
    iput-boolean v6, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    .line 410
    .line 411
    :cond_10
    iget v0, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestMode:I

    .line 412
    .line 413
    if-lez v0, :cond_11

    .line 414
    .line 415
    iput v6, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestCount:I

    .line 416
    .line 417
    :cond_11
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    iput v4, v0, Landroid/os/Message;->what:I

    .line 422
    .line 423
    if-eq v12, v4, :cond_18

    .line 424
    .line 425
    if-eq v12, v9, :cond_13

    .line 426
    .line 427
    if-eq v12, v5, :cond_12

    .line 428
    .line 429
    goto :goto_6

    .line 430
    :cond_12
    if-eqz v2, :cond_17

    .line 431
    .line 432
    array-length v5, v2

    .line 433
    if-lez v5, :cond_17

    .line 434
    .line 435
    aget-byte v2, v2, v6

    .line 436
    .line 437
    if-eq v2, v11, :cond_18

    .line 438
    .line 439
    if-eq v2, v15, :cond_18

    .line 440
    .line 441
    goto :goto_6

    .line 442
    :cond_13
    if-eqz v2, :cond_17

    .line 443
    .line 444
    array-length v5, v2

    .line 445
    if-lez v5, :cond_17

    .line 446
    .line 447
    aget-byte v2, v2, v6

    .line 448
    .line 449
    if-eq v2, v11, :cond_16

    .line 450
    .line 451
    if-eq v2, v4, :cond_15

    .line 452
    .line 453
    if-eq v2, v15, :cond_14

    .line 454
    .line 455
    goto :goto_6

    .line 456
    :cond_14
    move v6, v15

    .line 457
    goto :goto_7

    .line 458
    :cond_15
    move v6, v4

    .line 459
    goto :goto_7

    .line 460
    :cond_16
    move v6, v11

    .line 461
    goto :goto_7

    .line 462
    :cond_17
    :goto_6
    const/4 v6, -0x1

    .line 463
    :cond_18
    :goto_7
    if-gez v6, :cond_19

    .line 464
    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    .line 466
    .line 467
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    const-string v2, "; return"

    .line 474
    .line 475
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    invoke-static {v7, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    .line 484
    .line 485
    goto/16 :goto_1

    .line 486
    .line 487
    :cond_19
    iget-object v2, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 488
    .line 489
    invoke-static {v2}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 490
    .line 491
    .line 492
    iput v6, v0, Landroid/os/Message;->arg1:I

    .line 493
    .line 494
    iget-boolean v2, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    .line 495
    .line 496
    if-eqz v2, :cond_1a

    .line 497
    .line 498
    const-string v2, "Already polling for touch events"

    .line 499
    .line 500
    invoke-static {v7, v2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    .line 502
    .line 503
    invoke-virtual {v10, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 504
    .line 505
    .line 506
    goto :goto_8

    .line 507
    :cond_1a
    iput-boolean v11, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    .line 508
    .line 509
    :goto_8
    const-wide/16 v2, 0x64

    .line 510
    .line 511
    invoke-virtual {v10, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 512
    .line 513
    .line 514
    goto/16 :goto_1

    .line 515
    .line 516
    :goto_9
    return-void

    .line 517
    :goto_a
    iget-object v1, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 518
    .line 519
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 520
    .line 521
    .line 522
    throw v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mResponsePattern:[B

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 1
        0x10t
        0x6t
        -0x2ft
        0x0t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0, p2}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    .line 6
    .line 7
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-direct {v1, v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 14
    .line 15
    const-wide/16 v3, -0x1

    .line 16
    .line 17
    iput-wide v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallStartTime:J

    .line 18
    .line 19
    iput v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 20
    .line 21
    iput v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 22
    .line 23
    new-instance v1, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 29
    .line 30
    new-instance v1, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    .line 31
    .line 32
    invoke-direct {v1, p0, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;-><init>(Lcom/android/server/sepunion/cover/NfcLedCoverController;Landroid/os/Looper;)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    .line 38
    .line 39
    const-string/jumbo v1, "send leddata"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    .line 52
    .line 53
    const-string/jumbo v1, "pollTouch ledcover"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    .line 66
    .line 67
    const-string/jumbo v1, "touchResponse ledcover"

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iput-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    .line 80
    .line 81
    const-string/jumbo v1, "onoff ledcover"

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iput-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    const-string/jumbo p2, "nfc_led_cover_test"

    .line 98
    .line 99
    .line 100
    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    iput p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestMode:I

    .line 105
    .line 106
    return-void
.end method

.method public static buildNfcCoverLedData$1(I[B)[B
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    new-array p1, v0, [B

    .line 6
    .line 7
    aput-byte v1, p1, v1

    .line 8
    .line 9
    :cond_0
    array-length v2, p1

    .line 10
    add-int/lit8 v3, v2, 0x5

    .line 11
    .line 12
    add-int/lit8 v4, v2, 0xa

    .line 13
    .line 14
    new-array v4, v4, [B

    .line 15
    .line 16
    aput-byte v1, v4, v1

    .line 17
    .line 18
    const/16 v5, -0x5e

    .line 19
    .line 20
    aput-byte v5, v4, v0

    .line 21
    .line 22
    const/4 v0, 0x2

    .line 23
    aput-byte v1, v4, v0

    .line 24
    .line 25
    const/4 v0, 0x3

    .line 26
    aput-byte v1, v4, v0

    .line 27
    .line 28
    int-to-byte v0, v3

    .line 29
    const/4 v3, 0x4

    .line 30
    aput-byte v0, v4, v3

    .line 31
    .line 32
    const/16 v3, 0x10

    .line 33
    .line 34
    const/4 v5, 0x5

    .line 35
    aput-byte v3, v4, v5

    .line 36
    .line 37
    const/4 v3, 0x6

    .line 38
    aput-byte v0, v4, v3

    .line 39
    .line 40
    const/4 v0, 0x7

    .line 41
    int-to-byte p0, p0

    .line 42
    aput-byte p0, v4, v0

    .line 43
    .line 44
    array-length p0, p1

    .line 45
    const/16 v0, 0x8

    .line 46
    .line 47
    invoke-static {p1, v1, v4, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    .line 49
    .line 50
    add-int/lit8 p0, v2, 0x9

    .line 51
    .line 52
    add-int/2addr v2, v0

    .line 53
    const/4 p1, -0x1

    .line 54
    aput-byte p1, v4, v2

    .line 55
    .line 56
    aput-byte p1, v4, p0

    .line 57
    .line 58
    return-object v4
.end method

.method public static isValidResponse(I[B)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    array-length v1, p1

    .line 6
    const/4 v2, 0x6

    .line 7
    if-ge v1, v2, :cond_1

    .line 8
    .line 9
    return v0

    .line 10
    :cond_1
    sget-object v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mResponsePattern:[B

    .line 11
    .line 12
    const/4 v3, 0x3

    .line 13
    int-to-byte p0, p0

    .line 14
    aput-byte p0, v1, v3

    .line 15
    .line 16
    array-length p0, p1

    .line 17
    move v3, v0

    .line 18
    move v4, v3

    .line 19
    :goto_0
    if-ge v3, p0, :cond_6

    .line 20
    .line 21
    aget-byte v5, p1, v3

    .line 22
    .line 23
    aget-byte v6, v1, v4

    .line 24
    .line 25
    const/4 v7, 0x1

    .line 26
    if-eq v5, v6, :cond_4

    .line 27
    .line 28
    if-ne v4, v7, :cond_2

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    if-nez v4, :cond_3

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_3
    return v0

    .line 35
    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 36
    .line 37
    if-ne v4, v2, :cond_5

    .line 38
    .line 39
    return v7

    .line 40
    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_6
    return v0
.end method


# virtual methods
.method public final addLedNotification(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "CoverManager_NfcLedCoverController"

    .line 2
    .line 3
    const-string v1, "addLedNotification"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final clearRetryCountDelayedMsg$1()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 3
    .line 4
    iput v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    .line 7
    .line 8
    const/4 v0, 0x4

    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    const-string v0, "  Live callbacks ("

    .line 2
    .line 3
    const-string v1, " Current NfcLedCoverController state:"

    .line 4
    .line 5
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "  mIsLEDCoverAttached="

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mIsLedCoverAttached:Z

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 16
    .line 17
    .line 18
    const-string v1, "  "

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v1, " Current NFC Callback state:"

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 29
    .line 30
    monitor-enter v1

    .line 31
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v0, "):"

    .line 46
    .line 47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 74
    .line 75
    if-eqz v0, :cond_0

    .line 76
    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v3, "    "

    .line 83
    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget-object v3, v0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->component:Landroid/content/ComponentName;

    .line 88
    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v3, " (pid="

    .line 93
    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget v3, v0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    .line 98
    .line 99
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v3, " uid="

    .line 103
    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget v3, v0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->uid:I

    .line 108
    .line 109
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v3, " type="

    .line 113
    .line 114
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    iget v0, v0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    .line 118
    .line 119
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v0, ")"

    .line 123
    .line 124
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :catchall_0
    move-exception p0

    .line 136
    goto :goto_1

    .line 137
    :cond_1
    const-string p0, "  "

    .line 138
    .line 139
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    monitor-exit v1

    .line 143
    return-void

    .line 144
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    throw p0
.end method

.method public final handleInvalidCommand$1(I[B[B)V
    .locals 9

    .line 1
    iput p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPrevCommand:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    .line 4
    .line 5
    const/16 v1, 0x12

    .line 6
    .line 7
    const-string v2, "CoverManager_NfcLedCoverController"

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x0

    .line 11
    if-eqz p3, :cond_3

    .line 12
    .line 13
    if-eq p1, v1, :cond_3

    .line 14
    .line 15
    array-length v5, p3

    .line 16
    const/4 v6, 0x1

    .line 17
    if-lt v5, v6, :cond_3

    .line 18
    .line 19
    aget-byte v5, p3, v4

    .line 20
    .line 21
    const/16 v7, -0x20

    .line 22
    .line 23
    if-eq v5, v7, :cond_0

    .line 24
    .line 25
    if-eq v5, v6, :cond_0

    .line 26
    .line 27
    const/4 v7, 0x3

    .line 28
    if-eq v5, v7, :cond_0

    .line 29
    .line 30
    const/4 v7, 0x5

    .line 31
    if-eq v5, v7, :cond_0

    .line 32
    .line 33
    const/4 v7, 0x6

    .line 34
    if-eq v5, v7, :cond_0

    .line 35
    .line 36
    packed-switch v5, :pswitch_data_0

    .line 37
    .line 38
    .line 39
    new-instance v5, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v7, "Transceive error - unknown error value: "

    .line 42
    .line 43
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    aget-byte v7, p3, v4

    .line 47
    .line 48
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-static {v2, v5}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move v5, v4

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    :pswitch_0
    move v5, v6

    .line 61
    :goto_0
    if-nez v5, :cond_1

    .line 62
    .line 63
    array-length v7, p3

    .line 64
    if-le v7, v3, :cond_1

    .line 65
    .line 66
    aget-byte v7, p3, v3

    .line 67
    .line 68
    const/16 v8, -0x30

    .line 69
    .line 70
    if-ne v7, v8, :cond_1

    .line 71
    .line 72
    array-length v5, p3

    .line 73
    new-array v5, v5, [B

    .line 74
    .line 75
    array-length v7, p3

    .line 76
    invoke-static {p3, v4, v5, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    .line 78
    .line 79
    const/16 p3, -0x2f

    .line 80
    .line 81
    aput-byte p3, v5, v3

    .line 82
    .line 83
    invoke-static {p1, v5}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->isValidResponse(I[B)Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    :cond_1
    if-eqz v5, :cond_2

    .line 88
    .line 89
    iget p3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 90
    .line 91
    const/16 v5, 0xd

    .line 92
    .line 93
    if-ge p3, v5, :cond_2

    .line 94
    .line 95
    const-string p3, "Repeat command "

    .line 96
    .line 97
    const-string v1, " count: "

    .line 98
    .line 99
    invoke-static {p1, p3, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    move-result-object p3

    .line 103
    iget v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 104
    .line 105
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p3

    .line 112
    invoke-static {v2, p3}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    iput-boolean v4, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    .line 116
    .line 117
    iget-object p3, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    .line 118
    .line 119
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    invoke-static {}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->stopLedCover()V

    .line 123
    .line 124
    .line 125
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 126
    .line 127
    .line 128
    move-result-object p3

    .line 129
    const/4 v1, 0x4

    .line 130
    iput v1, p3, Landroid/os/Message;->what:I

    .line 131
    .line 132
    iput p1, p3, Landroid/os/Message;->arg1:I

    .line 133
    .line 134
    iput-object p2, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 135
    .line 136
    const-wide/16 p1, 0x1f4

    .line 137
    .line 138
    invoke-virtual {v0, p3, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 139
    .line 140
    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 142
    .line 143
    .line 144
    move-result-wide p1

    .line 145
    iput-wide p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverRetryPostTime:J

    .line 146
    .line 147
    iget p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 148
    .line 149
    add-int/2addr p1, v6

    .line 150
    iput p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 151
    .line 152
    return-void

    .line 153
    :cond_2
    iput v4, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 154
    .line 155
    const-string p2, "Could not transceive command to cover so turn off led cover"

    .line 156
    .line 157
    invoke-static {v2, p2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    iput-boolean v4, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mFactoryTransceiveResponseIntentSent:Z

    .line 161
    .line 162
    :cond_3
    new-instance p2, Landroid/content/Intent;

    .line 163
    .line 164
    const-string p3, "android.intent.action.NFC_LED_COVER_MAX_RETRY_DONE"

    .line 165
    .line 166
    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget-object p3, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mContext:Landroid/content/Context;

    .line 170
    .line 171
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 172
    .line 173
    invoke-virtual {p3, p2, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 174
    .line 175
    .line 176
    const-string p2, "Sent done intent, fail transceive"

    .line 177
    .line 178
    invoke-static {v2, p2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    if-eq p1, v3, :cond_4

    .line 182
    .line 183
    if-eq p1, v1, :cond_4

    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_4
    iget-boolean p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    .line 187
    .line 188
    if-eqz p1, :cond_5

    .line 189
    .line 190
    iput-boolean v4, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    .line 191
    .line 192
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->stopLedCover$1()V

    .line 193
    .line 194
    .line 195
    iput-boolean v4, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    .line 196
    .line 197
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 198
    .line 199
    .line 200
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 201
    .line 202
    invoke-static {p0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 203
    .line 204
    .line 205
    return-void

    .line 206
    nop

    .line 207
    :pswitch_data_0
    .packed-switch -0x50
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final notifyLedOffListeners(I)V
    .locals 4

    .line 1
    const-string v0, "led_off_command"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/android/server/SystemUpdateManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 27
    .line 28
    iget v2, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    .line 29
    .line 30
    const/4 v3, 0x4

    .line 31
    if-ne v2, v3, :cond_0

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-virtual {v1, v2, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    monitor-exit v0

    .line 41
    return-void

    .line 42
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0
.end method

.method public final registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 9

    .line 1
    if-ltz p1, :cond_3

    .line 2
    .line 3
    const/4 v0, 0x5

    .line 4
    if-le p1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    iget-object v2, v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    .line 31
    .line 32
    invoke-interface {p2, v2}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    const-string p0, "CoverManager_NfcLedCoverController"

    .line 39
    .line 40
    const-string/jumbo p1, "sendDataToNfcLedCover : duplicated listener handle"

    .line 41
    .line 42
    .line 43
    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    monitor-exit v0

    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    new-instance v8, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 51
    .line 52
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    move-object v1, v8

    .line 61
    move-object v2, p0

    .line 62
    move-object v3, p2

    .line 63
    move-object v4, p3

    .line 64
    move v7, p1

    .line 65
    invoke-direct/range {v1 .. v7}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;-><init>(Lcom/android/server/sepunion/cover/NfcLedCoverController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V

    .line 66
    .line 67
    .line 68
    const/4 p1, 0x0

    .line 69
    invoke-interface {p2, v8, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 70
    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    monitor-exit v0

    .line 78
    return-void

    .line 79
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    throw p0

    .line 81
    :cond_3
    :goto_1
    const-string p0, "CoverManager_NfcLedCoverController"

    .line 82
    .line 83
    new-instance p2, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string p3, "Unsupported touch listener type: "

    .line 86
    .line 87
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public final removeLedNotification(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "CoverManager_NfcLedCoverController"

    .line 2
    .line 3
    const-string/jumbo v1, "removeLedNotification"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const/16 v0, 0x9

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final scheduleLedOffTimeout(I[B)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "scheduleLedOffTimerout, command: "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "CoverManager_NfcLedCoverController"

    .line 17
    .line 18
    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    .line 23
    .line 24
    if-eq p1, v0, :cond_a

    .line 25
    .line 26
    const/4 v3, 0x2

    .line 27
    if-eq p1, v3, :cond_a

    .line 28
    .line 29
    const/16 v4, 0x12

    .line 30
    .line 31
    if-eq p1, v4, :cond_a

    .line 32
    .line 33
    const/16 v4, 0x14

    .line 34
    .line 35
    if-eq p1, v4, :cond_a

    .line 36
    .line 37
    const/16 v4, 0xe0

    .line 38
    .line 39
    if-eq p1, v4, :cond_a

    .line 40
    .line 41
    iget-boolean v4, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    .line 42
    .line 43
    const/4 v5, 0x3

    .line 44
    if-eqz v4, :cond_2

    .line 45
    .line 46
    const/16 v4, 0xf

    .line 47
    .line 48
    if-eq p1, v4, :cond_0

    .line 49
    .line 50
    if-ne p1, v5, :cond_2

    .line 51
    .line 52
    :cond_0
    iget v6, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPrevCommand:I

    .line 53
    .line 54
    if-ne v6, p1, :cond_2

    .line 55
    .line 56
    invoke-virtual {v2, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-eqz v6, :cond_2

    .line 61
    .line 62
    if-ne p1, v4, :cond_1

    .line 63
    .line 64
    const-string p0, "Time update"

    .line 65
    .line 66
    invoke-static {v1, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const-string p0, "Call InProgress duration time update"

    .line 71
    .line 72
    invoke-static {v1, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    :goto_0
    return-void

    .line 76
    :cond_2
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 77
    .line 78
    invoke-static {p0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    if-eqz p0, :cond_3

    .line 86
    .line 87
    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 88
    .line 89
    .line 90
    :cond_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 91
    .line 92
    .line 93
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    iput v0, p0, Landroid/os/Message;->what:I

    .line 98
    .line 99
    const/4 v1, 0x6

    .line 100
    if-eq p1, v1, :cond_9

    .line 101
    .line 102
    const/16 v1, 0x9

    .line 103
    .line 104
    const-wide/16 v6, 0xe74

    .line 105
    .line 106
    if-eq p1, v1, :cond_4

    .line 107
    .line 108
    packed-switch p1, :pswitch_data_0

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, p0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :pswitch_0
    const-wide/16 p1, 0x2328

    .line 116
    .line 117
    invoke-virtual {v2, p0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :pswitch_1
    const-wide/16 p1, 0x11f8

    .line 122
    .line 123
    invoke-virtual {v2, p0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_4
    if-eqz p2, :cond_8

    .line 128
    .line 129
    array-length p1, p2

    .line 130
    const/4 v1, 0x5

    .line 131
    if-ge p1, v1, :cond_5

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_5
    aget-byte p1, p2, v0

    .line 135
    .line 136
    const/16 v0, 0x30

    .line 137
    .line 138
    if-ne p1, v0, :cond_6

    .line 139
    .line 140
    aget-byte p1, p2, v3

    .line 141
    .line 142
    if-eq p1, v0, :cond_7

    .line 143
    .line 144
    :cond_6
    aget-byte p1, p2, v5

    .line 145
    .line 146
    if-ne p1, v0, :cond_8

    .line 147
    .line 148
    const/4 p1, 0x4

    .line 149
    aget-byte p1, p2, p1

    .line 150
    .line 151
    if-ne p1, v0, :cond_8

    .line 152
    .line 153
    :cond_7
    invoke-virtual {v2, p0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 154
    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_8
    :goto_1
    const-wide/16 p1, 0x13ec

    .line 158
    .line 159
    invoke-virtual {v2, p0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 160
    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_9
    const-wide/32 p1, 0xea60

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, p0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 167
    .line 168
    .line 169
    :goto_2
    return-void

    .line 170
    :cond_a
    invoke-virtual {v2, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    if-eqz p1, :cond_b

    .line 175
    .line 176
    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 177
    .line 178
    .line 179
    :cond_b
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 180
    .line 181
    invoke-static {p0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final sendDataToNfcLedCover(I[B)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mIsLedCoverAttached:Z

    .line 2
    .line 3
    const-string v1, "CoverManager_NfcLedCoverController"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCoverEventsDisabledForSamsungPay:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string/jumbo p0, "sendDataToLedCover : Not attached LED Cover or Disabled by SamsungPay"

    .line 18
    .line 19
    .line 20
    invoke-static {v1, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->getSamsungNfcAdapter()Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    const-string/jumbo p0, "sendDataToLedCover : Nfc Service not available"

    .line 35
    .line 36
    .line 37
    invoke-static {v1, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    const v0, 0xffff

    .line 42
    .line 43
    .line 44
    const/16 v2, 0xf

    .line 45
    .line 46
    if-ne p1, v0, :cond_3

    .line 47
    .line 48
    iget p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPrevCommand:I

    .line 49
    .line 50
    if-ne p1, v2, :cond_2

    .line 51
    .line 52
    iget-boolean p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    .line 53
    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    move p1, v2

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    const-string p0, "Time tick: clock not displayed, ignore"

    .line 59
    .line 60
    invoke-static {v1, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 65
    const/16 v3, 0xc

    .line 66
    .line 67
    const/16 v4, 0xb

    .line 68
    .line 69
    if-ne p1, v2, :cond_6

    .line 70
    .line 71
    iget-object p2, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mContext:Landroid/content/Context;

    .line 72
    .line 73
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    invoke-static {p2, v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 82
    .line 83
    .line 84
    move-result-wide v5

    .line 85
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz p2, :cond_4

    .line 101
    .line 102
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    filled-new-array {p2, v2}, [Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    const-string v2, "%02d%02d"

    .line 115
    .line 116
    invoke-static {v0, v2, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    goto :goto_1

    .line 121
    :cond_4
    rem-int/2addr v5, v3

    .line 122
    if-nez v5, :cond_5

    .line 123
    .line 124
    move v5, v3

    .line 125
    :cond_5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    filled-new-array {p2, v2}, [Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    const-string v2, "%2d%02d"

    .line 138
    .line 139
    invoke-static {v0, v2, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    :cond_6
    if-ne p1, v3, :cond_7

    .line 148
    .line 149
    iget v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPrevCommand:I

    .line 150
    .line 151
    if-ne v2, v4, :cond_7

    .line 152
    .line 153
    const-string p0, "Ignore battery chargin, battery low already shown"

    .line 154
    .line 155
    invoke-static {v1, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :cond_7
    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 160
    .line 161
    invoke-static {v2}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 162
    .line 163
    .line 164
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    iput p1, v2, Landroid/os/Message;->arg1:I

    .line 169
    .line 170
    iput-object p2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 171
    .line 172
    const v3, 0xfff0

    .line 173
    .line 174
    .line 175
    const/4 v4, 0x0

    .line 176
    iget-object v5, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    .line 177
    .line 178
    if-ne p1, v3, :cond_8

    .line 179
    .line 180
    if-eqz p2, :cond_c

    .line 181
    .line 182
    array-length p0, p2

    .line 183
    if-lez p0, :cond_c

    .line 184
    .line 185
    const/4 p0, 0x5

    .line 186
    iput p0, v2, Landroid/os/Message;->what:I

    .line 187
    .line 188
    aget-byte p0, p2, v4

    .line 189
    .line 190
    iput p0, v2, Landroid/os/Message;->arg1:I

    .line 191
    .line 192
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 193
    .line 194
    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 195
    .line 196
    .line 197
    goto :goto_3

    .line 198
    :cond_8
    const/16 p2, 0x13

    .line 199
    .line 200
    const/4 v0, 0x4

    .line 201
    if-ne p1, p2, :cond_9

    .line 202
    .line 203
    iput v0, v2, Landroid/os/Message;->what:I

    .line 204
    .line 205
    invoke-virtual {v5, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 206
    .line 207
    .line 208
    const-wide/16 p0, 0x96

    .line 209
    .line 210
    invoke-virtual {v5, v2, p0, p1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 211
    .line 212
    .line 213
    goto :goto_3

    .line 214
    :cond_9
    iput v4, v2, Landroid/os/Message;->what:I

    .line 215
    .line 216
    invoke-virtual {v5, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 217
    .line 218
    .line 219
    move-result p1

    .line 220
    const-wide/16 v6, 0x0

    .line 221
    .line 222
    if-eqz p1, :cond_b

    .line 223
    .line 224
    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 225
    .line 226
    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 228
    .line 229
    .line 230
    move-result-wide p1

    .line 231
    iget-wide v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverRetryPostTime:J

    .line 232
    .line 233
    sub-long/2addr p1, v3

    .line 234
    const-wide/16 v3, 0x1f4

    .line 235
    .line 236
    sub-long/2addr v3, p1

    .line 237
    cmp-long p1, v3, v6

    .line 238
    .line 239
    if-gez p1, :cond_a

    .line 240
    .line 241
    goto :goto_2

    .line 242
    :cond_a
    move-wide v6, v3

    .line 243
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    const-string p2, "There is pending DELAYED message due to Retry mechanism send this command with proper delay:"

    .line 246
    .line 247
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    invoke-static {v1, p1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .line 259
    .line 260
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->clearRetryCountDelayedMsg$1()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v5, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 264
    .line 265
    .line 266
    :cond_c
    :goto_3
    return-void
.end method

.method public final sendNfcFailIntentForFactoryMode([B)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestMode:I

    .line 14
    .line 15
    const/16 v1, 0x2a

    .line 16
    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mFactoryTransceiveResponseIntentSent:Z

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    if-eqz p1, :cond_2

    .line 26
    .line 27
    array-length v0, p1

    .line 28
    const/4 v1, 0x2

    .line 29
    if-le v0, v1, :cond_2

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    aget-byte v0, p1, v0

    .line 33
    .line 34
    const/16 v2, 0x69

    .line 35
    .line 36
    if-ne v0, v2, :cond_2

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    aget-byte v2, p1, v0

    .line 40
    .line 41
    const/16 v3, -0x7b

    .line 42
    .line 43
    if-ne v2, v3, :cond_2

    .line 44
    .line 45
    aget-byte p1, p1, v1

    .line 46
    .line 47
    if-nez p1, :cond_2

    .line 48
    .line 49
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mFactoryTransceiveResponseIntentSent:Z

    .line 50
    .line 51
    new-instance p1, Landroid/content/Intent;

    .line 52
    .line 53
    const-string v0, "android.intent.action.NFC_LED_COVER_FPCB_DISCONNECT"

    .line 54
    .line 55
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 61
    .line 62
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    return-void
.end method

.method public final sendPowerKeyToCover()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCoverEventsDisabledForSamsungPay:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string p0, "CoverManager_NfcLedCoverController"

    .line 6
    .line 7
    const-string v0, "handleMessage MSG_EVENT_POWER_BUTTON: SamsungPay active - ignore power button events"

    .line 8
    .line 9
    invoke-static {p0, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    .line 14
    .line 15
    const/4 v0, 0x6

    .line 16
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public final sendSystemEvent(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    const-string v0, "event_type"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/16 v0, 0xa

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const-string v0, "lcd_touch_listener_type"

    .line 28
    .line 29
    const/4 v1, -0x1

    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const-string v2, "lcd_touch_listener_respone"

    .line 35
    .line 36
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const/4 v2, 0x3

    .line 45
    iput v2, v1, Landroid/os/Message;->what:I

    .line 46
    .line 47
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 48
    .line 49
    iput p1, v1, Landroid/os/Message;->arg2:I

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
.end method

.method public final startCallInProgressDisplayTimer([B)V
    .locals 9

    .line 1
    const-string v0, "CallStartTime incorrect"

    .line 2
    .line 3
    const-string v1, "CoverManager_NfcLedCoverController"

    .line 4
    .line 5
    const/16 v2, 0x40

    .line 6
    .line 7
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    iput-wide v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallStartTime:J
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_1

    .line 22
    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v0, "CallStartTime: "

    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-wide v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallStartTime:J

    .line 31
    .line 32
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {v1, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    if-eqz p1, :cond_0

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    .line 51
    .line 52
    iput-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;

    .line 53
    .line 54
    :cond_0
    const/4 p1, 0x1

    .line 55
    iput-boolean p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    .line 56
    .line 57
    new-instance v2, Ljava/util/Timer;

    .line 58
    .line 59
    invoke-direct {v2, p1}, Ljava/util/Timer;-><init>(Z)V

    .line 60
    .line 61
    .line 62
    iput-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    .line 63
    .line 64
    new-instance v4, Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;

    .line 65
    .line 66
    invoke-direct {v4, p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;-><init>(Lcom/android/server/sepunion/cover/NfcLedCoverController;)V

    .line 67
    .line 68
    .line 69
    iput-object v4, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;

    .line 70
    .line 71
    :try_start_1
    iget-object v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    .line 72
    .line 73
    const-wide/16 v5, 0x0

    .line 74
    .line 75
    const-wide/16 v7, 0x1f4

    .line 76
    .line 77
    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catch_0
    move-exception p1

    .line 82
    const-string v2, "Error while scheduling TimerTask"

    .line 83
    .line 84
    invoke-static {v1, v2, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    .line 86
    .line 87
    const/4 p1, 0x0

    .line 88
    iput-boolean p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    .line 89
    .line 90
    iput-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    .line 91
    .line 92
    iput-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;

    .line 93
    .line 94
    :goto_0
    return-void

    .line 95
    :catch_1
    move-exception p0

    .line 96
    goto :goto_1

    .line 97
    :catch_2
    move-exception p0

    .line 98
    goto :goto_2

    .line 99
    :goto_1
    invoke-static {v1, v0, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :goto_2
    invoke-static {v1, v0, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public final stopLedCover$1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->stopLedCover()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    invoke-static {p0}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->setWirelessChargeEnabled(Z)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final tryStartLedCover()Z
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Trying to start NFC LED Cover mIsLedOn="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    .line 9
    .line 10
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "CoverManager_NfcLedCoverController"

    .line 22
    .line 23
    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    iget v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-static {v3}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->setWirelessChargeEnabled(Z)V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->startLedCover()[B

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    array-length v4, v0

    .line 56
    if-le v4, v2, :cond_1

    .line 57
    .line 58
    const-string v0, "Started NFC LED Cover"

    .line 59
    .line 60
    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    iput v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 64
    .line 65
    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    const-string v2, "Failed to start NFC LED Cover"

    .line 69
    .line 70
    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->sendNfcFailIntentForFactoryMode([B)V

    .line 74
    .line 75
    .line 76
    return v3

    .line 77
    :cond_2
    const-string p0, "NFC LED Cover already started"

    .line 78
    .line 79
    invoke-static {v1, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    :goto_0
    return v2
.end method

.method public final unRegisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    iget-object v4, v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    .line 26
    .line 27
    invoke-interface {p1, v4}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    const-string v1, "CoverManager_NfcLedCoverController"

    .line 34
    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string/jumbo v5, "remove listener: "

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget v5, v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    .line 47
    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-static {v1, v4}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 64
    .line 65
    .line 66
    monitor-exit v0

    .line 67
    const/4 p0, 0x1

    .line 68
    return p0

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    const-string p0, "CoverManager_NfcLedCoverController"

    .line 73
    .line 74
    const-string p1, "UnregisterNfcTouchListener: listener does not exist"

    .line 75
    .line 76
    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    return v3

    .line 80
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    throw p0
.end method

.method public final updateNfcLedCoverAttachStateLocked(IZ)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x7

    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    if-eq p1, v1, :cond_0

    .line 6
    .line 7
    const/16 v2, 0xe

    .line 8
    .line 9
    if-ne p1, v2, :cond_1

    .line 10
    .line 11
    :cond_0
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    move p1, v0

    .line 14
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mIsLedCoverAttached:Z

    .line 15
    .line 16
    if-eq v2, p1, :cond_2

    .line 17
    .line 18
    iput-boolean p1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mIsLedCoverAttached:Z

    .line 19
    .line 20
    if-nez p1, :cond_2

    .line 21
    .line 22
    const-string p1, "CoverManager_NfcLedCoverController"

    .line 23
    .line 24
    const-string v2, "NfcLedCover detached, start clearing all flags, messages, wakelocks"

    .line 25
    .line 26
    invoke-static {p1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 38
    .line 39
    .line 40
    :cond_2
    iget-object p1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string/jumbo p2, "nfc_led_cover_test"

    .line 47
    .line 48
    .line 49
    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    iput p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestMode:I

    .line 54
    .line 55
    return-void
.end method
