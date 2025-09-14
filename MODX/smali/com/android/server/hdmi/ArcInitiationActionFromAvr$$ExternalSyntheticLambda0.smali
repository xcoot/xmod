.class public final synthetic Lcom/android/server/hdmi/ArcInitiationActionFromAvr$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/hdmi/ArcInitiationActionFromAvr;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/ArcInitiationActionFromAvr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/ArcInitiationActionFromAvr$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/hdmi/ArcInitiationActionFromAvr;

    .line 6
    return-void
.end method


# virtual methods
.method public final onSendCompleted(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/ArcInitiationActionFromAvr$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/hdmi/ArcInitiationActionFromAvr;

    .line 3
    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 7
    check-cast p1, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setArcStatus(Z)V

    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    :goto_0
    return-void
.end method
