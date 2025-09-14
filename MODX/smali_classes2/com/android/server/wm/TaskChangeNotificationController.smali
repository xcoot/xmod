.class public final Lcom/android/server/wm/TaskChangeNotificationController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mHandler:Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

.field public final mLocalTaskStackListeners:Ljava/util/ArrayList;

.field public final mNotifyActivityDismissingDockedTask:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

.field public final mNotifyActivityForcedResizable:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

.field public final mNotifyActivityLaunchOnSecondaryDisplayFailed:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

.field public final mNotifyActivityLaunchOnSecondaryDisplayRerouted:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

.field public final mNotifyActivityPinned:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

.field public final mNotifyActivityRequestedOrientationChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

.field public final mNotifyActivityRestartAttempt:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

.field public final mNotifyActivityUnpinned:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

.field public final mNotifyBackPressedOnTaskRoot:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

.field public final mNotifyLockTaskModeChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

.field public final mNotifyOnActivityRotation:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

.field public final mNotifyTaskCreated:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

.field public final mNotifyTaskDescriptionChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

.field public final mNotifyTaskDisplayChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

.field public final mNotifyTaskFocusChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

.field public final mNotifyTaskListFrozen:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

.field public final mNotifyTaskListUpdated:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

.field public final mNotifyTaskMovedToBack:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

.field public final mNotifyTaskMovedToFront:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

.field public final mNotifyTaskProfileLocked:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

.field public final mNotifyTaskRemovalStarted:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

.field public final mNotifyTaskRemoved:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

.field public final mNotifyTaskRequestedOrientationChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

.field public final mNotifyTaskSnapshotChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

.field public final mNotifyTaskSnapshotInvalidated:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

.field public final mNotifyTaskStackChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

.field public final mNotifyTaskWindowingModeChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

.field public final mNotifyTaskbarVisibleChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

.field public final mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

.field public final mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;


