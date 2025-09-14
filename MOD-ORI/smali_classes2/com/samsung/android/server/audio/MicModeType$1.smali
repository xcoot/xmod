.class final enum Lcom/samsung/android/server/audio/MicModeType$1;
.super Lcom/samsung/android/server/audio/MicModeType;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final getTypeToString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "TYPE_NONE"

    .line 2
    .line 3
    return-object p0
.end method

.method public final isMicModeSupported(III)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final restoreMicMode(Landroid/content/ContentResolver;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/MicModeType;->restoreMode(Landroid/content/ContentResolver;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lcom/samsung/android/server/audio/MicModeType;->sMicModeParamTable:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MicModeType;->getCallMicMode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    add-int/lit8 v0, v0, 0x3

    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MicModeType;->getVoipCallMicMode()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final setMicInputControlMode(Landroid/content/ContentResolver;Lcom/samsung/android/media/AudioParameter;)V
    .locals 0

    .line 1
    return-void
.end method
