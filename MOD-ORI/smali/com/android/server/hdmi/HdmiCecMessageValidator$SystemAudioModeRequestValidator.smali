.class public final Lcom/android/server/hdmi/HdmiCecMessageValidator$SystemAudioModeRequestValidator;
.super Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final isValid([B)I
    .locals 1

    .line 1
    array-length v0, p1

    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return p0

    .line 6
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;->isValid([B)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method
