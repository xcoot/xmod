.class public final Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$OutcomeFuture;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# instance fields
.field public final mFuture:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$OutcomeFuture;->mFuture:Ljava/util/concurrent/CompletableFuture;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Exception;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$OutcomeFuture;->mFuture:Ljava/util/concurrent/CompletableFuture;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$OutcomeFuture;->mFuture:Ljava/util/concurrent/CompletableFuture;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method
