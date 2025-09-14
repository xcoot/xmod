.class public final synthetic Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda12;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda12;->f$2:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda12;->f$1:I

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda12;->f$2:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 8
    .line 9
    check-cast p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;

    .line 10
    .line 11
    invoke-virtual {v0, p1, v1, p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->resetRuntimePermissionsInternal(Lcom/android/server/pm/pkg/AndroidPackage;ILcom/android/server/pm/permission/PermissionManagerServiceImpl$2;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
