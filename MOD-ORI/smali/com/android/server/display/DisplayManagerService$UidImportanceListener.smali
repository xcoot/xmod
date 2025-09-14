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

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$UidImportanceListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onUidImportance(II)V
    .locals 5

    .line 1
    const-string v0, "Uid "

    .line 2
    .line 3
    const-string v1, "Drop pending events for gone uid "

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$UidImportanceListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/android/server/display/DisplayManagerService;->mPendingCallbackSelfLocked:Landroid/util/SparseArray;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    const/16 v3, 0x3e8

    .line 11
    .line 12
    if-lt p2, v3, :cond_0

    .line 13
    .line 14
    :try_start_0
    const-string p2, "DisplayManagerService"

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {p2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$UidImportanceListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mPendingCallbackSelfLocked:Landroid/util/SparseArray;

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 36
    .line 37
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

    .line 43
    .line 44
    if-lt p2, v1, :cond_1

    .line 45
    .line 46
    monitor-exit v2

    .line 47
    return-void

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$UidImportanceListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 49
    .line 50
    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService;->mPendingCallbackSelfLocked:Landroid/util/SparseArray;

    .line 51
    .line 52
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Landroid/util/SparseArray;

    .line 57
    .line 58
    if-nez v1, :cond_2

    .line 59
    .line 60
    monitor-exit v2

    .line 61
    return-void

    .line 62
    :cond_2
    sget-boolean v3, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    .line 63
    .line 64
    if-eqz v3, :cond_3

    .line 65
    .line 66
    const-string v3, "DisplayManagerService"

    .line 67
    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v0, " becomes "

    .line 77
    .line 78
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-static {v3, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    :cond_3
    const/4 p2, 0x0

    .line 92
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-ge p2, v0, :cond_5

    .line 97
    .line 98
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Lcom/android/server/display/DisplayManagerService$PendingCallback;

    .line 103
    .line 104
    if-eqz v0, :cond_4

    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService$PendingCallback;->sendPendingDisplayEvent()V

    .line 107
    .line 108
    .line 109
    :cond_4
    add-int/lit8 p2, p2, 0x1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_5
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$UidImportanceListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 113
    .line 114
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mPendingCallbackSelfLocked:Landroid/util/SparseArray;

    .line 115
    .line 116
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 117
    .line 118
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
