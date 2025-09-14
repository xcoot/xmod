.class public final synthetic Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/backup/UserBackupManagerService;


# direct methods
.method public synthetic constructor <init>(ILcom/android/server/backup/UserBackupManagerService;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda14;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda14;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->getMessageIdForOperationType(I)I

    .line 13
    move-result p0

    .line 14
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeMessages(I)V

    .line 17
    return-void

    .line 18
    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    if-eqz p1, :cond_0

    .line 23
    const/4 v0, 0x1

    .line 24
    if-ne p1, v0, :cond_1

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->getMessageIdForOperationType(I)I

    .line 31
    move-result p0

    .line 32
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeMessages(I)V

    .line 35
    :cond_1
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
