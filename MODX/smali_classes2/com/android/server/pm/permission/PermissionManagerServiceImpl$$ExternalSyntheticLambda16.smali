.class public final synthetic Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

.field public final synthetic f$1:Lcom/android/server/pm/permission/Permission;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Lcom/android/server/pm/permission/Permission;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda16;->f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda16;->f$1:Lcom/android/server/pm/permission/Permission;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda16;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda16;->f$3:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda16;->f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda16;->f$1:Lcom/android/server/pm/permission/Permission;

    .line 4
    .line 5
    iget v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda16;->f$2:I

    .line 6
    .line 7
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda16;->f$3:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    .line 8
    .line 9
    check-cast p1, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    iget-object p1, v1, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 19
    .line 20
    iget-object v2, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    move-object v1, p0

    .line 24
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokePermissionFromPackageForUser(Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
