.class public final Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;
.super Lcom/android/server/utils/EventLogger$Event;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCaller:Ljava/lang/String;

.field public final mGroupName:Ljava/lang/String;

.field public final mOp:I

.field public final mStream:I

.field public final mVal1:I

.field public final mVal2:I

.field public final mVal3:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    const/4 v0, 0x4

    .line 29
    iput v0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mOp:I

    .line 30
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    const/4 p1, -0x1

    .line 32
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal3:I

    .line 33
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mStream:I

    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mCaller:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mGroupName:Ljava/lang/String;

    .line 36
    invoke-virtual {p0}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->logMetricEvent$1()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    const/4 v0, 0x3

    .line 20
    iput v0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mOp:I

    .line 21
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    .line 22
    iput p2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    const/4 p1, -0x1

    .line 23
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal3:I

    .line 24
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mStream:I

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mCaller:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mGroupName:Ljava/lang/String;

    .line 27
    invoke-virtual {p0}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->logMetricEvent$1()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    const/4 v0, 0x7

    .line 47
    iput v0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mOp:I

    .line 48
    iput p2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mStream:I

    .line 49
    iput p3, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    .line 50
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    const/4 p1, -0x1

    .line 51
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal3:I

    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mCaller:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mGroupName:Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->logMetricEvent$1()V

    return-void
.end method

