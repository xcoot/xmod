.class public final Lcom/android/server/appprediction/AppPredictionManagerService;
.super Lcom/android/server/infra/AbstractMasterSystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 3
    const v1, 0x1040308

    .line 6
    invoke-direct {v0, p1, v1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;-><init>(Landroid/content/Context;I)V

    .line 9
    const/4 v1, 0x0

    .line 10
    const/16 v2, 0x11

    .line 12
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/infra/AbstractMasterSystemService;-><init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameBaseResolver;Ljava/lang/String;I)V

    .line 15
    const-class p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 17
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 23
    iput-object p1, p0, Lcom/android/server/appprediction/AppPredictionManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 25
    return-void
.end method


# virtual methods
.method public final enforceCallingPermissionForManagement()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "android.permission.MANAGE_APP_PREDICTIONS"

    .line 7
    const-string v1, "AppPredictionManagerService"

    .line 9
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public final getMaximumTemporaryServiceDurationMs()I
    .locals 0

    .line 1
    const p0, 0x1d4c0

    .line 4
    return p0
.end method

.method public final newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1

    .line 1
    new-instance p2, Lcom/android/server/appprediction/AppPredictionPerUserService;

    .line 3
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 5
    invoke-direct {p2, p0, v0, p1}, Lcom/android/server/appprediction/AppPredictionPerUserService;-><init>(Lcom/android/server/appprediction/AppPredictionManagerService;Ljava/lang/Object;I)V

    .line 8
    return-object p2
.end method

.method public final onServicePackageRestartedLocked(I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/android/server/appprediction/AppPredictionPerUserService;

    .line 7
    if-eqz p0, :cond_1

    .line 9
    iget-object p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 11
    iget-boolean p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 13
    if-eqz p1, :cond_0

    .line 15
    const-string p1, "AppPredictionPerUserService"

    .line 17
    const-string/jumbo v0, "onPackageRestartedLocked()"

    .line 20
    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->destroyAndRebindRemoteService$1()V

    .line 26
    :cond_1
    return-void
.end method

.method public final onServicePackageUpdatedLocked(I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/android/server/appprediction/AppPredictionPerUserService;

    .line 7
    if-eqz p0, :cond_1

    .line 9
    iget-object p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 11
    iget-boolean p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 13
    if-eqz p1, :cond_0

    .line 15
    const-string p1, "AppPredictionPerUserService"

    .line 17
    const-string/jumbo v0, "onPackageUpdatedLocked()"

    .line 20
    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->destroyAndRebindRemoteService$1()V

    .line 26
    :cond_1
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;

    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;-><init>(Lcom/android/server/appprediction/AppPredictionManagerService;)V

    .line 6
    const-string v1, "app_prediction"

    .line 8
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 11
    return-void
.end method
