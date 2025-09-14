.class public final Lcom/android/server/telecom/InternalServiceRepository;
.super Lcom/android/internal/telecom/IInternalServiceRetriever$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

.field public final mDeviceIdleControllerAdapter:Lcom/android/server/telecom/InternalServiceRepository$1;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceIdleInternal;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/internal/telecom/IInternalServiceRetriever$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/telecom/InternalServiceRepository$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/telecom/InternalServiceRepository$1;-><init>(Lcom/android/server/telecom/InternalServiceRepository;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/telecom/InternalServiceRepository;->mDeviceIdleControllerAdapter:Lcom/android/server/telecom/InternalServiceRepository$1;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/telecom/InternalServiceRepository;->mDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final getDeviceIdleController()Lcom/android/internal/telecom/IDeviceIdleControllerAdapter;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/telecom/InternalServiceRepository;->mDeviceIdleControllerAdapter:Lcom/android/server/telecom/InternalServiceRepository$1;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 13
    .line 14
    const-string v0, "SYSTEM ONLY API."

    .line 15
    .line 16
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method
