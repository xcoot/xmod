.class public final Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$1:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver;->this$1:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver;->this$1:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    .line 3
    iget-object p1, p1, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    .line 5
    iget-object p1, p1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 7
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 9
    const-class v0, Landroid/os/PowerManager;

    .line 11
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroid/os/PowerManager;

    .line 17
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    const-string v0, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    .line 26
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 32
    const-string v0, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 34
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result p2

    .line 38
    if-nez p2, :cond_0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver;->this$1:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    .line 43
    invoke-virtual {p1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    .line 46
    move-result p1

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->notifyDeviceIdleness(Z)V

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver;->this$1:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    .line 53
    invoke-virtual {p1}, Landroid/os/PowerManager;->isLightDeviceIdleMode()Z

    .line 56
    move-result p1

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->notifyDeviceIdleness(Z)V

    .line 60
    :goto_0
    return-void
.end method
