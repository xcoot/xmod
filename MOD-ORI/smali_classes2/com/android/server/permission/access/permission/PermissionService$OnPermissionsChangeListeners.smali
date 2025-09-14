.class public final Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final listeners:Landroid/os/RemoteCallbackList;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/os/RemoteCallbackList;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;->listeners:Landroid/os/RemoteCallbackList;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 7
    .line 8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9
    .line 10
    const-string/jumbo v1, "null cannot be cast to non-null type kotlin.String"

    .line 11
    .line 12
    .line 13
    invoke-static {v1, p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    check-cast p1, Ljava/lang/String;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;->listeners:Landroid/os/RemoteCallbackList;

    .line 19
    .line 20
    new-instance v1, Lcom/android/server/permission/access/permission/PermissionService$restoreDelayedRuntimePermissions$3;

    .line 21
    .line 22
    invoke-direct {v1, v0, p1}, Lcom/android/server/permission/access/permission/PermissionService$restoreDelayedRuntimePermissions$3;-><init>(ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v1}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
