.class Lcom/att/iqi/lib/IQIManager$5;
.super Lcom/att/iqi/IServiceStateChangeCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field final synthetic this$0:Lcom/att/iqi/lib/IQIManager;


# direct methods
.method public constructor <init>(Lcom/att/iqi/lib/IQIManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/att/iqi/lib/IQIManager$5;->this$0:Lcom/att/iqi/lib/IQIManager;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/att/iqi/IServiceStateChangeCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onServiceChange(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager$5;->this$0:Lcom/att/iqi/lib/IQIManager;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/att/iqi/lib/IQIManager;->-$$Nest$fgetmMessageDispatcher(Lcom/att/iqi/lib/IQIManager;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x4

    .line 9
    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 14
    .line 15
    .line 16
    return-void
.end method
