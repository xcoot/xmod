.class public final Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mCopyTaskInfos:Ljava/util/List;

.field public final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field public final mResultTaskId:Ljava/lang/String;

.field public final mShouldNotifyAppOpsManager:Z

.field public final mTotalInitialAudioSizeBytes:I

.field public final mTotalMetadataSizeBytes:I

.field public final synthetic this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;


# direct methods
.method public constructor <init>(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;Ljava/lang/String;Ljava/util/List;IIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    .line 5
    .line 6
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mResultTaskId:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p3, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mCopyTaskInfos:Ljava/util/List;

    .line 15
    .line 16
    iput p4, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mTotalMetadataSizeBytes:I

    .line 17
    .line 18
    iput p5, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mTotalInitialAudioSizeBytes:I

    .line 19
    .line 20
    iput-boolean p6, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mShouldNotifyAppOpsManager:Z

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final bestEffortPropagateError(Ljava/lang/String;)V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mCopyTaskInfos:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;

    .line 18
    .line 19
    iget-object v2, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;->mSource:Landroid/os/ParcelFileDescriptor;

    .line 20
    .line 21
    invoke-virtual {v2, p1}, Landroid/os/ParcelFileDescriptor;->closeWithError(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;->mSink:Landroid/os/ParcelFileDescriptor;

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Landroid/os/ParcelFileDescriptor;->closeWithError(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    .line 33
    .line 34
    iget v0, p1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mDetectorType:I

    .line 35
    .line 36
    iget v2, p1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorUid:I

    .line 37
    .line 38
    iget-object p1, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mCopyTaskInfos:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    const/16 v1, 0xa

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    const/4 v4, 0x0

    .line 48
    invoke-static/range {v0 .. v5}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeAudioEgressEvent(IIIIII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mResultTaskId:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string p0, ": Failed to propagate error"

    .line 63
    .line 64
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    const-string v0, "HotwordAudioStreamCopier"

    .line 72
    .line 73
    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    .line 75
    .line 76
    :goto_2
    return-void
.end method

.method public final run()V
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, " bytes NOT streamed), total metadata bundle size bytes: "

    .line 4
    .line 5
    const-string v3, " (including "

    .line 6
    .line 7
    const-string v4, "HotwordAudioStreamCopier"

    .line 8
    .line 9
    const-string v5, "android:record_audio_hotword"

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v6, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v7, "Copy-"

    .line 18
    .line 19
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v7, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mResultTaskId:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    invoke-virtual {v0, v6}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mCopyTaskInfos:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v12

    .line 40
    new-instance v13, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v13, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    :goto_0
    if-ge v0, v12, :cond_0

    .line 47
    .line 48
    iget-object v6, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mCopyTaskInfos:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    check-cast v6, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;

    .line 55
    .line 56
    new-instance v7, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    iget-object v8, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mResultTaskId:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v8, "@"

    .line 67
    .line 68
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v15

    .line 78
    new-instance v7, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;

    .line 79
    .line 80
    iget-object v8, v6, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;->mSource:Landroid/os/ParcelFileDescriptor;

    .line 81
    .line 82
    iget-object v9, v6, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;->mSink:Landroid/os/ParcelFileDescriptor;

    .line 83
    .line 84
    iget v6, v6, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;->mCopyBufferLength:I

    .line 85
    .line 86
    iget-object v10, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    .line 87
    .line 88
    iget v11, v10, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mDetectorType:I

    .line 89
    .line 90
    iget v10, v10, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorUid:I

    .line 91
    .line 92
    move-object v14, v7

    .line 93
    move-object/from16 v16, v8

    .line 94
    .line 95
    move-object/from16 v17, v9

    .line 96
    .line 97
    move/from16 v18, v6

    .line 98
    .line 99
    move/from16 v19, v11

    .line 100
    .line 101
    move/from16 v20, v10

    .line 102
    .line 103
    invoke-direct/range {v14 .. v20}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;III)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    add-int/lit8 v0, v0, 0x1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_0
    iget-boolean v0, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mShouldNotifyAppOpsManager:Z

    .line 113
    .line 114
    if-eqz v0, :cond_1

    .line 115
    .line 116
    iget-object v0, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    .line 117
    .line 118
    iget-object v6, v0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 119
    .line 120
    iget v8, v0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorUid:I

    .line 121
    .line 122
    iget-object v9, v0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorPackageName:Ljava/lang/String;

    .line 123
    .line 124
    iget-object v10, v0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorAttributionTag:Ljava/lang/String;

    .line 125
    .line 126
    const-string v11, "Streaming hotword audio to VoiceInteractionService"

    .line 127
    .line 128
    const-string v7, "android:record_audio_hotword"

    .line 129
    .line 130
    invoke-virtual/range {v6 .. v11}, Landroid/app/AppOpsManager;->startOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-eqz v0, :cond_1

    .line 135
    .line 136
    iget-object v0, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    .line 137
    .line 138
    iget v6, v0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mDetectorType:I

    .line 139
    .line 140
    iget v8, v0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorUid:I

    .line 141
    .line 142
    const/4 v9, 0x0

    .line 143
    const/4 v10, 0x0

    .line 144
    const/4 v7, 0x4

    .line 145
    move v11, v12

    .line 146
    invoke-static/range {v6 .. v11}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeAudioEgressEvent(IIIIII)V

    .line 147
    .line 148
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    const-string v2, "Failed to obtain RECORD_AUDIO_HOTWORD permission for voice interactor with uid="

    .line 152
    .line 153
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    iget-object v2, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    .line 157
    .line 158
    iget v2, v2, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorUid:I

    .line 159
    .line 160
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v2, " packageName="

    .line 164
    .line 165
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    iget-object v2, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    .line 169
    .line 170
    iget-object v2, v2, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorPackageName:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v2, " attributionTag="

    .line 176
    .line 177
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    iget-object v2, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    .line 181
    .line 182
    iget-object v2, v2, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorAttributionTag:Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {v1, v0}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->bestEffortPropagateError(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    return-void

    .line 195
    :cond_1
    :try_start_0
    iget-object v0, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    .line 196
    .line 197
    iget v6, v0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mDetectorType:I

    .line 198
    .line 199
    iget v8, v0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorUid:I

    .line 200
    .line 201
    iget v9, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mTotalInitialAudioSizeBytes:I

    .line 202
    .line 203
    iget v10, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mTotalMetadataSizeBytes:I

    .line 204
    .line 205
    const/4 v7, 0x1

    .line 206
    move v11, v12

    .line 207
    invoke-static/range {v6 .. v11}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeAudioEgressEvent(IIIIII)V

    .line 208
    .line 209
    .line 210
    iget-object v0, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 211
    .line 212
    invoke-interface {v0, v13}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    .line 213
    .line 214
    .line 215
    iget v0, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mTotalInitialAudioSizeBytes:I

    .line 216
    .line 217
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 218
    .line 219
    .line 220
    move-result-object v6

    .line 221
    move v9, v0

    .line 222
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    if-eqz v0, :cond_2

    .line 227
    .line 228
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    check-cast v0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;

    .line 233
    .line 234
    iget v0, v0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;->mTotalCopiedBytes:I

    .line 235
    .line 236
    add-int/2addr v9, v0

    .line 237
    goto :goto_1

    .line 238
    :catchall_0
    move-exception v0

    .line 239
    goto/16 :goto_6

    .line 240
    .line 241
    :catch_0
    move-exception v0

    .line 242
    goto :goto_3

    .line 243
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    .line 247
    .line 248
    iget-object v6, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mResultTaskId:Ljava/lang/String;

    .line 249
    .line 250
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    const-string v6, ": Task was completed. Total bytes egressed: "

    .line 254
    .line 255
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    iget v6, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mTotalInitialAudioSizeBytes:I

    .line 265
    .line 266
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    iget v6, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mTotalMetadataSizeBytes:I

    .line 273
    .line 274
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .line 283
    .line 284
    iget-object v0, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    .line 285
    .line 286
    iget v6, v0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mDetectorType:I

    .line 287
    .line 288
    iget v8, v0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorUid:I

    .line 289
    .line 290
    iget v10, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mTotalMetadataSizeBytes:I

    .line 291
    .line 292
    const/4 v7, 0x2

    .line 293
    move v11, v12

    .line 294
    invoke-static/range {v6 .. v11}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeAudioEgressEvent(IIIIII)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    .line 296
    .line 297
    iget-boolean v0, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mShouldNotifyAppOpsManager:Z

    .line 298
    .line 299
    if-eqz v0, :cond_4

    .line 300
    .line 301
    iget-object v0, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    .line 302
    .line 303
    iget-object v1, v0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 304
    .line 305
    iget v2, v0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorUid:I

    .line 306
    .line 307
    iget-object v3, v0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorPackageName:Ljava/lang/String;

    .line 308
    .line 309
    :goto_2
    iget-object v0, v0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorAttributionTag:Ljava/lang/String;

    .line 310
    .line 311
    invoke-virtual {v1, v5, v2, v3, v0}, Landroid/app/AppOpsManager;->finishOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    goto :goto_5

    .line 315
    :goto_3
    :try_start_1
    iget v6, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mTotalInitialAudioSizeBytes:I

    .line 316
    .line 317
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 318
    .line 319
    .line 320
    move-result-object v7

    .line 321
    move v13, v6

    .line 322
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 323
    .line 324
    .line 325
    move-result v6

    .line 326
    if-eqz v6, :cond_3

    .line 327
    .line 328
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v6

    .line 332
    check-cast v6, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;

    .line 333
    .line 334
    iget v6, v6, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;->mTotalCopiedBytes:I

    .line 335
    .line 336
    add-int/2addr v13, v6

    .line 337
    goto :goto_4

    .line 338
    :cond_3
    iget-object v6, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    .line 339
    .line 340
    iget v7, v6, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mDetectorType:I

    .line 341
    .line 342
    iget v8, v6, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorUid:I

    .line 343
    .line 344
    iget v10, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mTotalMetadataSizeBytes:I

    .line 345
    .line 346
    const/4 v9, 0x3

    .line 347
    move v6, v7

    .line 348
    move v7, v9

    .line 349
    move v9, v13

    .line 350
    move v11, v12

    .line 351
    invoke-static/range {v6 .. v11}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeAudioEgressEvent(IIIIII)V

    .line 352
    .line 353
    .line 354
    new-instance v6, Ljava/lang/StringBuilder;

    .line 355
    .line 356
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 357
    .line 358
    .line 359
    iget-object v7, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mResultTaskId:Ljava/lang/String;

    .line 360
    .line 361
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    const-string v7, ": Task was interrupted. Total bytes egressed: "

    .line 365
    .line 366
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    iget v3, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mTotalInitialAudioSizeBytes:I

    .line 376
    .line 377
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    iget v2, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mTotalMetadataSizeBytes:I

    .line 384
    .line 385
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v2

    .line 392
    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    .line 394
    .line 395
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    invoke-virtual {v1, v0}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->bestEffortPropagateError(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 400
    .line 401
    .line 402
    iget-boolean v0, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mShouldNotifyAppOpsManager:Z

    .line 403
    .line 404
    if-eqz v0, :cond_4

    .line 405
    .line 406
    iget-object v0, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    .line 407
    .line 408
    iget-object v1, v0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 409
    .line 410
    iget v2, v0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorUid:I

    .line 411
    .line 412
    iget-object v3, v0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorPackageName:Ljava/lang/String;

    .line 413
    .line 414
    goto :goto_2

    .line 415
    :cond_4
    :goto_5
    return-void

    .line 416
    :goto_6
    iget-boolean v2, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->mShouldNotifyAppOpsManager:Z

    .line 417
    .line 418
    if-eqz v2, :cond_5

    .line 419
    .line 420
    iget-object v1, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;->this$0:Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;

    .line 421
    .line 422
    iget-object v2, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 423
    .line 424
    iget v3, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorUid:I

    .line 425
    .line 426
    iget-object v4, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorPackageName:Ljava/lang/String;

    .line 427
    .line 428
    iget-object v1, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorAttributionTag:Ljava/lang/String;

    .line 429
    .line 430
    invoke-virtual {v2, v5, v3, v4, v1}, Landroid/app/AppOpsManager;->finishOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    :cond_5
    throw v0
.end method
