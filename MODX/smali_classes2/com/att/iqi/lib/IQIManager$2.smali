.class Lcom/att/iqi/lib/IQIManager$2;
.super Lcom/att/iqi/IMetricQueryCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field final synthetic this$0:Lcom/att/iqi/lib/IQIManager;


# direct methods
.method public constructor <init>(Lcom/att/iqi/lib/IQIManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/att/iqi/lib/IQIManager$2;->this$0:Lcom/att/iqi/lib/IQIManager;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/att/iqi/IMetricQueryCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onMetricQueried(Lcom/att/iqi/lib/Metric$ID;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager$2;->this$0:Lcom/att/iqi/lib/IQIManager;

    .line 5
    .line 6
    invoke-static {p0}, Lcom/att/iqi/lib/IQIManager;->-$$Nest$fgetmMessageDispatcher(Lcom/att/iqi/lib/IQIManager;)Landroid/os/Handler;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 v0, 0x0

    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {p0, v1, p1, v0, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 21
    .line 22
    .line 23
    return-void
.end method
