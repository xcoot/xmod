.class public final Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;
.super Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getFeature(ILandroid/app/ondeviceintelligence/IFeatureCallback;)V
    .locals 3

    .line 1
    sget v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->$r8$clinit:I

    .line 2
    .line 3
    const-string v0, "OnDeviceIntelligenceManagerInternal getFeatures"

    .line 4
    .line 5
    const-string v1, "OnDeviceIntelligenceManagerService"

    .line 6
    .line 7
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    const-string v2, "android.permission.USE_ON_DEVICE_INTELLIGENCE"

    .line 18
    .line 19
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 23
    .line 24
    iget-boolean v0, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mIsServiceEnabled:Z

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    const-string p0, "Service not available"

    .line 29
    .line 30
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    const-string p0, "OnDeviceIntelligenceManagerService is unavailable"

    .line 34
    .line 35
    sget-object p1, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    .line 36
    .line 37
    const/16 v0, 0x64

    .line 38
    .line 39
    invoke-interface {p2, v0, p0, p1}, Landroid/app/ondeviceintelligence/IFeatureCallback;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->ensureRemoteIntelligenceServiceInitialized()V

    .line 46
    .line 47
    .line 48
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 53
    .line 54
    iget-object v1, v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mRemoteOnDeviceIntelligenceService:Lcom/android/server/ondeviceintelligence/RemoteOnDeviceIntelligenceService;

    .line 55
    .line 56
    new-instance v2, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda4;

    .line 57
    .line 58
    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;IILandroid/app/ondeviceintelligence/IFeatureCallback;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final getFeatureDetails(Landroid/app/ondeviceintelligence/Feature;Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;)V
    .locals 3

    .line 1
    sget v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->$r8$clinit:I

    .line 2
    .line 3
    const-string v0, "OnDeviceIntelligenceManagerInternal getFeatureStatus"

    .line 4
    .line 5
    const-string v1, "OnDeviceIntelligenceManagerService"

    .line 6
    .line 7
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    const-string v2, "android.permission.USE_ON_DEVICE_INTELLIGENCE"

    .line 21
    .line 22
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 26
    .line 27
    iget-boolean v0, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mIsServiceEnabled:Z

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    const-string p0, "Service not available"

    .line 32
    .line 33
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    const-string p0, "OnDeviceIntelligenceManagerService is unavailable"

    .line 37
    .line 38
    sget-object p1, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    .line 39
    .line 40
    const/16 v0, 0x64

    .line 41
    .line 42
    invoke-interface {p2, v0, p0, p1}, Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->ensureRemoteIntelligenceServiceInitialized()V

    .line 49
    .line 50
    .line 51
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 56
    .line 57
    iget-object v1, v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mRemoteOnDeviceIntelligenceService:Lcom/android/server/ondeviceintelligence/RemoteOnDeviceIntelligenceService;

    .line 58
    .line 59
    new-instance v2, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda9;

    .line 60
    .line 61
    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;ILandroid/app/ondeviceintelligence/Feature;Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final getLatestInferenceInfo(J)Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    sget v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->$r8$clinit:I

    .line 6
    .line 7
    const-string v1, "OnDeviceIntelligenceManagerService"

    .line 8
    .line 9
    const-string v2, "android.permission.DUMP"

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mInferenceInfoStore:Lcom/android/server/ondeviceintelligence/InferenceInfoStore;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->inferenceInfos:Ljava/util/TreeSet;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/util/TreeSet;->stream()Ljava/util/stream/Stream;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    new-instance v0, Lcom/android/server/ondeviceintelligence/InferenceInfoStore$$ExternalSyntheticLambda1;

    .line 25
    .line 26
    invoke-direct {v0, p1, p2}, Lcom/android/server/ondeviceintelligence/InferenceInfoStore$$ExternalSyntheticLambda1;-><init>(J)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method public final getRemoteServicePackageName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->getServiceNames()[Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/4 v0, 0x1

    .line 11
    aget-object p0, p0, v0

    .line 12
    .line 13
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    const-string v0, "OnDeviceIntelligenceManagerService"

    .line 26
    .line 27
    const-string v1, "Could not find resource"

    .line 28
    .line 29
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    :goto_0
    return-object p0
.end method

.method public final getVersion(Landroid/os/RemoteCallback;)V
    .locals 3

    .line 1
    sget v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->$r8$clinit:I

    .line 2
    .line 3
    const-string v0, "OnDeviceIntelligenceManagerInternal getVersion"

    .line 4
    .line 5
    const-string v1, "OnDeviceIntelligenceManagerService"

    .line 6
    .line 7
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    const-string v2, "android.permission.USE_ON_DEVICE_INTELLIGENCE"

    .line 18
    .line 19
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 23
    .line 24
    iget-boolean v0, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mIsServiceEnabled:Z

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    const-string p0, "Service not available"

    .line 29
    .line 30
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    invoke-virtual {p1, p0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->ensureRemoteIntelligenceServiceInitialized()V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mRemoteOnDeviceIntelligenceService:Lcom/android/server/ondeviceintelligence/RemoteOnDeviceIntelligenceService;

    .line 46
    .line 47
    new-instance v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda13;

    .line 48
    .line 49
    invoke-direct {v1, p0, p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;Landroid/os/RemoteCallback;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final listFeatures(Landroid/app/ondeviceintelligence/IListFeaturesCallback;)V
    .locals 3

    .line 1
    sget v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->$r8$clinit:I

    .line 2
    .line 3
    const-string v0, "OnDeviceIntelligenceManagerInternal getFeatures"

    .line 4
    .line 5
    const-string v1, "OnDeviceIntelligenceManagerService"

    .line 6
    .line 7
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    const-string v2, "android.permission.USE_ON_DEVICE_INTELLIGENCE"

    .line 18
    .line 19
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 23
    .line 24
    iget-boolean v0, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mIsServiceEnabled:Z

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    const-string p0, "Service not available"

    .line 29
    .line 30
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    const-string p0, "OnDeviceIntelligenceManagerService is unavailable"

    .line 34
    .line 35
    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    .line 36
    .line 37
    const/16 v1, 0x64

    .line 38
    .line 39
    invoke-interface {p1, v1, p0, v0}, Landroid/app/ondeviceintelligence/IListFeaturesCallback;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->ensureRemoteIntelligenceServiceInitialized()V

    .line 46
    .line 47
    .line 48
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 53
    .line 54
    iget-object v1, v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mRemoteOnDeviceIntelligenceService:Lcom/android/server/ondeviceintelligence/RemoteOnDeviceIntelligenceService;

    .line 55
    .line 56
    new-instance v2, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda3;

    .line 57
    .line 58
    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;ILandroid/app/ondeviceintelligence/IListFeaturesCallback;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceShellCommand;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceShellCommand;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)V

    .line 6
    .line 7
    .line 8
    move-object v1, p0

    .line 9
    move-object v2, p1

    .line 10
    move-object v3, p2

    .line 11
    move-object v4, p3

    .line 12
    move-object v5, p4

    .line 13
    move-object v6, p5

    .line 14
    move-object v7, p6

    .line 15
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final processRequest(Landroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;ILcom/android/internal/infra/AndroidFuture;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IResponseCallback;)V
    .locals 15

    .line 1
    move-object v10, p0

    .line 2
    move-object/from16 v11, p2

    .line 3
    .line 4
    const/4 v12, 0x2

    .line 5
    const-string v0, "OnDeviceIntelligenceManagerService"

    .line 6
    .line 7
    const/4 v13, 0x0

    .line 8
    :try_start_0
    sget v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->$r8$clinit:I

    .line 9
    .line 10
    const-string v1, "OnDeviceIntelligenceManagerInternal processRequest"

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    invoke-static/range {p2 .. p2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->sanitizeInferenceParams(Landroid/os/Bundle;)V

    .line 19
    .line 20
    .line 21
    invoke-static/range {p6 .. p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    iget-object v1, v10, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    const-string v2, "android.permission.USE_ON_DEVICE_INTELLIGENCE"

    .line 29
    .line 30
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, v10, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 34
    .line 35
    iget-boolean v1, v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mIsServiceEnabled:Z

    .line 36
    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    const-string v1, "Service not available"

    .line 40
    .line 41
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    const-string v0, "OnDeviceIntelligenceManagerService is unavailable"

    .line 45
    .line 46
    sget-object v1, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    .line 47
    .line 48
    const/16 v2, 0xf

    .line 49
    .line 50
    move-object/from16 v9, p6

    .line 51
    .line 52
    invoke-interface {v9, v2, v0, v1}, Landroid/app/ondeviceintelligence/IResponseCallback;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    move-object/from16 v9, p6

    .line 59
    .line 60
    :goto_0
    iget-object v0, v10, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->ensureRemoteInferenceServiceInitialized()V

    .line 63
    .line 64
    .line 65
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    iget-object v0, v10, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 70
    .line 71
    iget-object v0, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mRemoteInferenceService:Lcom/android/server/ondeviceintelligence/RemoteOnDeviceSandboxedInferenceService;

    .line 72
    .line 73
    new-instance v14, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda0;

    .line 74
    .line 75
    move-object v1, v14

    .line 76
    move-object v2, p0

    .line 77
    move-object/from16 v4, p1

    .line 78
    .line 79
    move-object/from16 v5, p2

    .line 80
    .line 81
    move/from16 v6, p3

    .line 82
    .line 83
    move-object/from16 v7, p4

    .line 84
    .line 85
    move-object/from16 v8, p5

    .line 86
    .line 87
    move-object/from16 v9, p6

    .line 88
    .line 89
    invoke-direct/range {v1 .. v9}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;ILandroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;ILcom/android/internal/infra/AndroidFuture;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IResponseCallback;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v14}, Lcom/android/internal/infra/ServiceConnector$Impl;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    .line 93
    .line 94
    .line 95
    move-result-object v13

    .line 96
    new-instance v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda1;

    .line 97
    .line 98
    invoke-direct {v0, v12, v11}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda1;-><init>(ILandroid/os/Bundle;)V

    .line 99
    .line 100
    .line 101
    iget-object v1, v10, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 102
    .line 103
    iget-object v1, v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->resourceClosingExecutor:Ljava/util/concurrent/Executor;

    .line 104
    .line 105
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :goto_1
    if-nez v13, :cond_1

    .line 110
    .line 111
    iget-object v1, v10, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 112
    .line 113
    iget-object v1, v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->resourceClosingExecutor:Ljava/util/concurrent/Executor;

    .line 114
    .line 115
    new-instance v2, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda2;

    .line 116
    .line 117
    invoke-direct {v2, v12, v11}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 121
    .line 122
    .line 123
    :cond_1
    throw v0
.end method

.method public final processRequestStreaming(Landroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;ILcom/android/internal/infra/AndroidFuture;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IStreamingResponseCallback;)V
    .locals 15

    .line 1
    move-object v10, p0

    .line 2
    move-object/from16 v11, p2

    .line 3
    .line 4
    const/4 v12, 0x0

    .line 5
    const-string v0, "OnDeviceIntelligenceManagerService"

    .line 6
    .line 7
    const/4 v13, 0x0

    .line 8
    :try_start_0
    sget v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->$r8$clinit:I

    .line 9
    .line 10
    const-string v1, "OnDeviceIntelligenceManagerInternal processRequestStreaming"

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    invoke-static/range {p2 .. p2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->sanitizeInferenceParams(Landroid/os/Bundle;)V

    .line 19
    .line 20
    .line 21
    invoke-static/range {p6 .. p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    iget-object v1, v10, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    const-string v2, "android.permission.USE_ON_DEVICE_INTELLIGENCE"

    .line 29
    .line 30
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, v10, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 34
    .line 35
    iget-boolean v1, v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mIsServiceEnabled:Z

    .line 36
    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    const-string v1, "Service not available"

    .line 40
    .line 41
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    const-string v0, "OnDeviceIntelligenceManagerService is unavailable"

    .line 45
    .line 46
    sget-object v1, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    .line 47
    .line 48
    const/16 v2, 0xf

    .line 49
    .line 50
    move-object/from16 v9, p6

    .line 51
    .line 52
    invoke-interface {v9, v2, v0, v1}, Landroid/app/ondeviceintelligence/IStreamingResponseCallback;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    move-object/from16 v9, p6

    .line 59
    .line 60
    :goto_0
    iget-object v0, v10, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->ensureRemoteInferenceServiceInitialized()V

    .line 63
    .line 64
    .line 65
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    iget-object v0, v10, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 70
    .line 71
    iget-object v0, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mRemoteInferenceService:Lcom/android/server/ondeviceintelligence/RemoteOnDeviceSandboxedInferenceService;

    .line 72
    .line 73
    new-instance v14, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda0;

    .line 74
    .line 75
    move-object v1, v14

    .line 76
    move-object v2, p0

    .line 77
    move-object/from16 v4, p1

    .line 78
    .line 79
    move-object/from16 v5, p2

    .line 80
    .line 81
    move/from16 v6, p3

    .line 82
    .line 83
    move-object/from16 v7, p4

    .line 84
    .line 85
    move-object/from16 v8, p5

    .line 86
    .line 87
    move-object/from16 v9, p6

    .line 88
    .line 89
    invoke-direct/range {v1 .. v9}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;ILandroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;ILcom/android/internal/infra/AndroidFuture;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IStreamingResponseCallback;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v14}, Lcom/android/internal/infra/ServiceConnector$Impl;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    .line 93
    .line 94
    .line 95
    move-result-object v13

    .line 96
    new-instance v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda1;

    .line 97
    .line 98
    invoke-direct {v0, v12, v11}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda1;-><init>(ILandroid/os/Bundle;)V

    .line 99
    .line 100
    .line 101
    iget-object v1, v10, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 102
    .line 103
    iget-object v1, v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->resourceClosingExecutor:Ljava/util/concurrent/Executor;

    .line 104
    .line 105
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :goto_1
    if-nez v13, :cond_1

    .line 110
    .line 111
    iget-object v1, v10, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 112
    .line 113
    iget-object v1, v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->resourceClosingExecutor:Ljava/util/concurrent/Executor;

    .line 114
    .line 115
    new-instance v2, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda2;

    .line 116
    .line 117
    invoke-direct {v2, v12, v11}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 121
    .line 122
    .line 123
    :cond_1
    throw v0
.end method

.method public final requestFeatureDownload(Landroid/app/ondeviceintelligence/Feature;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IDownloadCallback;)V
    .locals 8

    .line 1
    sget v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->$r8$clinit:I

    .line 2
    .line 3
    const-string v0, "OnDeviceIntelligenceManagerInternal requestFeatureDownload"

    .line 4
    .line 5
    const-string v1, "OnDeviceIntelligenceManagerService"

    .line 6
    .line 7
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    const-string v2, "android.permission.USE_ON_DEVICE_INTELLIGENCE"

    .line 21
    .line 22
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 26
    .line 27
    iget-boolean v0, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mIsServiceEnabled:Z

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    const-string v0, "Service not available"

    .line 32
    .line 33
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    const-string v0, "OnDeviceIntelligenceManagerService is unavailable"

    .line 37
    .line 38
    sget-object v1, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    .line 39
    .line 40
    const/4 v2, 0x4

    .line 41
    invoke-interface {p3, v2, v0, v1}, Landroid/app/ondeviceintelligence/IDownloadCallback;->onDownloadFailed(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->ensureRemoteIntelligenceServiceInitialized()V

    .line 47
    .line 48
    .line 49
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 54
    .line 55
    iget-object v0, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mRemoteOnDeviceIntelligenceService:Lcom/android/server/ondeviceintelligence/RemoteOnDeviceIntelligenceService;

    .line 56
    .line 57
    new-instance v7, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda5;

    .line 58
    .line 59
    move-object v1, v7

    .line 60
    move-object v2, p0

    .line 61
    move-object v3, p3

    .line 62
    move-object v5, p1

    .line 63
    move-object v6, p2

    .line 64
    invoke-direct/range {v1 .. v6}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;Landroid/app/ondeviceintelligence/IDownloadCallback;ILandroid/app/ondeviceintelligence/Feature;Lcom/android/internal/infra/AndroidFuture;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v7}, Lcom/android/internal/infra/ServiceConnector$Impl;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final requestTokenInfo(Landroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/ITokenInfoCallback;)V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    sget v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->$r8$clinit:I

    .line 3
    .line 4
    const-string v1, "OnDeviceIntelligenceManagerInternal requestTokenInfo"

    .line 5
    .line 6
    const-string v2, "OnDeviceIntelligenceManagerService"

    .line 7
    .line 8
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    invoke-static {p2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->sanitizeInferenceParams(Landroid/os/Bundle;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    iget-object v3, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 22
    .line 23
    iget-object v3, v3, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    const-string v4, "android.permission.USE_ON_DEVICE_INTELLIGENCE"

    .line 26
    .line 27
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v3, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 31
    .line 32
    iget-boolean v3, v3, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mIsServiceEnabled:Z

    .line 33
    .line 34
    if-nez v3, :cond_0

    .line 35
    .line 36
    const-string v3, "Service not available"

    .line 37
    .line 38
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    const-string v2, "OnDeviceIntelligenceManagerService is unavailable"

    .line 42
    .line 43
    sget-object v3, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    .line 44
    .line 45
    const/16 v4, 0x64

    .line 46
    .line 47
    invoke-interface {p4, v4, v2, v3}, Landroid/app/ondeviceintelligence/ITokenInfoCallback;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->ensureRemoteInferenceServiceInitialized()V

    .line 56
    .line 57
    .line 58
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    iget-object v2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 63
    .line 64
    iget-object v2, v2, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mRemoteInferenceService:Lcom/android/server/ondeviceintelligence/RemoteOnDeviceSandboxedInferenceService;

    .line 65
    .line 66
    new-instance v10, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda10;

    .line 67
    .line 68
    move-object v3, v10

    .line 69
    move-object v4, p0

    .line 70
    move-object v6, p1

    .line 71
    move-object v7, p2

    .line 72
    move-object v8, p3

    .line 73
    move-object v9, p4

    .line 74
    invoke-direct/range {v3 .. v9}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;ILandroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/ITokenInfoCallback;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v10}, Lcom/android/internal/infra/ServiceConnector$Impl;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    new-instance p1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda1;

    .line 82
    .line 83
    invoke-direct {p1, v0, p2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda1;-><init>(ILandroid/os/Bundle;)V

    .line 84
    .line 85
    .line 86
    iget-object p3, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 87
    .line 88
    iget-object p3, p3, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->resourceClosingExecutor:Ljava/util/concurrent/Executor;

    .line 89
    .line 90
    invoke-virtual {v1, p1, p3}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :goto_1
    if-nez v1, :cond_1

    .line 95
    .line 96
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 97
    .line 98
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->resourceClosingExecutor:Ljava/util/concurrent/Executor;

    .line 99
    .line 100
    new-instance p3, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda2;

    .line 101
    .line 102
    invoke-direct {p3, v0, p2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    invoke-interface {p0, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 106
    .line 107
    .line 108
    :cond_1
    throw p1
.end method