# direct methods
.method public static -$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 7
    .line 8
    .line 9
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    add-int/lit8 v1, v1, -0x1

    .line 11
    .line 12
    :goto_0
    if-ltz v1, :cond_0

    .line 13
    .line 14
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Landroid/app/ITaskStackListener;

    .line 21
    .line 22
    invoke-virtual {p1, v2, p2}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;->accept(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_2

    .line 28
    :catch_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    :try_start_2
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 34
    .line 35
    .line 36
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    throw p0
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/os/Handler;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/RemoteCallbackList;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskStackChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 25
    .line 26
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    const/4 v1, 0x2

    .line 29
    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskCreated:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 35
    .line 36
    const/16 v1, 0xc

    .line 37
    .line 38
    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRemoved:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 42
    .line 43
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 44
    .line 45
    const/16 v1, 0xd

    .line 46
    .line 47
    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskMovedToFront:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 51
    .line 52
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 53
    .line 54
    const/16 v1, 0xe

    .line 55
    .line 56
    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskDescriptionChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 60
    .line 61
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 62
    .line 63
    const/16 v1, 0xf

    .line 64
    .line 65
    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyBackPressedOnTaskRoot:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 69
    .line 70
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 71
    .line 72
    const/16 v1, 0x10

    .line 73
    .line 74
    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityRequestedOrientationChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 78
    .line 79
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 80
    .line 81
    const/16 v1, 0x11

    .line 82
    .line 83
    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 84
    .line 85
    .line 86
    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRemovalStarted:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 87
    .line 88
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 89
    .line 90
    const/16 v1, 0x12

    .line 91
    .line 92
    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 93
    .line 94
    .line 95
    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityPinned:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 96
    .line 97
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 98
    .line 99
    const/16 v1, 0x13

    .line 100
    .line 101
    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 102
    .line 103
    .line 104
    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityUnpinned:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 105
    .line 106
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 107
    .line 108
    const/16 v1, 0xb

    .line 109
    .line 110
    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 111
    .line 112
    .line 113
    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityRestartAttempt:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 114
    .line 115
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 116
    .line 117
    const/16 v1, 0x14

    .line 118
    .line 119
    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 120
    .line 121
    .line 122
    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityForcedResizable:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 123
    .line 124
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 125
    .line 126
    const/16 v1, 0x15

    .line 127
    .line 128
    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 129
    .line 130
    .line 131
    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityDismissingDockedTask:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 132
    .line 133
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 134
    .line 135
    const/16 v1, 0x16

    .line 136
    .line 137
    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 138
    .line 139
    .line 140
    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayFailed:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 141
    .line 142
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 143
    .line 144
    const/16 v1, 0x17

    .line 145
    .line 146
    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 147
    .line 148
    .line 149
    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayRerouted:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 150
    .line 151
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 152
    .line 153
    const/16 v1, 0x18

    .line 154
    .line 155
    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 156
    .line 157
    .line 158
    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskProfileLocked:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 159
    .line 160
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 161
    .line 162
    const/16 v1, 0x19

    .line 163
    .line 164
    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 165
    .line 166
    .line 167
    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskSnapshotChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 168
    .line 169
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 170
    .line 171
    const/16 v1, 0x1a

    .line 172
    .line 173
    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 174
    .line 175
    .line 176
    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskSnapshotInvalidated:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 177
    .line 178
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 179
    .line 180
    const/16 v1, 0x1b

    .line 181
    .line 182
    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 183
    .line 184
    .line 185
    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskDisplayChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 186
    .line 187
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 188
    .line 189
    const/4 v1, 0x1

    .line 190
    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 191
    .line 192
    .line 193
    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskListUpdated:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 194
    .line 195
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 196
    .line 197
    const/4 v1, 0x3

    .line 198
    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 199
    .line 200
    .line 201
    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskListFrozen:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 202
    .line 203
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 204
    .line 205
    const/4 v1, 0x4

    .line 206
    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 207
    .line 208
    .line 209
    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskFocusChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 210
    .line 211
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 212
    .line 213
    const/4 v1, 0x5

    .line 214
    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 215
    .line 216
    .line 217
    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRequestedOrientationChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 218
    .line 219
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 220
    .line 221
    const/4 v1, 0x6

    .line 222
    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 223
    .line 224
    .line 225
    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyOnActivityRotation:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 226
    .line 227
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 228
    .line 229
    const/4 v1, 0x7

    .line 230
    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 231
    .line 232
    .line 233
    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskMovedToBack:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 234
    .line 235
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 236
    .line 237
    const/16 v1, 0x8

    .line 238
    .line 239
    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 240
    .line 241
    .line 242
    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyLockTaskModeChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 243
    .line 244
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 245
    .line 246
    const/16 v1, 0x9

    .line 247
    .line 248
    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 249
    .line 250
    .line 251
    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskWindowingModeChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 252
    .line 253
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 254
    .line 255
    const/16 v1, 0xa

    .line 256
    .line 257
    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 258
    .line 259
    .line 260
    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskbarVisibleChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 261
    .line 262
    iput-object p1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 263
    .line 264
    new-instance p1, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    .line 265
    .line 266
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 267
    .line 268
    .line 269
    move-result-object p2

    .line 270
    invoke-direct {p1, p0, p2}, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;-><init>(Lcom/android/server/wm/TaskChangeNotificationController;Landroid/os/Looper;)V

    .line 271
    .line 272
    .line 273
    iput-object p1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    .line 274
    .line 275
    return-void
.end method


# virtual methods
.method public final forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    add-int/lit8 v1, v1, -0x1

    .line 11
    .line 12
    :goto_0
    if-ltz v1, :cond_0

    .line 13
    .line 14
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Landroid/app/ITaskStackListener;

    .line 21
    .line 22
    invoke-virtual {p1, v2, p2}, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;->accept(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_2

    .line 28
    :catch_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    :try_start_2
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    throw p0
.end method

.method public final notifyActivityForcedResizable(IILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object p2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityForcedResizable:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final notifyTaskMovedToFront(Landroid/app/TaskInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskMovedToFront:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final notifyTaskStackChanged()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    const-wide/16 v3, 0x3e8

    .line 13
    .line 14
    div-long/2addr v1, v3

    .line 15
    iget v3, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    .line 16
    .line 17
    const/4 v4, -0x1

    .line 18
    if-eq v3, v4, :cond_0

    .line 19
    .line 20
    iget-object v5, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mLoggerHandler:Landroid/os/Handler;

    .line 21
    .line 22
    new-instance v6, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda4;

    .line 23
    .line 24
    const/4 v7, 0x0

    .line 25
    invoke-direct {v6, v7}, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda4;-><init>(I)V

    .line 26
    .line 27
    .line 28
    sget-object v7, Lcom/android/server/wm/ActivityMetricsLogger;->TRON_WINDOW_STATE_VARZ_STRINGS:[Ljava/lang/String;

    .line 29
    .line 30
    aget-object v3, v7, v3

    .line 31
    .line 32
    iget-wide v7, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastLogTimeSecs:J

    .line 33
    .line 34
    sub-long v7, v1, v7

    .line 35
    .line 36
    long-to-int v7, v7

    .line 37
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    invoke-static {v6, v0, v3, v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 46
    .line 47
    .line 48
    :cond_0
    iput-wide v1, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastLogTimeSecs:J

    .line 49
    .line 50
    iput v4, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    .line 51
    .line 52
    iget-object v1, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 53
    .line 54
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const/4 v2, 0x2

    .line 61
    if-nez v1, :cond_1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeAssistant()Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_2

    .line 69
    .line 70
    const/4 v1, 0x3

    .line 71
    iput v1, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    const/4 v4, 0x1

    .line 79
    if-eq v3, v4, :cond_5

    .line 80
    .line 81
    const/4 v4, 0x5

    .line 82
    if-eq v3, v4, :cond_4

    .line 83
    .line 84
    const/4 v4, 0x6

    .line 85
    if-eq v3, v4, :cond_3

    .line 86
    .line 87
    if-eqz v3, :cond_6

    .line 88
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v4, "Unknown windowing mode for task="

    .line 92
    .line 93
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v1, " windowingMode="

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    const-string v1, "ActivityTaskManager"

    .line 112
    .line 113
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_3
    const/4 v1, 0x4

    .line 118
    iput v1, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_4
    iput v2, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_5
    const/4 v1, 0x0

    .line 125
    iput v1, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    .line 126
    .line 127
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    .line 128
    .line 129
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    iget-object v2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskStackChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 137
    .line 138
    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 139
    .line 140
    .line 141
    const-wide/16 v2, 0x64

    .line 142
    .line 143
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 144
    .line 145
    .line 146
    return-void
.end method
