.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda41;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Landroid/os/UserHandle;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/os/UserHandle;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda41;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda41;->f$1:Landroid/os/UserHandle;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda41;->f$2:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda41;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda41;->f$1:Landroid/os/UserHandle;

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda41;->f$2:Z

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 8
    .line 9
    iget-object v2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const-class v3, Landroid/location/LocationManager;

    .line 12
    .line 13
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroid/location/LocationManager;

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Landroid/location/LocationManager;->isLocationEnabledForUser(Landroid/os/UserHandle;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    filled-new-array {v3, v1, v4}, [Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const-string v4, "DevicePolicyManager"

    .line 36
    .line 37
    const-string/jumbo v5, "calling locationMgr.setLocationEnabledForUser(%b, %s) when it was %b"

    .line 38
    .line 39
    .line 40
    invoke-static {v4, v5, v3}, Lcom/android/server/utils/Slogf;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 44
    .line 45
    iget-object v3, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    const-class v4, Landroid/location/LocationManager;

    .line 48
    .line 49
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Landroid/location/LocationManager;

    .line 54
    .line 55
    invoke-virtual {v3, p0, v1}, Landroid/location/LocationManager;->setLocationEnabledForUser(ZLandroid/os/UserHandle;)V

    .line 56
    .line 57
    .line 58
    if-eqz p0, :cond_0

    .line 59
    .line 60
    if-nez v2, :cond_0

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->showLocationSettingsEnabledNotification(Landroid/os/UserHandle;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    return-void
.end method
