.class public final Lcom/samsung/android/server/audio/AudioEvents$MasterMuteEvent;
.super Lcom/android/server/utils/EventLogger$Event;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCaller:Ljava/lang/String;

.field public final mFlags:I

.field public final mIsMute:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/samsung/android/server/audio/AudioEvents$MasterMuteEvent;->mIsMute:I

    .line 5
    .line 6
    iput p2, p0, Lcom/samsung/android/server/audio/AudioEvents$MasterMuteEvent;->mFlags:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/samsung/android/server/audio/AudioEvents$MasterMuteEvent;->mCaller:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final eventToString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "setMasterMute(mute:"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget v1, p0, Lcom/samsung/android/server/audio/AudioEvents$MasterMuteEvent;->mIsMute:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " flags:0x"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget v1, p0, Lcom/samsung/android/server/audio/AudioEvents$MasterMuteEvent;->mFlags:I

    .line 20
    .line 21
    const-string v2, ") from "

    .line 22
    .line 23
    invoke-static {v1, v0, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/samsung/android/server/audio/AudioEvents$MasterMuteEvent;->mCaller:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method
