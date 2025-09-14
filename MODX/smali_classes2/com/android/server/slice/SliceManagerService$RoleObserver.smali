.class public final Lcom/android/server/slice/SliceManagerService$RoleObserver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/role/OnRoleHoldersChangedListener;


# instance fields
.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final synthetic this$0:Lcom/android/server/slice/SliceManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/slice/SliceManagerService;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/slice/SliceManagerService$RoleObserver;->this$0:Lcom/android/server/slice/SliceManagerService;

    .line 5
    .line 6
    iget-object v0, p1, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService$RoleObserver;->mExecutor:Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    iget-object v1, p1, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    const-class v2, Landroid/app/role/RoleManager;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/app/role/RoleManager;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 27
    .line 28
    invoke-virtual {v1, v0, p0, v2}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    iput-object p0, p1, Lcom/android/server/slice/SliceManagerService;->mCachedDefaultHome:Ljava/lang/String;

    .line 33
    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public final onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    .line 1
    const-string p2, "android.app.role.HOME"

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService$RoleObserver;->this$0:Lcom/android/server/slice/SliceManagerService;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/android/server/slice/SliceManagerService;->mCachedDefaultHome:Ljava/lang/String;

    .line 13
    .line 14
    :cond_0
    return-void
.end method
