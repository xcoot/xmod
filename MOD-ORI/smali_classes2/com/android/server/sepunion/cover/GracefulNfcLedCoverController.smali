.class public final Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;
.super Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static TEST:I

.field public static final VERSION_CHECK_COMMAND:[B


# instance fields
.field public final mCallTimerLock:Ljava/lang/Object;

.field public mFirmwareVersion:Ljava/lang/String;

.field public final mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

.field public mIsLedOn:Z

.field public mLastWcControlResetTime:J

.field public mLedCoverStartRetryCount:I

.field public mLedCoverTransceiveRetryCount:I

.field public final mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mListeners:Ljava/util/ArrayList;

.field public final mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mPollingTouchEvents:Z

.field public final mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

.field public testCount:I


# direct methods
.method public static -$$Nest$mhandleEventResponse(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;II)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "CoverManager_GracefulNfcLedCoverController"

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
    const-string p2, "CoverManager_GracefulNfcLedCoverController"

    .line 35
    .line 36
    const-string v0, "Event touch: accept"

    .line 37
    .line 38
    invoke-static {p2, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 42
    .line 43
    monitor-enter v0

    .line 44
    :try_start_0
    iget-object p2, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

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
    check-cast v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 61
    .line 62
    iget v2, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    .line 63
    .line 64
    if-ne p1, v2, :cond_0

    .line 65
    .line 66
    iget-object v1, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    .line 67
    .line 68
    const-string v2, "CoverManager_GracefulNfcLedCoverController"

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
    const-string p2, "CoverManager_GracefulNfcLedCoverController"

    .line 106
    .line 107
    const-string v0, "Event touch: reject"

    .line 108
    .line 109
    invoke-static {p2, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 113
    .line 114
    monitor-enter v0

    .line 115
    :try_start_3
    iget-object p2, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

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
    check-cast v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 132
    .line 133
    iget v2, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    .line 134
    .line 135
    if-ne p1, v2, :cond_4

    .line 136
    .line 137
    iget-object v1, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    .line 138
    .line 139
    const-string v2, "CoverManager_GracefulNfcLedCoverController"

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
    const-string p1, "CoverManager_GracefulNfcLedCoverController"

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
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 193
    .line 194
    invoke-static {p0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 195
    .line 196
    .line 197
    return-void
.end method

.method public static -$$Nest$mhandleSendDataToNfcLedCover(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;I[B)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    const-string v0, "Repeat command after LED_COVER_RETRY_DELAY: 500 count: "

    .line 8
    .line 9
    iget-object v4, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mCallTimerLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v4

    .line 12
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    .line 13
    .line 14
    const-string v6, "android.intent.action.NFC_LED_COVER_RETURN_VALUE"

    .line 15
    .line 16
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static/range {p1 .. p2}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->buildNfcCoverLedData(I[B)[B

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    if-nez v6, :cond_0

    .line 24
    .line 25
    const-string v0, "CoverManager_GracefulNfcLedCoverController"

    .line 26
    .line 27
    const-string v1, "Invalid data"

    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    monitor-exit v4

    .line 33
    goto/16 :goto_a

    .line 34
    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto/16 :goto_b

    .line 37
    .line 38
    :cond_0
    const/4 v7, 0x1

    .line 39
    const/16 v8, 0x12

    .line 40
    .line 41
    if-ne v2, v8, :cond_1

    .line 42
    .line 43
    iget-boolean v9, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    .line 44
    .line 45
    if-nez v9, :cond_1

    .line 46
    .line 47
    iget-object v0, v1, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-static {v7}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->setWirelessChargeEnabled(Z)V

    .line 53
    .line 54
    .line 55
    const-string v0, "CoverManager_GracefulNfcLedCoverController"

    .line 56
    .line 57
    const-string v1, "Led cover already off"

    .line 58
    .line 59
    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    monitor-exit v4

    .line 63
    goto/16 :goto_a

    .line 64
    .line 65
    :cond_1
    const-string v9, "CoverManager_GracefulNfcLedCoverController"

    .line 66
    .line 67
    const-string v10, "Ensuring NFC LED Cover started"

    .line 68
    .line 69
    invoke-static {v9, v10}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v5}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->tryStartLedCover(Landroid/content/Intent;)Z

    .line 73
    .line 74
    .line 75
    move-result v9

    .line 76
    const-string v10, "command_data"

    .line 77
    .line 78
    invoke-virtual {v5, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 79
    .line 80
    .line 81
    const-string/jumbo v10, "start_success"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    const/4 v10, 0x0

    .line 88
    if-nez v9, :cond_3

    .line 89
    .line 90
    iget v6, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 91
    .line 92
    const/16 v8, 0xd

    .line 93
    .line 94
    if-ge v6, v8, :cond_2

    .line 95
    .line 96
    const-string v6, "CoverManager_GracefulNfcLedCoverController"

    .line 97
    .line 98
    new-instance v8, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget v0, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 104
    .line 105
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-static {v6, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    const/4 v6, 0x4

    .line 120
    iput v6, v0, Landroid/os/Message;->what:I

    .line 121
    .line 122
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 123
    .line 124
    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 125
    .line 126
    iget-object v2, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    .line 127
    .line 128
    const-wide/16 v8, 0x1f4

    .line 129
    .line 130
    invoke-virtual {v2, v0, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 131
    .line 132
    .line 133
    iget v0, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 134
    .line 135
    add-int/2addr v0, v7

    .line 136
    iput v0, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 137
    .line 138
    iget-object v0, v1, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    invoke-static {}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->stopLedCover()V

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_2
    const-string v0, "CoverManager_GracefulNfcLedCoverController"

    .line 148
    .line 149
    const-string v2, "Could not start NFC LED Cover"

    .line 150
    .line 151
    invoke-static {v0, v2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    iput v10, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 155
    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->stopLedCover()V

    .line 157
    .line 158
    .line 159
    :goto_0
    iget-object v0, v1, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mContext:Landroid/content/Context;

    .line 160
    .line 161
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 162
    .line 163
    invoke-virtual {v0, v5, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 164
    .line 165
    .line 166
    monitor-exit v4

    .line 167
    goto/16 :goto_a

    .line 168
    .line 169
    :cond_3
    iput v10, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    .line 171
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 172
    .line 173
    .line 174
    move-result-wide v11

    .line 175
    iget-wide v13, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLastWcControlResetTime:J

    .line 176
    .line 177
    sub-long v13, v11, v13

    .line 178
    .line 179
    const-wide/16 v15, 0x7530

    .line 180
    .line 181
    cmp-long v0, v13, v15

    .line 182
    .line 183
    if-lez v0, :cond_4

    .line 184
    .line 185
    iget-object v0, v1, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    .line 186
    .line 187
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    invoke-static {v10}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->setWirelessChargeEnabled(Z)V

    .line 191
    .line 192
    .line 193
    iput-wide v11, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLastWcControlResetTime:J

    .line 194
    .line 195
    :cond_4
    iget-object v0, v1, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    .line 196
    .line 197
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    invoke-static {v6}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->transceiveDataWithLedCover([B)[B

    .line 201
    .line 202
    .line 203
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    goto :goto_1

    .line 205
    :catch_0
    move-exception v0

    .line 206
    :try_start_2
    const-string v9, "CoverManager_GracefulNfcLedCoverController"

    .line 207
    .line 208
    const-string v11, "Error in trancieve command"

    .line 209
    .line 210
    invoke-static {v9, v11, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    .line 212
    .line 213
    const/4 v0, 0x0

    .line 214
    :goto_1
    const-string/jumbo v9, "transceive_result"

    .line 215
    .line 216
    .line 217
    invoke-virtual {v5, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 218
    .line 219
    .line 220
    if-nez v0, :cond_5

    .line 221
    .line 222
    goto :goto_3

    .line 223
    :cond_5
    array-length v9, v0

    .line 224
    array-length v11, v6

    .line 225
    add-int/lit8 v11, v11, -0x5

    .line 226
    .line 227
    if-ge v9, v11, :cond_6

    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_6
    move v9, v10

    .line 231
    :goto_2
    array-length v11, v6

    .line 232
    add-int/lit8 v11, v11, -0x5

    .line 233
    .line 234
    if-ge v9, v11, :cond_9

    .line 235
    .line 236
    aget-byte v11, v0, v9

    .line 237
    .line 238
    add-int/lit8 v12, v9, 0x5

    .line 239
    .line 240
    aget-byte v12, v6, v12

    .line 241
    .line 242
    if-eq v11, v12, :cond_8

    .line 243
    .line 244
    :goto_3
    const-string v9, "CoverManager_GracefulNfcLedCoverController"

    .line 245
    .line 246
    new-instance v11, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .line 250
    .line 251
    const-string v12, "Error parsing response for command "

    .line 252
    .line 253
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    const-string v12, ": "

    .line 260
    .line 261
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-static {v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v12

    .line 268
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v11

    .line 275
    invoke-static {v9, v11}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .line 277
    .line 278
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->handleInvalidCommand(I[B[B)V

    .line 279
    .line 280
    .line 281
    const-string/jumbo v0, "transceive_success"

    .line 282
    .line 283
    .line 284
    invoke-virtual {v5, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 285
    .line 286
    .line 287
    iget-object v0, v1, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mContext:Landroid/content/Context;

    .line 288
    .line 289
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 290
    .line 291
    invoke-virtual {v0, v5, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 292
    .line 293
    .line 294
    sget v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TEST:I

    .line 295
    .line 296
    if-nez v0, :cond_7

    .line 297
    .line 298
    monitor-exit v4

    .line 299
    goto/16 :goto_a

    .line 300
    .line 301
    :cond_7
    const-string v0, "CoverManager_GracefulNfcLedCoverController"

    .line 302
    .line 303
    const-string v3, "TEST mode enabled, ignore NFC Led Cover response"

    .line 304
    .line 305
    invoke-static {v0, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    .line 307
    .line 308
    goto :goto_4

    .line 309
    :cond_8
    add-int/lit8 v9, v9, 0x1

    .line 310
    .line 311
    goto :goto_2

    .line 312
    :cond_9
    const-string/jumbo v0, "transceive_success"

    .line 313
    .line 314
    .line 315
    invoke-virtual {v5, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 316
    .line 317
    .line 318
    iget-object v0, v1, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mContext:Landroid/content/Context;

    .line 319
    .line 320
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 321
    .line 322
    invoke-virtual {v0, v5, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 323
    .line 324
    .line 325
    :goto_4
    const-string v0, "CoverManager_GracefulNfcLedCoverController"

    .line 326
    .line 327
    const-string v3, "Done, sucess"

    .line 328
    .line 329
    invoke-static {v0, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    .line 331
    .line 332
    iput v10, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 333
    .line 334
    const/4 v0, 0x6

    .line 335
    const/16 v3, 0x70

    .line 336
    .line 337
    const/4 v5, 0x2

    .line 338
    if-eq v2, v5, :cond_a

    .line 339
    .line 340
    if-eq v2, v0, :cond_a

    .line 341
    .line 342
    if-eq v2, v8, :cond_15

    .line 343
    .line 344
    if-eq v2, v3, :cond_a

    .line 345
    .line 346
    goto/16 :goto_8

    .line 347
    .line 348
    :cond_a
    sget v8, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TEST:I

    .line 349
    .line 350
    if-lez v8, :cond_b

    .line 351
    .line 352
    iput v10, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->testCount:I

    .line 353
    .line 354
    :cond_b
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 355
    .line 356
    .line 357
    move-result-object v8

    .line 358
    iput v5, v8, Landroid/os/Message;->what:I

    .line 359
    .line 360
    const/16 v9, 0x8

    .line 361
    .line 362
    if-eq v2, v5, :cond_d

    .line 363
    .line 364
    const/4 v11, 0x3

    .line 365
    if-eq v2, v0, :cond_e

    .line 366
    .line 367
    if-eq v2, v3, :cond_c

    .line 368
    .line 369
    goto :goto_5

    .line 370
    :cond_c
    array-length v0, v6

    .line 371
    if-le v0, v9, :cond_11

    .line 372
    .line 373
    aget-byte v0, v6, v9

    .line 374
    .line 375
    if-eq v0, v7, :cond_d

    .line 376
    .line 377
    if-eq v0, v11, :cond_d

    .line 378
    .line 379
    goto :goto_5

    .line 380
    :cond_d
    move v11, v10

    .line 381
    goto :goto_6

    .line 382
    :cond_e
    array-length v0, v6

    .line 383
    if-le v0, v9, :cond_11

    .line 384
    .line 385
    aget-byte v0, v6, v9

    .line 386
    .line 387
    if-eq v0, v7, :cond_10

    .line 388
    .line 389
    if-eq v0, v5, :cond_f

    .line 390
    .line 391
    if-eq v0, v11, :cond_12

    .line 392
    .line 393
    goto :goto_5

    .line 394
    :cond_f
    move v11, v5

    .line 395
    goto :goto_6

    .line 396
    :cond_10
    move v11, v7

    .line 397
    goto :goto_6

    .line 398
    :cond_11
    :goto_5
    const/4 v11, -0x1

    .line 399
    :cond_12
    :goto_6
    if-ltz v11, :cond_14

    .line 400
    .line 401
    iget-object v0, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 402
    .line 403
    invoke-static {v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 404
    .line 405
    .line 406
    iput v11, v8, Landroid/os/Message;->arg1:I

    .line 407
    .line 408
    iget-boolean v0, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mPollingTouchEvents:Z

    .line 409
    .line 410
    if-eqz v0, :cond_13

    .line 411
    .line 412
    const-string v0, "CoverManager_GracefulNfcLedCoverController"

    .line 413
    .line 414
    const-string v2, "Already polling for touch events"

    .line 415
    .line 416
    invoke-static {v0, v2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    .line 418
    .line 419
    iget-object v0, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    .line 420
    .line 421
    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 422
    .line 423
    .line 424
    goto :goto_7

    .line 425
    :cond_13
    iput-boolean v7, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mPollingTouchEvents:Z

    .line 426
    .line 427
    :goto_7
    iget-object v0, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    .line 428
    .line 429
    const-wide/16 v1, 0x64

    .line 430
    .line 431
    invoke-virtual {v0, v8, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 432
    .line 433
    .line 434
    goto :goto_9

    .line 435
    :cond_14
    if-ne v2, v3, :cond_16

    .line 436
    .line 437
    array-length v0, v6

    .line 438
    if-le v0, v9, :cond_16

    .line 439
    .line 440
    aget-byte v0, v6, v9

    .line 441
    .line 442
    if-ne v0, v5, :cond_16

    .line 443
    .line 444
    const-string v0, "CoverManager_GracefulNfcLedCoverController"

    .line 445
    .line 446
    const-string v2, "Factory Mode Full LED off was sent, so turn off LedCover"

    .line 447
    .line 448
    invoke-static {v0, v2}, Lcom/samsung/android/sepunion/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    .line 450
    .line 451
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->stopLedCover()V

    .line 452
    .line 453
    .line 454
    :goto_8
    iput-boolean v10, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mPollingTouchEvents:Z

    .line 455
    .line 456
    iget-object v0, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    .line 457
    .line 458
    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 459
    .line 460
    .line 461
    iget-object v0, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 462
    .line 463
    invoke-static {v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 464
    .line 465
    .line 466
    :goto_9
    monitor-exit v4

    .line 467
    goto :goto_a

    .line 468
    :cond_16
    const-string v0, "CoverManager_GracefulNfcLedCoverController"

    .line 469
    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    .line 471
    .line 472
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 473
    .line 474
    .line 475
    const-string v3, "Wrong listener type requested for command:"

    .line 476
    .line 477
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    const-string v2, "; return"

    .line 484
    .line 485
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v1

    .line 492
    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    .line 494
    .line 495
    monitor-exit v4

    .line 496
    :goto_a
    return-void

    .line 497
    :goto_b
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 498
    throw v0
.end method

.method public static -$$Nest$mhandleSendPowerKeyToCover(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 21
    .line 22
    iget v2, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    .line 23
    .line 24
    const/4 v3, 0x4

    .line 25
    if-ne v2, v3, :cond_0

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v3, 0x1

    .line 29
    invoke-virtual {v1, v3, v2}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->VERSION_CHECK_COMMAND:[B

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 1
        0x0t
        -0x5et
        0x0t
        0x0t
        0x7t
        0x7t
        0x71t
        0x0t
        0x0t
        0x0t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p2}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    .line 6
    .line 7
    new-instance v1, Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mCallTimerLock:Ljava/lang/Object;

    .line 13
    .line 14
    iput v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 15
    .line 16
    iput v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 17
    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    .line 26
    .line 27
    invoke-direct {v1, p0, p1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;-><init>(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;Landroid/os/Looper;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    const-string/jumbo v2, "send leddata"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    .line 48
    .line 49
    const-string/jumbo v2, "pollTouch ledcover"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-object p1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    .line 62
    .line 63
    const-string/jumbo v2, "touchResponse ledcover"

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput-object p1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    .line 76
    .line 77
    const-string/jumbo v2, "version check ledcover"

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iput-object p1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    const-string/jumbo p1, "nfc_led_cover_test"

    .line 94
    .line 95
    .line 96
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    sput p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TEST:I

    .line 101
    .line 102
    return-void
.end method

.method public static buildNfcCoverLedData(I[B)[B
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    new-array p1, v1, [B

    .line 7
    .line 8
    aput-byte v2, p1, v2

    .line 9
    .line 10
    aput-byte v2, p1, v0

    .line 11
    .line 12
    :cond_0
    array-length v3, p1

    .line 13
    if-ge v3, v1, :cond_1

    .line 14
    .line 15
    new-array v3, v1, [B

    .line 16
    .line 17
    aput-byte v2, v3, v2

    .line 18
    .line 19
    aget-byte p1, p1, v2

    .line 20
    .line 21
    aput-byte p1, v3, v0

    .line 22
    .line 23
    move-object p1, v3

    .line 24
    :cond_1
    array-length v3, p1

    .line 25
    const/4 v4, 0x3

    .line 26
    if-le v3, v4, :cond_2

    .line 27
    .line 28
    move v3, v0

    .line 29
    goto :goto_0

    .line 30
    :cond_2
    move v3, v2

    .line 31
    :goto_0
    array-length v5, p1

    .line 32
    const/4 v6, 0x4

    .line 33
    add-int/2addr v5, v6

    .line 34
    if-eqz v3, :cond_3

    .line 35
    .line 36
    aget-byte v5, p1, v2

    .line 37
    .line 38
    and-int/lit16 v5, v5, 0xff

    .line 39
    .line 40
    :cond_3
    const/4 v7, 0x5

    .line 41
    add-int v8, v7, v5

    .line 42
    .line 43
    new-array v9, v8, [B

    .line 44
    .line 45
    array-length v10, p1

    .line 46
    const/4 v11, 0x7

    .line 47
    if-eqz v3, :cond_4

    .line 48
    .line 49
    move v12, v7

    .line 50
    goto :goto_1

    .line 51
    :cond_4
    move v12, v11

    .line 52
    :goto_1
    add-int/2addr v10, v12

    .line 53
    if-ge v8, v10, :cond_5

    .line 54
    .line 55
    new-instance p0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v0, "buildNfcCoverLedData : Invalid genData length data.length="

    .line 58
    .line 59
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    array-length p1, p1

    .line 63
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string p1, " genData.length="

    .line 71
    .line 72
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    const-string p1, "CoverManager_GracefulNfcLedCoverController"

    .line 87
    .line 88
    invoke-static {p1, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    const/4 p0, 0x0

    .line 92
    return-object p0

    .line 93
    :cond_5
    aput-byte v2, v9, v2

    .line 94
    .line 95
    const/16 v8, -0x5e

    .line 96
    .line 97
    aput-byte v8, v9, v0

    .line 98
    .line 99
    aput-byte v2, v9, v1

    .line 100
    .line 101
    aput-byte v2, v9, v4

    .line 102
    .line 103
    int-to-byte v0, v5

    .line 104
    aput-byte v0, v9, v6

    .line 105
    .line 106
    if-eqz v3, :cond_6

    .line 107
    .line 108
    array-length p0, p1

    .line 109
    invoke-static {p1, v2, v9, v7, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_6
    aput-byte v0, v9, v7

    .line 114
    .line 115
    const/4 v0, 0x6

    .line 116
    int-to-byte p0, p0

    .line 117
    aput-byte p0, v9, v0

    .line 118
    .line 119
    array-length p0, p1

    .line 120
    invoke-static {p1, v2, v9, v11, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    .line 122
    .line 123
    add-int/lit8 p0, v5, 0x4

    .line 124
    .line 125
    add-int/2addr v5, v4

    .line 126
    const/4 p1, -0x1

    .line 127
    aput-byte p1, v9, v5

    .line 128
    .line 129
    aput-byte p1, v9, p0

    .line 130
    .line 131
    :goto_2
    return-object v9
.end method


# virtual methods
.method public final addLedNotification(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "CoverManager_GracefulNfcLedCoverController"

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
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

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

.method public final clearRetryCountDelayedMsg()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 3
    .line 4
    iput v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

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
    const-string v1, "  TEST="

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TEST:I

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 26
    .line 27
    .line 28
    const-string v1, "  "

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v1, " Current NFC Callback state:"

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 39
    .line 40
    monitor-enter v1

    .line 41
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v0, "):"

    .line 56
    .line 57
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_1

    .line 78
    .line 79
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 84
    .line 85
    if-eqz v0, :cond_0

    .line 86
    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v3, "    "

    .line 93
    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget-object v3, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->component:Landroid/content/ComponentName;

    .line 98
    .line 99
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v3, " (pid="

    .line 103
    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget v3, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    .line 108
    .line 109
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v3, " uid="

    .line 113
    .line 114
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    iget v3, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->uid:I

    .line 118
    .line 119
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v3, " type="

    .line 123
    .line 124
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    iget v0, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    .line 128
    .line 129
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v0, ")"

    .line 133
    .line 134
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :catchall_0
    move-exception p0

    .line 146
    goto :goto_1

    .line 147
    :cond_1
    const-string p0, "  "

    .line 148
    .line 149
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    monitor-exit v1

    .line 153
    return-void

    .line 154
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    throw p0
.end method

.method public final handleInvalidCommand(I[B[B)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    .line 2
    .line 3
    const-string v1, "CoverManager_GracefulNfcLedCoverController"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz p3, :cond_2

    .line 7
    .line 8
    const/16 v3, 0x12

    .line 9
    .line 10
    if-eq p1, v3, :cond_2

    .line 11
    .line 12
    array-length v3, p3

    .line 13
    const/4 v4, 0x1

    .line 14
    if-ne v3, v4, :cond_2

    .line 15
    .line 16
    aget-byte v3, p3, v2

    .line 17
    .line 18
    const/16 v5, -0x20

    .line 19
    .line 20
    if-eq v3, v5, :cond_0

    .line 21
    .line 22
    if-eq v3, v4, :cond_0

    .line 23
    .line 24
    const/4 v5, 0x3

    .line 25
    if-eq v3, v5, :cond_0

    .line 26
    .line 27
    const/4 v5, 0x5

    .line 28
    if-eq v3, v5, :cond_0

    .line 29
    .line 30
    const/4 v5, 0x6

    .line 31
    if-eq v3, v5, :cond_0

    .line 32
    .line 33
    packed-switch v3, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string p2, "Transceive error - unknown error value: "

    .line 39
    .line 40
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    aget-byte p2, p3, v2

    .line 44
    .line 45
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {v1, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    :pswitch_0
    iget p3, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 57
    .line 58
    const/16 v3, 0xd

    .line 59
    .line 60
    if-ge p3, v3, :cond_1

    .line 61
    .line 62
    const-string p3, "Repeat command "

    .line 63
    .line 64
    const-string v3, " count: "

    .line 65
    .line 66
    invoke-static {p1, p3, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    iget v3, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 71
    .line 72
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p3

    .line 79
    invoke-static {v1, p3}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    .line 83
    .line 84
    iget-object p3, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    .line 85
    .line 86
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    invoke-static {}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->stopLedCover()V

    .line 90
    .line 91
    .line 92
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    const/4 v1, 0x4

    .line 97
    iput v1, p3, Landroid/os/Message;->what:I

    .line 98
    .line 99
    iput p1, p3, Landroid/os/Message;->arg1:I

    .line 100
    .line 101
    iput-object p2, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 102
    .line 103
    const-wide/16 p1, 0x1f4

    .line 104
    .line 105
    invoke-virtual {v0, p3, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 106
    .line 107
    .line 108
    iget p1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 109
    .line 110
    add-int/2addr p1, v4

    .line 111
    iput p1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 112
    .line 113
    return-void

    .line 114
    :cond_1
    iput v2, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 115
    .line 116
    const-string p1, "Could not transceive command to cover so turn off led cover"

    .line 117
    .line 118
    invoke-static {v1, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    :cond_2
    :goto_0
    const-string p1, "Sent done intent, fail transceive"

    .line 122
    .line 123
    invoke-static {v1, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->stopLedCover()V

    .line 127
    .line 128
    .line 129
    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mPollingTouchEvents:Z

    .line 130
    .line 131
    const/4 p1, 0x2

    .line 132
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 133
    .line 134
    .line 135
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 136
    .line 137
    invoke-static {p0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :pswitch_data_0
    .packed-switch -0x50
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
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
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

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
    check-cast v2, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    iget-object v2, v2, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

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
    const-string p0, "CoverManager_GracefulNfcLedCoverController"

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
    new-instance v8, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

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
    invoke-direct/range {v1 .. v7}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;-><init>(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V

    .line 66
    .line 67
    .line 68
    const/4 p1, 0x0

    .line 69
    invoke-interface {p2, v8, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 70
    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

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
    const-string p0, "CoverManager_GracefulNfcLedCoverController"

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
    const-string v0, "CoverManager_GracefulNfcLedCoverController"

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
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

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

.method public final sendDataToNfcLedCover(I[B)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mIsLedCoverAttached:Z

    .line 2
    .line 3
    const-string v1, "CoverManager_GracefulNfcLedCoverController"

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
    const-string/jumbo p0, "sendDataToLedCover : Not attached LED Cover"

    .line 14
    .line 15
    .line 16
    invoke-static {v1, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->getSamsungNfcAdapter()Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    const-string/jumbo p0, "sendDataToLedCover : Nfc Service not available"

    .line 31
    .line 32
    .line 33
    invoke-static {v1, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 40
    .line 41
    .line 42
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 47
    .line 48
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 49
    .line 50
    const/4 p1, 0x0

    .line 51
    iput p1, v0, Landroid/os/Message;->what:I

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->clearRetryCountDelayedMsg()V

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final sendPowerKeyToCover()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    .line 2
    .line 3
    const/4 v0, 0x6

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5
    .line 6
    .line 7
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
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

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
    const/16 v0, 0xb

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

.method public final stopLedCover()V
    .locals 3

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
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-static {v0}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->setWirelessChargeEnabled(Z)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 30
    .line 31
    .line 32
    const-wide/16 v0, 0x1f4

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    .line 35
    .line 36
    const/16 v2, 0xa

    .line 37
    .line 38
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method public final tryStartLedCover(Landroid/content/Intent;)Z
    .locals 6

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
    iget-boolean v1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

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
    const-string v1, "CoverManager_GracefulNfcLedCoverController"

    .line 22
    .line 23
    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    iget v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v4

    .line 40
    iput-wide v4, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLastWcControlResetTime:J

    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-static {v3}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->setWirelessChargeEnabled(Z)V

    .line 48
    .line 49
    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->startLedCover()[B

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const-string/jumbo v4, "start_result"

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    array-length p1, v0

    .line 68
    if-le p1, v2, :cond_1

    .line 69
    .line 70
    const-string p1, "Started NFC LED Cover"

    .line 71
    .line 72
    invoke-static {v1, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    iput v3, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 76
    .line 77
    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    const-string p0, "Failed to start NFC LED Cover"

    .line 81
    .line 82
    invoke-static {v1, p0}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    return v3

    .line 86
    :cond_2
    const-string p0, "NFC LED Cover already started"

    .line 87
    .line 88
    invoke-static {v1, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    :goto_0
    return v2
.end method

.method public final unRegisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

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
    check-cast v2, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    iget-object v4, v2, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

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
    const-string v1, "CoverManager_GracefulNfcLedCoverController"

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
    iget v5, v2, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

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
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

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
    const-string p0, "CoverManager_GracefulNfcLedCoverController"

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
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x7

    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    if-ne p1, v1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move p1, v0

    .line 10
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mIsLedCoverAttached:Z

    .line 11
    .line 12
    if-eq v2, p1, :cond_2

    .line 13
    .line 14
    iput-boolean p1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mIsLedCoverAttached:Z

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    const-string p1, "CoverManager_GracefulNfcLedCoverController"

    .line 21
    .line 22
    const-string v3, "NfcLedCover detached, start clearing all flags, messages, wakelocks"

    .line 23
    .line 24
    invoke-static {p1, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 32
    .line 33
    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->getSamsungNfcAdapter()Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    iget-object p1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 50
    .line 51
    invoke-static {p1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 52
    .line 53
    .line 54
    const/16 p1, 0xa

    .line 55
    .line 56
    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 57
    .line 58
    .line 59
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    const-string/jumbo p1, "nfc_led_cover_test"

    .line 66
    .line 67
    .line 68
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    sput p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TEST:I

    .line 73
    .line 74
    return-void
.end method
