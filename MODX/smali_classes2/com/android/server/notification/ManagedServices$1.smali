.class public final Lcom/android/server/notification/ManagedServices$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public mRemovedInfo:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field public mService:Landroid/os/IInterface;

.field public final synthetic this$0:Lcom/android/server/notification/ManagedServices;

.field public final synthetic val$isSystem:Z

.field public final synthetic val$servicesBindingTag:Landroid/util/Pair;

.field public final synthetic val$targetSdkVersion:I

.field public final synthetic val$uid:I

.field public final synthetic val$userid:I


# direct methods
.method public constructor <init>(Lcom/android/server/notification/ManagedServices;ILandroid/util/Pair;ZII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/notification/ManagedServices$1;->val$userid:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/notification/ManagedServices$1;->val$servicesBindingTag:Landroid/util/Pair;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/server/notification/ManagedServices$1;->val$isSystem:Z

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/notification/ManagedServices$1;->val$targetSdkVersion:I

    .line 13
    .line 14
    iput p6, p0, Lcom/android/server/notification/ManagedServices$1;->val$uid:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget v2, p0, Lcom/android/server/notification/ManagedServices$1;->val$userid:I

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, " "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    .line 21
    .line 22
    iget-object v2, v2, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    .line 23
    .line 24
    iget-object v2, v2, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, " binding died: "

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    .line 47
    .line 48
    monitor-enter v0

    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    .line 50
    .line 51
    iget-object v1, v1, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    add-int/lit8 v1, v1, -0x1

    .line 58
    .line 59
    :goto_0
    if-ltz v1, :cond_1

    .line 60
    .line 61
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    .line 62
    .line 63
    iget-object v2, v2, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 70
    .line 71
    iget-boolean v3, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    .line 72
    .line 73
    if-eqz v3, :cond_0

    .line 74
    .line 75
    iget-object v3, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 76
    .line 77
    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_0

    .line 82
    .line 83
    iput-object v2, p0, Lcom/android/server/notification/ManagedServices$1;->mRemovedInfo:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :catchall_0
    move-exception p0

    .line 87
    goto :goto_3

    .line 88
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    .line 92
    .line 93
    iget v2, p0, Lcom/android/server/notification/ManagedServices$1;->val$userid:I

    .line 94
    .line 95
    invoke-virtual {v1, p0, p1, v2}, Lcom/android/server/notification/ManagedServices;->unbindService(Landroid/content/ServiceConnection;Landroid/content/ComponentName;I)V

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    .line 99
    .line 100
    iget-object v1, v1, Lcom/android/server/notification/ManagedServices;->mServicesRebinding:Landroid/util/ArraySet;

    .line 101
    .line 102
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$1;->val$servicesBindingTag:Landroid/util/Pair;

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-nez v1, :cond_2

    .line 109
    .line 110
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    .line 111
    .line 112
    iget-object v1, v1, Lcom/android/server/notification/ManagedServices;->mServicesRebinding:Landroid/util/ArraySet;

    .line 113
    .line 114
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$1;->val$servicesBindingTag:Landroid/util/Pair;

    .line 115
    .line 116
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    .line 120
    .line 121
    iget-object v1, v1, Lcom/android/server/notification/ManagedServices;->mHandler:Landroid/os/Handler;

    .line 122
    .line 123
    iget v2, p0, Lcom/android/server/notification/ManagedServices$1;->val$userid:I

    .line 124
    .line 125
    new-instance v3, Lcom/android/server/notification/ManagedServices$1$$ExternalSyntheticLambda0;

    .line 126
    .line 127
    invoke-direct {v3, p0, p1, v2}, Lcom/android/server/notification/ManagedServices$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/ManagedServices$1;Landroid/content/ComponentName;I)V

    .line 128
    .line 129
    .line 130
    const-wide/16 p0, 0x2710

    .line 131
    .line 132
    invoke-virtual {v1, v3, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 133
    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_2
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    .line 137
    .line 138
    iget-object v1, v1, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 139
    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .line 144
    .line 145
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    .line 146
    .line 147
    iget-object v3, v3, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    .line 148
    .line 149
    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string v3, " not rebinding in user "

    .line 155
    .line 156
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    iget p0, p0, Lcom/android/server/notification/ManagedServices$1;->val$userid:I

    .line 160
    .line 161
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string p0, " as a previous rebind attempt was made: "

    .line 165
    .line 166
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    :goto_2
    monitor-exit v0

    .line 180
    return-void

    .line 181
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    throw p0
.end method

.method public final onNullBinding(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v2, "onNullBinding() called with: name = ["

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p1, "]"

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget v2, p0, Lcom/android/server/notification/ManagedServices$1;->val$userid:I

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, " "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    .line 21
    .line 22
    iget-object v2, v2, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    .line 23
    .line 24
    iget-object v2, v2, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, " service connected: "

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    .line 47
    .line 48
    monitor-enter v0

    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    .line 50
    .line 51
    iget-object v1, v1, Lcom/android/server/notification/ManagedServices;->mServicesRebinding:Landroid/util/ArraySet;

    .line 52
    .line 53
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$1;->val$servicesBindingTag:Landroid/util/Pair;

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    const/4 v2, 0x0

    .line 60
    :try_start_1
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    .line 61
    .line 62
    invoke-virtual {v3, p2}, Lcom/android/server/notification/ManagedServices;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    iput-object v6, p0, Lcom/android/server/notification/ManagedServices$1;->mService:Landroid/os/IInterface;

    .line 67
    .line 68
    iget-object v5, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    .line 69
    .line 70
    iget v8, p0, Lcom/android/server/notification/ManagedServices$1;->val$userid:I

    .line 71
    .line 72
    iget-boolean v9, p0, Lcom/android/server/notification/ManagedServices$1;->val$isSystem:Z

    .line 73
    .line 74
    iget v11, p0, Lcom/android/server/notification/ManagedServices$1;->val$targetSdkVersion:I

    .line 75
    .line 76
    iget v12, p0, Lcom/android/server/notification/ManagedServices$1;->val$uid:I

    .line 77
    .line 78
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    new-instance v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 82
    .line 83
    move-object v4, v3

    .line 84
    move-object v7, p1

    .line 85
    move-object v10, p0

    .line 86
    invoke-direct/range {v4 .. v12}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;-><init>(Lcom/android/server/notification/ManagedServices;Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    .line 88
    .line 89
    :try_start_2
    invoke-interface {p2, v3, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    .line 93
    .line 94
    iget-object p1, p1, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    goto :goto_1

    .line 101
    :catchall_0
    move-exception p0

    .line 102
    goto :goto_2

    .line 103
    :catch_0
    move-exception p1

    .line 104
    move-object v2, v3

    .line 105
    goto :goto_0

    .line 106
    :catch_1
    move-exception p1

    .line 107
    :goto_0
    :try_start_3
    iget-object p2, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    .line 108
    .line 109
    iget-object p2, p2, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 110
    .line 111
    const-string v3, "Failed to linkToDeath, already dead"

    .line 112
    .line 113
    invoke-static {p2, v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    .line 115
    .line 116
    move-object v3, v2

    .line 117
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 118
    if-eqz v1, :cond_0

    .line 119
    .line 120
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    .line 121
    .line 122
    invoke-virtual {p0, v3}, Lcom/android/server/notification/ManagedServices;->onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 123
    .line 124
    .line 125
    :cond_0
    return-void

    .line 126
    :goto_2
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 127
    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget v2, p0, Lcom/android/server/notification/ManagedServices$1;->val$userid:I

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, " "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p0, " connection lost: "

    .line 30
    .line 31
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    return-void
.end method
