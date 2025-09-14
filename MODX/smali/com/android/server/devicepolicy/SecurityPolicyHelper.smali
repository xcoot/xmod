.class public final Lcom/android/server/devicepolicy/SecurityPolicyHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDPM:Landroid/app/admin/IDevicePolicyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/SecurityPolicyHelper;->mContext:Landroid/content/Context;

    .line 6
    iget-object p1, p0, Lcom/android/server/devicepolicy/SecurityPolicyHelper;->mDPM:Landroid/app/admin/IDevicePolicyManager;

    .line 8
    if-nez p1, :cond_0

    .line 10
    const-string/jumbo p1, "device_policy"

    .line 13
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/android/server/devicepolicy/SecurityPolicyHelper;->mDPM:Landroid/app/admin/IDevicePolicyManager;

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/android/server/devicepolicy/SecurityPolicyHelper;->mDPM:Landroid/app/admin/IDevicePolicyManager;

    .line 25
    iput-object p1, p0, Lcom/android/server/devicepolicy/SecurityPolicyHelper;->mDPM:Landroid/app/admin/IDevicePolicyManager;

    .line 27
    return-void
.end method
