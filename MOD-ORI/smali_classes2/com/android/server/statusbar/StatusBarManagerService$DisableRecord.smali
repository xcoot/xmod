.class public final Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final barType:I

.field public final displayId:I

.field public pkg:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/statusbar/StatusBarManagerService;

.field public final token:Landroid/os/IBinder;

.field public final userId:I

.field public what1:I

.field public what2:I


# direct methods
.method public constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;ILandroid/os/IBinder;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->userId:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->barType:I

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->displayId:I

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    :try_start_0
    invoke-interface {p3, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    :catch_0
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 15

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "binder died for pkg="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->pkg:Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, "StatusBarManagerService"

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 16
    .line 17
    iget-object v5, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    .line 18
    .line 19
    iget-object v6, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->pkg:Ljava/lang/String;

    .line 20
    .line 21
    iget v7, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->userId:I

    .line 22
    .line 23
    iget v8, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->barType:I

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/statusbar/StatusBarManagerService;->disableForUserToType(ILandroid/os/IBinder;Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    iget-object v9, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 30
    .line 31
    iget-object v11, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    .line 32
    .line 33
    iget-object v12, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->pkg:Ljava/lang/String;

    .line 34
    .line 35
    iget v13, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->userId:I

    .line 36
    .line 37
    iget v14, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->barType:I

    .line 38
    .line 39
    const/4 v10, 0x0

    .line 40
    invoke-virtual/range {v9 .. v14}, Lcom/android/server/statusbar/StatusBarManagerService;->disable2ForUserToType(ILandroid/os/IBinder;Ljava/lang/String;II)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final getFlags(I)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    const-string p0, "Can\'t get unsupported disable flag "

    .line 8
    .line 9
    const-string v0, "StatusBarManagerService"

    .line 10
    .line 11
    invoke-static {p1, p0, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :cond_0
    iget p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what2:I

    .line 17
    .line 18
    return p0

    .line 19
    :cond_1
    iget p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what1:I

    .line 20
    .line 21
    return p0
.end method

.method public final setFlags(IILjava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p2, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p2, v0, :cond_0

    .line 6
    .line 7
    const-string v0, "Can\'t set unsupported disable flag "

    .line 8
    .line 9
    const-string v1, ": 0x"

    .line 10
    .line 11
    invoke-static {p2, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string p2, "StatusBarManagerService"

    .line 27
    .line 28
    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what2:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what1:I

    .line 36
    .line 37
    :goto_0
    iput-object p3, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->pkg:Ljava/lang/String;

    .line 38
    .line 39
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->barType:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->userId:I

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what1:I

    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what2:I

    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    iget-object v5, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->pkg:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v6, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    .line 28
    .line 29
    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string v0, "barType=%d userId=%d what1=0x%08X what2=0x%08X pkg=%s token=%s"

    .line 34
    .line 35
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method
