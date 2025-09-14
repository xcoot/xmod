.class public final synthetic Lcom/android/server/blob/BlobStoreSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/ParcelFileDescriptor$OnCloseListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/blob/BlobStoreSession;

.field public final synthetic f$1:Landroid/os/RevocableFileDescriptor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/blob/BlobStoreSession;Landroid/os/RevocableFileDescriptor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/blob/BlobStoreSession$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/blob/BlobStoreSession;

    .line 6
    iput-object p2, p0, Lcom/android/server/blob/BlobStoreSession$$ExternalSyntheticLambda0;->f$1:Landroid/os/RevocableFileDescriptor;

    .line 8
    return-void
.end method


# virtual methods
.method public final onClose(Ljava/io/IOException;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/blob/BlobStoreSession$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/blob/BlobStoreSession;

    .line 3
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession$$ExternalSyntheticLambda0;->f$1:Landroid/os/RevocableFileDescriptor;

    .line 5
    iget-object v0, p1, Lcom/android/server/blob/BlobStoreSession;->mRevocableFds:Ljava/util/ArrayList;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object p1, p1, Lcom/android/server/blob/BlobStoreSession;->mRevocableFds:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method
