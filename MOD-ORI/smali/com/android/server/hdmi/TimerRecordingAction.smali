.class public final Lcom/android/server/hdmi/TimerRecordingAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mRecordSource:[B

.field public final mRecorderAddress:I

.field public final mSourceType:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;II[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecorderAddress:I

    .line 5
    .line 6
    iput p3, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mSourceType:I

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecordSource:[B

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final handleTimerEvent(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "Timeout in invalid state:[Expected:"

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 13
    .line 14
    const-string v1, ", Actual:"

    .line 15
    .line 16
    const-string v2, "]"

    .line 17
    .line 18
    invoke-static {p0, p1, v1, v2, v0}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string p1, "TimerRecordingAction"

    .line 23
    .line 24
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 29
    .line 30
    check-cast p1, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 31
    .line 32
    iget v0, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecorderAddress:I

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-virtual {p1, v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v2, :cond_8

    .line 6
    .line 7
    iget v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 8
    .line 9
    iget v3, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecorderAddress:I

    .line 10
    .line 11
    if-eq v0, v3, :cond_0

    .line 12
    .line 13
    goto/16 :goto_3

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 16
    .line 17
    const-string v4, "TimerRecordingAction"

    .line 18
    .line 19
    iget-object v5, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 20
    .line 21
    iget p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 22
    .line 23
    if-eqz p1, :cond_6

    .line 24
    .line 25
    const/16 v6, 0x35

    .line 26
    .line 27
    if-eq p1, v6, :cond_1

    .line 28
    .line 29
    return v1

    .line 30
    :cond_1
    array-length p1, v5

    .line 31
    if-eq p1, v2, :cond_3

    .line 32
    .line 33
    array-length p1, v5

    .line 34
    const/4 v6, 0x3

    .line 35
    if-ne p1, v6, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v0, "Invalid [Timer Status Data]:"

    .line 41
    .line 42
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {v4, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_3
    :goto_0
    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 61
    .line 62
    array-length p1, v5

    .line 63
    const/4 v6, 0x4

    .line 64
    if-gt p1, v6, :cond_5

    .line 65
    .line 66
    move p1, v1

    .line 67
    :goto_1
    array-length v6, v5

    .line 68
    if-ge v1, v6, :cond_4

    .line 69
    .line 70
    rsub-int/lit8 v6, v1, 0x3

    .line 71
    .line 72
    mul-int/lit8 v6, v6, 0x8

    .line 73
    .line 74
    aget-byte v7, v5, v1

    .line 75
    .line 76
    and-int/lit16 v7, v7, 0xff

    .line 77
    .line 78
    shl-int v6, v7, v6

    .line 79
    .line 80
    or-int/2addr p1, v6

    .line 81
    add-int/lit8 v1, v1, 0x1

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_4
    invoke-virtual {v0, v3, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    .line 85
    .line 86
    .line 87
    new-instance p1, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v0, "Received [Timer Status Data]:"

    .line 90
    .line 91
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-static {v4, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 109
    .line 110
    .line 111
    return v2

    .line 112
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 113
    .line 114
    new-instance p1, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string v0, "Invalid data size:"

    .line 117
    .line 118
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-static {v5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw p0

    .line 136
    :cond_6
    aget-byte p1, v5, v1

    .line 137
    .line 138
    and-int/lit16 p1, p1, 0xff

    .line 139
    .line 140
    const/16 v6, 0x34

    .line 141
    .line 142
    if-eq p1, v6, :cond_7

    .line 143
    .line 144
    const/16 v6, 0x97

    .line 145
    .line 146
    if-eq p1, v6, :cond_7

    .line 147
    .line 148
    const/16 v6, 0xa2

    .line 149
    .line 150
    if-eq p1, v6, :cond_7

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_7
    aget-byte v1, v5, v2

    .line 154
    .line 155
    and-int/lit16 v1, v1, 0xff

    .line 156
    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    const-string v6, "[Feature Abort] for "

    .line 160
    .line 161
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string p1, " reason:"

    .line 168
    .line 169
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-static {v4, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 183
    .line 184
    invoke-virtual {v0, v3, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 188
    .line 189
    .line 190
    move v1, v2

    .line 191
    :cond_8
    :goto_3
    return v1
.end method

.method public final start()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecordSource:[B

    .line 3
    .line 4
    iget v2, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mRecorderAddress:I

    .line 5
    .line 6
    iget v3, p0, Lcom/android/server/hdmi/TimerRecordingAction;->mSourceType:I

    .line 7
    .line 8
    if-eq v3, v0, :cond_2

    .line 9
    .line 10
    const/4 v4, 0x2

    .line 11
    if-eq v3, v4, :cond_1

    .line 12
    .line 13
    const/4 v5, 0x3

    .line 14
    if-eq v3, v5, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 17
    .line 18
    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 19
    .line 20
    invoke-virtual {v1, v2, v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/16 v3, 0xa2

    .line 32
    .line 33
    invoke-static {v0, v2, v3, v1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/16 v3, 0x34

    .line 43
    .line 44
    invoke-static {v0, v2, v3, v1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const/16 v3, 0x97

    .line 54
    .line 55
    invoke-static {v0, v2, v3, v1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :goto_0
    new-instance v1, Lcom/android/server/hdmi/TimerRecordingAction$1;

    .line 60
    .line 61
    invoke-direct {v1, p0}, Lcom/android/server/hdmi/TimerRecordingAction$1;-><init>(Lcom/android/server/hdmi/TimerRecordingAction;)V

    .line 62
    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 65
    .line 66
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 67
    .line 68
    .line 69
    :goto_1
    return-void
.end method
