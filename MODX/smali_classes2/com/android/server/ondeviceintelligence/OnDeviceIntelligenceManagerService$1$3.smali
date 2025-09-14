.class public final Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$3;
.super Landroid/app/ondeviceintelligence/IFeatureDetailsCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic val$featureDetailsCallback:Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;

.field public final synthetic val$future:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method public constructor <init>(Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$3;->val$future:Lcom/android/internal/infra/AndroidFuture;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$3;->val$featureDetailsCallback:Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/app/ondeviceintelligence/IFeatureDetailsCallback$Stub;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$3;->val$future:Lcom/android/internal/infra/AndroidFuture;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$3;->val$featureDetailsCallback:Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;

    .line 8
    .line 9
    invoke-interface {p0, p1, p2, p3}, Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onSuccess(Landroid/app/ondeviceintelligence/FeatureDetails;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$3;->val$future:Lcom/android/internal/infra/AndroidFuture;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$3;->val$featureDetailsCallback:Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;

    .line 8
    .line 9
    invoke-interface {p0, p1}, Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;->onSuccess(Landroid/app/ondeviceintelligence/FeatureDetails;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
