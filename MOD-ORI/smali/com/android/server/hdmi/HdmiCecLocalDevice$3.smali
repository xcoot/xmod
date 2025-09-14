.class public final Lcom/android/server/hdmi/HdmiCecLocalDevice$3;
.super Landroid/hardware/hdmi/IHdmiControlCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDevice;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$3;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onComplete(I)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$3;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->checkAndUpdateAbsoluteVolumeBehavior()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
