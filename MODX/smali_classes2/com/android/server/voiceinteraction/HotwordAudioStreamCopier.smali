.class public final Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final DEFAULT_COPY_BUFFER_LENGTH_BYTES:I = 0x8000

.field static final MAX_COPY_BUFFER_LENGTH_BYTES:I = 0x10000


# instance fields
.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mDetectorType:I

.field public final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field public final mVoiceInteractorAttributionTag:Ljava/lang/String;

.field public final mVoiceInteractorPackageName:Ljava/lang/String;

.field public final mVoiceInteractorUid:I


# direct methods
.method public constructor <init>(Landroid/app/AppOpsManager;IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 11
    .line 12
    iput p2, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mDetectorType:I

    .line 13
    .line 14
    iput p3, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorUid:I

    .line 15
    .line 16
    iput-object p4, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorPackageName:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p5, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorAttributionTag:Ljava/lang/String;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final startCopyingAudioStreams(Landroid/service/voice/HotwordDetectedResult;Z)Landroid/service/voice/HotwordDetectedResult;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/service/voice/HotwordDetectedResult;->getAudioStreams()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    iget v5, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorUid:I

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    iget v3, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mDetectorType:I

    .line 17
    .line 18
    const/4 v4, 0x7

    .line 19
    const/4 v7, 0x0

    .line 20
    const/4 v8, 0x0

    .line 21
    invoke-static/range {v3 .. v8}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeAudioEgressEvent(IIIIII)V

    .line 22
    .line 23
    .line 24
    return-object p1

    .line 25
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v8

    .line 29
    new-instance v9, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 36
    .line 37
    .line 38
    new-instance v10, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const/4 v11, 0x0

    .line 52
    move v4, v11

    .line 53
    move v12, v4

    .line 54
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_4

    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    move-object v13, v2

    .line 65
    check-cast v13, Landroid/service/voice/HotwordAudioStream;

    .line 66
    .line 67
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createReliablePipe()[Landroid/os/ParcelFileDescriptor;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    aget-object v3, v2, v11

    .line 72
    .line 73
    const/4 v5, 0x1

    .line 74
    aget-object v14, v2, v5

    .line 75
    .line 76
    invoke-virtual {v13}, Landroid/service/voice/HotwordAudioStream;->buildUpon()Landroid/service/voice/HotwordAudioStream$Builder;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v2, v3}, Landroid/service/voice/HotwordAudioStream$Builder;->setAudioStreamParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroid/service/voice/HotwordAudioStream$Builder;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v2}, Landroid/service/voice/HotwordAudioStream$Builder;->build()Landroid/service/voice/HotwordAudioStream;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    invoke-virtual {v13}, Landroid/service/voice/HotwordAudioStream;->getMetadata()Landroid/os/PersistableBundle;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-static {v2}, Landroid/service/voice/HotwordDetectedResult;->getParcelableSize(Landroid/os/Parcelable;)I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    add-int v15, v3, v4

    .line 100
    .line 101
    const-string v3, "android.service.voice.key.AUDIO_STREAM_COPY_BUFFER_LENGTH_BYTES"

    .line 102
    .line 103
    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    const v16, 0x8000

    .line 108
    .line 109
    .line 110
    if-eqz v4, :cond_2

    .line 111
    .line 112
    const/4 v4, -0x1

    .line 113
    invoke-virtual {v2, v3, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    if-lt v7, v5, :cond_1

    .line 118
    .line 119
    const/high16 v2, 0x10000

    .line 120
    .line 121
    if-le v7, v2, :cond_3

    .line 122
    .line 123
    :cond_1
    const/16 v3, 0x9

    .line 124
    .line 125
    iget v4, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorUid:I

    .line 126
    .line 127
    iget v2, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mDetectorType:I

    .line 128
    .line 129
    const/4 v5, 0x0

    .line 130
    const/4 v6, 0x0

    .line 131
    move v11, v7

    .line 132
    move v7, v8

    .line 133
    invoke-static/range {v2 .. v7}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeAudioEgressEvent(IIIIII)V

    .line 134
    .line 135
    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string v3, "Attempted to set an invalid copy buffer length ("

    .line 139
    .line 140
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v3, ") for: "

    .line 147
    .line 148
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    const-string v3, "HotwordAudioStreamCopier"

    .line 159
    .line 160
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    :cond_2
    move/from16 v7, v16

    .line 164
    .line 165
    :cond_3
    invoke-virtual {v13}, Landroid/service/voice/HotwordAudioStream;->getInitialAudio()[B

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    array-length v2, v2

    .line 170
    add-int/2addr v12, v2

    .line 171
    invoke-virtual {v13}, Landroid/service/voice/HotwordAudioStream;->getAudioStreamParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    new-instance v3, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;

    .line 176
    .line 177
    invoke-direct {v3, v2, v14, v7}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;-><init>(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;I)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move v4, v15

    .line 184
    const/4 v11, 0x0

    .line 185
    goto/16 :goto_0

    .line 186
    .line 187
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    const-string v2, "HotwordDetectedResult@"

    .line 190
    .line 191
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    iget-object v7, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 206
    .line 207
    new-instance v8, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;

    .line 208
    .line 209
    move-object v0, v8

    .line 210
    move-object/from16 v1, p0

    .line 211
    .line 212
    move-object v3, v10

    .line 213
    move v5, v12

    .line 214
    move/from16 v6, p2

    .line 215
    .line 216
    invoke-direct/range {v0 .. v6}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;-><init>(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;Ljava/lang/String;Ljava/util/List;IIZ)V

    .line 217
    .line 218
    .line 219
    invoke-interface {v7, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual/range {p1 .. p1}, Landroid/service/voice/HotwordDetectedResult;->buildUpon()Landroid/service/voice/HotwordDetectedResult$Builder;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-virtual {v0, v9}, Landroid/service/voice/HotwordDetectedResult$Builder;->setAudioStreams(Ljava/util/List;)Landroid/service/voice/HotwordDetectedResult$Builder;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {v0}, Landroid/service/voice/HotwordDetectedResult$Builder;->build()Landroid/service/voice/HotwordDetectedResult;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    return-object v0
.end method
