.class public final synthetic Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/voiceinteraction/DetectorSession;

.field public final synthetic f$1:Ljava/io/InputStream;

.field public final synthetic f$2:Landroid/os/ParcelFileDescriptor;

.field public final synthetic f$3:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/voiceinteraction/DetectorSession;Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/voiceinteraction/DetectorSession;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda3;->f$1:Ljava/io/InputStream;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda3;->f$2:Landroid/os/ParcelFileDescriptor;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda3;->f$3:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/voiceinteraction/DetectorSession;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda3;->f$1:Ljava/io/InputStream;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda3;->f$2:Landroid/os/ParcelFileDescriptor;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda3;->f$3:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    :try_start_0
    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .line 14
    .line 15
    invoke-direct {v4, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 16
    .line 17
    .line 18
    const/16 v2, 0x400

    .line 19
    .line 20
    :try_start_1
    new-array v5, v2, [B

    .line 21
    .line 22
    :goto_0
    invoke-virtual {v1, v5, v3, v2}, Ljava/io/InputStream;->read([BII)I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    if-gez v6, :cond_0

    .line 27
    .line 28
    const-string v2, "DetectorSession"

    .line 29
    .line 30
    const-string v5, "Reached end of stream for external hotword"

    .line 31
    .line 32
    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 33
    .line 34
    .line 35
    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 36
    .line 37
    .line 38
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 39
    .line 40
    .line 41
    iget-object p0, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter p0

    .line 44
    :try_start_4
    iput-boolean v3, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mPerformingExternalSourceHotwordDetection:Z

    .line 45
    .line 46
    const-string/jumbo v1, "start external source"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/android/server/voiceinteraction/DetectorSession;->closeExternalAudioStreamLocked(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    monitor-exit p0

    .line 53
    goto/16 :goto_7

    .line 54
    .line 55
    :catchall_0
    move-exception v0

    .line 56
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 57
    throw v0

    .line 58
    :catchall_1
    move-exception p0

    .line 59
    goto :goto_8

    .line 60
    :catch_0
    move-exception v1

    .line 61
    goto :goto_5

    .line 62
    :catchall_2
    move-exception v2

    .line 63
    goto :goto_3

    .line 64
    :catchall_3
    move-exception v2

    .line 65
    goto :goto_1

    .line 66
    :cond_0
    :try_start_5
    invoke-virtual {v4, v5, v3, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :goto_1
    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :catchall_4
    move-exception v4

    .line 75
    :try_start_7
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    :goto_2
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 79
    :goto_3
    if-eqz v1, :cond_1

    .line 80
    .line 81
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 82
    .line 83
    .line 84
    goto :goto_4

    .line 85
    :catchall_5
    move-exception v1

    .line 86
    :try_start_9
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    :cond_1
    :goto_4
    throw v2
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 90
    :goto_5
    :try_start_a
    const-string v2, "DetectorSession"

    .line 91
    .line 92
    const-string v4, "Failed supplying audio data to validator"

    .line 93
    .line 94
    invoke-static {v2, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 95
    .line 96
    .line 97
    const/4 v1, 0x3

    .line 98
    :try_start_b
    new-instance v2, Landroid/service/voice/HotwordDetectionServiceFailure;

    .line 99
    .line 100
    const-string v4, "Copy audio data failure for external source detection."

    .line 101
    .line 102
    invoke-direct {v2, v1, v4}, Landroid/service/voice/HotwordDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-interface {p0, v2}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;->onHotwordDetectionServiceFailure(Landroid/service/voice/HotwordDetectionServiceFailure;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 106
    .line 107
    .line 108
    goto :goto_6

    .line 109
    :catch_1
    move-exception p0

    .line 110
    :try_start_c
    const-string v2, "DetectorSession"

    .line 111
    .line 112
    new-instance v4, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    const-string v5, "Failed to report onHotwordDetectionServiceFailure status: "

    .line 118
    .line 119
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    .line 133
    .line 134
    .line 135
    move-result p0

    .line 136
    if-eq p0, v1, :cond_2

    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    .line 139
    .line 140
    .line 141
    move-result p0

    .line 142
    iget v1, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    .line 143
    .line 144
    const/16 v2, 0xf

    .line 145
    .line 146
    invoke-static {p0, v2, v1}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    .line 147
    .line 148
    .line 149
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 150
    .line 151
    .line 152
    :goto_6
    iget-object p0, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    .line 153
    .line 154
    monitor-enter p0

    .line 155
    :try_start_d
    iput-boolean v3, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mPerformingExternalSourceHotwordDetection:Z

    .line 156
    .line 157
    const-string/jumbo v1, "start external source"

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v1}, Lcom/android/server/voiceinteraction/DetectorSession;->closeExternalAudioStreamLocked(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    monitor-exit p0

    .line 164
    :goto_7
    return-void

    .line 165
    :catchall_6
    move-exception v0

    .line 166
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 167
    throw v0

    .line 168
    :goto_8
    iget-object v1, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    .line 169
    .line 170
    monitor-enter v1

    .line 171
    :try_start_e
    iput-boolean v3, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mPerformingExternalSourceHotwordDetection:Z

    .line 172
    .line 173
    const-string/jumbo v2, "start external source"

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v2}, Lcom/android/server/voiceinteraction/DetectorSession;->closeExternalAudioStreamLocked(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 180
    throw p0

    .line 181
    :catchall_7
    move-exception p0

    .line 182
    :try_start_f
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 183
    throw p0
.end method
