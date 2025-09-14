.class public final synthetic Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 6
    .line 7
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, -0x1

    .line 12
    if-eq v1, v2, :cond_0

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 17
    .line 18
    invoke-interface {v0, p1, p0}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->resetRuntimePermissions(Lcom/android/server/pm/pkg/AndroidPackage;I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
