.class public final Lcom/android/server/ambientcontext/WearableAmbientContextManagerPerUserService;
.super Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mComponentName:Landroid/content/ComponentName;

.field mRemoteService:Lcom/android/server/ambientcontext/RemoteWearableSensingService;

.field public final mServiceType:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;


# direct methods
.method public constructor <init>(Lcom/android/server/ambientcontext/AmbientContextManagerService;Ljava/lang/Object;ILjava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;->WEARABLE:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/server/ambientcontext/WearableAmbientContextManagerPerUserService;->mServiceType:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;

    .line 7
    .line 8
    invoke-static {p4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/android/server/ambientcontext/WearableAmbientContextManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    .line 13
    .line 14
    const-string p0, "Created WearableAmbientContextManagerPerUserServiceand service type: WEARABLE and service name: "

    .line 15
    .line 16
    const-string p1, "WearableAmbientContextManagerPerUserService"

    .line 17
    .line 18
    invoke-static {p0, p4, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final clearRemoteService()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/server/ambientcontext/WearableAmbientContextManagerPerUserService;->mRemoteService:Lcom/android/server/ambientcontext/RemoteWearableSensingService;

    .line 3
    .line 4
    return-void
.end method

.method public final ensureRemoteServiceInitiated()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/ambientcontext/WearableAmbientContextManagerPerUserService;->mRemoteService:Lcom/android/server/ambientcontext/RemoteWearableSensingService;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/ambientcontext/RemoteWearableSensingService;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v1, p0, Lcom/android/server/ambientcontext/WearableAmbientContextManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    .line 14
    .line 15
    new-instance v3, Landroid/content/Intent;

    .line 16
    .line 17
    const-string v4, "android.service.wearable.WearableSensingService"

    .line 18
    .line 19
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    new-instance v6, Lcom/android/server/ambientcontext/RemoteWearableSensingService$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    const v4, 0x4001000

    .line 32
    .line 33
    .line 34
    iget v5, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 35
    .line 36
    move-object v1, v0

    .line 37
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->connect()Lcom/android/internal/infra/AndroidFuture;

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/android/server/ambientcontext/WearableAmbientContextManagerPerUserService;->mRemoteService:Lcom/android/server/ambientcontext/RemoteWearableSensingService;

    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method public final getAmbientContextEventArrayExtraKeyConfig()I
    .locals 0

    .line 1
    const p0, 0x10403d8

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final getAmbientContextPackageNameExtraKeyConfig()I
    .locals 0

    .line 1
    const p0, 0x10403d9

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/ambientcontext/WearableAmbientContextManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getConsentComponentConfig()I
    .locals 0

    .line 1
    const p0, 0x1040339

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final getProtectedBindPermission()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "android.permission.BIND_WEARABLE_SENSING_SERVICE"

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRemoteService()Lcom/android/server/ambientcontext/RemoteAmbientDetectionService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/ambientcontext/WearableAmbientContextManagerPerUserService;->mRemoteService:Lcom/android/server/ambientcontext/RemoteWearableSensingService;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getServiceType()Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/ambientcontext/WearableAmbientContextManagerPerUserService;->mServiceType:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setComponentName(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/ambientcontext/WearableAmbientContextManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    .line 2
    .line 3
    return-void
.end method
