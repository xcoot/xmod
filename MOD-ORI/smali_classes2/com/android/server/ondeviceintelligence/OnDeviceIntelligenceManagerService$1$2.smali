.class public final Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$2;
.super Landroid/app/ondeviceintelligence/IListFeaturesCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic val$future:Lcom/android/internal/infra/AndroidFuture;

.field public final synthetic val$listFeaturesCallback:Landroid/app/ondeviceintelligence/IListFeaturesCallback;


# direct methods
.method public constructor <init>(Landroid/app/ondeviceintelligence/IListFeaturesCallback;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$2;->val$listFeaturesCallback:Landroid/app/ondeviceintelligence/IListFeaturesCallback;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$2;->val$future:Lcom/android/internal/infra/AndroidFuture;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/app/ondeviceintelligence/IListFeaturesCallback$Stub;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$2;->val$listFeaturesCallback:Landroid/app/ondeviceintelligence/IListFeaturesCallback;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Landroid/app/ondeviceintelligence/IListFeaturesCallback;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$2;->val$future:Lcom/android/internal/infra/AndroidFuture;

    .line 7
    .line 8
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onSuccess(Ljava/util/List;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$2;->val$listFeaturesCallback:Landroid/app/ondeviceintelligence/IListFeaturesCallback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/app/ondeviceintelligence/IListFeaturesCallback;->onSuccess(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$2;->val$future:Lcom/android/internal/infra/AndroidFuture;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method
