.class public final Lcom/android/server/am/ActivityManagerService$DbBinder;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public mActivityManagerService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/am/ActivityManagerService$DbBinder;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$DbBinder;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    const/4 v0, 0x1

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$DbBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 9
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 11
    iget-object v1, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v1, v2}, Lcom/android/server/am/CachedAppOptimizer;->enableFreezer(Z)Z

    .line 17
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$DbBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 19
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 21
    const-string/jumbo v2, "gfxinfo"

    .line 24
    invoke-static {v1, v2, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 27
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    if-nez v1, :cond_0

    .line 30
    :goto_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$DbBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 32
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 34
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 36
    invoke-virtual {p0, v0}, Lcom/android/server/am/CachedAppOptimizer;->enableFreezer(Z)Z

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$DbBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 42
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->dumpGraphicsHardwareUsage(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    goto :goto_0

    .line 46
    :goto_1
    return-void

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$DbBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 50
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 52
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 54
    invoke-virtual {p0, v0}, Lcom/android/server/am/CachedAppOptimizer;->enableFreezer(Z)Z

    .line 57
    throw p1

    .line 58
    :pswitch_0
    const/4 v0, 0x1

    .line 59
    :try_start_2
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$DbBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 61
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 63
    iget-object v1, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 65
    const/4 v2, 0x0

    .line 66
    invoke-virtual {v1, v2}, Lcom/android/server/am/CachedAppOptimizer;->enableFreezer(Z)Z

    .line 69
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$DbBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 71
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 73
    const-string/jumbo v2, "cacheinfo"

    .line 76
    invoke-static {v1, v2, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 79
    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 80
    if-nez v1, :cond_1

    .line 82
    :goto_2
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$DbBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 84
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 86
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 88
    invoke-virtual {p0, v0}, Lcom/android/server/am/CachedAppOptimizer;->enableFreezer(Z)Z

    .line 91
    goto :goto_3

    .line 92
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$DbBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 94
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->dumpBinderCacheContents(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 97
    goto :goto_2

    .line 98
    :goto_3
    return-void

    .line 99
    :catchall_1
    move-exception p1

    .line 100
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$DbBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 102
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 104
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 106
    invoke-virtual {p0, v0}, Lcom/android/server/am/CachedAppOptimizer;->enableFreezer(Z)Z

    .line 109
    throw p1

    .line 110
    :pswitch_1
    const/4 v0, 0x1

    .line 111
    :try_start_4
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$DbBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 113
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 115
    iget-object v1, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 117
    const/4 v2, 0x0

    .line 118
    invoke-virtual {v1, v2}, Lcom/android/server/am/CachedAppOptimizer;->enableFreezer(Z)Z

    .line 121
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$DbBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 123
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 125
    const-string/jumbo v2, "dbinfo"

    .line 128
    invoke-static {v1, v2, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 131
    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 132
    if-nez v1, :cond_2

    .line 134
    :goto_4
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$DbBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 136
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 138
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 140
    invoke-virtual {p0, v0}, Lcom/android/server/am/CachedAppOptimizer;->enableFreezer(Z)Z

    .line 143
    goto :goto_5

    .line 144
    :cond_2
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$DbBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 146
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->dumpDbInfo(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 149
    goto :goto_4

    .line 150
    :goto_5
    return-void

    .line 151
    :catchall_2
    move-exception p1

    .line 152
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$DbBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 154
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 156
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 158
    invoke-virtual {p0, v0}, Lcom/android/server/am/CachedAppOptimizer;->enableFreezer(Z)Z

    .line 161
    throw p1

    .line 162
    nop

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
