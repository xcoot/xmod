.class public final Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

.field public final synthetic val$observer:Landroid/content/pm/IPackageDataObserver;

.field public final synthetic val$packageName:Ljava/lang/String;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$packageName:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$userId:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$observer:Landroid/content/pm/IPackageDataObserver;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    const-string/jumbo v0, "result of clearing user data: "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    .line 14
    .line 15
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$packageName:Ljava/lang/String;

    .line 18
    .line 19
    const-string v5, "clearApplicationUserData"

    .line 20
    .line 21
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    new-instance v1, Lcom/android/server/pm/PackageFreezer;

    .line 25
    .line 26
    const/4 v8, 0x0

    .line 27
    const/4 v9, 0x1

    .line 28
    const/4 v4, -0x1

    .line 29
    const/16 v7, 0xa

    .line 30
    .line 31
    move-object v2, v1

    .line 32
    invoke-direct/range {v2 .. v9}, Lcom/android/server/pm/PackageFreezer;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/pm/PackageManagerService;ILcom/android/server/pm/InstallRequest;Z)V

    .line 33
    .line 34
    .line 35
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    .line 36
    .line 37
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 38
    .line 39
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 40
    .line 41
    iget-object v3, v2, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 44
    .line 45
    .line 46
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    .line 47
    .line 48
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 49
    .line 50
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$packageName:Ljava/lang/String;

    .line 55
    .line 56
    iget v6, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$userId:I

    .line 57
    .line 58
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/pm/PackageManagerService;->clearApplicationUserDataLIF(Lcom/android/server/pm/Computer;Ljava/lang/String;I)Z

    .line 59
    .line 60
    .line 61
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 62
    :try_start_2
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    .line 63
    .line 64
    .line 65
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    .line 66
    .line 67
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 68
    .line 69
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 70
    .line 71
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$packageName:Ljava/lang/String;

    .line 72
    .line 73
    iget v5, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$userId:I

    .line 74
    .line 75
    invoke-virtual {v2, v5, v4}, Lcom/android/server/pm/InstantAppRegistry;->deleteInstantApplicationMetadata(ILjava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    .line 79
    .line 80
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 81
    .line 82
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 83
    .line 84
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 85
    .line 86
    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 87
    if-eqz v3, :cond_0

    .line 88
    .line 89
    :try_start_3
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    .line 90
    .line 91
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 92
    .line 93
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$packageName:Ljava/lang/String;

    .line 94
    .line 95
    iget v6, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$userId:I

    .line 96
    .line 97
    invoke-static {v4, v5, v6}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$mresetComponentEnabledSettingsIfNeededLPw(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :catchall_0
    move-exception p0

    .line 102
    goto/16 :goto_4

    .line 103
    .line 104
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 105
    invoke-virtual {v1}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 106
    .line 107
    .line 108
    if-eqz v3, :cond_2

    .line 109
    .line 110
    const-class v1, Lcom/android/server/storage/DeviceStorageMonitorService$2;

    .line 111
    .line 112
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    check-cast v1, Lcom/android/server/storage/DeviceStorageMonitorService$2;

    .line 117
    .line 118
    const/4 v2, 0x1

    .line 119
    if-eqz v1, :cond_1

    .line 120
    .line 121
    iget-object v1, v1, Lcom/android/server/storage/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    .line 122
    .line 123
    iget-object v4, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Lcom/android/server/storage/DeviceStorageMonitorService$1;

    .line 124
    .line 125
    invoke-virtual {v4, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 126
    .line 127
    .line 128
    iget-object v1, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Lcom/android/server/storage/DeviceStorageMonitorService$1;

    .line 129
    .line 130
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 135
    .line 136
    .line 137
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    .line 138
    .line 139
    const-string v4, "android.permission.SUSPEND_APPS"

    .line 140
    .line 141
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$packageName:Ljava/lang/String;

    .line 142
    .line 143
    iget v6, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$userId:I

    .line 144
    .line 145
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 146
    .line 147
    invoke-virtual {v1, v4, v5, v6}, Lcom/android/server/pm/PackageManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-nez v1, :cond_2

    .line 152
    .line 153
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    .line 154
    .line 155
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 156
    .line 157
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    .line 162
    .line 163
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 164
    .line 165
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$packageName:Ljava/lang/String;

    .line 166
    .line 167
    iget v6, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$userId:I

    .line 168
    .line 169
    invoke-virtual {v4, v6, v1, v5, v2}, Lcom/android/server/pm/PackageManagerService;->unsuspendForSuspendingPackage(ILcom/android/server/pm/Computer;Ljava/lang/String;Z)V

    .line 170
    .line 171
    .line 172
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    .line 173
    .line 174
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 175
    .line 176
    iget v4, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$userId:I

    .line 177
    .line 178
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    invoke-interface {v1}, Lcom/android/server/pm/Computer;->getAllAvailablePackageNames()[Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mDistractingPackageHelper:Lcom/android/server/pm/DistractingPackageHelper;

    .line 186
    .line 187
    invoke-virtual {v2, v1, v5, v4}, Lcom/android/server/pm/DistractingPackageHelper;->removeDistractingPackageRestrictions(Lcom/android/server/pm/Computer;[Ljava/lang/String;I)V

    .line 188
    .line 189
    .line 190
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    .line 191
    .line 192
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 193
    .line 194
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 195
    .line 196
    monitor-enter v1

    .line 197
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    .line 198
    .line 199
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 200
    .line 201
    iget v4, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$userId:I

    .line 202
    .line 203
    invoke-virtual {v2, v4}, Lcom/android/server/pm/PackageManagerService;->flushPackageRestrictionsAsUserInternalLocked(I)V

    .line 204
    .line 205
    .line 206
    monitor-exit v1

    .line 207
    goto :goto_1

    .line 208
    :catchall_1
    move-exception p0

    .line 209
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 210
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 211
    .line 212
    throw p0

    .line 213
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$observer:Landroid/content/pm/IPackageDataObserver;

    .line 214
    .line 215
    if-eqz v1, :cond_4

    .line 216
    .line 217
    :try_start_5
    const-string v1, "PackageManager"

    .line 218
    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    if-eqz v3, :cond_3

    .line 225
    .line 226
    const-string/jumbo v0, "succeeded"

    .line 227
    .line 228
    .line 229
    goto :goto_2

    .line 230
    :cond_3
    const-string v0, "failed"

    .line 231
    .line 232
    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    const-string/jumbo v0, "{"

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$observer:Landroid/content/pm/IPackageDataObserver;

    .line 242
    .line 243
    invoke-interface {v0}, Landroid/content/pm/IPackageDataObserver;->hashCode()I

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    const-string/jumbo v0, "}"

    .line 251
    .line 252
    .line 253
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .line 262
    .line 263
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$observer:Landroid/content/pm/IPackageDataObserver;

    .line 264
    .line 265
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;->val$packageName:Ljava/lang/String;

    .line 266
    .line 267
    invoke-interface {v0, p0, v3}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 268
    .line 269
    .line 270
    goto :goto_3

    .line 271
    :catch_0
    const-string p0, "PackageManager"

    .line 272
    .line 273
    const-string v0, "Observer no longer exists."

    .line 274
    .line 275
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .line 277
    .line 278
    :cond_4
    :goto_3
    return-void

    .line 279
    :goto_4
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 280
    :try_start_7
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 281
    .line 282
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 283
    :catchall_2
    move-exception p0

    .line 284
    goto :goto_6

    .line 285
    :catchall_3
    move-exception p0

    .line 286
    :try_start_8
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 287
    .line 288
    .line 289
    goto :goto_5

    .line 290
    :catchall_4
    move-exception v0

    .line 291
    :try_start_9
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 292
    .line 293
    .line 294
    :goto_5
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 295
    :goto_6
    :try_start_a
    invoke-virtual {v1}, Lcom/android/server/pm/PackageFreezer;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 296
    .line 297
    .line 298
    goto :goto_7

    .line 299
    :catchall_5
    move-exception v0

    .line 300
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 301
    .line 302
    .line 303
    :goto_7
    throw p0
.end method
