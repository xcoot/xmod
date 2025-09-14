.class public final synthetic Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(III)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    iput p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda6;->f$0:I

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda6;->f$1:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda6;->f$0:I

    .line 7
    .line 8
    iget p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda6;->f$1:I

    .line 9
    .line 10
    const-string/jumbo v1, "permission grant or revoke changed gids"

    .line 11
    .line 12
    .line 13
    invoke-static {v0, p0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->killUid(IILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    iget v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda6;->f$0:I

    .line 18
    .line 19
    iget p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda6;->f$1:I

    .line 20
    .line 21
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const-string/jumbo v1, "permissions revoked"

    .line 26
    .line 27
    .line 28
    invoke-static {v0, p0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->killUid(IILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_1
    iget v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda6;->f$0:I

    .line 33
    .line 34
    iget p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda6;->f$1:I

    .line 35
    .line 36
    const-string/jumbo v1, "permissions revoked"

    .line 37
    .line 38
    .line 39
    invoke-static {v0, p0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->killUid(IILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
