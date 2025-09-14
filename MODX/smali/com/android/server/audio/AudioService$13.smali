.class public final Lcom/android/server/audio/AudioService$13;
.super Lcom/samsung/android/server/audio/FrequentWorker;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final func()Ljava/lang/Object;
    .locals 1

    .line 1
    const-string/jumbo p0, "l_fmradio_record_active"

    .line 4
    invoke-static {p0}, Lcom/samsung/android/media/SemAudioSystem;->getPolicyParameters(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 8
    const-string/jumbo v0, "true"

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result p0

    .line 15
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method
