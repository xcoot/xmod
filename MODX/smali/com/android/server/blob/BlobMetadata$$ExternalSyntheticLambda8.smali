.class public final synthetic Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/ParcelFileDescriptor$OnCloseListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/blob/BlobMetadata;

.field public final synthetic f$1:Lcom/android/server/blob/BlobMetadata$Accessor;

.field public final synthetic f$2:Landroid/os/RevocableFileDescriptor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/blob/BlobMetadata;Lcom/android/server/blob/BlobMetadata$Accessor;Landroid/os/RevocableFileDescriptor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/blob/BlobMetadata;

    .line 6
    iput-object p2, p0, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/blob/BlobMetadata$Accessor;

    .line 8
    iput-object p3, p0, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda8;->f$2:Landroid/os/RevocableFileDescriptor;

    .line 10
    return-void
.end method


# virtual methods
.method public final onClose(Ljava/io/IOException;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/blob/BlobMetadata;

    .line 3
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/blob/BlobMetadata$Accessor;

    .line 5
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda8;->f$2:Landroid/os/RevocableFileDescriptor;

    .line 7
    iget-object v1, p1, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v2, p1, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    .line 12
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroid/util/ArraySet;

    .line 18
    if-eqz v2, :cond_0

    .line 20
    invoke-virtual {v2, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 23
    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_0

    .line 29
    iget-object p0, p1, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    .line 31
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    monitor-exit v1

    .line 38
    return-void

    .line 39
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0
.end method
