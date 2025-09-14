.class public final synthetic Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda8;->f$2:I

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda8;->f$3:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda8;->f$2:I

    .line 6
    .line 7
    iget p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda8;->f$3:I

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const-class v3, Landroid/app/AppOpsManager;

    .line 12
    .line 13
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/app/AppOpsManager;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, p0}, Landroid/app/AppOpsManager;->setUidMode(Ljava/lang/String;II)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
