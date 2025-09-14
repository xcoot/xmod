.class public final Lcom/android/server/StorageManagerService$9;
.super Landroid/os/IVoldTaskListener$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/StorageManagerService;

.field public final synthetic val$listener:Landroid/os/IVoldTaskListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/StorageManagerService$9;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/StorageManagerService$9;->this$0:Lcom/android/server/StorageManagerService;

    .line 5
    iput-object p2, p0, Lcom/android/server/StorageManagerService$9;->val$listener:Landroid/os/IVoldTaskListener;

    .line 7
    invoke-direct {p0}, Landroid/os/IVoldTaskListener$Stub;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final onFinished(ILandroid/os/PersistableBundle;)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/server/StorageManagerService$9;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/StorageManagerService$9;->this$0:Lcom/android/server/StorageManagerService;

    .line 8
    iget-object p0, p0, Lcom/android/server/StorageManagerService$9;->val$listener:Landroid/os/IVoldTaskListener;

    .line 10
    invoke-static {v0, p0, p1, p2}, Lcom/android/server/StorageManagerService;->-$$Nest$mdispatchOnFinished(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V

    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService$9;->this$0:Lcom/android/server/StorageManagerService;

    .line 16
    iget-object v1, p0, Lcom/android/server/StorageManagerService$9;->val$listener:Landroid/os/IVoldTaskListener;

    .line 18
    invoke-static {v0, v1, p1, p2}, Lcom/android/server/StorageManagerService;->-$$Nest$mdispatchOnFinished(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V

    .line 21
    const-string/jumbo p1, "path"

    .line 24
    invoke-virtual {p2, p1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    const-string/jumbo v0, "ident"

    .line 31
    invoke-virtual {p2, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    const-string/jumbo v1, "create"

    .line 38
    invoke-virtual {p2, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    .line 41
    move-result-wide v1

    .line 42
    const-string/jumbo v3, "run"

    .line 45
    invoke-virtual {p2, v3}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    .line 48
    move-result-wide v3

    .line 49
    const-string/jumbo v5, "destroy"

    .line 52
    invoke-virtual {p2, v5}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    .line 55
    move-result-wide v5

    .line 56
    iget-object p2, p0, Lcom/android/server/StorageManagerService$9;->this$0:Lcom/android/server/StorageManagerService;

    .line 58
    iget-object p2, p2, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 60
    const-class v7, Landroid/os/DropBoxManager;

    .line 62
    invoke-virtual {p2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 65
    move-result-object p2

    .line 66
    check-cast p2, Landroid/os/DropBoxManager;

    .line 68
    const-string/jumbo v7, "storage_benchmark"

    .line 71
    new-instance v8, Ljava/lang/StringBuilder;

    .line 73
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    iget-object v9, p0, Lcom/android/server/StorageManagerService$9;->this$0:Lcom/android/server/StorageManagerService;

    .line 78
    invoke-static {v9, p1}, Lcom/android/server/StorageManagerService;->-$$Nest$mscrubPath(Lcom/android/server/StorageManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    move-result-object v9

    .line 82
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v9, " "

    .line 87
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string v0, " "

    .line 95
    const-string v9, " "

    .line 97
    invoke-static {v8, v0, v1, v2, v9}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 100
    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 103
    const-string v0, " "

    .line 105
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {p2, v7, v0}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object p2, p0, Lcom/android/server/StorageManagerService$9;->this$0:Lcom/android/server/StorageManagerService;

    .line 120
    iget-object p2, p2, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 122
    monitor-enter p2

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService$9;->this$0:Lcom/android/server/StorageManagerService;

    .line 125
    invoke-virtual {v0, p1}, Lcom/android/server/StorageManagerService;->findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    .line 128
    move-result-object p1

    .line 129
    if-eqz p1, :cond_0

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 134
    move-result-wide v0

    .line 135
    iput-wide v0, p1, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    .line 137
    iget-object p0, p0, Lcom/android/server/StorageManagerService$9;->this$0:Lcom/android/server/StorageManagerService;

    .line 139
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 142
    goto :goto_0

    .line 143
    :catchall_0
    move-exception p0

    .line 144
    goto :goto_1

    .line 145
    :cond_0
    :goto_0
    monitor-exit p2

    .line 146
    return-void

    .line 147
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    throw p0

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onStatus(ILandroid/os/PersistableBundle;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/StorageManagerService$9;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/StorageManagerService$9;->this$0:Lcom/android/server/StorageManagerService;

    .line 8
    iget-object v1, p0, Lcom/android/server/StorageManagerService$9;->val$listener:Landroid/os/IVoldTaskListener;

    .line 10
    invoke-static {v0, v1, p1, p2}, Lcom/android/server/StorageManagerService;->-$$Nest$mdispatchOnStatus(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V

    .line 13
    if-eqz p1, :cond_0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    const-string/jumbo p1, "path"

    .line 19
    invoke-virtual {p2, p1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    const-string/jumbo v0, "bytes"

    .line 26
    invoke-virtual {p2, v0}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    .line 29
    move-result-wide v0

    .line 30
    const-string/jumbo v2, "time"

    .line 33
    invoke-virtual {p2, v2}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    .line 36
    move-result-wide v2

    .line 37
    iget-object p2, p0, Lcom/android/server/StorageManagerService$9;->this$0:Lcom/android/server/StorageManagerService;

    .line 39
    iget-object p2, p2, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 41
    const-class v4, Landroid/os/DropBoxManager;

    .line 43
    invoke-virtual {p2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 46
    move-result-object p2

    .line 47
    check-cast p2, Landroid/os/DropBoxManager;

    .line 49
    const-string/jumbo v4, "storage_trim"

    .line 52
    new-instance v5, Ljava/lang/StringBuilder;

    .line 54
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    iget-object v6, p0, Lcom/android/server/StorageManagerService$9;->this$0:Lcom/android/server/StorageManagerService;

    .line 59
    invoke-static {v6, p1}, Lcom/android/server/StorageManagerService;->-$$Nest$mscrubPath(Lcom/android/server/StorageManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    move-result-object v6

    .line 63
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v6, " "

    .line 68
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 74
    const-string v0, " "

    .line 76
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p2, v4, v0}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object p2, p0, Lcom/android/server/StorageManagerService$9;->this$0:Lcom/android/server/StorageManagerService;

    .line 91
    iget-object v0, p2, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 93
    monitor-enter v0

    .line 94
    :try_start_0
    iget-object p2, p0, Lcom/android/server/StorageManagerService$9;->this$0:Lcom/android/server/StorageManagerService;

    .line 96
    invoke-virtual {p2, p1}, Lcom/android/server/StorageManagerService;->findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    .line 99
    move-result-object p1

    .line 100
    if-eqz p1, :cond_1

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 105
    move-result-wide v1

    .line 106
    iput-wide v1, p1, Landroid/os/storage/VolumeRecord;->lastTrimMillis:J

    .line 108
    iget-object p0, p0, Lcom/android/server/StorageManagerService$9;->this$0:Lcom/android/server/StorageManagerService;

    .line 110
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 113
    goto :goto_0

    .line 114
    :catchall_0
    move-exception p0

    .line 115
    goto :goto_2

    .line 116
    :cond_1
    :goto_0
    monitor-exit v0

    .line 117
    :goto_1
    return-void

    .line 118
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    throw p0

    .line 120
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService$9;->this$0:Lcom/android/server/StorageManagerService;

    .line 122
    iget-object p0, p0, Lcom/android/server/StorageManagerService$9;->val$listener:Landroid/os/IVoldTaskListener;

    .line 124
    invoke-static {v0, p0, p1, p2}, Lcom/android/server/StorageManagerService;->-$$Nest$mdispatchOnStatus(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V

    .line 127
    return-void

    .line 128
    nop

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
