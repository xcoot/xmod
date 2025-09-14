.class public final Lcom/android/server/backup/remote/FutureBackupCallback;
.super Landroid/app/backup/IBackupCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mFuture:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/backup/IBackupCallback$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/backup/remote/FutureBackupCallback;->mFuture:Ljava/util/concurrent/CompletableFuture;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final operationComplete(J)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/backup/remote/FutureBackupCallback;->mFuture:Ljava/util/concurrent/CompletableFuture;

    .line 2
    .line 3
    new-instance v0, Lcom/android/server/backup/remote/RemoteResult;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v0, v1, p1, p2}, Lcom/android/server/backup/remote/RemoteResult;-><init>(IJ)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method
