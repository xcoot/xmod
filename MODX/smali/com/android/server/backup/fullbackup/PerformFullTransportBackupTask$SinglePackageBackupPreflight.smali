.class public final Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;


# instance fields
.field public final mCurrentOpToken:I

.field public final mLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mQuota:J

.field public final mResult:Ljava/util/concurrent/atomic/AtomicLong;

.field public final mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

.field public final mTransportFlags:I

.field public final synthetic this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;Lcom/android/server/backup/transport/TransportConnection;JII)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 8
    const-wide/16 v0, -0x3eb

    .line 10
    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 13
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mResult:Ljava/util/concurrent/atomic/AtomicLong;

    .line 15
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 21
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 23
    iput-object p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 25
    iput-wide p3, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mQuota:J

    .line 27
    iput p5, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mCurrentOpToken:I

    .line 29
    iput p6, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mTransportFlags:I

    .line 31
    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 0

    .line 1
    return-void
.end method

.method public final handleCancel(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mResult:Ljava/util/concurrent/atomic/AtomicLong;

    .line 3
    const-wide/16 v0, -0x3eb

    .line 5
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 8
    iget-object p1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 10
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 13
    iget-object p1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 15
    iget-object p1, p1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 17
    iget p0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mCurrentOpToken:I

    .line 19
    check-cast p1, Lcom/android/server/backup/internal/LifecycleOperationStorage;

    .line 21
    invoke-virtual {p1, p0}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->removeOperation(I)V

    .line 24
    return-void
.end method

.method public final operationComplete(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mResult:Ljava/util/concurrent/atomic/AtomicLong;

    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 6
    iget-object p1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 8
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 11
    iget-object p1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 13
    iget-object p1, p1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 15
    iget p0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mCurrentOpToken:I

    .line 17
    check-cast p1, Lcom/android/server/backup/internal/LifecycleOperationStorage;

    .line 19
    invoke-virtual {p1, p0}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->removeOperation(I)V

    .line 22
    return-void
.end method
