.class public final Lcom/android/server/StorageManagerService$8;
.super Landroid/os/IVoldMountCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/StorageManagerService;

.field public final synthetic val$vol:Landroid/os/storage/VolumeInfo;


# direct methods
.method public synthetic constructor <init>(ILandroid/os/storage/VolumeInfo;Lcom/android/server/StorageManagerService;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/StorageManagerService$8;->$r8$classId:I

    .line 3
    iput-object p3, p0, Lcom/android/server/StorageManagerService$8;->this$0:Lcom/android/server/StorageManagerService;

    .line 5
    iput-object p2, p0, Lcom/android/server/StorageManagerService$8;->val$vol:Landroid/os/storage/VolumeInfo;

    .line 7
    invoke-direct {p0}, Landroid/os/IVoldMountCallback$Stub;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final onVolumeChecking(Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/StorageManagerService$8;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    const-string v0, "Failed to close FUSE device fd"

    .line 8
    const-string v1, "StorageManagerService"

    .line 10
    const-string v2, "Failed to mount volume "

    .line 12
    iget-object v3, p0, Lcom/android/server/StorageManagerService$8;->val$vol:Landroid/os/storage/VolumeInfo;

    .line 14
    iput-object p2, v3, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 16
    iput-object p3, v3, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    .line 18
    new-instance p2, Landroid/os/ParcelFileDescriptor;

    .line 20
    invoke-direct {p2, p1}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    .line 23
    :try_start_0
    iget-object p1, p0, Lcom/android/server/StorageManagerService$8;->this$0:Lcom/android/server/StorageManagerService;

    .line 25
    iget-object p1, p1, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    .line 27
    iget-object p3, p0, Lcom/android/server/StorageManagerService$8;->val$vol:Landroid/os/storage/VolumeInfo;

    .line 29
    invoke-virtual {p1, p2, p3}, Lcom/android/server/storage/StorageSessionController;->onVolumeMount(Landroid/os/ParcelFileDescriptor;Landroid/os/storage/VolumeInfo;)V
    :try_end_0
    .catch Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :try_start_1
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception p0

    .line 37
    invoke-static {v1, v0, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    :goto_0
    const/4 p0, 0x1

    .line 41
    goto :goto_2

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_3

    .line 44
    :catch_1
    move-exception p1

    .line 45
    :try_start_2
    new-instance p3, Ljava/lang/StringBuilder;

    .line 47
    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    iget-object v2, p0, Lcom/android/server/StorageManagerService$8;->val$vol:Landroid/os/storage/VolumeInfo;

    .line 52
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object p3

    .line 59
    invoke-static {v1, p3, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    const-string p1, "Scheduling reset in 10s"

    .line 64
    invoke-static {v1, p1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object p1, p0, Lcom/android/server/StorageManagerService$8;->this$0:Lcom/android/server/StorageManagerService;

    .line 69
    iget-object p1, p1, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$Callbacks;

    .line 71
    const/16 p3, 0xa

    .line 73
    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 76
    iget-object p0, p0, Lcom/android/server/StorageManagerService$8;->this$0:Lcom/android/server/StorageManagerService;

    .line 78
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$Callbacks;

    .line 80
    invoke-virtual {p0, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 83
    move-result-object p1

    .line 84
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 86
    int-to-long v3, p3

    .line 87
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 90
    move-result-wide v2

    .line 91
    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    :try_start_3
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 97
    goto :goto_1

    .line 98
    :catch_2
    move-exception p0

    .line 99
    invoke-static {v1, v0, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    :goto_1
    const/4 p0, 0x0

    .line 103
    :goto_2
    return p0

    .line 104
    :goto_3
    :try_start_4
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 107
    goto :goto_4

    .line 108
    :catch_3
    move-exception p1

    .line 109
    invoke-static {v1, v0, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    :goto_4
    throw p0

    .line 113
    :pswitch_0
    const-string v0, "Failed to close FUSE device fd"

    .line 115
    const-string v1, "StorageManagerService"

    .line 117
    iget-object v2, p0, Lcom/android/server/StorageManagerService$8;->val$vol:Landroid/os/storage/VolumeInfo;

    .line 119
    iput-object p2, v2, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 121
    iput-object p3, v2, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    .line 123
    new-instance p2, Landroid/os/ParcelFileDescriptor;

    .line 125
    invoke-direct {p2, p1}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    .line 128
    :try_start_5
    iget-object p1, p0, Lcom/android/server/StorageManagerService$8;->this$0:Lcom/android/server/StorageManagerService;

    .line 130
    iget-object p1, p1, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    .line 132
    iget-object p3, p0, Lcom/android/server/StorageManagerService$8;->val$vol:Landroid/os/storage/VolumeInfo;

    .line 134
    invoke-virtual {p1, p2, p3}, Lcom/android/server/storage/StorageSessionController;->onVolumeMount(Landroid/os/ParcelFileDescriptor;Landroid/os/storage/VolumeInfo;)V
    :try_end_5
    .catch Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 137
    :try_start_6
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 140
    goto :goto_5

    .line 141
    :catch_4
    move-exception p0

    .line 142
    invoke-static {v1, v0, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    :goto_5
    const/4 p0, 0x1

    .line 146
    goto :goto_8

    .line 147
    :catchall_1
    move-exception p0

    .line 148
    goto :goto_9

    .line 149
    :catch_5
    move-exception p1

    .line 150
    :try_start_7
    iget-object p3, p0, Lcom/android/server/StorageManagerService$8;->val$vol:Landroid/os/storage/VolumeInfo;

    .line 152
    iget v2, p3, Landroid/os/storage/VolumeInfo;->type:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 154
    const-string v3, "Failed to mount volume "

    .line 156
    if-nez v2, :cond_0

    .line 158
    :try_start_8
    iget-object v2, p0, Lcom/android/server/StorageManagerService$8;->this$0:Lcom/android/server/StorageManagerService;

    .line 160
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    invoke-static {p3}, Lcom/android/server/StorageManagerService;->createVolumeInfoStrForPulbicVolume(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    .line 166
    move-result-object p3

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    .line 169
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    move-result-object p3

    .line 179
    invoke-static {v1, p3, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    goto :goto_6

    .line 183
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    .line 185
    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    iget-object v2, p0, Lcom/android/server/StorageManagerService$8;->val$vol:Landroid/os/storage/VolumeInfo;

    .line 190
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    move-result-object p3

    .line 197
    invoke-static {v1, p3, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    :goto_6
    const-string p1, "Scheduling reset in 10s"

    .line 202
    invoke-static {v1, p1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object p1, p0, Lcom/android/server/StorageManagerService$8;->this$0:Lcom/android/server/StorageManagerService;

    .line 207
    iget-object p1, p1, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$Callbacks;

    .line 209
    const/16 p3, 0xa

    .line 211
    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 214
    iget-object p0, p0, Lcom/android/server/StorageManagerService$8;->this$0:Lcom/android/server/StorageManagerService;

    .line 216
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$Callbacks;

    .line 218
    invoke-virtual {p0, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 221
    move-result-object p1

    .line 222
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 224
    int-to-long v3, p3

    .line 225
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 228
    move-result-wide v2

    .line 229
    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 232
    :try_start_9
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 235
    goto :goto_7

    .line 236
    :catch_6
    move-exception p0

    .line 237
    invoke-static {v1, v0, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 240
    :goto_7
    const/4 p0, 0x0

    .line 241
    :goto_8
    return p0

    .line 242
    :goto_9
    :try_start_a
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 245
    goto :goto_a

    .line 246
    :catch_7
    move-exception p1

    .line 247
    invoke-static {v1, v0, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    :goto_a
    throw p0

    .line 251
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
