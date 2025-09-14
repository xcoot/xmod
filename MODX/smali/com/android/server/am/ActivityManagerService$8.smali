.class public final Lcom/android/server/am/ActivityManagerService$8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;

.field public final synthetic val$pid:I


# direct methods
.method public constructor <init>(ILcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    const/4 p3, 0x0

    iput p3, p0, Lcom/android/server/am/ActivityManagerService$8;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$8;->this$0:Ljava/lang/Object;

    iput p1, p0, Lcom/android/server/am/ActivityManagerService$8;->val$pid:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/ActivityManagerService$8;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/am/ActivityManagerService$8;->val$pid:I

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$8;->this$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$8;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    :try_start_0
    const-string v0, "backup"

    .line 8
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    .line 15
    move-result-object v0

    .line 16
    iget v1, p0, Lcom/android/server/am/ActivityManagerService$8;->val$pid:I

    .line 18
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$8;->this$0:Ljava/lang/Object;

    .line 20
    check-cast p0, Ljava/lang/String;

    .line 22
    invoke-interface {v0, v1, p0}, Landroid/app/backup/IBackupManager;->agentDisconnectedForUser(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :catch_0
    return-void

    .line 26
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$8;->this$0:Ljava/lang/Object;

    .line 28
    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    .line 30
    iget p0, p0, Lcom/android/server/am/ActivityManagerService$8;->val$pid:I

    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 37
    sget-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 39
    if-eqz v0, :cond_0

    .line 41
    iget-boolean v1, v0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 43
    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {v0, p0}, Lcom/android/server/am/FreecessController;->releaseFreezedAppPid(I)V

    .line 48
    :cond_0
    return-void

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
