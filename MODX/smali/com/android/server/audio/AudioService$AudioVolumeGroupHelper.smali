.class public final Lcom/android/server/audio/AudioService$AudioVolumeGroupHelper;
.super Lcom/android/server/audio/AudioVolumeGroupHelperBase;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final getAudioVolumeGroups()Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {}, Landroid/media/audiopolicy/AudioVolumeGroup;->getAudioVolumeGroups()Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
