.class public final Lcom/android/server/permission/access/permission/PermissionService$restoreDelayedRuntimePermissions$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $userId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/permission/access/permission/PermissionService$restoreDelayedRuntimePermissions$3;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/permission/access/permission/PermissionService$restoreDelayedRuntimePermissions$3;->$userId:I

    iput-object p2, p0, Lcom/android/server/permission/access/permission/PermissionService$restoreDelayedRuntimePermissions$3;->this$0:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/permission/access/permission/PermissionService;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/permission/access/permission/PermissionService$restoreDelayedRuntimePermissions$3;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService$restoreDelayedRuntimePermissions$3;->this$0:Ljava/lang/Object;

    iput p2, p0, Lcom/android/server/permission/access/permission/PermissionService$restoreDelayedRuntimePermissions$3;->$userId:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/permission/access/permission/PermissionService$restoreDelayedRuntimePermissions$3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroid/permission/IOnPermissionsChangeListener;

    .line 7
    .line 8
    :try_start_0
    iget v0, p0, Lcom/android/server/permission/access/permission/PermissionService$restoreDelayedRuntimePermissions$3;->$userId:I

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService$restoreDelayedRuntimePermissions$3;->this$0:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Ljava/lang/String;

    .line 13
    .line 14
    invoke-interface {p1, v0, p0}, Landroid/permission/IOnPermissionsChangeListener;->onPermissionsChanged(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    sget-object p1, Lcom/android/server/permission/access/permission/PermissionService;->FULLER_PERMISSIONS:Landroid/util/ArrayMap;

    .line 20
    .line 21
    const-string p1, "PermissionService"

    .line 22
    .line 23
    const-string v0, "Error when calling OnPermissionsChangeListener"

    .line 24
    .line 25
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void

    .line 29
    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    iget-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService$restoreDelayedRuntimePermissions$3;->this$0:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Lcom/android/server/permission/access/permission/PermissionService;

    .line 41
    .line 42
    iget-object v0, p1, Lcom/android/server/permission/access/permission/PermissionService;->isDelayedPermissionBackupFinished:Landroid/util/SparseBooleanArray;

    .line 43
    .line 44
    iget p0, p0, Lcom/android/server/permission/access/permission/PermissionService$restoreDelayedRuntimePermissions$3;->$userId:I

    .line 45
    .line 46
    monitor-enter v0

    .line 47
    :try_start_1
    iget-object p1, p1, Lcom/android/server/permission/access/permission/PermissionService;->isDelayedPermissionBackupFinished:Landroid/util/SparseBooleanArray;

    .line 48
    .line 49
    const/4 v1, 0x1

    .line 50
    invoke-virtual {p1, p0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .line 52
    .line 53
    monitor-exit v0

    .line 54
    :goto_1
    return-void

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    monitor-exit v0

    .line 57
    throw p0

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
