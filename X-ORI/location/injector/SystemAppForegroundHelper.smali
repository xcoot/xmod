.class public final Lcom/android/server/location/injector/SystemAppForegroundHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mActivityManager:Landroid/app/ActivityManager;

.field public final mContext:Landroid/content/Context;

.field public final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public mNSPermissionHelper:Lcom/android/server/location/nsflp/NSPermissionHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/location/injector/SystemAppForegroundHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/location/injector/SystemAppForegroundHelper;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final isAppForeground(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/location/injector/SystemAppForegroundHelper;->mActivityManager:Landroid/app/ActivityManager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move v0, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/injector/SystemAppForegroundHelper;->mActivityManager:Landroid/app/ActivityManager;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->getUidImportance(I)I

    .line 20
    .line 21
    .line 22
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    const/16 p1, 0x7d

    .line 24
    .line 25
    if-gt p0, p1, :cond_1

    .line 26
    .line 27
    move v1, v2

    .line 28
    :cond_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 29
    .line 30
    .line 31
    return v1

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    .line 35
    .line 36
    throw p0
.end method
