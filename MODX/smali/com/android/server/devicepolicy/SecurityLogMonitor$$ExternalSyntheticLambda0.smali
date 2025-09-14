.class public final synthetic Lcom/android/server/devicepolicy/SecurityLogMonitor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/SecurityLogMonitor;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/app/admin/IAuditLogEventsCallback;

.field public final synthetic f$3:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/SecurityLogMonitor;ILandroid/app/admin/IAuditLogEventsCallback;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/devicepolicy/SecurityLogMonitor;

    .line 6
    iput p2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor$$ExternalSyntheticLambda0;->f$1:I

    .line 8
    iput-object p3, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor$$ExternalSyntheticLambda0;->f$2:Landroid/app/admin/IAuditLogEventsCallback;

    .line 10
    iput-object p4, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor$$ExternalSyntheticLambda0;->f$3:Ljava/util/List;

    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/devicepolicy/SecurityLogMonitor;

    .line 3
    iget v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor$$ExternalSyntheticLambda0;->f$1:I

    .line 5
    iget-object v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor$$ExternalSyntheticLambda0;->f$2:Landroid/app/admin/IAuditLogEventsCallback;

    .line 7
    iget-object p0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor$$ExternalSyntheticLambda0;->f$3:Ljava/util/List;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 15
    invoke-interface {v2, p0}, Landroid/app/admin/IAuditLogEventsCallback;->onNewAuditLogEvents(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto/16 :goto_1

    .line 20
    :catch_0
    move-exception p0

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v3

    .line 25
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 28
    move-result-object v3

    .line 29
    const-string v4, "Failed to invoke audit log callback for UID %d"

    .line 31
    const-string v5, "SecurityLogMonitor"

    .line 33
    invoke-static {v5, p0, v4, v3}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    invoke-interface {v2}, Landroid/app/admin/IAuditLogEventsCallback;->asBinder()Landroid/os/IBinder;

    .line 39
    move-result-object p0

    .line 40
    invoke-interface {p0}, Landroid/os/IBinder;->isBinderAlive()Z

    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_0

    .line 46
    const-string p0, "Callback binder is still alive, not removing."

    .line 48
    invoke-static {v5, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    iget-object v2, v0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 54
    check-cast v2, Ljava/util/concurrent/locks/ReentrantLock;

    .line 56
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 59
    :try_start_1
    iget-object v2, v0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAuditLogCallbacks:Landroid/util/SparseArray;

    .line 61
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 64
    move-result v2

    .line 65
    if-gez v2, :cond_1

    .line 67
    const-string p0, "Callback not registered for UID %d, nothing to remove"

    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    move-result-object v1

    .line 73
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 76
    move-result-object v1

    .line 77
    invoke-static {v5, p0, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    goto :goto_0

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    goto :goto_2

    .line 83
    :cond_1
    iget-object v3, v0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAuditLogCallbacks:Landroid/util/SparseArray;

    .line 85
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 88
    move-result-object v3

    .line 89
    check-cast v3, Landroid/app/admin/IAuditLogEventsCallback;

    .line 91
    invoke-interface {v3}, Landroid/app/admin/IAuditLogEventsCallback;->asBinder()Landroid/os/IBinder;

    .line 94
    move-result-object v3

    .line 95
    invoke-interface {v3, p0}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 98
    move-result p0

    .line 99
    if-nez p0, :cond_2

    .line 101
    const-string p0, "Callback is already replaced for UID %d, not removing"

    .line 103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    move-result-object v1

    .line 107
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 110
    move-result-object v1

    .line 111
    invoke-static {v5, p0, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    goto :goto_0

    .line 115
    :cond_2
    const-string p0, "Removing callback for UID %d"

    .line 117
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    move-result-object v1

    .line 121
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 124
    move-result-object v1

    .line 125
    invoke-static {v5, p0, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    iget-object p0, v0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAuditLogCallbacks:Landroid/util/SparseArray;

    .line 130
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->removeAt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    :goto_0
    iget-object p0, v0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 135
    check-cast p0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 137
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 140
    :goto_1
    return-void

    .line 141
    :goto_2
    iget-object v0, v0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 143
    check-cast v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 145
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 148
    throw p0
.end method
