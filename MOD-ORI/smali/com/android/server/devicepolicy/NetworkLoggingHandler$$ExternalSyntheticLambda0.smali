.class public final synthetic Lcom/android/server/devicepolicy/NetworkLoggingHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/NetworkLoggingHandler;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler$$ExternalSyntheticLambda0;->f$1:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler$$ExternalSyntheticLambda0;->f$1:J

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :goto_0
    :try_start_0
    iget-object p0, v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/util/LongSparseArray;->size()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-lez p0, :cond_0

    .line 13
    .line 14
    iget-object p0, v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual {p0, v3}, Landroid/util/LongSparseArray;->keyAt(I)J

    .line 18
    .line 19
    .line 20
    move-result-wide v4

    .line 21
    cmp-long p0, v4, v1

    .line 22
    .line 23
    if-gtz p0, :cond_0

    .line 24
    .line 25
    iget-object p0, v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    .line 26
    .line 27
    invoke-virtual {p0, v3}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p0
.end method
