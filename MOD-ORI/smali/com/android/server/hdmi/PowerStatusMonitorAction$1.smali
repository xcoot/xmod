.class public final Lcom/android/server/hdmi/PowerStatusMonitorAction$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/PowerStatusMonitorAction;

.field public final synthetic val$logicalAddress:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/PowerStatusMonitorAction;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction$1;->this$0:Lcom/android/server/hdmi/PowerStatusMonitorAction;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction$1;->val$logicalAddress:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onSendCompleted(I)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction$1;->this$0:Lcom/android/server/hdmi/PowerStatusMonitorAction;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction$1;->val$logicalAddress:I

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {p1, p0, v0, v1}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->updatePowerStatus(IIZ)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
