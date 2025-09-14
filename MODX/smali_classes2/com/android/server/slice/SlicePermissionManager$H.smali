.class public final Lcom/android/server/slice/SlicePermissionManager$H;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/slice/SlicePermissionManager;


# direct methods
.method public constructor <init>(Lcom/android/server/slice/SlicePermissionManager;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/slice/SlicePermissionManager$H;->this$0:Lcom/android/server/slice/SlicePermissionManager;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_4

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq v0, v1, :cond_3

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    if-eq v0, v1, :cond_2

    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x5

    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    goto/16 :goto_0

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager$H;->this$0:Lcom/android/server/slice/SlicePermissionManager;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/android/server/slice/SlicePermissionManager;->mCachedProviders:Landroid/util/ArrayMap;

    .line 23
    .line 24
    monitor-enter v0

    .line 25
    :try_start_0
    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager$H;->this$0:Lcom/android/server/slice/SlicePermissionManager;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedProviders:Landroid/util/ArrayMap;

    .line 28
    .line 29
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    monitor-exit v0

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p0

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager$H;->this$0:Lcom/android/server/slice/SlicePermissionManager;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/android/server/slice/SlicePermissionManager;->mCachedClients:Landroid/util/ArrayMap;

    .line 42
    .line 43
    monitor-enter v0

    .line 44
    :try_start_1
    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager$H;->this$0:Lcom/android/server/slice/SlicePermissionManager;

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedClients:Landroid/util/ArrayMap;

    .line 47
    .line 48
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    monitor-exit v0

    .line 54
    goto :goto_0

    .line 55
    :catchall_1
    move-exception p0

    .line 56
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 57
    throw p0

    .line 58
    :cond_2
    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager$H;->this$0:Lcom/android/server/slice/SlicePermissionManager;

    .line 59
    .line 60
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p1, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const-string v1, "client_"

    .line 72
    .line 73
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {p0, v0}, Lcom/android/server/slice/SlicePermissionManager;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const-string/jumbo v1, "provider_"

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {p0, v0}, Lcom/android/server/slice/SlicePermissionManager;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mDirty:Landroid/util/ArraySet;

    .line 103
    .line 104
    iget-object v1, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedClients:Landroid/util/ArrayMap;

    .line 105
    .line 106
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mDirty:Landroid/util/ArraySet;

    .line 114
    .line 115
    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedProviders:Landroid/util/ArrayMap;

    .line 116
    .line 117
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_3
    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager$H;->this$0:Lcom/android/server/slice/SlicePermissionManager;

    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/android/server/slice/SlicePermissionManager;->handlePersist()V

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_4
    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager$H;->this$0:Lcom/android/server/slice/SlicePermissionManager;

    .line 132
    .line 133
    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager;->mDirty:Landroid/util/ArraySet;

    .line 134
    .line 135
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast p1, Lcom/android/server/slice/DirtyTracker$Persistable;

    .line 138
    .line 139
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    :goto_0
    return-void
.end method
