.class public final Lcom/samsung/android/server/audio/MicModeManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final AVAILABLE_STREAM_TYPES:Ljava/util/List;

.field public static mCr:Landroid/content/ContentResolver;

.field public static sInstance:Lcom/samsung/android/server/audio/MicModeManager;

.field public static final sMicModeLogger:Lcom/android/server/utils/EventLogger;


# instance fields
.field public mCurAudioMode:I

.field public mCurCallDevice:I

.field public mIsMicModeOn:Z

.field public final mMicModeType:Lcom/samsung/android/server/audio/MicModeType;

.field public mPackageName:Ljava/lang/String;

.field public mStates:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    filled-new-array {v0, v1}, [Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/samsung/android/server/audio/MicModeManager;->AVAILABLE_STREAM_TYPES:Ljava/util/List;

    .line 20
    .line 21
    new-instance v0, Lcom/android/server/utils/EventLogger;

    .line 22
    .line 23
    const/16 v1, 0x1e

    .line 24
    .line 25
    const-string v2, "Mic mode history"

    .line 26
    .line 27
    invoke-direct {v0, v1, v2}, Lcom/android/server/utils/EventLogger;-><init>(ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/samsung/android/server/audio/MicModeManager;->sMicModeLogger:Lcom/android/server/utils/EventLogger;

    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-string v0, "MicModeManager"

    .line 2
    .line 3
    const-string v1, "initMicModeType() mMicModeType : "

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, ""

    .line 9
    .line 10
    iput-object v2, p0, Lcom/samsung/android/server/audio/MicModeManager;->mPackageName:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    iput v2, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurCallDevice:I

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    iput v2, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurAudioMode:I

    .line 17
    .line 18
    iput v2, p0, Lcom/samsung/android/server/audio/MicModeManager;->mStates:I

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    sput-object p1, Lcom/samsung/android/server/audio/MicModeManager;->mCr:Landroid/content/ContentResolver;

    .line 25
    .line 26
    :try_start_0
    invoke-static {}, Lcom/samsung/android/server/audio/MicModeType;->getMicModeType()Lcom/samsung/android/server/audio/MicModeType;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mMicModeType:Lcom/samsung/android/server/audio/MicModeType;

    .line 31
    .line 32
    new-instance p0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    const-string p0, "initMicModeType: RuntimeException"

    .line 49
    .line 50
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_1
    const-string p0, "initMicModeType: NullPointerException"

    .line 55
    .line 56
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/MicModeManager;
    .locals 2

    .line 1
    const-class v0, Lcom/samsung/android/server/audio/MicModeManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/samsung/android/server/audio/MicModeManager;->sInstance:Lcom/samsung/android/server/audio/MicModeManager;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/samsung/android/server/audio/MicModeManager;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/samsung/android/server/audio/MicModeManager;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/samsung/android/server/audio/MicModeManager;->sInstance:Lcom/samsung/android/server/audio/MicModeManager;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object p0, Lcom/samsung/android/server/audio/MicModeManager;->sInstance:Lcom/samsung/android/server/audio/MicModeManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object p0

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw p0
.end method


# virtual methods
.method public final isMicModeSupported()Z
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "isMicModeSupported() MicModeType: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mMicModeType:Lcom/samsung/android/server/audio/MicModeType;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, ", audioMode: "

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v2, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurAudioMode:I

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, ", curDevice: "

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v2, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurCallDevice:I

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, ", translationState: "

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const/16 v2, 0x10

    .line 39
    .line 40
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/audio/MicModeManager;->isStateEnabled(I)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v2, ", dexState: "

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const/4 v2, 0x4

    .line 53
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/audio/MicModeManager;->isStateEnabled(I)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v3, ", smartViewState: "

    .line 61
    .line 62
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const/16 v3, 0x8

    .line 66
    .line 67
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/audio/MicModeManager;->isStateEnabled(I)Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v4, ", gameChatState: "

    .line 75
    .line 76
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const/16 v4, 0x20

    .line 80
    .line 81
    invoke-virtual {p0, v4}, Lcom/samsung/android/server/audio/MicModeManager;->isStateEnabled(I)Z

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v5, ", wifiCallState: "

    .line 89
    .line 90
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const/4 v5, 0x1

    .line 94
    invoke-virtual {p0, v5}, Lcom/samsung/android/server/audio/MicModeManager;->isStateEnabled(I)Z

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v6, ", videoCallState: "

    .line 102
    .line 103
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const/4 v6, 0x2

    .line 107
    invoke-virtual {p0, v6}, Lcom/samsung/android/server/audio/MicModeManager;->isStateEnabled(I)Z

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v7, ", satelliteCallState: "

    .line 115
    .line 116
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const/16 v7, 0x40

    .line 120
    .line 121
    invoke-virtual {p0, v7}, Lcom/samsung/android/server/audio/MicModeManager;->isStateEnabled(I)Z

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v7, ", antiHowlingState: "

    .line 129
    .line 130
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const/16 v7, 0x80

    .line 134
    .line 135
    invoke-virtual {p0, v7}, Lcom/samsung/android/server/audio/MicModeManager;->isStateEnabled(I)Z

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    const-string v7, "MicModeManager"

    .line 147
    .line 148
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    iget v0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurAudioMode:I

    .line 152
    .line 153
    iget v8, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurCallDevice:I

    .line 154
    .line 155
    iget v9, p0, Lcom/samsung/android/server/audio/MicModeManager;->mStates:I

    .line 156
    .line 157
    invoke-virtual {v1, v0, v8, v9}, Lcom/samsung/android/server/audio/MicModeType;->isMicModeSupported(III)Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    const/4 v1, 0x0

    .line 162
    if-eqz v0, :cond_4

    .line 163
    .line 164
    const/16 v0, 0xd0

    .line 165
    .line 166
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/audio/MicModeManager;->isStateEnabled(I)Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-eqz v0, :cond_0

    .line 171
    .line 172
    return v1

    .line 173
    :cond_0
    iget v0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurCallDevice:I

    .line 174
    .line 175
    if-ne v0, v6, :cond_3

    .line 176
    .line 177
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/audio/MicModeManager;->isStateEnabled(I)Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eqz v0, :cond_1

    .line 182
    .line 183
    return v1

    .line 184
    :cond_1
    iget v0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurAudioMode:I

    .line 185
    .line 186
    const/4 v2, 0x3

    .line 187
    if-ne v0, v2, :cond_3

    .line 188
    .line 189
    invoke-virtual {p0, v5}, Lcom/samsung/android/server/audio/MicModeManager;->isStateEnabled(I)Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-nez v0, :cond_3

    .line 194
    .line 195
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/audio/MicModeManager;->isStateEnabled(I)Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-nez v0, :cond_2

    .line 200
    .line 201
    invoke-virtual {p0, v4}, Lcom/samsung/android/server/audio/MicModeManager;->isStateEnabled(I)Z

    .line 202
    .line 203
    .line 204
    move-result p0

    .line 205
    if-eqz p0, :cond_3

    .line 206
    .line 207
    :cond_2
    return v1

    .line 208
    :cond_3
    const-string p0, "isMicModeSupported() MicMode ON"

    .line 209
    .line 210
    invoke-static {v7, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    return v5

    .line 214
    :cond_4
    return v1
.end method

.method public final isStateEnabled(I)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mStates:I

    .line 2
    .line 3
    and-int/2addr p0, p1

    .line 4
    if-lez p0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
.end method

.method public final setMicMode(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget p1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurAudioMode:I

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mMicModeType:Lcom/samsung/android/server/audio/MicModeType;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    const/4 v0, 0x3

    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/audio/MicModeManager;->isStateEnabled(I)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget p1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurAudioMode:I

    .line 22
    .line 23
    if-ne p1, v0, :cond_3

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/samsung/android/server/audio/MicModeType;->getVoipCallMicMode()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iget-object v0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mPackageName:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p0, p1, v0, v2}, Lcom/samsung/android/server/audio/MicModeManager;->updateMicModeSettings(ILjava/lang/String;Z)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/samsung/android/server/audio/MicModeType;->getCallMicMode()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iget-object v0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mPackageName:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p0, p1, v0, v2}, Lcom/samsung/android/server/audio/MicModeManager;->updateMicModeSettings(ILjava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    const-string p1, ""

    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, v0, p1, v0}, Lcom/samsung/android/server/audio/MicModeManager;->updateMicModeSettings(ILjava/lang/String;Z)V

    .line 49
    .line 50
    .line 51
    :cond_3
    :goto_1
    return-void
.end method

.method public final updateAudioDevice()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "updateAudioDevice() audioMode: "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget v1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurAudioMode:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ", curDevice: "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget v1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurCallDevice:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "MicModeManager"

    .line 29
    .line 30
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MicModeManager;->isMicModeSupported()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/audio/MicModeManager;->setMicMode(Z)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final updateAudioMode(ILjava/lang/String;)V
    .locals 3

    .line 1
    iput-object p2, p0, Lcom/samsung/android/server/audio/MicModeManager;->mPackageName:Ljava/lang/String;

    .line 2
    .line 3
    iput p1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurAudioMode:I

    .line 4
    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v0, "updateAudioMode() audioMode="

    .line 8
    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget v0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurAudioMode:I

    .line 14
    .line 15
    const-string v1, ", caller="

    .line 16
    .line 17
    const-string v2, ", curCallDevice="

    .line 18
    .line 19
    invoke-static {v0, v1, p2, v2, p1}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 20
    .line 21
    .line 22
    iget p2, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurCallDevice:I

    .line 23
    .line 24
    const-string v0, "MicModeManager"

    .line 25
    .line 26
    invoke-static {p1, p2, v0}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget p1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurAudioMode:I

    .line 30
    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    const-string p2, ""

    .line 35
    .line 36
    invoke-virtual {p0, p1, p2, p1}, Lcom/samsung/android/server/audio/MicModeManager;->updateMicModeSettings(ILjava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    iput-object p2, p0, Lcom/samsung/android/server/audio/MicModeManager;->mPackageName:Ljava/lang/String;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MicModeManager;->isMicModeSupported()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/MicModeManager;->setMicMode(Z)V

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method

.method public final updateMicModeSettings(ILjava/lang/String;Z)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mIsMicModeOn:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "MicModeManager"

    .line 5
    .line 6
    if-eq v0, p3, :cond_0

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/samsung/android/server/audio/MicModeManager;->mIsMicModeOn:Z

    .line 9
    .line 10
    const-string/jumbo v0, "updateMicModeSettings is enabled "

    .line 11
    .line 12
    .line 13
    const-string v3, ", effect:"

    .line 14
    .line 15
    const-string v4, ", "

    .line 16
    .line 17
    invoke-static {p1, v0, v3, v4, p3}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object p0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mPackageName:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    sget-object v0, Lcom/samsung/android/server/audio/MicModeManager;->sMicModeLogger:Lcom/android/server/utils/EventLogger;

    .line 31
    .line 32
    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/utils/EventLogger;->enqueueAndLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    const-string/jumbo p0, "mic_mode_enable"

    .line 36
    .line 37
    .line 38
    if-eqz p3, :cond_1

    .line 39
    .line 40
    new-instance p3, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string/jumbo v0, "updateMicModeSettings() enable, effect:"

    .line 43
    .line 44
    .line 45
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v0, ", caller:"

    .line 52
    .line 53
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    invoke-static {v2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    sget-object p3, Lcom/samsung/android/server/audio/MicModeManager;->mCr:Landroid/content/ContentResolver;

    .line 67
    .line 68
    const/4 v0, 0x1

    .line 69
    invoke-static {p3, p0, v0}, Lcom/samsung/android/server/audio/utils/AudioUtils;->setSettingsInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 70
    .line 71
    .line 72
    sget-object p0, Lcom/samsung/android/server/audio/MicModeManager;->mCr:Landroid/content/ContentResolver;

    .line 73
    .line 74
    const-string/jumbo p3, "mic_mode_effect"

    .line 75
    .line 76
    .line 77
    invoke-static {p0, p3, p1}, Lcom/samsung/android/server/audio/utils/AudioUtils;->setSettingsInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 78
    .line 79
    .line 80
    sget-object p0, Lcom/samsung/android/server/audio/MicModeManager;->mCr:Landroid/content/ContentResolver;

    .line 81
    .line 82
    const-string/jumbo p1, "mic_mode_package"

    .line 83
    .line 84
    .line 85
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 86
    .line 87
    .line 88
    move-result-wide v0

    .line 89
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .line 91
    .line 92
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catchall_0
    move-exception p0

    .line 97
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 98
    .line 99
    .line 100
    throw p0

    .line 101
    :cond_1
    const-string/jumbo p1, "updateMicModeSettings() disable"

    .line 102
    .line 103
    .line 104
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    sget-object p1, Lcom/samsung/android/server/audio/MicModeManager;->mCr:Landroid/content/ContentResolver;

    .line 108
    .line 109
    invoke-static {p1, p0, v1}, Lcom/samsung/android/server/audio/utils/AudioUtils;->setSettingsInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    :goto_0
    return-void
.end method

.method public final updateState(IZ)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mStates:I

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    or-int/2addr v0, p1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    not-int v1, p1

    .line 8
    and-int/2addr v0, v1

    .line 9
    :goto_0
    iput v0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mStates:I

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    if-ne p1, v0, :cond_1

    .line 13
    .line 14
    sget-object p1, Lcom/samsung/android/server/audio/MicModeManager;->mCr:Landroid/content/ContentResolver;

    .line 15
    .line 16
    const-string/jumbo v0, "mic_mode_wificall"

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v0, p2}, Lcom/samsung/android/server/audio/utils/AudioUtils;->setSettingsInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MicModeManager;->isMicModeSupported()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/MicModeManager;->setMicMode(Z)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MicModeManager;->isMicModeSupported()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_2

    .line 35
    .line 36
    const-string p1, ""

    .line 37
    .line 38
    const/4 p2, 0x0

    .line 39
    invoke-virtual {p0, p2, p1, p2}, Lcom/samsung/android/server/audio/MicModeManager;->updateMicModeSettings(ILjava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    if-nez p2, :cond_3

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/audio/MicModeManager;->setMicMode(Z)V

    .line 46
    .line 47
    .line 48
    :cond_3
    :goto_1
    return-void
.end method
