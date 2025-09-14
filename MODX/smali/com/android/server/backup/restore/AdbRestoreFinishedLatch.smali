.class public final Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;


# instance fields
.field public final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field public final mCurrentOpToken:I

.field public final mLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mOperationStorage:Lcom/android/server/backup/OperationStorage;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 6
    new-instance p2, Ljava/util/concurrent/CountDownLatch;

    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-direct {p2, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 12
    iput-object p2, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 14
    iput p3, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->mCurrentOpToken:I

    .line 16
    iget-object p1, p1, Lcom/android/server/backup/UserBackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 18
    const-string p2, "Timeout parameters cannot be null"

    .line 20
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    move-object p2, p1

    .line 24
    check-cast p2, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 26
    iput-object p1, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 28
    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 0

    .line 1
    return-void
.end method

.method public final handleCancel(Z)V
    .locals 1

    .line 1
    const-string p1, "AdbRestoreFinishedLatch"

    .line 3
    const-string v0, "adb onRestoreFinished() timed out"

    .line 5
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object p1, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 10
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 13
    iget-object p1, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 15
    check-cast p1, Lcom/android/server/backup/internal/LifecycleOperationStorage;

    .line 17
    iget p0, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->mCurrentOpToken:I

    .line 19
    invoke-virtual {p1, p0}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->removeOperation(I)V

    .line 22
    return-void
.end method

.method public final operationComplete(J)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 6
    iget-object p1, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 8
    check-cast p1, Lcom/android/server/backup/internal/LifecycleOperationStorage;

    .line 10
    iget p0, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->mCurrentOpToken:I

    .line 12
    invoke-virtual {p1, p0}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->removeOperation(I)V

    .line 15
    return-void
.end method
