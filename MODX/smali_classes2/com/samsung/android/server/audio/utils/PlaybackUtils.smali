.class public abstract Lcom/samsung/android/server/audio/utils/PlaybackUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static isMusicActive(Landroid/media/AudioPlaybackConfiguration;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    const/4 v0, 0x1

    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    if-eq p0, v0, :cond_1

    .line 21
    .line 22
    const/16 v2, 0xc

    .line 23
    .line 24
    if-eq p0, v2, :cond_1

    .line 25
    .line 26
    const/16 v2, 0xe

    .line 27
    .line 28
    if-eq p0, v2, :cond_1

    .line 29
    .line 30
    const/16 v2, 0x10

    .line 31
    .line 32
    if-eq p0, v2, :cond_1

    .line 33
    .line 34
    return v1

    .line 35
    :cond_1
    return v0
.end method
