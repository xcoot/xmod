.class public final Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$AutoOnHandler;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$AutoOnHandler;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$AutoOnHandler;->this$0:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final handle(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$AutoOnHandler;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->isPowerOnOrToggleCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->isPowerOffOrToggleCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    :goto_0
    move p0, v1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$AutoOnHandler;->this$0:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mAborterIncorrectMode:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;->handle(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :goto_1
    return p0

    .line 32
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$AutoOnHandler;->this$0:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 35
    .line 36
    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAutoWakeup()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mAborterRefused:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;->handle(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x1

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    const/4 p0, 0x0

    .line 52
    :goto_2
    return p0

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
