.class public final Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final mAudioSink:Landroid/os/ParcelFileDescriptor;

.field public final mAudioSource:Landroid/os/ParcelFileDescriptor;

.field public final mCopyBufferLength:I

.field public final mDetectorType:I

.field public final mStreamTaskId:Ljava/lang/String;

.field public volatile mTotalCopiedBytes:I

.field public final mUid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;->mTotalCopiedBytes:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;->mStreamTaskId:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;->mAudioSource:Landroid/os/ParcelFileDescriptor;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;->mAudioSink:Landroid/os/ParcelFileDescriptor;

    .line 12
    .line 13
    iput p4, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;->mCopyBufferLength:I

    .line 14
    .line 15
    iput p5, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;->mDetectorType:I

    .line 16
    .line 17
    iput p6, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;->mUid:I

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 12

    .line 1
    const-string v0, "HotwordAudioStreamCopier"

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v3, "Copy-"

    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v3, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;->mStreamTaskId:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    :try_start_0
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 28
    .line 29
    iget-object v3, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;->mAudioSource:Landroid/os/ParcelFileDescriptor;

    .line 30
    .line 31
    invoke-direct {v2, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 32
    .line 33
    .line 34
    :try_start_1
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .line 35
    .line 36
    iget-object v4, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;->mAudioSink:Landroid/os/ParcelFileDescriptor;

    .line 37
    .line 38
    invoke-direct {v3, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    .line 40
    .line 41
    :try_start_2
    iget v4, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;->mCopyBufferLength:I

    .line 42
    .line 43
    new-array v4, v4, [B

    .line 44
    .line 45
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_1

    .line 50
    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    iget-object v5, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;->mStreamTaskId:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v5, ": SingleAudioStreamCopyTask task was interrupted"

    .line 62
    .line 63
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    :goto_1
    move-object v1, v2

    .line 76
    goto/16 :goto_6

    .line 77
    .line 78
    :catch_0
    move-exception v4

    .line 79
    goto :goto_4

    .line 80
    :cond_1
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    if-gez v5, :cond_2

    .line 85
    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    iget-object v5, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;->mStreamTaskId:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v5, ": Reached end of audio stream"

    .line 97
    .line 98
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    .line 107
    .line 108
    :goto_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 109
    .line 110
    .line 111
    :goto_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 112
    .line 113
    .line 114
    goto :goto_5

    .line 115
    :cond_2
    if-lez v5, :cond_0

    .line 116
    .line 117
    const/4 v6, 0x0

    .line 118
    :try_start_3
    invoke-virtual {v3, v4, v6, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 119
    .line 120
    .line 121
    iget v6, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;->mTotalCopiedBytes:I

    .line 122
    .line 123
    add-int/2addr v6, v5

    .line 124
    iput v6, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;->mTotalCopiedBytes:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :catchall_1
    move-exception p0

    .line 128
    move-object v3, v1

    .line 129
    goto :goto_1

    .line 130
    :catch_1
    move-exception v4

    .line 131
    move-object v3, v1

    .line 132
    goto :goto_4

    .line 133
    :catchall_2
    move-exception p0

    .line 134
    move-object v3, v1

    .line 135
    goto :goto_6

    .line 136
    :catch_2
    move-exception v4

    .line 137
    move-object v2, v1

    .line 138
    move-object v3, v2

    .line 139
    :goto_4
    :try_start_4
    iget-object v5, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;->mAudioSource:Landroid/os/ParcelFileDescriptor;

    .line 140
    .line 141
    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    invoke-virtual {v5, v6}, Landroid/os/ParcelFileDescriptor;->closeWithError(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget-object v5, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;->mAudioSink:Landroid/os/ParcelFileDescriptor;

    .line 149
    .line 150
    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    invoke-virtual {v5, v6}, Landroid/os/ParcelFileDescriptor;->closeWithError(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    iget-object v6, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;->mStreamTaskId:Ljava/lang/String;

    .line 163
    .line 164
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string v6, ": Failed to copy audio stream"

    .line 168
    .line 169
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    invoke-static {v0, v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    .line 178
    .line 179
    iget v6, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;->mDetectorType:I

    .line 180
    .line 181
    iget v8, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;->mUid:I

    .line 182
    .line 183
    const/16 v7, 0xa

    .line 184
    .line 185
    const/4 v9, 0x0

    .line 186
    const/4 v10, 0x0

    .line 187
    const/4 v11, 0x0

    .line 188
    invoke-static/range {v6 .. v11}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeAudioEgressEvent(IIIIII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 189
    .line 190
    .line 191
    if-eqz v2, :cond_3

    .line 192
    .line 193
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 194
    .line 195
    .line 196
    :cond_3
    if-eqz v3, :cond_4

    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_4
    :goto_5
    return-object v1

    .line 200
    :goto_6
    if-eqz v1, :cond_5

    .line 201
    .line 202
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 203
    .line 204
    .line 205
    :cond_5
    if-eqz v3, :cond_6

    .line 206
    .line 207
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 208
    .line 209
    .line 210
    :cond_6
    throw p0
.end method
