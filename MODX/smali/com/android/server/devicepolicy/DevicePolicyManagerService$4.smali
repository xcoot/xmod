.class public final Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic val$adminReceiver:Landroid/content/ComponentName;

.field public final synthetic val$userHandle:I


# direct methods
.method public constructor <init>(ILandroid/content/ComponentName;Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 3
    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->val$adminReceiver:Landroid/content/ComponentName;

    .line 5
    iput p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->val$userHandle:I

    .line 7
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 3
    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->val$adminReceiver:Landroid/content/ComponentName;

    .line 5
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->val$userHandle:I

    .line 7
    invoke-virtual {p1, v0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeAdminArtifacts(ILandroid/content/ComponentName;)V

    .line 10
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 12
    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->val$adminReceiver:Landroid/content/ComponentName;

    .line 14
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 17
    move-result-object p2

    .line 18
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->val$userHandle:I

    .line 20
    invoke-virtual {p1, p2, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->packageHasActiveAdmins(Ljava/lang/String;I)Z

    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_0

    .line 26
    invoke-virtual {p1, v0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->startUninstallIntent(ILjava/lang/String;)V

    .line 29
    :cond_0
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 31
    iget-object p1, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 38
    iget-object p1, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mKnoxPolicyHelper:Lcom/android/server/devicepolicy/KnoxPolicyHelper;

    .line 40
    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->val$adminReceiver:Landroid/content/ComponentName;

    .line 42
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->val$userHandle:I

    .line 44
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->getIEDMService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    .line 47
    move-result-object v0

    .line 48
    const-string v1, "KnoxPolicyHelper"

    .line 50
    if-eqz v0, :cond_1

    .line 52
    :try_start_0
    iget-object p1, p1, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->mEdmService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    .line 54
    invoke-interface {p1, p2, p0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->removeActiveAdminFromDpm(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception p0

    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    .line 61
    const-string/jumbo p2, "failed to remove active admin from edm database "

    .line 64
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object p0

    .line 78
    invoke-static {v1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    goto :goto_0

    .line 82
    :cond_1
    const-string/jumbo p0, "removeActiveAdminLocked() : passed EDMS.removeActiveAdminFromDpm() because edms is null"

    .line 85
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_0
    return-void
.end method
