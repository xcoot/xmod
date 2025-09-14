.class public final Lcom/android/server/pm/UserManagerService$5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$5;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    .line 6
    .line 7
    .line 8
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$5;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v1

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    :try_start_1
    array-length v3, v0

    .line 16
    if-ge v2, v3, :cond_0

    .line 17
    .line 18
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$5;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 19
    .line 20
    aget v4, v0, v2

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/UserManagerService;->updateUserRestrictionsInternalLR(ILandroid/os/Bundle;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v4}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(I)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    monitor-exit v1

    .line 35
    return-void

    .line 36
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    throw p0

    .line 38
    :catch_0
    const-string p0, "UserManagerService"

    .line 39
    .line 40
    const-string v0, "Unable to access ActivityManagerService"

    .line 41
    .line 42
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    return-void
.end method
