.class public final Lcom/android/server/devicestate/DeviceStateManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicestate/DeviceStateManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$2;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$2;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 2
    .line 3
    const-string/jumbo v0, "tx_event"

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    const/4 v0, 0x3

    .line 12
    if-ne p2, v0, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    :cond_0
    iput-boolean v1, p1, Lcom/android/server/devicestate/DeviceStateManagerService;->mIsWirelessPowerSharing:Z

    .line 16
    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string/jumbo p2, "update mIsWirelessPowerSharing="

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$2;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 26
    .line 27
    iget-boolean p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mIsWirelessPowerSharing:Z

    .line 28
    .line 29
    const-string p2, "DeviceStateManagerService"

    .line 30
    .line 31
    invoke-static {p2, p1, p0}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
