.class public final Lcom/android/server/ondeviceintelligence/BundleUtil$1;
.super Landroid/app/ondeviceintelligence/IStreamingResponseCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic val$future:Lcom/android/internal/infra/AndroidFuture;

.field public final synthetic val$inferenceInfoStore:Lcom/android/server/ondeviceintelligence/InferenceInfoStore;

.field public final synthetic val$resourceClosingExecutor:Ljava/util/concurrent/Executor;

.field public final synthetic val$streamingResponseCallback:Landroid/app/ondeviceintelligence/IStreamingResponseCallback;


# direct methods
.method public constructor <init>(Landroid/app/ondeviceintelligence/IStreamingResponseCallback;Ljava/util/concurrent/Executor;Lcom/android/server/ondeviceintelligence/InferenceInfoStore;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1;->val$streamingResponseCallback:Landroid/app/ondeviceintelligence/IStreamingResponseCallback;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1;->val$resourceClosingExecutor:Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1;->val$inferenceInfoStore:Lcom/android/server/ondeviceintelligence/InferenceInfoStore;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1;->val$future:Lcom/android/internal/infra/AndroidFuture;

    .line 8
    .line 9
    invoke-direct {p0}, Landroid/app/ondeviceintelligence/IStreamingResponseCallback$Stub;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onDataAugmentRequest(Landroid/os/Bundle;Landroid/os/RemoteCallback;)V
    .locals 5

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/android/server/ondeviceintelligence/BundleUtil;->sanitizeResponseParams(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1;->val$streamingResponseCallback:Landroid/app/ondeviceintelligence/IStreamingResponseCallback;

    .line 5
    .line 6
    new-instance v1, Landroid/os/RemoteCallback;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1;->val$resourceClosingExecutor:Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    new-instance v3, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda2;

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    invoke-direct {v3, p2, v2, v4}, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda2;-><init>(Landroid/os/RemoteCallback;Ljava/util/concurrent/Executor;I)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v3}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, p1, v1}, Landroid/app/ondeviceintelligence/IStreamingResponseCallback;->onDataAugmentRequest(Landroid/os/Bundle;Landroid/os/RemoteCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1;->val$resourceClosingExecutor:Ljava/util/concurrent/Executor;

    .line 23
    .line 24
    new-instance p2, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda0;

    .line 25
    .line 26
    const/4 v0, 0x2

    .line 27
    invoke-direct {p2, v0, p1}, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda0;-><init>(ILandroid/os/Bundle;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p2

    .line 35
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1;->val$resourceClosingExecutor:Ljava/util/concurrent/Executor;

    .line 36
    .line 37
    new-instance v0, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda0;

    .line 38
    .line 39
    const/4 v1, 0x2

    .line 40
    invoke-direct {v0, v1, p1}, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda0;-><init>(ILandroid/os/Bundle;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    throw p2
.end method

.method public final onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1;->val$streamingResponseCallback:Landroid/app/ondeviceintelligence/IStreamingResponseCallback;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Landroid/app/ondeviceintelligence/IStreamingResponseCallback;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1;->val$inferenceInfoStore:Lcom/android/server/ondeviceintelligence/InferenceInfoStore;

    .line 7
    .line 8
    invoke-virtual {p1, p3}, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->addInferenceInfoFromBundle(Landroid/os/PersistableBundle;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1;->val$future:Lcom/android/internal/infra/AndroidFuture;

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

.method public final onNewContent(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/android/server/ondeviceintelligence/BundleUtil;->sanitizeResponseParams(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1;->val$streamingResponseCallback:Landroid/app/ondeviceintelligence/IStreamingResponseCallback;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Landroid/app/ondeviceintelligence/IStreamingResponseCallback;->onNewContent(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1;->val$resourceClosingExecutor:Ljava/util/concurrent/Executor;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1, p1}, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda0;-><init>(ILandroid/os/Bundle;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1;->val$resourceClosingExecutor:Ljava/util/concurrent/Executor;

    .line 23
    .line 24
    new-instance v1, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda0;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-direct {v1, v2, p1}, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda0;-><init>(ILandroid/os/Bundle;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    throw v0
.end method

.method public final onSuccess(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/android/server/ondeviceintelligence/BundleUtil;->sanitizeResponseParams(Landroid/os/Bundle;)V

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1;->val$streamingResponseCallback:Landroid/app/ondeviceintelligence/IStreamingResponseCallback;

    .line 6
    .line 7
    invoke-interface {v1, p1}, Landroid/app/ondeviceintelligence/IStreamingResponseCallback;->onSuccess(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1;->val$inferenceInfoStore:Lcom/android/server/ondeviceintelligence/InferenceInfoStore;

    .line 11
    .line 12
    invoke-virtual {v1, p1}, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->addInferenceInfoFromBundle(Landroid/os/Bundle;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1;->val$resourceClosingExecutor:Ljava/util/concurrent/Executor;

    .line 16
    .line 17
    new-instance v2, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda0;

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-direct {v2, v3, p1}, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda0;-><init>(ILandroid/os/Bundle;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1;->val$future:Lcom/android/internal/infra/AndroidFuture;

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception v1

    .line 33
    iget-object v2, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1;->val$inferenceInfoStore:Lcom/android/server/ondeviceintelligence/InferenceInfoStore;

    .line 34
    .line 35
    invoke-virtual {v2, p1}, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->addInferenceInfoFromBundle(Landroid/os/Bundle;)V

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1;->val$resourceClosingExecutor:Ljava/util/concurrent/Executor;

    .line 39
    .line 40
    new-instance v3, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda0;

    .line 41
    .line 42
    const/4 v4, 0x1

    .line 43
    invoke-direct {v3, v4, p1}, Lcom/android/server/ondeviceintelligence/BundleUtil$1$$ExternalSyntheticLambda0;-><init>(ILandroid/os/Bundle;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/BundleUtil$1;->val$future:Lcom/android/internal/infra/AndroidFuture;

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    throw v1
.end method
