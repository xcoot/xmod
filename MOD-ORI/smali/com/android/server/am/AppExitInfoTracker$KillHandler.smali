.class public final Lcom/android/server/am/AppExitInfoTracker$KillHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/AppExitInfoTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppExitInfoTracker;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 7
    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Landroid/app/ApplicationExitInfo;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    .line 21
    .line 22
    invoke-virtual {v1, p1}, Lcom/android/server/am/AppExitInfoTracker;->handleNoteAppRecoverableCrashLocked(Landroid/app/ApplicationExitInfo;)V

    .line 23
    .line 24
    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->recycleRawRecord(Landroid/app/ApplicationExitInfo;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw p0

    .line 35
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    .line 38
    .line 39
    monitor-enter v0

    .line 40
    :try_start_2
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    .line 41
    .line 42
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p1, Landroid/app/ApplicationExitInfo;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Lcom/android/server/am/AppExitInfoTracker;->performLogToStatsdLocked(Landroid/app/ApplicationExitInfo;)V

    .line 50
    .line 51
    .line 52
    monitor-exit v0

    .line 53
    goto :goto_0

    .line 54
    :catchall_1
    move-exception p0

    .line 55
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 56
    throw p0

    .line 57
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p1, Landroid/app/ApplicationExitInfo;

    .line 60
    .line 61
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    .line 62
    .line 63
    iget-object v0, v0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    .line 64
    .line 65
    monitor-enter v0

    .line 66
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    .line 67
    .line 68
    invoke-virtual {v1, p1}, Lcom/android/server/am/AppExitInfoTracker;->handleNoteAppKillLocked(Landroid/app/ApplicationExitInfo;)V

    .line 69
    .line 70
    .line 71
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 72
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->recycleRawRecord(Landroid/app/ApplicationExitInfo;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catchall_2
    move-exception p0

    .line 79
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 80
    throw p0

    .line 81
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast p1, Landroid/app/ApplicationExitInfo;

    .line 84
    .line 85
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    .line 86
    .line 87
    iget-object v0, v0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    .line 88
    .line 89
    monitor-enter v0

    .line 90
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    .line 91
    .line 92
    invoke-virtual {v1, p1}, Lcom/android/server/am/AppExitInfoTracker;->handleNoteProcessDiedLocked(Landroid/app/ApplicationExitInfo;)V

    .line 93
    .line 94
    .line 95
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 96
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    .line 97
    .line 98
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->recycleRawRecord(Landroid/app/ApplicationExitInfo;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :catchall_3
    move-exception p0

    .line 103
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 104
    throw p0

    .line 105
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    .line 106
    .line 107
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceZygote:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    .line 108
    .line 109
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 110
    .line 111
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 112
    .line 113
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast p1, Ljava/lang/Integer;

    .line 116
    .line 117
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->onProcDied(IILjava/lang/Integer;)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    .line 122
    .line 123
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceLmkd:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    .line 124
    .line 125
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 126
    .line 127
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 128
    .line 129
    const/4 v1, 0x0

    .line 130
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->onProcDied(IILjava/lang/Integer;)V

    .line 131
    .line 132
    .line 133
    :goto_0
    return-void

    .line 134
    nop

    .line 135
    :pswitch_data_0
    .packed-switch 0x1005
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
