.class public final Lcom/android/server/hdmi/HdmiControlService$20;
.super Landroid/hardware/hdmi/IHdmiControlCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$20;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onComplete(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$20;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    .line 6
    const/4 p1, 0x5

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->initializeCecLocalDevices(I)V

    .line 10
    return-void
.end method
