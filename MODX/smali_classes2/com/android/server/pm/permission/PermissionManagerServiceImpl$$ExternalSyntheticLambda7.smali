.class public final synthetic Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Lcom/android/server/pm/pkg/AndroidPackage;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;IIILcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda7;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda7;->f$2:I

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda7;->f$3:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda7;->f$4:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda7;->f$1:I

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda7;->f$2:I

    .line 6
    .line 7
    iget v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda7;->f$3:I

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda7;->f$4:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2}, Landroid/os/UserHandle;->getUid(II)I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    const-class v5, Landroid/app/AppOpsManager;

    .line 21
    .line 22
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/app/AppOpsManager;

    .line 27
    .line 28
    const/4 v5, -0x1

    .line 29
    if-eq v3, v5, :cond_0

    .line 30
    .line 31
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {v0, v3, v4, p0}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-nez p0, :cond_0

    .line 40
    .line 41
    const/4 p0, 0x1

    .line 42
    invoke-virtual {v0, v3, v4, p0}, Landroid/app/AppOpsManager;->setUidMode(III)V

    .line 43
    .line 44
    .line 45
    const-string p0, "Permission related app op changed"

    .line 46
    .line 47
    invoke-static {v2, v1, p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->killUid(IILjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    return-void
.end method
