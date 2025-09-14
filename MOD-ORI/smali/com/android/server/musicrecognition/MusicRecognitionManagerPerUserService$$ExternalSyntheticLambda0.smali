.class public final synthetic Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;

.field public final synthetic f$1:Landroid/media/musicrecognition/RecognitionRequest;

.field public final synthetic f$2:Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;

.field public final synthetic f$3:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;Landroid/media/musicrecognition/RecognitionRequest;Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$$ExternalSyntheticLambda0;->f$1:Landroid/media/musicrecognition/RecognitionRequest;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$$ExternalSyntheticLambda0;->f$2:Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$$ExternalSyntheticLambda0;->f$3:Landroid/os/ParcelFileDescriptor;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$$ExternalSyntheticLambda0;->f$1:Landroid/media/musicrecognition/RecognitionRequest;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$$ExternalSyntheticLambda0;->f$2:Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$$ExternalSyntheticLambda0;->f$3:Landroid/os/ParcelFileDescriptor;

    .line 8
    .line 9
    check-cast p1, Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/media/musicrecognition/RecognitionRequest;->getMaxAudioLengthSeconds()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/16 v4, 0x18

    .line 19
    .line 20
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    const-string v4, "MusicRecognitionManagerPerUserService"

    .line 25
    .line 26
    if-gtz v3, :cond_0

    .line 27
    .line 28
    const-string p1, "No audio requested. Closing stream."

    .line 29
    .line 30
    invoke-static {v4, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 34
    .line 35
    .line 36
    invoke-interface {v2}, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;->onAudioStreamClosed()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4

    .line 37
    .line 38
    .line 39
    goto/16 :goto_4

    .line 40
    .line 41
    :catch_0
    move-exception p0

    .line 42
    const-string p1, "Problem closing stream."

    .line 43
    .line 44
    invoke-static {v4, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    goto :goto_4

    .line 48
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->startRecordAudioOp(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/media/musicrecognition/RecognitionRequest;->getAudioFormat()Landroid/media/AudioFormat;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v5}, Landroid/media/AudioFormat;->getSampleRate()I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    mul-int/lit8 v5, v5, 0x2

    .line 60
    .line 61
    mul-int/2addr v5, v3

    .line 62
    new-instance v6, Landroid/media/AudioRecord;

    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/media/musicrecognition/RecognitionRequest;->getAudioAttributes()Landroid/media/AudioAttributes;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    invoke-virtual {v1}, Landroid/media/musicrecognition/RecognitionRequest;->getAudioFormat()Landroid/media/AudioFormat;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    invoke-virtual {v1}, Landroid/media/musicrecognition/RecognitionRequest;->getCaptureSession()I

    .line 73
    .line 74
    .line 75
    move-result v9

    .line 76
    invoke-direct {v6, v7, v8, v5, v9}, Landroid/media/AudioRecord;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)V

    .line 77
    .line 78
    .line 79
    :try_start_2
    new-instance v5, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .line 80
    .line 81
    invoke-direct {v5, p0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    .line 83
    .line 84
    :try_start_3
    invoke-virtual {v0, v1, v3, v6, v5}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->streamAudio(Landroid/media/musicrecognition/RecognitionRequest;ILandroid/media/AudioRecord;Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 85
    .line 86
    .line 87
    :try_start_4
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 88
    .line 89
    .line 90
    :goto_0
    invoke-virtual {v6}, Landroid/media/AudioRecord;->release()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, p1}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->finishRecordAudioOp(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :try_start_5
    invoke-interface {v2}, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;->onAudioStreamClosed()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    .line 97
    .line 98
    .line 99
    goto :goto_4

    .line 100
    :catchall_0
    move-exception p0

    .line 101
    goto :goto_3

    .line 102
    :catch_1
    move-exception p0

    .line 103
    goto :goto_2

    .line 104
    :catchall_1
    move-exception p0

    .line 105
    :try_start_6
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :catchall_2
    move-exception v1

    .line 110
    :try_start_7
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 111
    .line 112
    .line 113
    :goto_1
    throw p0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 114
    :goto_2
    :try_start_8
    const-string v1, "Audio streaming stopped."

    .line 115
    .line 116
    invoke-static {v4, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :goto_3
    invoke-virtual {v6}, Landroid/media/AudioRecord;->release()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, p1}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->finishRecordAudioOp(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    :try_start_9
    invoke-interface {v2}, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;->onAudioStreamClosed()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2

    .line 127
    .line 128
    .line 129
    :catch_2
    throw p0

    .line 130
    :catch_3
    move-exception p0

    .line 131
    new-instance p1, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    const-string v1, "RECORD_AUDIO op not permitted on behalf of "

    .line 134
    .line 135
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget-object v0, v0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 139
    .line 140
    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-static {v4, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    .line 153
    .line 154
    const/4 p0, 0x7

    .line 155
    :try_start_a
    invoke-interface {v2, p0}, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;->onRecognitionFailed(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_4

    .line 156
    .line 157
    .line 158
    :catch_4
    :goto_4
    return-void
.end method
