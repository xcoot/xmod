.class public final Lcom/android/server/am/AppProfiler$RecordPssRunnable;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mDumpUri:Landroid/net/Uri;

.field public final mProfile:Lcom/android/server/am/ProcessProfileRecord;

.field public final synthetic this$0:Lcom/android/server/am/AppProfiler;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppProfiler;Lcom/android/server/am/ProcessProfileRecord;Landroid/net/Uri;Landroid/content/ContentResolver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->this$0:Lcom/android/server/am/AppProfiler;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->mDumpUri:Landroid/net/Uri;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->mContentResolver:Landroid/content/ContentResolver;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->mContentResolver:Landroid/content/ContentResolver;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->mDumpUri:Landroid/net/Uri;

    .line 4
    .line 5
    const-string/jumbo v2, "rw"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 9
    .line 10
    .line 11
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 12
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 13
    .line 14
    iget-object v3, v1, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    :try_start_2
    iget-object v1, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->mDumpUri:Landroid/net/Uri;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v8

    .line 24
    const/4 v10, 0x0

    .line 25
    const/4 v4, 0x1

    .line 26
    const/4 v5, 0x0

    .line 27
    const/4 v6, 0x0

    .line 28
    const/4 v7, 0x0

    .line 29
    move-object v9, v0

    .line 30
    invoke-interface/range {v3 .. v10}, Landroid/app/IApplicationThread;->dumpHeap(ZZZLjava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v1

    .line 35
    goto :goto_1

    .line 36
    :catch_0
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 37
    .line 38
    :try_start_3
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 39
    .line 40
    .line 41
    goto :goto_4

    .line 42
    :catch_1
    move-exception v0

    .line 43
    goto :goto_3

    .line 44
    :goto_1
    if-eqz v0, :cond_1

    .line 45
    .line 46
    :try_start_4
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :catchall_1
    move-exception v0

    .line 51
    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_2
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 55
    :goto_3
    const-string v1, "ActivityManager"

    .line 56
    .line 57
    const-string v2, "Failed to dump heap"

    .line 58
    .line 59
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->this$0:Lcom/android/server/am/AppProfiler;

    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 71
    .line 72
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 73
    .line 74
    const/16 v2, 0x33

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    iput-object p0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 81
    .line 82
    iget-object p0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 83
    .line 84
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 85
    .line 86
    .line 87
    :cond_2
    :goto_4
    return-void
.end method
