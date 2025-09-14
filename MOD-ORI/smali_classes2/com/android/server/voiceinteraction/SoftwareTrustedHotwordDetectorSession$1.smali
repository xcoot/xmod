.class public final Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;
.super Landroid/service/voice/IDspHotwordDetectionCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;


# direct methods
.method public constructor <init>(Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/service/voice/IDspHotwordDetectionCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDetected(Landroid/service/voice/HotwordDetectedResult;)V
    .locals 8

    .line 1
    const-string v0, "Egressed detected result: "

    .line 2
    .line 3
    const-string v1, "Egressed "

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    iget-object v3, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    .line 11
    .line 12
    iget v3, v3, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    .line 13
    .line 14
    const/4 v4, 0x5

    .line 15
    const/4 v5, 0x2

    .line 16
    invoke-static {v5, v4, v3}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeKeyphraseTriggerEvent(III)V

    .line 17
    .line 18
    .line 19
    iget-object v3, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    .line 20
    .line 21
    iget-boolean v6, v3, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;->mPerformingSoftwareHotwordDetection:Z

    .line 22
    .line 23
    if-nez v6, :cond_0

    .line 24
    .line 25
    const-string p1, "SoftwareTrustedHotwordDetectorSession"

    .line 26
    .line 27
    const-string v0, "Hotword detection has already completed"

    .line 28
    .line 29
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    .line 33
    .line 34
    iget p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    .line 35
    .line 36
    const/4 p1, 0x7

    .line 37
    invoke-static {v5, p1, p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeKeyphraseTriggerEvent(III)V

    .line 38
    .line 39
    .line 40
    monitor-exit v2

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto/16 :goto_0

    .line 44
    .line 45
    :cond_0
    const/4 v6, 0x0

    .line 46
    iput-boolean v6, v3, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;->mPerformingSoftwareHotwordDetection:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    const/16 v6, 0xf

    .line 49
    .line 50
    :try_start_1
    new-instance v7, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda6;

    .line 51
    .line 52
    invoke-direct {v7, v3}, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/voiceinteraction/DetectorSession;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v7}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    .line 57
    .line 58
    :try_start_2
    iget-object v3, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    .line 59
    .line 60
    invoke-virtual {v3, p1}, Lcom/android/server/voiceinteraction/DetectorSession;->saveProximityValueToBundle(Landroid/service/voice/HotwordDetectedResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    .line 62
    .line 63
    :try_start_3
    iget-object v3, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    .line 64
    .line 65
    iget-object v3, v3, Lcom/android/server/voiceinteraction/DetectorSession;->mHotwordAudioStreamCopier:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    .line 66
    .line 67
    const/4 v4, 0x1

    .line 68
    invoke-virtual {v3, p1, v4}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->startCopyingAudioStreams(Landroid/service/voice/HotwordDetectedResult;Z)Landroid/service/voice/HotwordDetectedResult;

    .line 69
    .line 70
    .line 71
    move-result-object p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 72
    :try_start_4
    iget-object v3, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    .line 73
    .line 74
    iget-object v3, v3, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;->mSoftwareCallback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    .line 75
    .line 76
    const/4 v4, 0x0

    .line 77
    invoke-interface {v3, p1, v4, v4}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;->onDetected(Landroid/service/voice/HotwordDetectedResult;Landroid/media/AudioFormat;Landroid/os/ParcelFileDescriptor;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 78
    .line 79
    .line 80
    :try_start_5
    const-string v3, "SoftwareTrustedHotwordDetectorSession"

    .line 81
    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-static {p1}, Landroid/service/voice/HotwordDetectedResult;->getUsageSize(Landroid/service/voice/HotwordDetectedResult;)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v1, " bits from hotword trusted process"

    .line 95
    .line 96
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    iget-object p0, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    .line 107
    .line 108
    iget-boolean p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mDebugHotwordLogging:Z

    .line 109
    .line 110
    if-eqz p0, :cond_1

    .line 111
    .line 112
    const-string p0, "SoftwareTrustedHotwordDetectorSession"

    .line 113
    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    :cond_1
    monitor-exit v2

    .line 130
    return-void

    .line 131
    :catch_0
    move-exception p1

    .line 132
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    .line 133
    .line 134
    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    .line 135
    .line 136
    .line 137
    iget-object p0, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    .line 138
    .line 139
    iget p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    .line 140
    .line 141
    const/16 v0, 0x11

    .line 142
    .line 143
    invoke-static {v5, v0, p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    .line 144
    .line 145
    .line 146
    throw p1

    .line 147
    :catch_1
    move-exception p1

    .line 148
    const-string v0, "SoftwareTrustedHotwordDetectorSession"

    .line 149
    .line 150
    const-string v1, "Ignoring #onDetected due to a IOException"

    .line 151
    .line 152
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 153
    .line 154
    .line 155
    :try_start_6
    iget-object p1, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    .line 156
    .line 157
    iget-object p1, p1, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;->mSoftwareCallback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    .line 158
    .line 159
    new-instance v0, Landroid/service/voice/HotwordDetectionServiceFailure;

    .line 160
    .line 161
    const-string v1, "Copy audio stream failure."

    .line 162
    .line 163
    const/4 v3, 0x6

    .line 164
    invoke-direct {v0, v3, v1}, Landroid/service/voice/HotwordDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-interface {p1, v0}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;->onHotwordDetectionServiceFailure(Landroid/service/voice/HotwordDetectionServiceFailure;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 168
    .line 169
    .line 170
    :try_start_7
    monitor-exit v2

    .line 171
    return-void

    .line 172
    :catch_2
    move-exception p1

    .line 173
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    .line 174
    .line 175
    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    .line 176
    .line 177
    .line 178
    iget-object p0, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    .line 179
    .line 180
    iget p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    .line 181
    .line 182
    invoke-static {v5, v6, p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    .line 183
    .line 184
    .line 185
    throw p1

    .line 186
    :catch_3
    move-exception p1

    .line 187
    const-string v0, "SoftwareTrustedHotwordDetectorSession"

    .line 188
    .line 189
    const-string v1, "Ignoring #onDetected due to a SecurityException"

    .line 190
    .line 191
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    .line 193
    .line 194
    iget-object p1, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    .line 195
    .line 196
    iget p1, p1, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    .line 197
    .line 198
    const/16 v0, 0x8

    .line 199
    .line 200
    invoke-static {v5, v0, p1}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeKeyphraseTriggerEvent(III)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 201
    .line 202
    .line 203
    :try_start_8
    iget-object p1, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    .line 204
    .line 205
    iget-object p1, p1, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;->mSoftwareCallback:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    .line 206
    .line 207
    new-instance v0, Landroid/service/voice/HotwordDetectionServiceFailure;

    .line 208
    .line 209
    const-string v1, "Security exception occurs in #onDetected method."

    .line 210
    .line 211
    invoke-direct {v0, v4, v1}, Landroid/service/voice/HotwordDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-interface {p1, v0}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;->onHotwordDetectionServiceFailure(Landroid/service/voice/HotwordDetectionServiceFailure;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 215
    .line 216
    .line 217
    :try_start_9
    monitor-exit v2

    .line 218
    return-void

    .line 219
    :catch_4
    move-exception p1

    .line 220
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    .line 221
    .line 222
    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    .line 223
    .line 224
    .line 225
    iget-object p0, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    .line 226
    .line 227
    iget p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    .line 228
    .line 229
    invoke-static {v5, v6, p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    .line 230
    .line 231
    .line 232
    throw p1

    .line 233
    :goto_0
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 234
    throw p0
.end method

.method public final onRejected(Landroid/service/voice/HotwordRejectedResult;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    const/4 v0, 0x6

    .line 7
    invoke-static {p1, v0, p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeKeyphraseTriggerEvent(III)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
