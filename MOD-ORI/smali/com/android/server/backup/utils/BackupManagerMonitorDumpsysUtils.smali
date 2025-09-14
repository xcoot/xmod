.class public final Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final LOGS_RETENTION_PERIOD_MILLISEC:J


# instance fields
.field public mIsAfterRetentionPeriod:Z

.field public mIsAfterRetentionPeriodCached:Z

.field public mIsFileLargerThanSizeLimit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x1

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const-wide/16 v2, 0x3c

    .line 10
    .line 11
    mul-long/2addr v0, v2

    .line 12
    sput-wide v0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->LOGS_RETENTION_PERIOD_MILLISEC:J

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsAfterRetentionPeriodCached:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsFileLargerThanSizeLimit:Z

    .line 8
    .line 9
    return-void
.end method

.method public static addAgentLogsIfAvailable(Landroid/os/Bundle;Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    const-string v0, "android.app.backup.extra.LOG_AGENT_LOGGING_RESULTS"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    xor-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    :goto_0
    if-eqz v1, :cond_2

    .line 22
    .line 23
    const-string v1, "\tAgent Logs:"

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->getFailCount()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-virtual {v0}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->getSuccessCount()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    add-int/2addr v2, v1

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v3, "\t\tData Type: "

    .line 60
    .line 61
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->getDataType()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v3, "\t\t\tItem restored: "

    .line 81
    .line 82
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->getSuccessCount()I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v3, "/"

    .line 93
    .line 94
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->getErrors()Ljava/util/Map;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_1

    .line 124
    .line 125
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    check-cast v1, Ljava/util/Map$Entry;

    .line 130
    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    const-string v3, "\t\t\tAgent Error - Category: "

    .line 134
    .line 135
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    check-cast v3, Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v3, ", Count: "

    .line 148
    .line 149
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_2
    return-void
.end method

.method public static addExtrasIfAvailable(Landroid/os/Bundle;Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    const-string v0, "android.app.backup.extra.LOG_EVENT_ID"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/16 v2, 0x1b

    .line 8
    .line 9
    if-ne v1, v2, :cond_2

    .line 10
    .line 11
    const-string v1, "android.app.backup.extra.LOG_RESTORE_ANYWAY"

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v3, "\t\tPackage supports RestoreAnyVersion: "

    .line 22
    .line 23
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    const-string v1, "android.app.backup.extra.LOG_RESTORE_VERSION"

    .line 41
    .line 42
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v3, "\t\tPackage version on source: "

    .line 51
    .line 52
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    .line 56
    .line 57
    .line 58
    move-result-wide v3

    .line 59
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    const-string v1, "android.app.backup.extra.LOG_EVENT_PACKAGE_FULL_VERSION"

    .line 70
    .line 71
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_2

    .line 76
    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v3, "\t\tPackage version on target: "

    .line 80
    .line 81
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    .line 85
    .line 86
    .line 87
    move-result-wide v3

    .line 88
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_2
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    const/16 v1, 0x48

    .line 103
    .line 104
    if-ne v0, v1, :cond_4

    .line 105
    .line 106
    const-string v0, "android.app.backup.extra.V_TO_U_DENYLIST"

    .line 107
    .line 108
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_3

    .line 113
    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string v2, "\t\tV to U Denylist : "

    .line 117
    .line 118
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    :cond_3
    const-string v0, "android.app.backup.extra.V_TO_U_ALLOWLIST"

    .line 136
    .line 137
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_4

    .line 142
    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string v2, "\t\tV to U Allowllist : "

    .line 146
    .line 147
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    :cond_4
    return-void
.end method

.method public static getBMMEventsFile()Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "backup"

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/io/File;

    .line 13
    .line 14
    const-string/jumbo v2, "bmmevents.txt"

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object v1
.end method

.method public static getId(I)Ljava/lang/String;
    .locals 1

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    :pswitch_0
    const-string v0, "Unknown log event ID: "

    .line 5
    .line 6
    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    goto/16 :goto_0

    .line 11
    .line 12
    :pswitch_1
    const-string p0, "Failed to read data from Transport"

    .line 13
    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    :pswitch_2
    const-string p0, "Agent failure during restore"

    .line 17
    .line 18
    goto/16 :goto_0

    .line 19
    .line 20
    :pswitch_3
    const-string p0, "Failed to send data to agent"

    .line 21
    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :pswitch_4
    const-string p0, "Agent crashed before restore data is streamed"

    .line 25
    .line 26
    goto/16 :goto_0

    .line 27
    .line 28
    :pswitch_5
    const-string p0, "Unable to create Agent"

    .line 29
    .line 30
    goto/16 :goto_0

    .line 31
    .line 32
    :pswitch_6
    const-string p0, "Restore data does not belong to package"

    .line 33
    .line 34
    goto/16 :goto_0

    .line 35
    .line 36
    :pswitch_7
    const-string p0, "Pkg accepted for restore"

    .line 37
    .line 38
    goto/16 :goto_0

    .line 39
    .line 40
    :pswitch_8
    const-string p0, "Skip restore at install"

    .line 41
    .line 42
    goto/16 :goto_0

    .line 43
    .line 44
    :pswitch_9
    const-string p0, "Invoked restore at install"

    .line 45
    .line 46
    goto/16 :goto_0

    .line 47
    .line 48
    :pswitch_a
    const-string p0, "V to U restore lists"

    .line 49
    .line 50
    goto/16 :goto_0

    .line 51
    .line 52
    :pswitch_b
    const-string p0, "V to U restore pkg not eligible"

    .line 53
    .line 54
    goto/16 :goto_0

    .line 55
    .line 56
    :pswitch_c
    const-string p0, "V to U restore pkg eligible"

    .line 57
    .line 58
    goto/16 :goto_0

    .line 59
    .line 60
    :pswitch_d
    const-string p0, "Agent failure"

    .line 61
    .line 62
    goto/16 :goto_0

    .line 63
    .line 64
    :pswitch_e
    const-string p0, "Restore complete"

    .line 65
    .line 66
    goto/16 :goto_0

    .line 67
    .line 68
    :pswitch_f
    const-string p0, "Start package restore"

    .line 69
    .line 70
    goto/16 :goto_0

    .line 71
    .line 72
    :pswitch_10
    const-string p0, "Transport error full restore"

    .line 73
    .line 74
    goto/16 :goto_0

    .line 75
    .line 76
    :pswitch_11
    const-string p0, "Full agent error"

    .line 77
    .line 78
    goto/16 :goto_0

    .line 79
    .line 80
    :pswitch_12
    const-string p0, "No feeder thread"

    .line 81
    .line 82
    goto/16 :goto_0

    .line 83
    .line 84
    :pswitch_13
    const-string p0, "Transport error KV restore"

    .line 85
    .line 86
    goto/16 :goto_0

    .line 87
    .line 88
    :pswitch_14
    const-string p0, "Package restore finished"

    .line 89
    .line 90
    goto/16 :goto_0

    .line 91
    .line 92
    :pswitch_15
    const-string p0, "KV agent error"

    .line 93
    .line 94
    goto/16 :goto_0

    .line 95
    .line 96
    :pswitch_16
    const-string p0, "No next restore target"

    .line 97
    .line 98
    goto/16 :goto_0

    .line 99
    .line 100
    :pswitch_17
    const-string p0, "Full restore"

    .line 101
    .line 102
    goto/16 :goto_0

    .line 103
    .line 104
    :pswitch_18
    const-string p0, "KV restore"

    .line 105
    .line 106
    goto/16 :goto_0

    .line 107
    .line 108
    :pswitch_19
    const-string p0, "Unknown restore type"

    .line 109
    .line 110
    goto/16 :goto_0

    .line 111
    .line 112
    :pswitch_1a
    const-string p0, "Cannot get next package name"

    .line 113
    .line 114
    goto/16 :goto_0

    .line 115
    .line 116
    :pswitch_1b
    const-string p0, "Transport error during start restore"

    .line 117
    .line 118
    goto/16 :goto_0

    .line 119
    .line 120
    :pswitch_1c
    const-string p0, "Start restore at install"

    .line 121
    .line 122
    goto/16 :goto_0

    .line 123
    .line 124
    :pswitch_1d
    const-string p0, "Start system restore"

    .line 125
    .line 126
    goto/16 :goto_0

    .line 127
    .line 128
    :pswitch_1e
    const-string p0, "Agent logging results"

    .line 129
    .line 130
    goto/16 :goto_0

    .line 131
    .line 132
    :pswitch_1f
    const-string p0, "Transport non-incremental backup required"

    .line 133
    .line 134
    goto/16 :goto_0

    .line 135
    .line 136
    :pswitch_20
    const-string p0, "Transport is null"

    .line 137
    .line 138
    goto/16 :goto_0

    .line 139
    .line 140
    :pswitch_21
    const-string p0, "No packages"

    .line 141
    .line 142
    goto/16 :goto_0

    .line 143
    .line 144
    :pswitch_22
    const-string p0, "Widget unknown version"

    .line 145
    .line 146
    goto/16 :goto_0

    .line 147
    .line 148
    :pswitch_23
    const-string p0, "Widget metadata mismatch"

    .line 149
    .line 150
    goto/16 :goto_0

    .line 151
    .line 152
    :pswitch_24
    const-string p0, "Corrupt manifest"

    .line 153
    .line 154
    goto/16 :goto_0

    .line 155
    .line 156
    :pswitch_25
    const-string p0, "Full restore timeout"

    .line 157
    .line 158
    goto/16 :goto_0

    .line 159
    .line 160
    :pswitch_26
    const-string p0, "Unknown version"

    .line 161
    .line 162
    goto/16 :goto_0

    .line 163
    .line 164
    :pswitch_27
    const-string p0, "Expected different package"

    .line 165
    .line 166
    goto/16 :goto_0

    .line 167
    .line 168
    :pswitch_28
    const-string p0, "Missing signature"

    .line 169
    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :pswitch_29
    const-string p0, "Cannot restore without APK"

    .line 173
    .line 174
    goto/16 :goto_0

    .line 175
    .line 176
    :pswitch_2a
    const-string p0, "APK not installed"

    .line 177
    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :pswitch_2b
    const-string p0, "Full restore allow backup false"

    .line 181
    .line 182
    goto/16 :goto_0

    .line 183
    .line 184
    :pswitch_2c
    const-string p0, "System app no agent"

    .line 185
    .line 186
    goto/16 :goto_0

    .line 187
    .line 188
    :pswitch_2d
    const-string p0, "Full restore signature mismatch"

    .line 189
    .line 190
    goto/16 :goto_0

    .line 191
    .line 192
    :pswitch_2e
    const-string p0, "Version of backup older"

    .line 193
    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    :pswitch_2f
    const-string p0, "Versions match"

    .line 197
    .line 198
    goto :goto_0

    .line 199
    :pswitch_30
    const-string p0, "Restore any version"

    .line 200
    .line 201
    goto :goto_0

    .line 202
    :pswitch_31
    const-string p0, "Key-value restore timeout"

    .line 203
    .line 204
    goto :goto_0

    .line 205
    :pswitch_32
    const-string p0, "Can\'t find agent"

    .line 206
    .line 207
    goto :goto_0

    .line 208
    :pswitch_33
    const-string p0, "Signature mismatch"

    .line 209
    .line 210
    goto :goto_0

    .line 211
    :pswitch_34
    const-string p0, "App has no agent"

    .line 212
    .line 213
    goto :goto_0

    .line 214
    :pswitch_35
    const-string p0, "Restore version higher"

    .line 215
    .line 216
    goto :goto_0

    .line 217
    :pswitch_36
    const-string p0, "Package not present"

    .line 218
    .line 219
    goto :goto_0

    .line 220
    :pswitch_37
    const-string p0, "Lost transport"

    .line 221
    .line 222
    goto :goto_0

    .line 223
    :pswitch_38
    const-string p0, "PM agent has no metadata"

    .line 224
    .line 225
    goto :goto_0

    .line 226
    :pswitch_39
    const-string p0, "No PM metadata received"

    .line 227
    .line 228
    goto :goto_0

    .line 229
    :pswitch_3a
    const-string p0, "No restore metadata available"

    .line 230
    .line 231
    goto :goto_0

    .line 232
    :pswitch_3b
    const-string p0, "Key-value backup cancel"

    .line 233
    .line 234
    goto :goto_0

    .line 235
    :pswitch_3c
    const-string p0, "Exception full backup"

    .line 236
    .line 237
    goto :goto_0

    .line 238
    :pswitch_3d
    const-string p0, "Quota hit preflight"

    .line 239
    .line 240
    goto :goto_0

    .line 241
    :pswitch_3e
    const-string p0, "Error preflight"

    .line 242
    .line 243
    goto :goto_0

    .line 244
    :pswitch_3f
    const-string p0, "Package transport not present"

    .line 245
    .line 246
    goto :goto_0

    .line 247
    :pswitch_40
    const-string p0, "Device not provisioned"

    .line 248
    .line 249
    goto :goto_0

    .line 250
    :pswitch_41
    const-string p0, "Backup disabled"

    .line 251
    .line 252
    goto :goto_0

    .line 253
    :pswitch_42
    const-string p0, "Package not found"

    .line 254
    .line 255
    goto :goto_0

    .line 256
    :pswitch_43
    const-string p0, "Package stopped"

    .line 257
    .line 258
    goto :goto_0

    .line 259
    :pswitch_44
    const-string p0, "Package key-value participant"

    .line 260
    .line 261
    goto :goto_0

    .line 262
    :pswitch_45
    const-string p0, "Package ineligible"

    .line 263
    .line 264
    goto :goto_0

    .line 265
    :pswitch_46
    const-string p0, "No data to send"

    .line 266
    .line 267
    goto :goto_0

    .line 268
    :pswitch_47
    const-string p0, "Illegal key"

    .line 269
    .line 270
    goto :goto_0

    .line 271
    :pswitch_48
    const-string p0, "Full backup cancel"

    .line 272
    .line 273
    :goto_0
    return-object p0

    .line 274
    nop

    .line 275
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_48
        :pswitch_47
        :pswitch_0
        :pswitch_46
        :pswitch_0
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_0
        :pswitch_3d
        :pswitch_3c
        :pswitch_0
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_0
        :pswitch_0
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static isDateAfterNMillisec(JJJ)Z
    .locals 2

    .line 1
    cmp-long v0, p0, p2

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    sub-long/2addr p2, p0

    .line 8
    cmp-long p0, p2, p4

    .line 9
    .line 10
    if-ltz p0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const/4 v1, 0x0

    .line 14
    :goto_0
    return v1
.end method


# virtual methods
.method public final deleteExpiredBMMEvents()Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->isAfterRetentionPeriod()Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    if-eqz p0, :cond_2

    .line 7
    .line 8
    invoke-static {}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->getBMMEventsFile()Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    const-string v1, "BackupManagerMonitorDumpsysUtils"

    .line 23
    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    :try_start_1
    const-string p0, "Deleted expired BMM Events"

    .line 27
    .line 28
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string p0, "Unable to delete expired BMM Events"

    .line 33
    .line 34
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    return v0

    .line 38
    :cond_2
    const/4 p0, 0x0

    .line 39
    return p0

    .line 40
    :catch_0
    return v0
.end method

.method public getBMMEventsFileSizeLimit()J
    .locals 2

    .line 1
    const-wide/32 v0, 0x186a000

    .line 2
    .line 3
    .line 4
    return-wide v0
.end method

.method public getRetentionPeriodInMillisec()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->LOGS_RETENTION_PERIOD_MILLISEC:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSetUpDate()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->getSetUpDateFile()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    :try_start_1
    new-instance p0, Ljava/io/InputStreamReader;

    .line 11
    .line 12
    invoke-direct {p0, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    .line 15
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 18
    .line 19
    .line 20
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 24
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 25
    .line 26
    .line 27
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 28
    .line 29
    .line 30
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 31
    .line 32
    .line 33
    return-object v2

    .line 34
    :catch_0
    move-exception p0

    .line 35
    goto :goto_5

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_3

    .line 38
    :catchall_1
    move-exception v1

    .line 39
    goto :goto_1

    .line 40
    :catchall_2
    move-exception v2

    .line 41
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_3
    move-exception v1

    .line 46
    :try_start_8
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 50
    :goto_1
    :try_start_9
    invoke-virtual {p0}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :catchall_4
    move-exception p0

    .line 55
    :try_start_a
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    :goto_2
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 59
    :goto_3
    :try_start_b
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 60
    .line 61
    .line 62
    goto :goto_4

    .line 63
    :catchall_5
    move-exception v0

    .line 64
    :try_start_c
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    :goto_4
    throw p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 68
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v1, "An error occurred while reading the date: "

    .line 71
    .line 72
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string v1, "BackupManagerMonitorDumpsysUtils"

    .line 76
    .line 77
    invoke-static {p0, v0, v1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string p0, "Could not retrieve setup date"

    .line 81
    .line 82
    return-object p0
.end method

.method public getSetUpDateFile()Ljava/io/File;
    .locals 2

    .line 1
    new-instance p0, Ljava/io/File;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "backup"

    .line 8
    .line 9
    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Ljava/io/File;

    .line 13
    .line 14
    const-string/jumbo v1, "initialSetupTimestamp.txt"

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public isAfterRetentionPeriod()Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsAfterRetentionPeriodCached:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsAfterRetentionPeriod:Z

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->getSetUpDateFile()Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    const-wide/16 v2, 0x0

    .line 17
    .line 18
    cmp-long v0, v0, v2

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsAfterRetentionPeriod:Z

    .line 25
    .line 26
    iput-boolean v1, p0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsAfterRetentionPeriodCached:Z

    .line 27
    .line 28
    return v0

    .line 29
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->getSetUpDate()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide v4

    .line 41
    invoke-virtual {p0}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->getRetentionPeriodInMillisec()J

    .line 42
    .line 43
    .line 44
    move-result-wide v6

    .line 45
    invoke-static/range {v2 .. v7}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->isDateAfterNMillisec(JJJ)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iput-boolean v0, p0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsAfterRetentionPeriod:Z

    .line 50
    .line 51
    iput-boolean v1, p0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsAfterRetentionPeriodCached:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    return v0

    .line 54
    :catch_0
    iput-boolean v1, p0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsAfterRetentionPeriod:Z

    .line 55
    .line 56
    iput-boolean v1, p0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsAfterRetentionPeriodCached:Z

    .line 57
    .line 58
    return v1
.end method

.method public final parseBackupManagerMonitorRestoreEventForDumpsys(Landroid/os/Bundle;)V
    .locals 14

    .line 1
    const-string v0, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    .line 2
    .line 3
    const-string v1, "\tPackage: "

    .line 4
    .line 5
    const-string v2, "["

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->isAfterRetentionPeriod()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string v3, "android.app.backup.extra.OPERATION_TYPE"

    .line 15
    .line 16
    const/4 v4, -0x1

    .line 17
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/4 v4, 0x1

    .line 22
    if-eq v3, v4, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    const-string v3, "android.app.backup.extra.LOG_EVENT_ID"

    .line 26
    .line 27
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    const-string v6, "BackupManagerMonitorDumpsysUtils"

    .line 32
    .line 33
    if-eqz v5, :cond_a

    .line 34
    .line 35
    const-string v5, "android.app.backup.extra.LOG_EVENT_CATEGORY"

    .line 36
    .line 37
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-nez v7, :cond_2

    .line 42
    .line 43
    goto/16 :goto_8

    .line 44
    .line 45
    :cond_2
    invoke-static {}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->getBMMEventsFile()Ljava/io/File;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    invoke-virtual {v7}, Ljava/io/File;->length()J

    .line 50
    .line 51
    .line 52
    move-result-wide v8

    .line 53
    const-wide/16 v10, 0x0

    .line 54
    .line 55
    cmp-long v8, v8, v10

    .line 56
    .line 57
    if-nez v8, :cond_3

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->recordSetUpTimestamp()V

    .line 60
    .line 61
    .line 62
    :cond_3
    iget-boolean v8, p0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsFileLargerThanSizeLimit:Z

    .line 63
    .line 64
    const/4 v9, 0x0

    .line 65
    if-nez v8, :cond_5

    .line 66
    .line 67
    invoke-virtual {v7}, Ljava/io/File;->length()J

    .line 68
    .line 69
    .line 70
    move-result-wide v10

    .line 71
    invoke-virtual {p0}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->getBMMEventsFileSizeLimit()J

    .line 72
    .line 73
    .line 74
    move-result-wide v12

    .line 75
    cmp-long v8, v10, v12

    .line 76
    .line 77
    if-lez v8, :cond_4

    .line 78
    .line 79
    move v8, v4

    .line 80
    goto :goto_0

    .line 81
    :cond_4
    move v8, v9

    .line 82
    :goto_0
    iput-boolean v8, p0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsFileLargerThanSizeLimit:Z

    .line 83
    .line 84
    :cond_5
    iget-boolean p0, p0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsFileLargerThanSizeLimit:Z

    .line 85
    .line 86
    if-eqz p0, :cond_6

    .line 87
    .line 88
    return-void

    .line 89
    :cond_6
    :try_start_0
    new-instance p0, Ljava/io/FileOutputStream;

    .line 90
    .line 91
    invoke-direct {p0, v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .line 93
    .line 94
    :try_start_1
    new-instance v7, Lcom/android/internal/util/FastPrintWriter;

    .line 95
    .line 96
    invoke-direct {v7, p0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    .line 98
    .line 99
    :try_start_2
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    const/16 v5, 0x34

    .line 107
    .line 108
    if-ne v3, v5, :cond_8

    .line 109
    .line 110
    const-string v5, "android.app.backup.extra.LOG_AGENT_LOGGING_RESULTS"

    .line 111
    .line 112
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result v8

    .line 116
    if-eqz v8, :cond_7

    .line 117
    .line 118
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 123
    .line 124
    .line 125
    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 126
    xor-int/lit8 v9, v5, 0x1

    .line 127
    .line 128
    :cond_7
    if-nez v9, :cond_8

    .line 129
    .line 130
    :try_start_3
    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 131
    .line 132
    .line 133
    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :catch_0
    move-exception p0

    .line 138
    goto :goto_6

    .line 139
    :catchall_0
    move-exception p1

    .line 140
    goto :goto_4

    .line 141
    :cond_8
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 147
    .line 148
    .line 149
    move-result-wide v8

    .line 150
    new-instance v2, Ljava/util/Date;

    .line 151
    .line 152
    invoke-direct {v2, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 153
    .line 154
    .line 155
    new-instance v5, Ljava/text/SimpleDateFormat;

    .line 156
    .line 157
    const-string/jumbo v8, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 158
    .line 159
    .line 160
    invoke-direct {v5, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v5, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string v2, "] - "

    .line 171
    .line 172
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-static {v3}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->getId(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    if-eqz v2, :cond_9

    .line 194
    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    goto :goto_1

    .line 215
    :catchall_1
    move-exception p1

    .line 216
    goto :goto_2

    .line 217
    :cond_9
    :goto_1
    invoke-static {p1, v7}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->addAgentLogsIfAvailable(Landroid/os/Bundle;Ljava/io/PrintWriter;)V

    .line 218
    .line 219
    .line 220
    invoke-static {p1, v7}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->addExtrasIfAvailable(Landroid/os/Bundle;Ljava/io/PrintWriter;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 221
    .line 222
    .line 223
    :try_start_6
    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 224
    .line 225
    .line 226
    :try_start_7
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 227
    .line 228
    .line 229
    goto :goto_7

    .line 230
    :goto_2
    :try_start_8
    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 231
    .line 232
    .line 233
    goto :goto_3

    .line 234
    :catchall_2
    move-exception v0

    .line 235
    :try_start_9
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 236
    .line 237
    .line 238
    :goto_3
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 239
    :goto_4
    :try_start_a
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 240
    .line 241
    .line 242
    goto :goto_5

    .line 243
    :catchall_3
    move-exception p0

    .line 244
    :try_start_b
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 245
    .line 246
    .line 247
    :goto_5
    throw p1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    .line 248
    :goto_6
    const-string p1, "IO Exception when writing BMM events to file: "

    .line 249
    .line 250
    invoke-static {p1, p0, v6}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    :goto_7
    return-void

    .line 254
    :cond_a
    :goto_8
    const-string p0, "Event id and category are not optional fields."

    .line 255
    .line 256
    invoke-static {v6, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .line 258
    .line 259
    return-void
.end method

.method public recordSetUpTimestamp()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->getSetUpDateFile()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    cmp-long v0, v0, v2

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    :try_start_1
    new-instance p0, Lcom/android/internal/util/FastPrintWriter;

    .line 22
    .line 23
    invoke-direct {p0, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    .line 25
    .line 26
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->println(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 31
    .line 32
    .line 33
    :try_start_3
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 34
    .line 35
    .line 36
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_4

    .line 40
    :catch_0
    move-exception p0

    .line 41
    goto :goto_3

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_1

    .line 44
    :catchall_1
    move-exception v1

    .line 45
    :try_start_5
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_2
    move-exception p0

    .line 50
    :try_start_6
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    :goto_0
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 54
    :goto_1
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :catchall_3
    move-exception v0

    .line 59
    :try_start_8
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    :goto_2
    throw p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 63
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v1, "An error occurred while recording the setup date: "

    .line 66
    .line 67
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    const-string v0, "BackupManagerMonitorDumpsysUtils"

    .line 82
    .line 83
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    :cond_0
    :goto_4
    return-void
.end method
