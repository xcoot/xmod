.class public final Lcom/android/server/audio/AudioService$SoundEventReceiver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mEventReceiver:Landroid/content/ComponentName;

.field public mEventType:I


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    :try_start_0
    check-cast p1, Lcom/android/server/audio/AudioService$SoundEventReceiver;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/android/server/audio/AudioService$SoundEventReceiver;->mEventReceiver:Landroid/content/ComponentName;

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SoundEventReceiver;->mEventReceiver:Landroid/content/ComponentName;

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return p0

    .line 18
    :catch_0
    :cond_1
    return v0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SoundEventReceiver;->mEventReceiver:Landroid/content/ComponentName;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    :goto_0
    return p0
.end method
