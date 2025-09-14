.class public final synthetic Lcom/android/server/hdmi/HdmiCecLocalDevice$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$$ExternalSyntheticLambda0;->f$0:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$$ExternalSyntheticLambda0;->f$0:I

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    check-cast p1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 10
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 17
    move-result p1

    .line 18
    if-ne p1, p0, :cond_0

    .line 20
    const/4 p0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    :goto_0
    return p0

    .line 24
    :pswitch_0
    check-cast p1, Lcom/android/server/hdmi/SetAudioVolumeLevelDiscoveryAction;

    .line 26
    iget p1, p1, Lcom/android/server/hdmi/SetAudioVolumeLevelDiscoveryAction;->mTargetAddress:I

    .line 28
    if-ne p1, p0, :cond_1

    .line 30
    const/4 p0, 0x1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/4 p0, 0x0

    .line 33
    :goto_1
    return p0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
