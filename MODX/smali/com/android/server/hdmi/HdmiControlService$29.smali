.class public final Lcom/android/server/hdmi/HdmiControlService$29;
.super Landroid/hardware/hdmi/IHdmiControlCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final onComplete(I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 3
    const-string p0, "Failed to complete \'one touch play\'. result="

    .line 5
    const-string v0, "HdmiControlService"

    .line 7
    invoke-static {p1, p0, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_0
    return-void
.end method
