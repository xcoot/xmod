.class public final synthetic Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/backup/UserBackupManagerService;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/util/List;Ljava/util/List;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 5
    iput-object p2, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda7;->f$1:Ljava/util/List;

    .line 7
    iput-object p3, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda7;->f$2:Ljava/util/List;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 8
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda7;->f$1:Ljava/util/List;

    .line 10
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda7;->f$2:Ljava/util/List;

    .line 12
    check-cast p1, Ljava/lang/String;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    :try_start_0
    iget-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 19
    invoke-virtual {v2, p1}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v0
    :try_end_0
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    iget p1, v0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 33
    const-string v0, "Unexpected unregistered transport"

    .line 35
    invoke-static {p1, v0}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    const-string v0, "BackupManagerService"

    .line 41
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    :goto_0
    return-void

    .line 45
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 47
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda7;->f$1:Ljava/util/List;

    .line 49
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda7;->f$2:Ljava/util/List;

    .line 51
    check-cast p1, Ljava/lang/String;

    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    :try_start_1
    iget-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 58
    invoke-virtual {v2, p1}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    move-result-object v0
    :try_end_1
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_1 .. :try_end_1} :catch_1

    .line 62
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    goto :goto_1

    .line 69
    :catch_1
    move-exception p0

    .line 70
    iget p1, v0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 72
    const-string v0, "Unexpected unregistered transport"

    .line 74
    invoke-static {p1, v0}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 77
    move-result-object p1

    .line 78
    const-string v0, "BackupManagerService"

    .line 80
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    :goto_1
    return-void

    .line 84
    nop

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
