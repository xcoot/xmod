.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda49;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda49;->$r8$classId:I

    .line 2
    .line 3
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda49;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda49;->f$1:Ljava/lang/String;

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
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda49;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda49;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda49;->f$1:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda49;->f$0:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Landroid/content/pm/IPackageDataObserver;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda49;->f$1:Ljava/lang/String;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    :try_start_0
    invoke-interface {v0, p0, v1}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    const-string p0, "PackageManager"

    .line 31
    .line 32
    const-string v0, "Observer no longer exists."

    .line 33
    .line 34
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void

    .line 38
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda49;->f$0:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    .line 41
    .line 42
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda49;->f$1:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    .line 45
    .line 46
    const/4 v3, 0x2

    .line 47
    const/4 v7, 0x1

    .line 48
    const-wide/16 v4, -0x1

    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(IIJLjava/lang/String;Z)I

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
