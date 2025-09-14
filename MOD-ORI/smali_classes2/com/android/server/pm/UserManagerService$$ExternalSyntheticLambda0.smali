.class public final synthetic Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/UserManagerService;

.field public final synthetic f$1:Landroid/os/Bundle;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/UserManagerService;Landroid/os/Bundle;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/UserManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda0;->f$2:I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v2, v0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUserRestrictionToken:Landroid/os/IBinder;

    .line 13
    .line 14
    invoke-interface {v2, v1, v0, p0}, Lcom/android/internal/app/IAppOpsService;->setUserRestrictions(Landroid/os/Bundle;Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    const-string p0, "UserManagerService"

    .line 19
    .line 20
    const-string v0, "Unable to notify AppOpsService of UserRestrictions"

    .line 21
    .line 22
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method
