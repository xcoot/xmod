.class public final Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$3$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $uid:I

.field public final synthetic this$0:Lcom/android/server/permission/access/permission/PermissionService;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/permission/PermissionService;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$3$1;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$3$1;->$uid:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$3$1;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$3$1;->$uid:I

    .line 4
    .line 5
    const-string/jumbo v1, "permission grant or revoke changed gids"

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p0, v1}, Lcom/android/server/permission/access/permission/PermissionService;->access$killUid(Lcom/android/server/permission/access/permission/PermissionService;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
