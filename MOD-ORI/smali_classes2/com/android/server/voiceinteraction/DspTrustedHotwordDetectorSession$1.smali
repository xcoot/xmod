.class public final Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;
.super Landroid/service/voice/IDspHotwordDetectionCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

.field public final synthetic val$externalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

.field public final synthetic val$recognitionEvent:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

.field public final synthetic val$timeoutDetected:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->val$timeoutDetected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->val$recognitionEvent:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->val$externalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 8
    .line 9
    invoke-direct {p0}, Landroid/service/voice/IDspHotwordDetectionCallback$Stub;-><init>()V

    .line 10
    .line 11
    .line 12
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
    const-string v2, "Ignoring #onDetected due to a process restart or previous #onRejected result = "

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    .line 8
    .line 9
    iget-object v3, v3, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v3

    .line 12
    :try_start_0
    iget-object v4, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    .line 13
    .line 14
    iget-object v4, v4, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;->mCancellationKeyPhraseDetectionFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 15
    .line 16
    const/4 v5, 0x1

    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    invoke-interface {v4, v5}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto/16 :goto_1

    .line 25
    .line 26
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->val$timeoutDetected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_1

    .line 33
    .line 34
    monitor-exit v3

    .line 35
    return-void

    .line 36
    :cond_1
    iget-object v4, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    .line 37
    .line 38
    iget v4, v4, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    .line 39
    .line 40
    const/4 v6, 0x5

    .line 41
    const/16 v7, 0x1b1

    .line 42
    .line 43
    invoke-static {v7, v5, v6, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 44
    .line 45
    .line 46
    iget-object v4, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    .line 47
    .line 48
    iget-boolean v8, v4, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;->mValidatingDspTrigger:Z

    .line 49
    .line 50
    if-nez v8, :cond_2

    .line 51
    .line 52
    const-string p1, "DspTrustedHotwordDetectorSession"

    .line 53
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    .line 60
    .line 61
    iget-object v1, v1, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;->mLastHotwordRejectedResult:Landroid/service/voice/HotwordRejectedResult;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    .line 74
    .line 75
    iget p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    .line 76
    .line 77
    const/4 p1, 0x7

    .line 78
    invoke-static {v7, v5, p1, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 79
    .line 80
    .line 81
    monitor-exit v3

    .line 82
    return-void

    .line 83
    :cond_2
    const/4 v2, 0x0

    .line 84
    iput-boolean v2, v4, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;->mValidatingDspTrigger:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .line 86
    const/16 v2, 0x1b2

    .line 87
    .line 88
    :try_start_1
    new-instance v8, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda6;

    .line 89
    .line 90
    invoke-direct {v8, v4}, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/voiceinteraction/DetectorSession;)V

    .line 91
    .line 92
    .line 93
    invoke-static {v8}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 94
    .line 95
    .line 96
    iget-object v4, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    .line 97
    .line 98
    iget-object v8, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->val$recognitionEvent:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    .line 99
    .line 100
    invoke-virtual {v4, p1, v8}, Lcom/android/server/voiceinteraction/DetectorSession;->enforceExtraKeyphraseIdNotLeaked(Landroid/service/voice/HotwordDetectedResult;Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    .line 102
    .line 103
    :try_start_2
    iget-object v4, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    .line 104
    .line 105
    invoke-virtual {v4, p1}, Lcom/android/server/voiceinteraction/DetectorSession;->saveProximityValueToBundle(Landroid/service/voice/HotwordDetectedResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    .line 107
    .line 108
    :try_start_3
    iget-object v4, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    .line 109
    .line 110
    iget-object v4, v4, Lcom/android/server/voiceinteraction/DetectorSession;->mHotwordAudioStreamCopier:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    .line 111
    .line 112
    invoke-virtual {v4, p1, v5}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->startCopyingAudioStreams(Landroid/service/voice/HotwordDetectedResult;Z)Landroid/service/voice/HotwordDetectedResult;

    .line 113
    .line 114
    .line 115
    move-result-object p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 116
    :try_start_4
    iget-object v4, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->val$externalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 117
    .line 118
    iget-object v6, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->val$recognitionEvent:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    .line 119
    .line 120
    invoke-interface {v4, v6, p1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onKeyphraseDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/service/voice/HotwordDetectedResult;)V

    .line 121
    .line 122
    .line 123
    const-string v4, "DspTrustedHotwordDetectorSession"

    .line 124
    .line 125
    new-instance v6, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-static {p1}, Landroid/service/voice/HotwordDetectedResult;->getUsageSize(Landroid/service/voice/HotwordDetectedResult;)I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v1, " bits from hotword trusted process"

    .line 138
    .line 139
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 147
    .line 148
    .line 149
    :try_start_5
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    .line 150
    .line 151
    iget-boolean p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mDebugHotwordLogging:Z

    .line 152
    .line 153
    if-eqz p0, :cond_3

    .line 154
    .line 155
    const-string p0, "DspTrustedHotwordDetectorSession"

    .line 156
    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    :cond_3
    monitor-exit v3

    .line 173
    return-void

    .line 174
    :catch_0
    move-exception p1

    .line 175
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    .line 176
    .line 177
    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    .line 178
    .line 179
    .line 180
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    .line 181
    .line 182
    iget p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    .line 183
    .line 184
    const/16 v0, 0x11

    .line 185
    .line 186
    invoke-static {v2, v5, v0, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 187
    .line 188
    .line 189
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 190
    :catch_1
    move-exception p1

    .line 191
    :try_start_6
    const-string v0, "DspTrustedHotwordDetectorSession"

    .line 192
    .line 193
    const-string v1, "Ignoring #onDetected due to a IOException"

    .line 194
    .line 195
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    .line 197
    .line 198
    iget-object p1, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->val$externalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 199
    .line 200
    new-instance v0, Landroid/service/voice/HotwordDetectionServiceFailure;

    .line 201
    .line 202
    const-string v1, "Copy audio stream failure."

    .line 203
    .line 204
    const/4 v2, 0x6

    .line 205
    invoke-direct {v0, v2, v1}, Landroid/service/voice/HotwordDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-interface {p1, v0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onHotwordDetectionServiceFailure(Landroid/service/voice/HotwordDetectionServiceFailure;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 209
    .line 210
    .line 211
    :try_start_7
    monitor-exit v3

    .line 212
    return-void

    .line 213
    :catch_2
    move-exception p1

    .line 214
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    .line 215
    .line 216
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    .line 217
    .line 218
    .line 219
    throw p1

    .line 220
    :catch_3
    move-exception p1

    .line 221
    const-string v0, "DspTrustedHotwordDetectorSession"

    .line 222
    .line 223
    const-string v1, "Ignoring #onDetected due to a SecurityException"

    .line 224
    .line 225
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    .line 227
    .line 228
    iget-object p1, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    .line 229
    .line 230
    iget p1, p1, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    .line 231
    .line 232
    const/16 v0, 0x8

    .line 233
    .line 234
    invoke-static {v7, v5, v0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 235
    .line 236
    .line 237
    :try_start_8
    iget-object p1, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->val$externalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 238
    .line 239
    new-instance v0, Landroid/service/voice/HotwordDetectionServiceFailure;

    .line 240
    .line 241
    const-string v1, "Security exception occurs in #onDetected method."

    .line 242
    .line 243
    invoke-direct {v0, v6, v1}, Landroid/service/voice/HotwordDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    .line 244
    .line 245
    .line 246
    invoke-interface {p1, v0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onHotwordDetectionServiceFailure(Landroid/service/voice/HotwordDetectionServiceFailure;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 247
    .line 248
    .line 249
    :try_start_9
    monitor-exit v3

    .line 250
    return-void

    .line 251
    :catch_4
    move-exception p1

    .line 252
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    .line 253
    .line 254
    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    .line 255
    .line 256
    .line 257
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    .line 258
    .line 259
    iget p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    .line 260
    .line 261
    const/16 v0, 0xf

    .line 262
    .line 263
    invoke-static {v2, v5, v0, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 264
    .line 265
    .line 266
    throw p1

    .line 267
    :goto_1
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 268
    throw p0
.end method

.method public final onRejected(Landroid/service/voice/HotwordRejectedResult;)V
    .locals 6

    .line 1
    const-string v0, "Egressed rejected result: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    .line 9
    .line 10
    iget-object v2, v2, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;->mCancellationKeyPhraseDetectionFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-interface {v2, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->val$timeoutDetected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    monitor-exit v1

    .line 30
    return-void

    .line 31
    :cond_1
    iget-object v2, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    .line 32
    .line 33
    iget v2, v2, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    .line 34
    .line 35
    const/16 v4, 0x1b1

    .line 36
    .line 37
    const/4 v5, 0x6

    .line 38
    invoke-static {v4, v3, v5, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    .line 42
    .line 43
    iget-boolean v5, v2, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;->mValidatingDspTrigger:Z

    .line 44
    .line 45
    if-nez v5, :cond_2

    .line 46
    .line 47
    const-string p1, "DspTrustedHotwordDetectorSession"

    .line 48
    .line 49
    const-string v0, "Ignoring #onRejected due to a process restart"

    .line 50
    .line 51
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    .line 55
    .line 56
    iget p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    .line 57
    .line 58
    const/16 p1, 0x9

    .line 59
    .line 60
    invoke-static {v4, v3, p1, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 61
    .line 62
    .line 63
    monitor-exit v1

    .line 64
    return-void

    .line 65
    :cond_2
    const/4 v4, 0x0

    .line 66
    iput-boolean v4, v2, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;->mValidatingDspTrigger:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    :try_start_1
    iget-object v2, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->val$externalCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 69
    .line 70
    invoke-interface {v2, p1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onRejected(Landroid/service/voice/HotwordRejectedResult;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .line 72
    .line 73
    :try_start_2
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    .line 74
    .line 75
    iput-object p1, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;->mLastHotwordRejectedResult:Landroid/service/voice/HotwordRejectedResult;

    .line 76
    .line 77
    iget-boolean p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mDebugHotwordLogging:Z

    .line 78
    .line 79
    if-eqz p0, :cond_3

    .line 80
    .line 81
    if-eqz p1, :cond_3

    .line 82
    .line 83
    const-string p0, "DspTrustedHotwordDetectorSession"

    .line 84
    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    :cond_3
    monitor-exit v1

    .line 101
    return-void

    .line 102
    :catch_0
    move-exception p1

    .line 103
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    .line 106
    .line 107
    .line 108
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    .line 109
    .line 110
    iget p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    .line 111
    .line 112
    const/16 v0, 0x1b2

    .line 113
    .line 114
    const/16 v2, 0x10

    .line 115
    .line 116
    invoke-static {v0, v3, v2, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 117
    .line 118
    .line 119
    throw p1

    .line 120
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    throw p0
.end method
