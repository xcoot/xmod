.class public final Lcom/android/server/enterprise/plm/impl/ConnectionHelper;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mBindCounter:I

.field public final mBindRetryRunnable:Lcom/android/server/enterprise/plm/impl/ConnectionHelper$2;

.field public mBinder:Landroid/os/IBinder;

.field public final mClassName:Ljava/lang/String;

.field public final mConnection:Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;

.field public final mConnectionStateListener:Lcom/android/server/enterprise/plm/impl/BindServiceImpl$1;

.field public final mContext:Landroid/content/Context;

.field public mHasCallbacks:Z

.field public final mPackageName:Ljava/lang/String;

.field public mProcessId:I


# direct methods
.method public static -$$Nest$mgetPidFromPackageName(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mContext:Landroid/content/Context;

    .line 3
    const-string v0, "activity"

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/app/ActivityManager;

    .line 11
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_2

    .line 17
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object p0

    .line 21
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 33
    if-eqz v0, :cond_1

    .line 35
    iget-object v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 37
    if-eqz v1, :cond_1

    .line 39
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 42
    move-result-object v1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 46
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    :goto_0
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_0

    .line 55
    const-string p0, ":"

    .line 57
    invoke-static {p1, p0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    move-result-object p0

    .line 61
    iget p1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 63
    const-string v1, "ConnectionHelper"

    .line 65
    invoke-static {p0, p1, v1}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 68
    iget p0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    const/4 p0, -0x1

    .line 72
    :goto_1
    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/plm/impl/BindServiceImpl$1;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    new-instance v0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;

    .line 10
    invoke-direct {v0, p0}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;-><init>(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;)V

    .line 13
    iput-object v0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mConnection:Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;

    .line 15
    new-instance v0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$2;

    .line 17
    invoke-direct {v0, p0}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$2;-><init>(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;)V

    .line 20
    iput-object v0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBindRetryRunnable:Lcom/android/server/enterprise/plm/impl/ConnectionHelper$2;

    .line 22
    iput-object p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mContext:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mPackageName:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mClassName:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mConnectionStateListener:Lcom/android/server/enterprise/plm/impl/BindServiceImpl$1;

    .line 30
    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBinder:Landroid/os/IBinder;

    .line 33
    const/4 p1, -0x1

    .line 34
    iput p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mProcessId:I

    .line 36
    const/4 p1, 0x4

    .line 37
    iput p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBindCounter:I

    .line 39
    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mHasCallbacks:Z

    .line 42
    return-void
.end method


# virtual methods
.method public final resetBindTimer(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "reset bind timer for "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mClassName:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    if-eqz p1, :cond_0

    .line 16
    const-string v1, " with "

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string v1, " without "

    .line 21
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    const-string/jumbo v1, "counter reset"

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    const-string v1, "ConnectionHelper"

    .line 36
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mHasCallbacks:Z

    .line 41
    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBindRetryRunnable:Lcom/android/server/enterprise/plm/impl/ConnectionHelper$2;

    .line 45
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 48
    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mHasCallbacks:Z

    .line 51
    goto :goto_1

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_2

    .line 54
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 56
    const/4 p1, 0x4

    .line 57
    iput p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBindCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    goto :goto_3

    .line 60
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    :cond_2
    :goto_3
    return-void
.end method
