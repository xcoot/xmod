.class public final Lcom/android/server/wm/AppWarnings$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/AppWarnings;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppWarnings;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/AppWarnings$1;->this$0:Lcom/android/server/wm/AppWarnings;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onUserRemoved(Landroid/content/pm/UserInfo;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isFull()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings$1;->this$0:Lcom/android/server/wm/AppWarnings;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/wm/AppWarnings;->mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

    .line 11
    .line 12
    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 13
    .line 14
    const/4 v2, 0x4

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings$1;->this$0:Lcom/android/server/wm/AppWarnings;

    .line 25
    .line 26
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    .line 29
    .line 30
    monitor-enter v0

    .line 31
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const/4 v2, 0x1

    .line 38
    sub-int/2addr v1, v2

    .line 39
    :goto_0
    if-ltz v1, :cond_2

    .line 40
    .line 41
    iget-object v4, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    .line 42
    .line 43
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Landroid/util/Pair;

    .line 48
    .line 49
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v5, Ljava/lang/Integer;

    .line 52
    .line 53
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-ne v5, p1, :cond_1

    .line 58
    .line 59
    iget-object v3, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    .line 60
    .line 61
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move v3, v2

    .line 65
    goto :goto_1

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_2

    .line 68
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    if-eqz v3, :cond_3

    .line 72
    .line 73
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mWriteConfigTask:Lcom/android/server/wm/AppWarnings$WriteConfigTask;

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/android/server/wm/AppWarnings$WriteConfigTask;->schedule()V

    .line 76
    .line 77
    .line 78
    :cond_3
    monitor-exit v0

    .line 79
    return-void

    .line 80
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    throw p0
.end method
