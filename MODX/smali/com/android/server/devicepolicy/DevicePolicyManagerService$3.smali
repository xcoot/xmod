.class public final Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;
.super Landroid/content/IIntentSender$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic val$packageName:Ljava/lang/String;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;->val$packageName:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;->val$userId:I

    .line 5
    invoke-direct {p0}, Landroid/content/IIntentSender$Stub;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final send(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    const-string p1, "android.content.pm.extra.STATUS"

    .line 3
    const/4 p3, 0x1

    .line 4
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 7
    move-result p1

    .line 8
    const-string p2, "DevicePolicyManager"

    .line 10
    if-nez p1, :cond_0

    .line 12
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;->val$packageName:Ljava/lang/String;

    .line 14
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;->val$userId:I

    .line 16
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object p0

    .line 20
    filled-new-array {p1, p0}, [Ljava/lang/Object;

    .line 23
    move-result-object p0

    .line 24
    const-string p1, "Package %s uninstalled for user %d"

    .line 26
    invoke-static {p2, p1, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;->val$packageName:Ljava/lang/String;

    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object p1

    .line 36
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 39
    move-result-object p0

    .line 40
    const-string p1, "Failed to uninstall %s; status: %d"

    .line 42
    invoke-static {p2, p1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    :goto_0
    return-void
.end method
