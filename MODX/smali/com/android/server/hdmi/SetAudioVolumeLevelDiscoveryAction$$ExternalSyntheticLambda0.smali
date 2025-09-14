.class public final synthetic Lcom/android/server/hdmi/SetAudioVolumeLevelDiscoveryAction$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/hdmi/SetAudioVolumeLevelDiscoveryAction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/SetAudioVolumeLevelDiscoveryAction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/SetAudioVolumeLevelDiscoveryAction$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/hdmi/SetAudioVolumeLevelDiscoveryAction;

    .line 6
    return-void
.end method


# virtual methods
.method public final onSendCompleted(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/SetAudioVolumeLevelDiscoveryAction$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/hdmi/SetAudioVolumeLevelDiscoveryAction;

    .line 3
    if-nez p1, :cond_0

    .line 5
    const/4 p1, 0x1

    .line 6
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 8
    const/16 v0, 0x7d0

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x7

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    .line 18
    :goto_0
    return-void
.end method
