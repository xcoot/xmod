.class public final synthetic Lcom/android/server/backup/BackupManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/backup/BackupManagerService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 5
    iput p1, p0, Lcom/android/server/backup/BackupManagerService$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/backup/BackupManagerService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 8
    check-cast v0, Lcom/android/server/backup/BackupManagerService$1;

    .line 10
    iget p0, p0, Lcom/android/server/backup/BackupManagerService$$ExternalSyntheticLambda0;->f$1:I

    .line 12
    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$1;->this$0:Lcom/android/server/backup/BackupManagerService;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    const-string v1, "Removing state for non system user "

    .line 21
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    const-string v1, "BackupManagerService"

    .line 33
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance v0, Ljava/io/File;

    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-static {v2}, Lcom/android/server/backup/UserBackupManagerFiles;->getBaseStateDir(I)Ljava/io/File;

    .line 42
    move-result-object v2

    .line 43
    const-string v3, ""

    .line 45
    invoke-static {p0, v3}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object v3

    .line 49
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_0

    .line 58
    const-string v0, "Failed to delete state dir for removed user: "

    .line 60
    invoke-static {p0, v0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_0
    return-void

    .line 64
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 66
    check-cast v0, Lcom/android/server/backup/BackupManagerService;

    .line 68
    iget p0, p0, Lcom/android/server/backup/BackupManagerService$$ExternalSyntheticLambda0;->f$1:I

    .line 70
    iget-boolean v1, v0, Lcom/android/server/backup/BackupManagerService;->mGlobalDisable:Z

    .line 72
    if-nez v1, :cond_1

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    .line 76
    const-string v2, "Stopping service for user: "

    .line 78
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v1

    .line 88
    const-string v2, "BackupManagerService"

    .line 90
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {v0, p0}, Lcom/android/server/backup/BackupManagerService;->stopServiceForUser(I)V

    .line 96
    :cond_1
    return-void

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
