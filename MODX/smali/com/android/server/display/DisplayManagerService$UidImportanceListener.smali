.class public final Lcom/android/server/display/DisplayManagerService$UidImportanceListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/ActivityManager$OnUidImportanceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$UidImportanceListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 6
    return-void
.end method


# virtual methods
.method public final onUidImportance(II)V
    .locals 5

    .line 1
    const-string v0, "Uid "

    .line 3
    const-string v1, "Drop pending events for gone uid "

    .line 5
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$UidImportanceListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 7
    iget-object v2, v2, Lcom/android/server/display/DisplayManagerService;->mPendingCallbackSelfLocked:Landroid/util/SparseArray;

    .line 9
    monitor-enter v2

    .line 10
    const/16 v3, 0x3e8

    .line 12
    if-lt p2, v3, :cond_0

    .line 14
    :try_start_0
    const-string p2, "DisplayManagerService"

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    invoke-static {p2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$UidImportanceListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 33
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mPendingCallbackSelfLocked:Landroid/util/SparseArray;

    .line 35
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 38
    monitor-exit v2

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    const/16 v1, 0x190

    .line 44
    if-lt p2, v1, :cond_1

    .line 46
    monitor-exit v2

    .line 47
    return-void

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$UidImportanceListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 50
    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService;->mPendingCallbackSelfLocked:Landroid/util/SparseArray;

    .line 52
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Landroid/util/SparseArray;

    .line 58
    if-nez v1, :cond_2

    .line 60
    monitor-exit v2

    .line 61
    return-void

    .line 62
    :cond_2
    sget-boolean v3, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    .line 64
    if-eqz v3, :cond_3

    .line 66
    const-string v3, "DisplayManagerService"

    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    .line 70
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    const-string v0, " becomes "

    .line 78
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object p2

    .line 88
    invoke-static {v3, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_3
    const/4 p2, 0x0

    .line 92
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 95
    move-result v0

    .line 96
    if-ge p2, v0, :cond_5

    .line 98
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Lcom/android/server/display/DisplayManagerService$PendingCallback;

    .line 104
    if-eqz v0, :cond_4

    .line 106
    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService$PendingCallback;->sendPendingDisplayEvent()V

    .line 109
    :cond_4
    add-int/lit8 p2, p2, 0x1

    .line 111
    goto :goto_0

    .line 112
    :cond_5
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$UidImportanceListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 114
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mPendingCallbackSelfLocked:Landroid/util/SparseArray;

    .line 116
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 119
    monitor-exit v2

    .line 120
    return-void

    .line 121
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    throw p0
.end method
