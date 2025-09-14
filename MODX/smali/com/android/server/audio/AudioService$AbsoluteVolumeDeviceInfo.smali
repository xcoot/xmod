.class public final Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallback:Landroid/media/IAudioDeviceVolumeDispatcher;

.field public final mDevice:Landroid/media/AudioDeviceAttributes;

.field public final mDeviceVolumeBehavior:I

.field public final mHandlesVolumeAdjustment:Z

.field public final mVolumeInfos:Ljava/util/List;


# direct methods
.method public static -$$Nest$mgetMatchingVolumeInfoForStream(Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;I)Landroid/media/VolumeInfo;
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mVolumeInfos:Ljava/util/List;

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p0

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_3

    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/media/VolumeInfo;

    .line 19
    invoke-virtual {v0}, Landroid/media/VolumeInfo;->hasStreamType()Z

    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x1

    .line 25
    if-eqz v1, :cond_1

    .line 27
    invoke-virtual {v0}, Landroid/media/VolumeInfo;->getStreamType()I

    .line 30
    move-result v1

    .line 31
    if-ne v1, p1, :cond_1

    .line 33
    move v1, v3

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move v1, v2

    .line 36
    :goto_0
    invoke-virtual {v0}, Landroid/media/VolumeInfo;->hasVolumeGroup()Z

    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_2

    .line 42
    invoke-virtual {v0}, Landroid/media/VolumeInfo;->getVolumeGroup()Landroid/media/audiopolicy/AudioVolumeGroup;

    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v4}, Landroid/media/audiopolicy/AudioVolumeGroup;->getLegacyStreamTypes()[I

    .line 49
    move-result-object v4

    .line 50
    invoke-static {v4}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    .line 53
    move-result-object v4

    .line 54
    new-instance v5, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo$$ExternalSyntheticLambda0;

    .line 56
    invoke-direct {v5, p1}, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo$$ExternalSyntheticLambda0;-><init>(I)V

    .line 59
    invoke-interface {v4, v5}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_2

    .line 65
    move v2, v3

    .line 66
    :cond_2
    if-nez v1, :cond_4

    .line 68
    if-eqz v2, :cond_0

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    const/4 v0, 0x0

    .line 72
    :cond_4
    :goto_1
    return-object v0
.end method

.method public constructor <init>(Landroid/media/AudioDeviceAttributes;Ljava/util/List;Landroid/media/IAudioDeviceVolumeDispatcher;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mDevice:Landroid/media/AudioDeviceAttributes;

    .line 6
    iput-object p2, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mVolumeInfos:Ljava/util/List;

    .line 8
    iput-object p3, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mCallback:Landroid/media/IAudioDeviceVolumeDispatcher;

    .line 10
    iput-boolean p4, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mHandlesVolumeAdjustment:Z

    .line 12
    iput p5, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mDeviceVolumeBehavior:I

    .line 14
    return-void
.end method
