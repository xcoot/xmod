.class public final Lcom/android/server/DropBoxManagerService$ShellCmd;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/DropBoxManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/DropBoxManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$ShellCmd;->this$0:Lcom/android/server/DropBoxManagerService;

    .line 3
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 6
    move-result p0

    .line 7
    return p0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x3

    .line 18
    const/4 v4, 0x1

    .line 19
    const/4 v5, 0x2

    .line 20
    sparse-switch v2, :sswitch_data_0

    .line 23
    goto :goto_0

    .line 24
    :sswitch_0
    const-string/jumbo v2, "set-rate-limit"

    .line 27
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 33
    move v2, v1

    .line 34
    goto :goto_1

    .line 35
    :catch_0
    move-exception p0

    .line 36
    goto/16 :goto_2

    .line 38
    :sswitch_1
    const-string/jumbo v2, "remove-low-priority"

    .line 41
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_1

    .line 47
    move v2, v5

    .line 48
    goto :goto_1

    .line 49
    :sswitch_2
    const-string v2, "add-low-priority"

    .line 51
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_1

    .line 57
    move v2, v4

    .line 58
    goto :goto_1

    .line 59
    :sswitch_3
    const-string/jumbo v2, "restore-defaults"

    .line 62
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_1

    .line 68
    move v2, v3

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    :goto_0
    const/4 v2, -0x1

    .line 71
    :goto_1
    if-eqz v2, :cond_5

    .line 73
    if-eq v2, v4, :cond_4

    .line 75
    if-eq v2, v5, :cond_3

    .line 77
    if-eq v2, v3, :cond_2

    .line 79
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 82
    move-result p0

    .line 83
    return p0

    .line 84
    :cond_2
    iget-object p0, p0, Lcom/android/server/DropBoxManagerService$ShellCmd;->this$0:Lcom/android/server/DropBoxManagerService;

    .line 86
    sget p1, Lcom/android/server/DropBoxManagerService;->DEFAULT_QUOTA_KB:I

    .line 88
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getLowPriorityResourceConfigs()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :try_start_2
    monitor-exit p0

    .line 93
    goto :goto_3

    .line 94
    :catchall_0
    move-exception p1

    .line 95
    monitor-exit p0

    .line 96
    throw p1

    .line 97
    :cond_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 100
    move-result-object p1

    .line 101
    iget-object p0, p0, Lcom/android/server/DropBoxManagerService$ShellCmd;->this$0:Lcom/android/server/DropBoxManagerService;

    .line 103
    sget v2, Lcom/android/server/DropBoxManagerService;->DEFAULT_QUOTA_KB:I

    .line 105
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 106
    :try_start_3
    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    .line 108
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 111
    :try_start_4
    monitor-exit p0

    .line 112
    goto :goto_3

    .line 113
    :catchall_1
    move-exception p1

    .line 114
    monitor-exit p0

    .line 115
    throw p1

    .line 116
    :cond_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 119
    move-result-object p1

    .line 120
    iget-object p0, p0, Lcom/android/server/DropBoxManagerService$ShellCmd;->this$0:Lcom/android/server/DropBoxManagerService;

    .line 122
    sget v2, Lcom/android/server/DropBoxManagerService;->DEFAULT_QUOTA_KB:I

    .line 124
    monitor-enter p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 125
    :try_start_5
    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    .line 127
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 130
    :try_start_6
    monitor-exit p0

    .line 131
    goto :goto_3

    .line 132
    :catchall_2
    move-exception p1

    .line 133
    monitor-exit p0

    .line 134
    throw p1

    .line 135
    :cond_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 138
    move-result-object p1

    .line 139
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 142
    move-result-wide v2

    .line 143
    iget-object p0, p0, Lcom/android/server/DropBoxManagerService$ShellCmd;->this$0:Lcom/android/server/DropBoxManagerService;

    .line 145
    sget p1, Lcom/android/server/DropBoxManagerService;->DEFAULT_QUOTA_KB:I

    .line 147
    monitor-enter p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 148
    :try_start_7
    iput-wide v2, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityRateLimitPeriod:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 150
    :try_start_8
    monitor-exit p0

    .line 151
    goto :goto_3

    .line 152
    :catchall_3
    move-exception p1

    .line 153
    monitor-exit p0

    .line 154
    throw p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 155
    :goto_2
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 158
    :goto_3
    return v1

    .line 159
    :sswitch_data_0
    .sparse-switch
        -0x54335d4f -> :sswitch_3
        -0x1f8bae57 -> :sswitch_2
        -0x1a85055a -> :sswitch_1
        0x737302d9 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onHelp()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "Dropbox manager service commands:"

    .line 7
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10
    const-string v0, "  help"

    .line 12
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    const-string v0, "    Print this help text."

    .line 17
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 20
    const-string v0, "  set-rate-limit PERIOD"

    .line 22
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    const-string v0, "    Sets low priority broadcast rate limit period to PERIOD ms"

    .line 27
    const-string v1, "  add-low-priority TAG"

    .line 29
    const-string v2, "    Add TAG to dropbox low priority list"

    .line 31
    const-string v3, "  remove-low-priority TAG"

    .line 33
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v0, "    Remove TAG from dropbox low priority list"

    .line 38
    const-string v1, "  restore-defaults"

    .line 40
    const-string v2, "    restore dropbox settings to defaults"

    .line 42
    invoke-static {p0, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method
