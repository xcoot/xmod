.class public final Lcom/android/server/voiceinteraction/DetectorSession$1;
.super Landroid/os/IRemoteCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/voiceinteraction/DetectorSession;

.field public final synthetic val$future:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method public constructor <init>(Lcom/android/server/voiceinteraction/DetectorSession;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/voiceinteraction/DetectorSession$1;->val$future:Lcom/android/internal/infra/AndroidFuture;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final sendResult(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession$1;->val$future:Lcom/android/internal/infra/AndroidFuture;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mUpdateStateAfterStartFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const-string v2, "DetectorSession"

    .line 17
    .line 18
    const/4 v3, 0x3

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const-string p1, "call callback after timeout"

    .line 22
    .line 23
    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eq p1, v3, :cond_0

    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    .line 41
    .line 42
    iget p0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    .line 43
    .line 44
    const/4 v0, 0x5

    .line 45
    invoke-static {p1, v0, p0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void

    .line 49
    :cond_1
    const/16 v0, 0x64

    .line 50
    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    const/4 v5, 0x0

    .line 56
    const/4 v6, 0x2

    .line 57
    if-nez p1, :cond_2

    .line 58
    .line 59
    new-instance p1, Landroid/util/Pair;

    .line 60
    .line 61
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-direct {p1, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_2
    const-string v7, "initialization_status"

    .line 70
    .line 71
    invoke-virtual {p1, v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    invoke-static {}, Landroid/service/voice/HotwordDetectionService;->getMaxCustomInitializationStatus()I

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    if-le p1, v7, :cond_4

    .line 80
    .line 81
    new-instance v7, Landroid/util/Pair;

    .line 82
    .line 83
    if-ne p1, v0, :cond_3

    .line 84
    .line 85
    move p1, v6

    .line 86
    goto :goto_0

    .line 87
    :cond_3
    move p1, v3

    .line 88
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-direct {v7, v4, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    move-object p1, v7

    .line 96
    goto :goto_2

    .line 97
    :cond_4
    if-nez p1, :cond_5

    .line 98
    .line 99
    move v0, v5

    .line 100
    goto :goto_1

    .line 101
    :cond_5
    move v0, v1

    .line 102
    :goto_1
    new-instance v4, Landroid/util/Pair;

    .line 103
    .line 104
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-direct {v4, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    move-object p1, v4

    .line 116
    :goto_2
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v0, Ljava/lang/Integer;

    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast p1, Ljava/lang/Integer;

    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    :try_start_0
    iget-object v4, p0, Lcom/android/server/voiceinteraction/DetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    .line 133
    .line 134
    iget-object v4, v4, Lcom/android/server/voiceinteraction/DetectorSession;->mCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 135
    .line 136
    invoke-interface {v4, v0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;->onStatusReported(I)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-eq v0, v3, :cond_9

    .line 146
    .line 147
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    iget-object v4, p0, Lcom/android/server/voiceinteraction/DetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    .line 154
    .line 155
    iget v4, v4, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    .line 156
    .line 157
    if-eq v0, v1, :cond_7

    .line 158
    .line 159
    if-eq v0, v6, :cond_6

    .line 160
    .line 161
    move v1, v5

    .line 162
    goto :goto_3

    .line 163
    :cond_6
    move v1, v6

    .line 164
    :cond_7
    :goto_3
    const/16 v0, 0x1af

    .line 165
    .line 166
    invoke-static {v0, v1, p1, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .line 168
    .line 169
    goto :goto_4

    .line 170
    :catch_0
    move-exception p1

    .line 171
    const-string v0, "Failed to report initialization status: "

    .line 172
    .line 173
    invoke-static {v0, p1, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    iget-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    .line 177
    .line 178
    invoke-virtual {p1}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    if-eq p1, v3, :cond_8

    .line 183
    .line 184
    iget-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    .line 185
    .line 186
    invoke-virtual {p1}, Lcom/android/server/voiceinteraction/DetectorSession;->getDetectorType()I

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    .line 191
    .line 192
    iget v0, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractionServiceUid:I

    .line 193
    .line 194
    const/16 v1, 0xe

    .line 195
    .line 196
    invoke-static {p1, v1, v0}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeDetectorEvent(III)V

    .line 197
    .line 198
    .line 199
    :cond_8
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/DetectorSession;

    .line 200
    .line 201
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DetectorSession;->notifyOnDetectorRemoteException()V

    .line 202
    .line 203
    .line 204
    :cond_9
    :goto_4
    return-void
.end method
