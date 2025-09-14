.class public final Lcom/android/server/voiceinteraction/DetectorSession$3;
.super Landroid/service/voice/IDspHotwordDetectionCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/voiceinteraction/DetectorSession;

.field public final synthetic val$audioSource:Ljava/io/InputStream;

.field public final synthetic val$callback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

.field public final synthetic val$serviceAudioSink:Landroid/os/ParcelFileDescriptor;

.field public final synthetic val$shouldCheckPermissionsAndAppOpsOnDetected:Z

.field public final synthetic val$shouldCloseAudioStreamWithDelayOnDetect:Z


# direct methods
.method public constructor <init>(Lcom/android/server/voiceinteraction/DetectorSession;Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;ZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->val$serviceAudioSink:Landroid/os/ParcelFileDescriptor;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->val$audioSource:Ljava/io/InputStream;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->val$callback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    .line 8
    .line 9
    iput-boolean p5, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->val$shouldCloseAudioStreamWithDelayOnDetect:Z

    .line 10
    .line 11
    iput-boolean p6, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->val$shouldCheckPermissionsAndAppOpsOnDetected:Z

    .line 12
    .line 13
    invoke-direct {p0}, Landroid/service/voice/IDspHotwordDetectionCallback$Stub;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final onDetected(Landroid/service/voice/HotwordDetectedResult;)V
    .locals 9

    .line 1
    const-string v0, "Egressed detected result: "

    .line 2
    .line 3
    const-string v1, "Egressed "

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    iget-object v3, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    iput-boolean v4, v3, Lcom/android/server/voiceinteraction/DetectorSession;->mPerformingExternalSourceHotwordDetection:Z

    .line 14
    .line 15
    invoke-virtual {v3}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    iget-object v4, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    .line 20
    .line 21
    iget v4, v4, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    .line 22
    .line 23
    const/16 v5, 0xb

    .line 24
    .line 25
    invoke-static {v3, v5, v4}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    .line 26
    .line 27
    .line 28
    iget-boolean v3, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->val$shouldCloseAudioStreamWithDelayOnDetect:Z

    .line 29
    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    iget-object v3, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    .line 33
    .line 34
    iget-object v3, v3, Lcom/android/server/voiceinteraction/DetectorSession;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 35
    .line 36
    iget-object v4, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->val$serviceAudioSink:Landroid/os/ParcelFileDescriptor;

    .line 37
    .line 38
    iget-object v5, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->val$audioSource:Ljava/io/InputStream;

    .line 39
    .line 40
    new-instance v6, Lcom/android/server/voiceinteraction/DetectorSession$3$$ExternalSyntheticLambda0;

    .line 41
    .line 42
    const/4 v7, 0x0

    .line 43
    invoke-direct {v6, v4, v5, v7}, Lcom/android/server/voiceinteraction/DetectorSession$3$$ExternalSyntheticLambda0;-><init>(Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;I)V

    .line 44
    .line 45
    .line 46
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 47
    .line 48
    const-wide/16 v7, 0x7d0

    .line 49
    .line 50
    invoke-interface {v3, v6, v7, v8, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto/16 :goto_2

    .line 56
    .line 57
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->val$shouldCheckPermissionsAndAppOpsOnDetected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    if-eqz v3, :cond_1

    .line 60
    .line 61
    :try_start_1
    iget-object v3, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    new-instance v4, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda6;

    .line 67
    .line 68
    invoke-direct {v4, v3}, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/voiceinteraction/DetectorSession;)V

    .line 69
    .line 70
    .line 71
    invoke-static {v4}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :catch_0
    move-exception p1

    .line 76
    :try_start_2
    const-string v0, "DetectorSession"

    .line 77
    .line 78
    const-string v1, "Ignoring #onDetected due to a SecurityException"

    .line 79
    .line 80
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    .line 90
    .line 91
    iget v0, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    .line 92
    .line 93
    const/16 v1, 0xd

    .line 94
    .line 95
    invoke-static {p1, v1, v0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    .line 97
    .line 98
    :try_start_3
    iget-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->val$callback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    .line 99
    .line 100
    new-instance v0, Landroid/service/voice/HotwordDetectionServiceFailure;

    .line 101
    .line 102
    const-string v1, "Security exception occurs in #onDetected method"

    .line 103
    .line 104
    const/4 v3, 0x5

    .line 105
    invoke-direct {v0, v3, v1}, Landroid/service/voice/HotwordDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-interface {p1, v0}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;->onHotwordDetectionServiceFailure(Landroid/service/voice/HotwordDetectionServiceFailure;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 109
    .line 110
    .line 111
    :try_start_4
    monitor-exit v2

    .line 112
    return-void

    .line 113
    :catch_1
    move-exception p1

    .line 114
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    .line 117
    .line 118
    .line 119
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 120
    :cond_1
    :goto_1
    :try_start_5
    iget-object v3, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    .line 121
    .line 122
    iget-object v3, v3, Lcom/android/server/voiceinteraction/DetectorSession;->mHotwordAudioStreamCopier:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    .line 123
    .line 124
    iget-boolean v4, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->val$shouldCheckPermissionsAndAppOpsOnDetected:Z

    .line 125
    .line 126
    invoke-virtual {v3, p1, v4}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->startCopyingAudioStreams(Landroid/service/voice/HotwordDetectedResult;Z)Landroid/service/voice/HotwordDetectedResult;

    .line 127
    .line 128
    .line 129
    move-result-object p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 130
    :try_start_6
    iget-object v3, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->val$callback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    .line 131
    .line 132
    const/4 v4, 0x0

    .line 133
    invoke-interface {v3, p1, v4, v4}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;->onDetected(Landroid/service/voice/HotwordDetectedResult;Landroid/media/AudioFormat;Landroid/os/ParcelFileDescriptor;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 134
    .line 135
    .line 136
    :try_start_7
    const-string v3, "DetectorSession"

    .line 137
    .line 138
    new-instance v4, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-static {p1}, Landroid/service/voice/HotwordDetectedResult;->getUsageSize(Landroid/service/voice/HotwordDetectedResult;)I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v1, " bits from hotword trusted process"

    .line 151
    .line 152
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    .line 163
    .line 164
    iget-boolean p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mDebugHotwordLogging:Z

    .line 165
    .line 166
    if-eqz p0, :cond_2

    .line 167
    .line 168
    const-string p0, "DetectorSession"

    .line 169
    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    :cond_2
    monitor-exit v2

    .line 186
    return-void

    .line 187
    :catch_2
    move-exception p1

    .line 188
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    .line 189
    .line 190
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    .line 191
    .line 192
    .line 193
    throw p1

    .line 194
    :catch_3
    move-exception p1

    .line 195
    const-string v0, "DetectorSession"

    .line 196
    .line 197
    const-string v1, "Ignoring #onDetected due to a IOException"

    .line 198
    .line 199
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 200
    .line 201
    .line 202
    :try_start_8
    iget-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->val$callback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    .line 203
    .line 204
    new-instance v0, Landroid/service/voice/HotwordDetectionServiceFailure;

    .line 205
    .line 206
    const-string v1, "Copy audio stream failure."

    .line 207
    .line 208
    const/4 v3, 0x6

    .line 209
    invoke-direct {v0, v3, v1}, Landroid/service/voice/HotwordDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-interface {p1, v0}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;->onHotwordDetectionServiceFailure(Landroid/service/voice/HotwordDetectionServiceFailure;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 213
    .line 214
    .line 215
    :try_start_9
    monitor-exit v2

    .line 216
    return-void

    .line 217
    :catch_4
    move-exception p1

    .line 218
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    .line 219
    .line 220
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    .line 221
    .line 222
    .line 223
    throw p1

    .line 224
    :goto_2
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 225
    throw p0
.end method

.method public final onRejected(Landroid/service/voice/HotwordRejectedResult;)V
    .locals 8

    .line 1
    const-string v0, "Egressed detected result: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    iput-boolean v3, v2, Lcom/android/server/voiceinteraction/DetectorSession;->mPerformingExternalSourceHotwordDetection:Z

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    iget-object v3, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    .line 18
    .line 19
    iget v3, v3, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    .line 20
    .line 21
    const/16 v4, 0xc

    .line 22
    .line 23
    invoke-static {v2, v4, v3}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    .line 27
    .line 28
    iget-object v2, v2, Lcom/android/server/voiceinteraction/DetectorSession;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->val$serviceAudioSink:Landroid/os/ParcelFileDescriptor;

    .line 31
    .line 32
    iget-object v4, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->val$audioSource:Ljava/io/InputStream;

    .line 33
    .line 34
    new-instance v5, Lcom/android/server/voiceinteraction/DetectorSession$3$$ExternalSyntheticLambda0;

    .line 35
    .line 36
    const/4 v6, 0x1

    .line 37
    invoke-direct {v5, v3, v4, v6}, Lcom/android/server/voiceinteraction/DetectorSession$3$$ExternalSyntheticLambda0;-><init>(Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;I)V

    .line 38
    .line 39
    .line 40
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 41
    .line 42
    const-wide/16 v6, 0x7d0

    .line 43
    .line 44
    invoke-interface {v2, v5, v6, v7, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    :try_start_1
    iget-object v2, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->val$callback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    .line 48
    .line 49
    invoke-interface {v2, p1}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;->onRejected(Landroid/service/voice/HotwordRejectedResult;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    .line 51
    .line 52
    if-eqz p1, :cond_0

    .line 53
    .line 54
    :try_start_2
    const-string v2, "DetectorSession"

    .line 55
    .line 56
    const-string v3, "Egressed \'hotword rejected result\' from hotword trusted process"

    .line 57
    .line 58
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    .line 62
    .line 63
    iget-boolean p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mDebugHotwordLogging:Z

    .line 64
    .line 65
    if-eqz p0, :cond_0

    .line 66
    .line 67
    const-string p0, "DetectorSession"

    .line 68
    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catchall_0
    move-exception p0

    .line 86
    goto :goto_1

    .line 87
    :cond_0
    :goto_0
    monitor-exit v1

    .line 88
    return-void

    .line 89
    :catch_0
    move-exception p1

    .line 90
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$3;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    .line 93
    .line 94
    .line 95
    throw p1

    .line 96
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    throw p0
.end method