.method public constructor <init>(IIIIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    const/4 p5, 0x2

    .line 2
    iput p5, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mOp:I

    .line 3
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mStream:I

    .line 4
    iput p2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    .line 5
    iput p3, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    .line 6
    iput p4, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal3:I

    .line 7
    iput-object p6, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mCaller:Ljava/lang/String;

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mGroupName:Ljava/lang/String;

    .line 9
    invoke-virtual {p0}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->logMetricEvent$1()V

    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    .line 11
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mOp:I

    .line 12
    iput p2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mStream:I

    .line 13
    iput p3, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    .line 14
    iput p4, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    .line 15
    iput-object p5, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mCaller:Ljava/lang/String;

    const/4 p1, -0x1

    .line 16
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal3:I

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mGroupName:Ljava/lang/String;

    .line 18
    invoke-virtual {p0}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->logMetricEvent$1()V

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    .line 56
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mOp:I

    const/4 p1, -0x1

    .line 57
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mStream:I

    .line 58
    iput p2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    .line 59
    iput p3, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    .line 60
    iput-object p5, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mCaller:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mGroupName:Ljava/lang/String;

    .line 62
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal3:I

    .line 63
    invoke-virtual {p0}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->logMetricEvent$1()V

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    const/4 v0, 0x6

    .line 38
    iput v0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mOp:I

    .line 39
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mStream:I

    .line 40
    iput p2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    .line 41
    iput p3, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    const/4 p1, -0x1

    .line 42
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal3:I

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mCaller:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mGroupName:Ljava/lang/String;

    .line 45
    invoke-virtual {p0}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->logMetricEvent$1()V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    const/16 v0, 0x9

    .line 65
    iput v0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mOp:I

    .line 66
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mStream:I

    .line 67
    iput p2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    const/4 p1, 0x0

    .line 68
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mCaller:Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mGroupName:Ljava/lang/String;

    const/4 p1, -0x1

    .line 71
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal3:I

    .line 72
    invoke-virtual {p0}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->logMetricEvent$1()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 73
    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    const/16 v0, 0xc

    .line 74
    iput v0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mOp:I

    const/4 v0, -0x1

    .line 75
    iput v0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mStream:I

    .line 76
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    const/4 p1, 0x0

    .line 77
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    .line 78
    iput v0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal3:I

    const/4 p1, 0x0

    .line 79
    iput-object p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mCaller:Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mGroupName:Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->logMetricEvent$1()V

    return-void
.end method


# virtual methods
.method public final eventToString()Ljava/lang/String;
    .locals 13

    .line 1
    const-string v0, " stream:"

    .line 3
    const-string v1, ") causes setting HEARING_AID volume to idx:"

    .line 5
    iget-object v2, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mGroupName:Ljava/lang/String;

    .line 7
    const-string v3, " index:"

    .line 9
    const/4 v4, 0x1

    .line 10
    const-string v5, " dir:"

    .line 12
    iget-object v6, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mCaller:Ljava/lang/String;

    .line 14
    const-string v7, ") from "

    .line 16
    const-string v8, " flags:0x"

    .line 18
    iget v9, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mStream:I

    .line 20
    iget v10, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    .line 22
    iget v11, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    .line 24
    iget v12, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mOp:I

    .line 26
    packed-switch v12, :pswitch_data_0

    .line 29
    const-string p0, "FIXME invalid op:"

    .line 31
    invoke-static {v12, p0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :pswitch_0
    if-ne v11, v4, :cond_0

    .line 38
    const-string p0, " muted)"

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const-string p0, " unmuted)"

    .line 43
    :goto_0
    const-string v0, "Master mute:"

    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :pswitch_1
    const-string p0, "adjustVolumeGroupVolume(group:"

    .line 52
    invoke-static {p0, v2, v5}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    move-result-object p0

    .line 56
    invoke-static {v11}, Landroid/media/AudioManager;->adjustToString(I)Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object p0

    .line 83
    return-object p0

    .line 84
    :pswitch_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 86
    const-string/jumbo v0, "setLeAudioVolume(stream:"

    .line 89
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-static {v9}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    const-string v0, " maxIndex:"

    .line 107
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    move-result-object p0

    .line 117
    return-object p0

    .line 118
    :pswitch_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 120
    const-string v0, "VolumeStreamState.muteInternally(stream:"

    .line 122
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-static {v9}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    if-ne v11, v4, :cond_1

    .line 134
    const-string v0, ", muted)"

    .line 136
    goto :goto_1

    .line 137
    :cond_1
    const-string v0, ", unmuted)"

    .line 139
    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    move-result-object p0

    .line 146
    return-object p0

    .line 147
    :pswitch_4
    const-string/jumbo p0, "setVolumeIndexForAttributes(group: group: "

    .line 150
    invoke-static {v11, p0, v2, v3, v8}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    move-result-object p0

    .line 154
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    move-result-object p0

    .line 171
    return-object p0

    .line 172
    :pswitch_5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 174
    const-string/jumbo v2, "setMode("

    .line 177
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-static {v10}, Landroid/media/AudioSystem;->modeToString(I)Ljava/lang/String;

    .line 183
    move-result-object v2

    .line 184
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-static {v9}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    move-result-object p0

    .line 207
    return-object p0

    .line 208
    :pswitch_6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 210
    const-string v2, "Voice activity change ("

    .line 212
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    if-ne v10, v4, :cond_2

    .line 217
    const-string v2, "active"

    .line 219
    goto :goto_2

    .line 220
    :cond_2
    const-string/jumbo v2, "inactive"

    .line 223
    :goto_2
    invoke-static {v11, v2, v1, v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 226
    invoke-static {v9}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    move-result-object p0

    .line 237
    return-object p0

    .line 238
    :pswitch_7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 240
    const-string v0, "adjustStreamVolumeForUid(stream:"

    .line 242
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    invoke-static {v9}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    .line 248
    move-result-object v0

    .line 249
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-static {v11}, Landroid/media/AudioManager;->adjustToString(I)Ljava/lang/String;

    .line 258
    move-result-object v0

    .line 259
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 268
    move-result-object v0

    .line 269
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    move-result-object p0

    .line 282
    return-object p0

    .line 283
    :pswitch_8
    const-string/jumbo p0, "setAvrcpVolume: index:"

    .line 286
    invoke-static {v11, p0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 289
    move-result-object p0

    .line 290
    return-object p0

    .line 291
    :pswitch_9
    const-string/jumbo p0, "setHearingAidVolume: index:"

    .line 294
    const-string v0, " gain dB:"

    .line 296
    invoke-static {v11, v10, p0, v0}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 299
    move-result-object p0

    .line 300
    return-object p0

    .line 301
    :pswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 303
    const-string/jumbo v1, "setStreamVolume(stream:"

    .line 306
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 309
    invoke-static {v9}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    .line 312
    move-result-object v1

    .line 313
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    const-string v1, " oldIndex:"

    .line 327
    invoke-static {v10, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 330
    iget p0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal3:I

    .line 332
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 344
    move-result-object p0

    .line 345
    return-object p0

    .line 346
    :pswitch_b
    new-instance p0, Ljava/lang/StringBuilder;

    .line 348
    const-string v0, "adjustStreamVolume(stream:"

    .line 350
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 353
    invoke-static {v9}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    .line 356
    move-result-object v0

    .line 357
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-static {v11}, Landroid/media/AudioManager;->adjustToString(I)Ljava/lang/String;

    .line 366
    move-result-object v0

    .line 367
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 376
    move-result-object v0

    .line 377
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 389
    move-result-object p0

    .line 390
    return-object p0

    .line 391
    :pswitch_c
    new-instance p0, Ljava/lang/StringBuilder;

    .line 393
    const-string v0, "adjustSuggestedStreamVolume(sugg:"

    .line 395
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 398
    invoke-static {v9}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    .line 401
    move-result-object v0

    .line 402
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-static {v11}, Landroid/media/AudioManager;->adjustToString(I)Ljava/lang/String;

    .line 411
    move-result-object v0

    .line 412
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 421
    move-result-object v0

    .line 422
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 434
    move-result-object p0

    .line 435
    return-object p0

    .line 436
    nop

    .line 437
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final logMetricEvent$1()V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mGroupName:Ljava/lang/String;

    .line 4
    const-string/jumbo v2, "down"

    .line 7
    const-string/jumbo v3, "up"

    .line 10
    iget-object v4, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mCaller:Ljava/lang/String;

    .line 12
    iget v5, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mStream:I

    .line 14
    iget v6, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal2:I

    .line 16
    iget v7, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal1:I

    .line 18
    const-string v8, "audio.volume.event"

    .line 20
    iget v9, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mOp:I

    .line 22
    packed-switch v9, :pswitch_data_0

    .line 25
    :pswitch_0
    return-void

    .line 26
    :pswitch_1
    new-instance p0, Landroid/media/MediaMetrics$Item;

    .line 28
    invoke-direct {p0, v8}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 31
    sget-object v0, Landroid/media/MediaMetrics$Property;->CALLING_PACKAGE:Landroid/media/MediaMetrics$Key;

    .line 33
    invoke-virtual {p0, v0, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 36
    move-result-object p0

    .line 37
    sget-object v0, Landroid/media/MediaMetrics$Property;->DIRECTION:Landroid/media/MediaMetrics$Key;

    .line 39
    if-lez v7, :cond_0

    .line 41
    move-object v2, v3

    .line 42
    :cond_0
    invoke-virtual {p0, v0, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 45
    move-result-object p0

    .line 46
    sget-object v0, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 48
    const-string v2, "adjustVolumeGroupVolume"

    .line 50
    invoke-virtual {p0, v0, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 53
    move-result-object p0

    .line 54
    sget-object v0, Landroid/media/MediaMetrics$Property;->FLAGS:Landroid/media/MediaMetrics$Key;

    .line 56
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {p0, v0, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 63
    move-result-object p0

    .line 64
    sget-object v0, Landroid/media/MediaMetrics$Property;->GROUP:Landroid/media/MediaMetrics$Key;

    .line 66
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 73
    return-void

    .line 74
    :pswitch_2
    new-instance p0, Landroid/media/MediaMetrics$Item;

    .line 76
    invoke-direct {p0, v8}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 79
    sget-object v0, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 81
    const-string/jumbo v1, "setLeAudioVolume"

    .line 84
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 87
    move-result-object p0

    .line 88
    sget-object v0, Landroid/media/MediaMetrics$Property;->INDEX:Landroid/media/MediaMetrics$Key;

    .line 90
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 97
    move-result-object p0

    .line 98
    sget-object v0, Landroid/media/MediaMetrics$Property;->MAX_INDEX:Landroid/media/MediaMetrics$Key;

    .line 100
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 107
    move-result-object p0

    .line 108
    sget-object v0, Landroid/media/MediaMetrics$Property;->STREAM_TYPE:Landroid/media/MediaMetrics$Key;

    .line 110
    invoke-static {v5}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 121
    return-void

    .line 122
    :pswitch_3
    new-instance p0, Landroid/media/MediaMetrics$Item;

    .line 124
    invoke-direct {p0, v8}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 127
    sget-object v0, Landroid/media/MediaMetrics$Property;->CALLING_PACKAGE:Landroid/media/MediaMetrics$Key;

    .line 129
    invoke-virtual {p0, v0, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 132
    move-result-object p0

    .line 133
    sget-object v0, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 135
    const-string/jumbo v2, "setVolumeIndexForAttributes"

    .line 138
    invoke-virtual {p0, v0, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 141
    move-result-object p0

    .line 142
    sget-object v0, Landroid/media/MediaMetrics$Property;->FLAGS:Landroid/media/MediaMetrics$Key;

    .line 144
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    move-result-object v2

    .line 148
    invoke-virtual {p0, v0, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 151
    move-result-object p0

    .line 152
    sget-object v0, Landroid/media/MediaMetrics$Property;->GROUP:Landroid/media/MediaMetrics$Key;

    .line 154
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 157
    move-result-object p0

    .line 158
    sget-object v0, Landroid/media/MediaMetrics$Property;->INDEX:Landroid/media/MediaMetrics$Key;

    .line 160
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    move-result-object v1

    .line 164
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 167
    move-result-object p0

    .line 168
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 171
    return-void

    .line 172
    :pswitch_4
    new-instance p0, Landroid/media/MediaMetrics$Item;

    .line 174
    invoke-direct {p0, v8}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 177
    sget-object v0, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 179
    const-string/jumbo v1, "modeChangeHearingAid"

    .line 182
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 185
    move-result-object p0

    .line 186
    sget-object v0, Landroid/media/MediaMetrics$Property;->INDEX:Landroid/media/MediaMetrics$Key;

    .line 188
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    move-result-object v1

    .line 192
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 195
    move-result-object p0

    .line 196
    sget-object v0, Landroid/media/MediaMetrics$Property;->MODE:Landroid/media/MediaMetrics$Key;

    .line 198
    invoke-static {v6}, Landroid/media/AudioSystem;->modeToString(I)Ljava/lang/String;

    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 205
    move-result-object p0

    .line 206
    sget-object v0, Landroid/media/MediaMetrics$Property;->STREAM_TYPE:Landroid/media/MediaMetrics$Key;

    .line 208
    invoke-static {v5}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    .line 211
    move-result-object v1

    .line 212
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 215
    move-result-object p0

    .line 216
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 219
    return-void

    .line 220
    :pswitch_5
    new-instance p0, Landroid/media/MediaMetrics$Item;

    .line 222
    invoke-direct {p0, v8}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 225
    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 227
    const-string/jumbo v2, "voiceActivityHearingAid"

    .line 230
    invoke-virtual {p0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 233
    move-result-object p0

    .line 234
    sget-object v1, Landroid/media/MediaMetrics$Property;->INDEX:Landroid/media/MediaMetrics$Key;

    .line 236
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 239
    move-result-object v2

    .line 240
    invoke-virtual {p0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 243
    move-result-object p0

    .line 244
    sget-object v1, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    .line 246
    if-ne v6, v0, :cond_1

    .line 248
    const-string v0, "active"

    .line 250
    goto :goto_0

    .line 251
    :cond_1
    const-string/jumbo v0, "inactive"

    .line 254
    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 257
    move-result-object p0

    .line 258
    sget-object v0, Landroid/media/MediaMetrics$Property;->STREAM_TYPE:Landroid/media/MediaMetrics$Key;

    .line 260
    invoke-static {v5}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    .line 263
    move-result-object v1

    .line 264
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 267
    move-result-object p0

    .line 268
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 271
    return-void

    .line 272
    :pswitch_6
    new-instance p0, Landroid/media/MediaMetrics$Item;

    .line 274
    invoke-direct {p0, v8}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 277
    sget-object v0, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 279
    const-string/jumbo v1, "setAvrcpVolume"

    .line 282
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 285
    move-result-object p0

    .line 286
    sget-object v0, Landroid/media/MediaMetrics$Property;->INDEX:Landroid/media/MediaMetrics$Key;

    .line 288
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 291
    move-result-object v1

    .line 292
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 295
    move-result-object p0

    .line 296
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 299
    return-void

    .line 300
    :pswitch_7
    new-instance p0, Landroid/media/MediaMetrics$Item;

    .line 302
    invoke-direct {p0, v8}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 305
    sget-object v0, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 307
    const-string/jumbo v1, "setHearingAidVolume"

    .line 310
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 313
    move-result-object p0

    .line 314
    sget-object v0, Landroid/media/MediaMetrics$Property;->GAIN_DB:Landroid/media/MediaMetrics$Key;

    .line 316
    int-to-double v1, v6

    .line 317
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 320
    move-result-object v1

    .line 321
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 324
    move-result-object p0

    .line 325
    sget-object v0, Landroid/media/MediaMetrics$Property;->INDEX:Landroid/media/MediaMetrics$Key;

    .line 327
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 330
    move-result-object v1

    .line 331
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 334
    move-result-object p0

    .line 335
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 338
    return-void

    .line 339
    :pswitch_8
    new-instance v0, Landroid/media/MediaMetrics$Item;

    .line 341
    invoke-direct {v0, v8}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 344
    sget-object v1, Landroid/media/MediaMetrics$Property;->CALLING_PACKAGE:Landroid/media/MediaMetrics$Key;

    .line 346
    invoke-virtual {v0, v1, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 349
    move-result-object v0

    .line 350
    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 352
    const-string/jumbo v2, "setStreamVolume"

    .line 355
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 358
    move-result-object v0

    .line 359
    sget-object v1, Landroid/media/MediaMetrics$Property;->FLAGS:Landroid/media/MediaMetrics$Key;

    .line 361
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 364
    move-result-object v2

    .line 365
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 368
    move-result-object v0

    .line 369
    sget-object v1, Landroid/media/MediaMetrics$Property;->INDEX:Landroid/media/MediaMetrics$Key;

    .line 371
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 374
    move-result-object v2

    .line 375
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 378
    move-result-object v0

    .line 379
    sget-object v1, Landroid/media/MediaMetrics$Property;->OLD_INDEX:Landroid/media/MediaMetrics$Key;

    .line 381
    iget p0, p0, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->mVal3:I

    .line 383
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 386
    move-result-object p0

    .line 387
    invoke-virtual {v0, v1, p0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 390
    move-result-object p0

    .line 391
    sget-object v0, Landroid/media/MediaMetrics$Property;->STREAM_TYPE:Landroid/media/MediaMetrics$Key;

    .line 393
    invoke-static {v5}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    .line 396
    move-result-object v1

    .line 397
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 400
    move-result-object p0

    .line 401
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 404
    return-void

    .line 405
    :pswitch_9
    if-eqz v9, :cond_4

    .line 407
    if-eq v9, v0, :cond_3

    .line 409
    const/4 p0, 0x5

    .line 410
    if-eq v9, p0, :cond_2

    .line 412
    return-void

    .line 413
    :cond_2
    const-string p0, "adjustStreamVolumeForUid"

    .line 415
    goto :goto_1

    .line 416
    :cond_3
    const-string p0, "adjustStreamVolume"

    .line 418
    goto :goto_1

    .line 419
    :cond_4
    const-string p0, "adjustSuggestedStreamVolume"

    .line 421
    :goto_1
    new-instance v0, Landroid/media/MediaMetrics$Item;

    .line 423
    invoke-direct {v0, v8}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 426
    sget-object v1, Landroid/media/MediaMetrics$Property;->CALLING_PACKAGE:Landroid/media/MediaMetrics$Key;

    .line 428
    invoke-virtual {v0, v1, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 431
    move-result-object v0

    .line 432
    sget-object v1, Landroid/media/MediaMetrics$Property;->DIRECTION:Landroid/media/MediaMetrics$Key;

    .line 434
    if-lez v7, :cond_5

    .line 436
    move-object v2, v3

    .line 437
    :cond_5
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 440
    move-result-object v0

    .line 441
    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 443
    invoke-virtual {v0, v1, p0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 446
    move-result-object p0

    .line 447
    sget-object v0, Landroid/media/MediaMetrics$Property;->FLAGS:Landroid/media/MediaMetrics$Key;

    .line 449
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 452
    move-result-object v1

    .line 453
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 456
    move-result-object p0

    .line 457
    sget-object v0, Landroid/media/MediaMetrics$Property;->STREAM_TYPE:Landroid/media/MediaMetrics$Key;

    .line 459
    invoke-static {v5}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    .line 462
    move-result-object v1

    .line 463
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 466
    move-result-object p0

    .line 467
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 470
    return-void

    .line 471
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
