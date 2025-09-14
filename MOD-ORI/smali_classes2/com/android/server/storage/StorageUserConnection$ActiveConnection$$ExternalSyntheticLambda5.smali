.class public final synthetic Lcom/android/server/storage/StorageUserConnection$ActiveConnection$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;

.field public final synthetic f$1:Landroid/os/RemoteCallback;

.field public final synthetic f$2:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;Landroid/os/RemoteCallback;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$$ExternalSyntheticLambda5;->f$1:Landroid/os/RemoteCallback;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$$ExternalSyntheticLambda5;->f$2:Ljava/util/concurrent/CompletableFuture;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$$ExternalSyntheticLambda5;->f$1:Landroid/os/RemoteCallback;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$$ExternalSyntheticLambda5;->f$2:Ljava/util/concurrent/CompletableFuture;

    .line 6
    .line 7
    check-cast p1, Landroid/service/storage/IExternalStorageService;

    .line 8
    .line 9
    :try_start_0
    invoke-interface {v0, p1, v1}, Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;->run(Landroid/service/storage/IExternalStorageService;Landroid/os/RemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 15
    .line 16
    .line 17
    :goto_0
    return-object p0
.end method
