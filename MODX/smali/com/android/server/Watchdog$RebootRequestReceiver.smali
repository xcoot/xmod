.class public final Lcom/android/server/Watchdog$RebootRequestReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/Watchdog;


# direct methods
.method public constructor <init>(Lcom/android/server/Watchdog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/Watchdog$RebootRequestReceiver;->this$0:Lcom/android/server/Watchdog;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    const-string/jumbo p1, "nowait"

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 8
    move-result p1

    .line 9
    const-string v1, "Watchdog"

    .line 11
    if-eqz p1, :cond_0

    .line 13
    iget-object p0, p0, Lcom/android/server/Watchdog$RebootRequestReceiver;->this$0:Lcom/android/server/Watchdog;

    .line 15
    const-string p1, "Received ACTION_REBOOT broadcast"

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    const-string p0, "Rebooting system because: Received ACTION_REBOOT broadcast"

    .line 22
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    const-string/jumbo p0, "power"

    .line 28
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Landroid/os/IPowerManager;

    .line 34
    :try_start_0
    invoke-interface {p0, v0, p1, v0}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :catch_0
    return-void

    .line 38
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 40
    const-string p1, "Unsupported ACTION_REBOOT broadcast: "

    .line 42
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 52
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method
