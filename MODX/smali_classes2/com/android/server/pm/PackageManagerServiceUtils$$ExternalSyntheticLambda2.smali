.class public final synthetic Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/FileUtils$ProgressListener;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$2:Landroid/os/CancellationSignal;


# direct methods
.method public synthetic constructor <init>(JLjava/util/concurrent/atomic/AtomicBoolean;Landroid/os/CancellationSignal;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda2;->f$0:J

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda2;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda2;->f$2:Landroid/os/CancellationSignal;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onProgress(J)V
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda2;->f$0:J

    .line 2
    .line 3
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda2;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda2;->f$2:Landroid/os/CancellationSignal;

    .line 6
    .line 7
    cmp-long p1, p1, v0

    .line 8
    .line 9
    if-lez p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/os/CancellationSignal;->cancel()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
