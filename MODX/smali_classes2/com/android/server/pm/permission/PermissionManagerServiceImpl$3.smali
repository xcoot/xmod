.class public final Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

.field public final synthetic val$appId:I

.field public final synthetic val$appOp:I

.field public final synthetic val$checkAppOpsAllowed:Z

.field public final synthetic val$killUid:Z

.field public final synthetic val$pkgName:Ljava/lang/String;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;IIILjava/lang/String;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$userId:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$appId:I

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$appOp:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$pkgName:Ljava/lang/String;

    .line 13
    .line 14
    iput-boolean p6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$checkAppOpsAllowed:Z

    .line 15
    .line 16
    iput-boolean p7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$killUid:Z

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$userId:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$appId:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/os/UserHandle;->getUid(II)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const-class v2, Landroid/app/AppOpsManager;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/app/AppOpsManager;

    .line 20
    .line 21
    iget v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$appOp:I

    .line 22
    .line 23
    const/4 v3, -0x1

    .line 24
    const/4 v4, 0x0

    .line 25
    if-eq v2, v3, :cond_0

    .line 26
    .line 27
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$pkgName:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, v2, v0, v3}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move v2, v4

    .line 38
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$checkAppOpsAllowed:Z

    .line 39
    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    if-nez v2, :cond_2

    .line 43
    .line 44
    :cond_1
    iget v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$appOp:I

    .line 45
    .line 46
    invoke-virtual {v1, v2, v0, v4}, Landroid/app/AppOpsManager;->setUidMode(III)V

    .line 47
    .line 48
    .line 49
    iget-boolean v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$killUid:Z

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    iget v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$appId:I

    .line 54
    .line 55
    iget p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$userId:I

    .line 56
    .line 57
    const-string v1, "Permission related app op changed"

    .line 58
    .line 59
    invoke-static {v0, p0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->killUid(IILjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    return-void
.end method
