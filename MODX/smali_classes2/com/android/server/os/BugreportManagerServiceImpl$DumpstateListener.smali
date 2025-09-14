.class public final Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;
.super Landroid/os/IDumpstateListener$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static sNextId:I


# instance fields
.field public final mCaller:Landroid/util/Pair;

.field public final mConsentGranted:Z

.field public mDone:Z

.field public final mDs:Landroid/os/IDumpstate;

.field public final mId:I

.field public final mIsDeferredReport:Z

.field public final mKeepBugreportOnRetrieval:Z

.field public final mListener:Landroid/os/IDumpstateListener;

.field public mProgress:I

.field public final mReportFinishedFile:Z

.field public final synthetic this$0:Lcom/android/server/os/BugreportManagerServiceImpl;


# direct methods
.method public static -$$Nest$mdump(Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "DumpstateListener:"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mId:I

    .line 10
    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "  id: %d\n"

    .line 20
    .line 21
    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mCaller:Landroid/util/Pair;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/android/server/os/BugreportManagerServiceImpl;->callerToString(Landroid/util/Pair;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "  caller: %s\n"

    .line 35
    .line 36
    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 37
    .line 38
    .line 39
    iget-boolean v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mReportFinishedFile:Z

    .line 40
    .line 41
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v1, "  reports finished file: %b\n"

    .line 50
    .line 51
    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 52
    .line 53
    .line 54
    iget v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mProgress:I

    .line 55
    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-string v1, "  progress: %d\n"

    .line 65
    .line 66
    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 67
    .line 68
    .line 69
    iget-boolean p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mDone:Z

    .line 70
    .line 71
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    const-string v0, "  done: %b\n"

    .line 80
    .line 81
    invoke-virtual {p1, v0, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public constructor <init>(Lcom/android/server/os/BugreportManagerServiceImpl;Landroid/os/IDumpstateListener;Landroid/os/IDumpstate;Landroid/util/Pair;ZZZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->this$0:Lcom/android/server/os/BugreportManagerServiceImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/IDumpstateListener$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    sget p1, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->sNextId:I

    .line 7
    .line 8
    add-int/lit8 p1, p1, 0x1

    .line 9
    .line 10
    sput p1, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->sNextId:I

    .line 11
    .line 12
    iput p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mId:I

    .line 13
    .line 14
    iput-object p2, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mListener:Landroid/os/IDumpstateListener;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mDs:Landroid/os/IDumpstate;

    .line 17
    .line 18
    iput-object p4, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mCaller:Landroid/util/Pair;

    .line 19
    .line 20
    iput-boolean p5, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mReportFinishedFile:Z

    .line 21
    .line 22
    iput-boolean p6, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mKeepBugreportOnRetrieval:Z

    .line 23
    .line 24
    iput-boolean p7, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mConsentGranted:Z

    .line 25
    .line 26
    iput-boolean p8, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mIsDeferredReport:Z

    .line 27
    .line 28
    :try_start_0
    invoke-interface {p3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/4 p2, 0x0

    .line 33
    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    const-string p1, "BugreportManagerService"

    .line 39
    .line 40
    const-string p2, "Unable to register Death Recipient for IDumpstate"

    .line 41
    .line 42
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    .line 44
    .line 45
    :goto_0
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 1
    const-wide/16 v0, 0x3e8

    .line 2
    .line 3
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->this$0:Lcom/android/server/os/BugreportManagerServiceImpl;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/os/BugreportManagerServiceImpl;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mDone:Z

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const-string v1, "BugreportManagerService"

    .line 16
    .line 17
    const-string v2, "IDumpstate likely crashed. Notifying listener"

    .line 18
    .line 19
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    :try_start_2
    iget-object v1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mListener:Landroid/os/IDumpstateListener;

    .line 23
    .line 24
    const/4 v2, 0x2

    .line 25
    invoke-interface {v1, v2}, Landroid/os/IDumpstateListener;->onError(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :catch_1
    :cond_0
    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 32
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mDs:Landroid/os/IDumpstate;

    .line 33
    .line 34
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :goto_1
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 44
    throw p0
.end method

.method public final onError(I)V
    .locals 4

    .line 1
    const-string v0, "ErroCode: "

    .line 2
    .line 3
    const-string v1, "BugreportManagerService"

    .line 4
    .line 5
    const-string/jumbo v2, "onError(): %d"

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-static {v1, v2, v3}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->this$0:Lcom/android/server/os/BugreportManagerServiceImpl;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/android/server/os/BugreportManagerServiceImpl;->mLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v1

    .line 24
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->releaseItselfLocked()V

    .line 25
    .line 26
    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p0, v0}, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->reportFinishedLocked(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mListener:Landroid/os/IDumpstateListener;

    .line 44
    .line 45
    invoke-interface {p0, p1}, Landroid/os/IDumpstateListener;->onError(I)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    throw p0
.end method

.method public final onFinished(Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "File: "

    .line 2
    .line 3
    const-string v1, "BugreportManagerService"

    .line 4
    .line 5
    const-string/jumbo v2, "onFinished(): %s"

    .line 6
    .line 7
    .line 8
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-static {v1, v2, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->this$0:Lcom/android/server/os/BugreportManagerServiceImpl;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/android/server/os/BugreportManagerServiceImpl;->mLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v1

    .line 20
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->releaseItselfLocked()V

    .line 21
    .line 22
    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0, v0}, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->reportFinishedLocked(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 39
    iget-boolean v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mReportFinishedFile:Z

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->this$0:Lcom/android/server/os/BugreportManagerServiceImpl;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/android/server/os/BugreportManagerServiceImpl;->mBugreportFileManager:Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mCaller:Landroid/util/Pair;

    .line 48
    .line 49
    iget-boolean v2, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mKeepBugreportOnRetrieval:Z

    .line 50
    .line 51
    invoke-virtual {v0, v1, p1}, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->addBugreportMapping(Landroid/util/Pair;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, v0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mLock:Ljava/lang/Object;

    .line 55
    .line 56
    monitor-enter v1

    .line 57
    :try_start_1
    invoke-static {}, Landroid/app/admin/flags/Flags;->onboardingBugreportV2Enabled()Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_1

    .line 62
    .line 63
    if-eqz v2, :cond_0

    .line 64
    .line 65
    iget-object v2, v0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mBugreportFilesToPersist:Ljava/util/Set;

    .line 66
    .line 67
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    goto :goto_1

    .line 73
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->writeBugreportDataLocked()V

    .line 74
    .line 75
    .line 76
    :cond_1
    monitor-exit v1

    .line 77
    goto :goto_2

    .line 78
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    throw p0

    .line 80
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->this$0:Lcom/android/server/os/BugreportManagerServiceImpl;

    .line 81
    .line 82
    iget-object v0, v0, Lcom/android/server/os/BugreportManagerServiceImpl;->mBugreportFileManager:Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;

    .line 83
    .line 84
    iget-object v1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mCaller:Landroid/util/Pair;

    .line 85
    .line 86
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v1, Ljava/lang/String;

    .line 89
    .line 90
    iget-boolean v2, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mConsentGranted:Z

    .line 91
    .line 92
    iget-boolean v3, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mIsDeferredReport:Z

    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    const-string v4, "Previous consent from package: "

    .line 98
    .line 99
    invoke-static {}, Landroid/app/admin/flags/Flags;->onboardingConsentlessBugreports()Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    if-eqz v5, :cond_7

    .line 104
    .line 105
    sget-boolean v5, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 106
    .line 107
    if-nez v5, :cond_3

    .line 108
    .line 109
    goto :goto_5

    .line 110
    :cond_3
    iget-object v5, v0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mLock:Ljava/lang/Object;

    .line 111
    .line 112
    monitor-enter v5

    .line 113
    if-eqz v2, :cond_4

    .line 114
    .line 115
    :try_start_2
    iget-object v0, v0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mConsentGranted:Ljava/util/Map;

    .line 116
    .line 117
    new-instance v2, Landroid/util/Pair;

    .line 118
    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 120
    .line 121
    .line 122
    move-result-wide v6

    .line 123
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-direct {v2, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    check-cast v0, Ljava/util/HashMap;

    .line 135
    .line 136
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    goto :goto_3

    .line 140
    :catchall_1
    move-exception p0

    .line 141
    goto :goto_4

    .line 142
    :cond_4
    if-nez v3, :cond_6

    .line 143
    .line 144
    iget-object v2, v0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mConsentGranted:Ljava/util/Map;

    .line 145
    .line 146
    check-cast v2, Ljava/util/HashMap;

    .line 147
    .line 148
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-nez v2, :cond_5

    .line 153
    .line 154
    const-string v0, "BugreportManagerService"

    .line 155
    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string v1, " shouldhave been logged."

    .line 165
    .line 166
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    monitor-exit v5

    .line 177
    goto :goto_5

    .line 178
    :cond_5
    iget-object v2, v0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mConsentGranted:Ljava/util/Map;

    .line 179
    .line 180
    new-instance v3, Landroid/util/Pair;

    .line 181
    .line 182
    iget-object v0, v0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mConsentGranted:Ljava/util/Map;

    .line 183
    .line 184
    check-cast v0, Ljava/util/HashMap;

    .line 185
    .line 186
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    check-cast v0, Landroid/util/Pair;

    .line 191
    .line 192
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 193
    .line 194
    check-cast v0, Ljava/lang/Long;

    .line 195
    .line 196
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 197
    .line 198
    invoke-direct {v3, v0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    check-cast v2, Ljava/util/HashMap;

    .line 202
    .line 203
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    :cond_6
    :goto_3
    monitor-exit v5

    .line 207
    goto :goto_5

    .line 208
    :goto_4
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 209
    throw p0

    .line 210
    :cond_7
    :goto_5
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mListener:Landroid/os/IDumpstateListener;

    .line 211
    .line 212
    invoke-interface {p0, p1}, Landroid/os/IDumpstateListener;->onFinished(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    return-void

    .line 216
    :catchall_2
    move-exception p0

    .line 217
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 218
    throw p0
.end method

.method public final onProgress(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mProgress:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mListener:Landroid/os/IDumpstateListener;

    .line 4
    .line 5
    invoke-interface {p0, p1}, Landroid/os/IDumpstateListener;->onProgress(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onScreenshotTaken(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mListener:Landroid/os/IDumpstateListener;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroid/os/IDumpstateListener;->onScreenshotTaken(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onUiIntensiveBugreportDumpsFinished()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mListener:Landroid/os/IDumpstateListener;

    .line 2
    .line 3
    invoke-interface {p0}, Landroid/os/IDumpstateListener;->onUiIntensiveBugreportDumpsFinished()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final releaseItselfLocked()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mDone:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->this$0:Lcom/android/server/os/BugreportManagerServiceImpl;

    .line 5
    .line 6
    iget-object v1, v0, Lcom/android/server/os/BugreportManagerServiceImpl;->mCurrentDumpstateListener:Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;

    .line 7
    .line 8
    if-ne v1, p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    iput-object p0, v0, Lcom/android/server/os/BugreportManagerServiceImpl;->mCurrentDumpstateListener:Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string/jumbo v1, "releaseItselfLocked(): "

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, " is finished, but current listener is "

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->this$0:Lcom/android/server/os/BugreportManagerServiceImpl;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mCurrentDumpstateListener:Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string v0, "BugreportManagerService"

    .line 42
    .line 43
    invoke-static {v0, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method public final reportFinishedLocked(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->this$0:Lcom/android/server/os/BugreportManagerServiceImpl;

    .line 2
    .line 3
    iget v1, v0, Lcom/android/server/os/BugreportManagerServiceImpl;->mNumberFinishedBugreports:I

    .line 4
    .line 5
    add-int/lit8 v1, v1, 0x1

    .line 6
    .line 7
    iput v1, v0, Lcom/android/server/os/BugreportManagerServiceImpl;->mNumberFinishedBugreports:I

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/os/BugreportManagerServiceImpl;->mFinishedBugreports:Landroid/util/LocalLog;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "Caller: "

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mCaller:Landroid/util/Pair;

    .line 19
    .line 20
    invoke-static {p0}, Lcom/android/server/os/BugreportManagerServiceImpl;->callerToString(Landroid/util/Pair;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p0, " "

    .line 28
    .line 29
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DumpstateListener[id="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mId:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", progress="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mProgress:I

    .line 19
    .line 20
    const-string v1, "]"

    .line 21
    .line 22
    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method
