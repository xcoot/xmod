.class public final synthetic Lcom/android/server/storage/StorageUserConnection$ActiveConnection$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

.field public final synthetic f$1:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/storage/StorageUserConnection$ActiveConnection;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$$ExternalSyntheticLambda3;->f$1:Ljava/util/concurrent/CompletableFuture;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$$ExternalSyntheticLambda3;->f$1:Ljava/util/concurrent/CompletableFuture;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v0, "android.service.storage.extra.error"

    .line 9
    .line 10
    const-class v1, Landroid/os/ParcelableException;

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Landroid/os/ParcelableException;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method
