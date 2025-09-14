.class public final Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

.field public final synthetic val$session:Lcom/android/server/pm/PackageInstallerSession;

.field public final synthetic val$success:Z


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageInstallerService$InternalCallback;Lcom/android/server/pm/PackageInstallerSession;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->this$1:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->val$session:Lcom/android/server/pm/PackageInstallerSession;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->val$success:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->val$session:Lcom/android/server/pm/PackageInstallerSession;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 4
    .line 5
    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->val$success:Z

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->this$1:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Lcom/android/server/pm/StagingManager;->abortSession(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->this$1:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 29
    .line 30
    monitor-enter v0

    .line 31
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->val$session:Lcom/android/server/pm/PackageInstallerSession;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->val$session:Lcom/android/server/pm/PackageInstallerSession;

    .line 40
    .line 41
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 42
    .line 43
    iget-boolean v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 44
    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_1

    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->val$session:Lcom/android/server/pm/PackageInstallerSession;

    .line 54
    .line 55
    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->this$1:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    .line 67
    .line 68
    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    .line 69
    .line 70
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->val$session:Lcom/android/server/pm/PackageInstallerSession;

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageInstallerService;->removeActiveSession(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 73
    .line 74
    .line 75
    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->this$1:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    .line 76
    .line 77
    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    .line 78
    .line 79
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->val$session:Lcom/android/server/pm/PackageInstallerSession;

    .line 80
    .line 81
    iget v2, v2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    new-instance v3, Ljava/io/File;

    .line 87
    .line 88
    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    .line 89
    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v5, "app_icon."

    .line 93
    .line 94
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v2, ".png"

    .line 101
    .line 102
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_3

    .line 117
    .line 118
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 119
    .line 120
    .line 121
    :cond_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->this$1:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    .line 122
    .line 123
    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    .line 124
    .line 125
    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerService;->mSettingsWriteRequest:Lcom/android/server/pm/utils/RequestThrottle;

    .line 126
    .line 127
    iget-object v2, v1, Lcom/android/server/pm/utils/RequestThrottle;->mLastRequest:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 128
    .line 129
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1}, Lcom/android/server/pm/utils/RequestThrottle;->runInternal()Z

    .line 133
    .line 134
    .line 135
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->val$success:Z

    .line 137
    .line 138
    if-nez v0, :cond_4

    .line 139
    .line 140
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->this$1:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    .line 141
    .line 142
    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    .line 143
    .line 144
    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    .line 145
    .line 146
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->val$session:Lcom/android/server/pm/PackageInstallerSession;

    .line 147
    .line 148
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 149
    .line 150
    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 151
    .line 152
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    const/4 v3, 0x5

    .line 157
    invoke-virtual {v1, v3, v2, p0, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 162
    .line 163
    .line 164
    :cond_4
    return-void

    .line 165
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    throw p0
.end method
