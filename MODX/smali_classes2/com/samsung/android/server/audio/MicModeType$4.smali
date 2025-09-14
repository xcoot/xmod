.class final enum Lcom/samsung/android/server/audio/MicModeType$4;
.super Lcom/samsung/android/server/audio/MicModeType;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final getTypeToString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "TYPE_3MIC"

    .line 2
    .line 3
    return-object p0
.end method

.method public final isMicModeSupported(III)Z
    .locals 1

    .line 1
    const/4 p0, 0x3

    .line 2
    const/4 v0, 0x0

    .line 3
    if-ne p1, p0, :cond_1

    .line 4
    .line 5
    const/4 p0, 0x2

    .line 6
    if-ne p2, p0, :cond_1

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    invoke-static {p3, p0}, Lcom/samsung/android/server/audio/MicModeType;->isStateEnabled(II)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return p0

    .line 17
    :cond_1
    :goto_0
    return v0
.end method

.method public final restoreMicMode(Landroid/content/ContentResolver;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/MicModeType;->restoreMode(Landroid/content/ContentResolver;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lcom/samsung/android/server/audio/MicModeType;->sMicModeParamTable:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MicModeType;->getVoipCallMicMode()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final setMicInputControlMode(Landroid/content/ContentResolver;Lcom/samsung/android/media/AudioParameter;)V
    .locals 1

    .line 1
    const-string v0, "l_mic_input_control_mode_call"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Lcom/samsung/android/media/AudioParameter;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/audio/MicModeType;->setCallMicMode(ILandroid/content/ContentResolver;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v0, "l_mic_input_control_mode"

    .line 18
    .line 19
    invoke-virtual {p2, v0}, Lcom/samsung/android/media/AudioParameter;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/audio/MicModeType;->setVoipCallMicMode(ILandroid/content/ContentResolver;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method
