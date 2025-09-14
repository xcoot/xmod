.class public final Lcom/android/server/BinderCallsStatsService;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

.field public final mWorkSourceProvider:Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BinderCallsStats;Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/BinderCallsStatsService;->mWorkSourceProvider:Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "binder_calls_stats"

    .line 6
    .line 7
    .line 8
    invoke-static {p1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    if-eqz p3, :cond_6

    .line 17
    .line 18
    move v0, p1

    .line 19
    :goto_0
    array-length v1, p3

    .line 20
    if-ge p1, v1, :cond_4

    .line 21
    .line 22
    aget-object v1, p3, p1

    .line 23
    .line 24
    const-string v2, "-a"

    .line 25
    .line 26
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const-string v2, "-h"

    .line 35
    .line 36
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    const-string/jumbo p0, "dumpsys binder_calls_stats options:"

    .line 43
    .line 44
    .line 45
    const-string p1, "  -a: Verbose"

    .line 46
    .line 47
    const-string p3, "  --work-source-uid <UID>: Dump binder calls from the UID"

    .line 48
    .line 49
    const-string v0, "  --set-cpu-threshold <threshold>: Set new CPU threshold"

    .line 50
    .line 51
    invoke-static {p2, p0, p1, p3, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string p0, "  --set-sampling <sampling value>: Set new sampling ratio"

    .line 55
    .line 56
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string p0, "  --set-limit <limit value>: Set new limit value(default 1500)"

    .line 60
    .line 61
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_2
    const-string v2, "--work-source-uid"

    .line 66
    .line 67
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_3

    .line 72
    .line 73
    const-string p0, "Currently SEC debugging feature is enabled."

    .line 74
    .line 75
    const-string p1, "It collects the incoming binder transactions depending on sampling ratio per package."

    .line 76
    .line 77
    const-string p3, "And it clears the collected binder stats every 1 or 5 minutes."

    .line 78
    .line 79
    const-string v0, "So it can be meaningless to invoke dump() with \'--work-source-uid\'."

    .line 80
    .line 81
    invoke-static {p2, p0, p1, p3, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_3
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_4
    array-length p1, p3

    .line 89
    if-lez p1, :cond_5

    .line 90
    .line 91
    new-instance v1, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;

    .line 92
    .line 93
    invoke-direct {v1, p0, p2}, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;-><init>(Lcom/android/server/BinderCallsStatsService;Ljava/io/PrintWriter;)V

    .line 94
    .line 95
    .line 96
    sget-object v4, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    .line 97
    .line 98
    sget-object v5, Ljava/io/FileDescriptor;->err:Ljava/io/FileDescriptor;

    .line 99
    .line 100
    const/4 v3, 0x0

    .line 101
    move-object v2, p0

    .line 102
    move-object v6, p3

    .line 103
    invoke-virtual/range {v1 .. v6}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-nez p1, :cond_5

    .line 108
    .line 109
    return-void

    .line 110
    :cond_5
    move p1, v0

    .line 111
    :cond_6
    iget-object p3, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 112
    .line 113
    invoke-static {}, Lcom/android/internal/os/AppIdToPackageMap;->getSnapshot()Lcom/android/internal/os/AppIdToPackageMap;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    const/4 v1, -0x1

    .line 118
    invoke-virtual {p3, p2, v0, v1, p1}, Lcom/android/internal/os/BinderCallsStats;->dump(Ljava/io/PrintWriter;Lcom/android/internal/os/AppIdToPackageMap;IZ)V

    .line 119
    .line 120
    .line 121
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 122
    .line 123
    invoke-virtual {p0, p2}, Lcom/android/internal/os/BinderCallsStats;->dumpStats(Ljava/io/PrintWriter;)V

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method public final handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .locals 7

    .line 1
    new-instance v6, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {v6, p0, v0}, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;-><init>(Lcom/android/server/BinderCallsStatsService;Ljava/io/PrintWriter;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    move-object v0, v6

    .line 20
    move-object v1, p0

    .line 21
    move-object v5, p4

    .line 22
    invoke-virtual/range {v0 .. v5}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    invoke-virtual {v6}, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->onHelp()V

    .line 29
    .line 30
    .line 31
    :cond_0
    return p0
.end method
