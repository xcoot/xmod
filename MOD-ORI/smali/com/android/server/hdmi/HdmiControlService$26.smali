.class public final Lcom/android/server/hdmi/HdmiControlService$26;
.super Landroid/hardware/hdmi/IHdmiControlCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;

.field public final synthetic val$isEnabled:I

.field public final synthetic val$listeners:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Ljava/util/Collection;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$26;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$26;->val$listeners:Ljava/util/Collection;

    .line 4
    .line 5
    iput p3, p0, Lcom/android/server/hdmi/HdmiControlService$26;->val$isEnabled:I

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onComplete(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$26;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq p1, v1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    iput-boolean p1, v0, Lcom/android/server/hdmi/HdmiControlService;->mIsCecAvailable:Z

    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$26;->val$listeners:Ljava/util/Collection;

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$26;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$26;->val$listeners:Ljava/util/Collection;

    .line 22
    .line 23
    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService$26;->val$isEnabled:I

    .line 24
    .line 25
    iget-boolean p1, p1, Lcom/android/server/hdmi/HdmiControlService;->mIsCecAvailable:Z

    .line 26
    .line 27
    invoke-static {p0, v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->invokeHdmiControlStatusChangeListenerLocked(ILjava/util/Collection;Z)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method
