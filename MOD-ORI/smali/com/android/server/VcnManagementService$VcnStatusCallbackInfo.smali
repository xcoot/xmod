.class Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mCallback:Landroid/net/vcn/IVcnStatusCallback;

.field public final mPkgName:Ljava/lang/String;

.field public final mSubGroup:Landroid/os/ParcelUuid;

.field public final synthetic this$0:Lcom/android/server/VcnManagementService;


# direct methods
.method public constructor <init>(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;Landroid/net/vcn/IVcnStatusCallback;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;->this$0:Lcom/android/server/VcnManagementService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;->mSubGroup:Landroid/os/ParcelUuid;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;->mCallback:Landroid/net/vcn/IVcnStatusCallback;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;->mPkgName:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/VcnManagementService;->RESTRICTED_TRANSPORTS_DEFAULT:Ljava/util/Set;

    .line 2
    .line 3
    const-string v0, "VcnManagementService"

    .line 4
    .line 5
    const-string v1, "app died without unregistering VcnStatusCallback"

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;->this$0:Lcom/android/server/VcnManagementService;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;->mCallback:Landroid/net/vcn/IVcnStatusCallback;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Lcom/android/server/VcnManagementService;->unregisterVcnStatusCallback(Landroid/net/vcn/IVcnStatusCallback;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
