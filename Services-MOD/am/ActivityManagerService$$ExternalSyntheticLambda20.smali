.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda20;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda20;->f$0:Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda20;->f$1:Ljava/lang/Object;

    .line 7
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda20;->f$2:Ljava/lang/Object;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 14

    .line 1
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda20;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda20;->f$0:Ljava/lang/Object;

    .line 8
    check-cast v0, Landroid/util/SparseArray;

    .line 10
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda20;->f$1:Ljava/lang/Object;

    .line 12
    check-cast v1, [J

    .line 14
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda20;->f$2:Ljava/lang/Object;

    .line 16
    check-cast p0, [Ljava/util/ArrayList;

    .line 18
    check-cast p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 20
    iget-wide v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    .line 22
    const-wide/16 v4, 0x0

    .line 24
    cmp-long v2, v2, v4

    .line 26
    if-lez v2, :cond_2

    .line 28
    iget v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 30
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 33
    move-result v0

    .line 34
    if-gez v0, :cond_2

    .line 36
    iget v0, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 38
    invoke-static {v0}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getWritebackSizePid(I)[J

    .line 41
    move-result-object v0

    .line 42
    if-nez v0, :cond_0

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    new-instance v11, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    .line 49
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    iget-object v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string v3, " (pid "

    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget p1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 64
    const-string v3, ")"

    .line 66
    invoke-static {p1, v2, v3}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object v10

    .line 70
    const/4 p1, 0x0

    .line 71
    aget-wide v4, v0, p1

    .line 73
    const/4 v2, 0x1

    .line 74
    aget-wide v12, v0, v2

    .line 76
    const/4 v3, 0x0

    .line 77
    const-wide/16 v8, -0x1

    .line 79
    move-object v2, v11

    .line 80
    move-wide v6, v12

    .line 81
    invoke-direct/range {v2 .. v10}, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;-><init>(IJJJLjava/lang/String;)V

    .line 84
    aget-wide v2, v1, p1

    .line 86
    add-long/2addr v2, v12

    .line 87
    aput-wide v2, v1, p1

    .line 89
    aget-object v0, p0, p1

    .line 91
    if-nez v0, :cond_1

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    .line 95
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    aput-object v0, p0, p1

    .line 100
    :cond_1
    aget-object p0, p0, p1

    .line 102
    invoke-virtual {p0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_2
    :goto_0
    return-void

    .line 106
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda20;->f$0:Ljava/lang/Object;

    .line 108
    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    .line 110
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda20;->f$1:Ljava/lang/Object;

    .line 112
    check-cast v1, Ljava/io/PrintWriter;

    .line 114
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda20;->f$2:Ljava/lang/Object;

    .line 116
    check-cast p0, Landroid/os/ParcelFileDescriptor;

    .line 118
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 120
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    const-string v2, ".  Exception: "

    .line 125
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 127
    if-nez v3, :cond_3

    .line 129
    goto/16 :goto_6

    .line 131
    :cond_3
    sget-boolean v4, Landroid/os/Binder;->isSystemServerBinderTrackerEnabled:Z

    .line 133
    if-eqz v4, :cond_4

    .line 135
    goto :goto_1

    .line 136
    :cond_4
    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 138
    if-nez v4, :cond_5

    .line 140
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isDebuggable()Z

    .line 143
    move-result v4

    .line 144
    if-eqz v4, :cond_8

    .line 146
    :cond_5
    :goto_1
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->isFreezerSupported()Z

    .line 149
    move-result v4

    .line 150
    if-eqz v4, :cond_6

    .line 152
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 154
    iget-object v0, v0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 156
    const/16 v4, 0x17

    .line 158
    invoke-virtual {v0, v4, p1}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(ILcom/android/server/am/ProcessRecord;)V

    .line 161
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 163
    const-string v4, "Traces for process: "

    .line 165
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 170
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 183
    :try_start_0
    new-instance v0, Lcom/android/internal/os/TransferPipe;

    .line 185
    invoke-direct {v0}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :try_start_1
    sget-boolean v4, Landroid/os/Binder;->isSystemServerBinderTrackerEnabled:Z

    .line 190
    if-eqz v4, :cond_7

    .line 192
    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    .line 195
    move-result-object v4

    .line 196
    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 198
    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 200
    invoke-virtual {v6}, Lcom/android/server/am/PackageList;->getPackageList()[Ljava/lang/String;

    .line 203
    move-result-object v6

    .line 204
    const/4 v7, 0x0

    .line 205
    aget-object v6, v6, v7

    .line 207
    iget v7, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 209
    iget v8, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 211
    invoke-interface/range {v3 .. v8}, Landroid/app/IApplicationThread;->stopBinderTrackingAndDumpSystemServer(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;II)V

    .line 214
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 217
    move-result-object p0

    .line 218
    const-wide/16 v3, 0x2710

    .line 220
    invoke-virtual {v0, p0, v3, v4}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V

    .line 223
    goto :goto_2

    .line 224
    :catchall_0
    move-exception p0

    .line 225
    goto :goto_3

    .line 226
    :cond_7
    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    .line 229
    move-result-object v4

    .line 230
    invoke-interface {v3, v4}, Landroid/app/IApplicationThread;->stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)V

    .line 233
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 236
    move-result-object p0

    .line 237
    invoke-virtual {v0, p0}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 243
    goto :goto_6

    .line 244
    :catch_0
    move-exception p0

    .line 245
    goto :goto_4

    .line 246
    :catch_1
    move-exception p0

    .line 247
    goto :goto_5

    .line 248
    :goto_3
    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 251
    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 252
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 254
    const-string v3, "Got a RemoteException while dumping IPC traces from "

    .line 256
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    move-result-object p0

    .line 272
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 278
    goto :goto_6

    .line 279
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 281
    const-string v3, "Failure while dumping IPC traces from "

    .line 283
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    move-result-object p0

    .line 299
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 305
    :cond_8
    :goto_6
    return-void

    .line 306
    nop

    .line 307
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
