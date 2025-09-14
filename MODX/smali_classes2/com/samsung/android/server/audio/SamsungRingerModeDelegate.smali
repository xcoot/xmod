.class public final Lcom/samsung/android/server/audio/SamsungRingerModeDelegate;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/media/AudioManagerInternal$RingerModeDelegate;


# instance fields
.field public mAudioManager:Landroid/media/AudioManagerInternal;

.field public mContentResolver:Landroid/content/ContentResolver;

.field public mNm:Landroid/app/NotificationManager;

.field public mZenMode:I


# virtual methods
.method public final canVolumeDownEnterSilent()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final getRingerModeAffectedStreams(I)I
    .locals 0

    .line 1
    or-int/lit16 p0, p1, 0x126

    .line 2
    .line 3
    return p0
.end method

.method public final onChange(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    .line 3
    .line 4
    iget p1, p0, Lcom/samsung/android/server/audio/SamsungRingerModeDelegate;->mZenMode:I

    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/audio/SamsungRingerModeDelegate;->mContentResolver:Landroid/content/ContentResolver;

    .line 7
    .line 8
    const-string/jumbo v1, "zen_mode"

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/samsung/android/server/audio/SamsungRingerModeDelegate;->mZenMode:I

    .line 17
    .line 18
    if-ne p1, v0, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    if-eqz p1, :cond_1

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/audio/SamsungRingerModeDelegate;->mAudioManager:Landroid/media/AudioManagerInternal;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/media/AudioManagerInternal;->getRingerModeInternal()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iget-object p0, p0, Lcom/samsung/android/server/audio/SamsungRingerModeDelegate;->mAudioManager:Landroid/media/AudioManagerInternal;

    .line 33
    .line 34
    const-string v0, "SamsungRingerModeDelegate"

    .line 35
    .line 36
    invoke-virtual {p0, p1, v0}, Landroid/media/AudioManagerInternal;->setRingerModeInternal(ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final onSetRingerModeExternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .locals 0

    .line 1
    return p2
.end method

.method public final onSetRingerModeInternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    if-eq p2, p1, :cond_0

    .line 3
    .line 4
    const/4 p1, 0x2

    .line 5
    if-eq p2, p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/audio/SamsungRingerModeDelegate;->mNm:Landroid/app/NotificationManager;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/NotificationManager;->getZenMode()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    :cond_1
    :goto_0
    return p2
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "SamsungRingerModeDelegate"

    .line 2
    .line 3
    return-object p0
.end method
