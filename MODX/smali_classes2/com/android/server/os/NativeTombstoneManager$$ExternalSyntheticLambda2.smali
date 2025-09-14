.class public final synthetic Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/os/NativeTombstoneManager;

.field public final synthetic f$1:Ljava/util/Optional;

.field public final synthetic f$2:Ljava/util/Optional;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/os/NativeTombstoneManager;Ljava/util/Optional;Ljava/util/Optional;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/os/NativeTombstoneManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda2;->f$1:Ljava/util/Optional;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda2;->f$2:Ljava/util/Optional;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/os/NativeTombstoneManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda2;->f$1:Ljava/util/Optional;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda2;->f$2:Ljava/util/Optional;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/server/os/NativeTombstoneManager;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    iget-object v3, v0, Lcom/android/server/os/NativeTombstoneManager;->mTombstones:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    const/4 v4, 0x1

    .line 17
    sub-int/2addr v3, v4

    .line 18
    :goto_0
    if-ltz v3, :cond_2

    .line 19
    .line 20
    iget-object v5, v0, Lcom/android/server/os/NativeTombstoneManager;->mTombstones:Landroid/util/SparseArray;

    .line 21
    .line 22
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    check-cast v5, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;

    .line 27
    .line 28
    invoke-virtual {v5, v1, p0}, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->matches(Ljava/util/Optional;Ljava/util/Optional;)Z

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    if-eqz v6, :cond_1

    .line 33
    .line 34
    iget-boolean v6, v5, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPurged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    if-nez v6, :cond_0

    .line 37
    .line 38
    :try_start_1
    iget-object v6, v5, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 39
    .line 40
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    const-wide/16 v7, 0x0

    .line 45
    .line 46
    invoke-static {v6, v7, v8}, Landroid/system/Os;->ftruncate(Ljava/io/FileDescriptor;J)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :catch_0
    move-exception v6

    .line 51
    :try_start_2
    const-string v7, "NativeTombstoneManager"

    .line 52
    .line 53
    const-string v8, "Failed to truncate tombstone"

    .line 54
    .line 55
    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    .line 57
    .line 58
    :goto_1
    iput-boolean v4, v5, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPurged:Z

    .line 59
    .line 60
    :cond_0
    iget-object v5, v0, Lcom/android/server/os/NativeTombstoneManager;->mTombstones:Landroid/util/SparseArray;

    .line 61
    .line 62
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_3

    .line 68
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, -0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    monitor-exit v2

    .line 72
    return-void

    .line 73
    :goto_3
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    throw p0
.end method
