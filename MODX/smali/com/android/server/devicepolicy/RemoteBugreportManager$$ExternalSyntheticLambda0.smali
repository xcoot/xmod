.class public final synthetic Lcom/android/server/devicepolicy/RemoteBugreportManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/RemoteBugreportManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/RemoteBugreportManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/devicepolicy/RemoteBugreportManager;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/devicepolicy/RemoteBugreportManager;

    .line 3
    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportServiceIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportServiceIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 17
    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    const-string/jumbo v2, "ctl.stop"

    .line 25
    const-string/jumbo v3, "bugreportd"

    .line 28
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v2, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportSharingAccepted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 36
    iget-object v2, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-virtual {v2, v3, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setDeviceOwnerRemoteBugreportUriAndHash(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    .line 45
    move-result-object v0

    .line 46
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 48
    const-string v4, "DevicePolicyManager"

    .line 50
    const v5, 0x28700e57

    .line 53
    invoke-virtual {v0, v4, v5, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 56
    new-instance v0, Landroid/os/Bundle;

    .line 58
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 61
    const-string v3, "android.app.extra.BUGREPORT_FAILURE_REASON"

    .line 63
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    const-string v1, "android.app.action.BUGREPORT_FAILED"

    .line 68
    invoke-virtual {v2, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendDeviceOwnerCommand(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    .line 73
    iget-object v1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportConsentReceiver:Lcom/android/server/devicepolicy/RemoteBugreportManager$1;

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 78
    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    .line 80
    iget-object p0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportFinishedReceiver:Lcom/android/server/devicepolicy/RemoteBugreportManager$1;

    .line 82
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 85
    :cond_0
    return-void
.end method
