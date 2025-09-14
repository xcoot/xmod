.class public final Lcom/android/server/ondeviceintelligence/BundleUtil$3;
.super Landroid/app/ondeviceintelligence/ITokenInfoCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic val$future:Lcom/android/internal/infra/AndroidFuture;

.field public final synthetic val$inferenceInfoStore:Lcom/android/server/ondeviceintelligence/InferenceInfoStore;

.field public final synthetic val$responseCallback:Landroid/app/ondeviceintelligence/ITokenInfoCallback;


# direct methods
.method public constructor <init>(Landroid/app/ondeviceintelligence/ITokenInfoCallback;Lcom/android/server/ondeviceintelligence/InferenceInfoStore;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$3;->val$responseCallback:Landroid/app/ondeviceintelligence/ITokenInfoCallback;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$3;->val$inferenceInfoStore:Lcom/android/server/ondeviceintelligence/InferenceInfoStore;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$3;->val$future:Lcom/android/internal/infra/AndroidFuture;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/app/ondeviceintelligence/ITokenInfoCallback$Stub;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$3;->val$responseCallback:Landroid/app/ondeviceintelligence/ITokenInfoCallback;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Landroid/app/ondeviceintelligence/ITokenInfoCallback;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$3;->val$inferenceInfoStore:Lcom/android/server/ondeviceintelligence/InferenceInfoStore;

    .line 7
    .line 8
    invoke-virtual {p1, p3}, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->addInferenceInfoFromBundle(Landroid/os/PersistableBundle;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$3;->val$future:Lcom/android/internal/infra/AndroidFuture;

    .line 12
    .line 13
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onSuccess(Landroid/app/ondeviceintelligence/TokenInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$3;->val$responseCallback:Landroid/app/ondeviceintelligence/ITokenInfoCallback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/app/ondeviceintelligence/ITokenInfoCallback;->onSuccess(Landroid/app/ondeviceintelligence/TokenInfo;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$3;->val$inferenceInfoStore:Lcom/android/server/ondeviceintelligence/InferenceInfoStore;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/app/ondeviceintelligence/TokenInfo;->getInfoParams()Landroid/os/PersistableBundle;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->addInferenceInfoFromBundle(Landroid/os/PersistableBundle;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$3;->val$future:Lcom/android/internal/infra/AndroidFuture;

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method
