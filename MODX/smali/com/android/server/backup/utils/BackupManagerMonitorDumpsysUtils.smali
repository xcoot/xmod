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

    .line 3
    const-wide/16 v1, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 8
    move-result-wide v0

    .line 9
    const-wide/16 v2, 0x3c

    .line 11
    mul-long/2addr v0, v2

    .line 12
    sput-wide v0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->LOGS_RETENTION_PERIOD_MILLISEC:J

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsAfterRetentionPeriodCached:Z

    .line 7
    iput-boolean v0, p0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsFileLargerThanSizeLimit:Z

    .line 9
    return-void
.end method

.method public static addAgentLogsIfAvailable(Landroid/os/Bundle;Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    const-string v0, "android.app.backup.extra.LOG_AGENT_LOGGING_RESULTS"

    .line 3
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 16
    move-result v1

    .line 17
    xor-int/lit8 v1, v1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    :goto_0
    if-eqz v1, :cond_2

    .line 23
    const-string v1, "\tAgent Logs:"

    .line 25
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object p0

    .line 36
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2

    .line 42
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;

    .line 48
    invoke-virtual {v0}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->getFailCount()I

    .line 51
    move-result v1

    .line 52
    invoke-virtual {v0}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->getSuccessCount()I

    .line 55
    move-result v2

    .line 56
    add-int/2addr v2, v1

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    .line 59
    const-string v3, "\t\tData Type: "

    .line 61
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->getDataType()Ljava/lang/String;

    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    .line 80
    const-string v3, "\t\t\tItem restored: "

    .line 82
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->getSuccessCount()I

    .line 88
    move-result v3

    .line 89
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    const-string v3, "/"

    .line 94
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->getErrors()Ljava/util/Map;

    .line 110
    move-result-object v0

    .line 111
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 114
    move-result-object v0

    .line 115
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 118
    move-result-object v0

    .line 119
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_1

    .line 125
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    move-result-object v1

    .line 129
    check-cast v1, Ljava/util/Map$Entry;

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    .line 133
    const-string v3, "\t\t\tAgent Error - Category: "

    .line 135
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 141
    move-result-object v3

    .line 142
    check-cast v3, Ljava/lang/String;

    .line 144
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const-string v3, ", Count: "

    .line 149
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

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

    .line 3
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 6
    move-result v1

    .line 7
    const/16 v2, 0x1b

    .line 9
    if-ne v1, v2, :cond_2

    .line 11
    const-string v1, "android.app.backup.extra.LOG_RESTORE_ANYWAY"

    .line 13
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    const-string v3, "\t\tPackage supports RestoreAnyVersion: "

    .line 23
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 29
    move-result v1

    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 40
    :cond_0
    const-string v1, "android.app.backup.extra.LOG_RESTORE_VERSION"

    .line 42
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_1

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    const-string v3, "\t\tPackage version on source: "

    .line 52
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    .line 58
    move-result-wide v3

    .line 59
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 69
    :cond_1
    const-string v1, "android.app.backup.extra.LOG_EVENT_PACKAGE_FULL_VERSION"

    .line 71
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_2

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    .line 79
    const-string v3, "\t\tPackage version on target: "

    .line 81
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    .line 87
    move-result-wide v3

    .line 88
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    :cond_2
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 101
    move-result v0

    .line 102
    const/16 v1, 0x48

    .line 104
    if-ne v0, v1, :cond_4

    .line 106
    const-string v0, "android.app.backup.extra.V_TO_U_DENYLIST"

    .line 108
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_3

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    .line 116
    const-string v2, "\t\tV to U Denylist : "

    .line 118
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    :cond_3
    const-string v0, "android.app.backup.extra.V_TO_U_ALLOWLIST"

    .line 137
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_4

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    .line 145
    const-string v2, "\t\tV to U Allowllist : "

    .line 147
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    move-result-object p0

    .line 154
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    move-result-object p0

    .line 161
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 164
    :cond_4
    return-void
.end method

.method public static getBMMEventsFile()Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 6
    move-result-object v1

    .line 7
    const-string v2, "backup"

    .line 9
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    new-instance v1, Ljava/io/File;

    .line 14
    const-string/jumbo v2, "bmmevents.txt"

    .line 17
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 20
    return-object v1
.end method

.method public static getId(I)Ljava/lang/String;
    .locals 1

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 4
    :pswitch_0
    const-string v0, "Unknown log event ID: "

    .line 6
    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 10
    goto/16 :goto_0

    .line 12
    :pswitch_1
    const-string p0, "Failed to read data from Transport"

    .line 14
    goto/16 :goto_0

    .line 16
    :pswitch_2
    const-string p0, "Agent failure during restore"

    .line 18
    goto/16 :goto_0

    .line 20
    :pswitch_3
    const-string p0, "Failed to send data to agent"

    .line 22
    goto/16 :goto_0

    .line 24
    :pswitch_4
    const-string p0, "Agent crashed before restore data is streamed"

    .line 26
    goto/16 :goto_0

    .line 28
    :pswitch_5
    const-string p0, "Unable to create Agent"

    .line 30
    goto/16 :goto_0

    .line 32
    :pswitch_6
    const-string p0, "Restore data does not belong to package"

    .line 34
    goto/16 :goto_0

    .line 36
    :pswitch_7
    const-string p0, "Pkg accepted for restore"

    .line 38
    goto/16 :goto_0

    .line 40
    :pswitch_8
    const-string p0, "Skip restore at install"

    .line 42
    goto/16 :goto_0

    .line 44
    :pswitch_9
    const-string p0, "Invoked restore at install"

    .line 46
    goto/16 :goto_0

    .line 48
    :pswitch_a
    const-string p0, "V to U restore lists"

    .line 50
    goto/16 :goto_0

    .line 52
    :pswitch_b
    const-string p0, "V to U restore pkg not eligible"

    .line 54
    goto/16 :goto_0

    .line 56
    :pswitch_c
    const-string p0, "V to U restore pkg eligible"

    .line 58
    goto/16 :goto_0

    .line 60
    :pswitch_d
    const-string p0, "Agent failure"

    .line 62
    goto/16 :goto_0

    .line 64
    :pswitch_e
    const-string p0, "Restore complete"

    .line 66
    goto/16 :goto_0

    .line 68
    :pswitch_f
    const-string p0, "Start package restore"

    .line 70
    goto/16 :goto_0

    .line 72
    :pswitch_10
    const-string p0, "Transport error full restore"

    .line 74
    goto/16 :goto_0

    .line 76
    :pswitch_11
    const-string p0, "Full agent error"

    .line 78
    goto/16 :goto_0

    .line 80
    :pswitch_12
    const-string p0, "No feeder thread"

    .line 82
    goto/16 :goto_0

    .line 84
    :pswitch_13
    const-string p0, "Transport error KV restore"

    .line 86
    goto/16 :goto_0

    .line 88
    :pswitch_14
    const-string p0, "Package restore finished"

    .line 90
    goto/16 :goto_0

    .line 92
    :pswitch_15
    const-string p0, "KV agent error"

    .line 94
    goto/16 :goto_0

    .line 96
    :pswitch_16
    const-string p0, "No next restore target"

    .line 98
    goto/16 :goto_0

    .line 100
    :pswitch_17
    const-string p0, "Full restore"

    .line 102
    goto/16 :goto_0

    .line 104
    :pswitch_18
    const-string p0, "KV restore"

    .line 106
    goto/16 :goto_0

    .line 108
    :pswitch_19
    const-string p0, "Unknown restore type"

    .line 110
    goto/16 :goto_0

    .line 112
    :pswitch_1a
    const-string p0, "Cannot get next package name"

    .line 114
    goto/16 :goto_0

    .line 116
    :pswitch_1b
    const-string p0, "Transport error during start restore"

    .line 118
    goto/16 :goto_0

    .line 120
    :pswitch_1c
    const-string p0, "Start restore at install"

    .line 122
    goto/16 :goto_0

    .line 124
    :pswitch_1d
    const-string p0, "Start system restore"

    .line 126
    goto/16 :goto_0

    .line 128
    :pswitch_1e
    const-string p0, "Agent logging results"

    .line 130
    goto/16 :goto_0

    .line 132
    :pswitch_1f
    const-string p0, "Transport non-incremental backup required"

    .line 134
    goto/16 :goto_0

    .line 136
    :pswitch_20
    const-string p0, "Transport is null"

    .line 138
    goto/16 :goto_0

    .line 140
    :pswitch_21
    const-string p0, "No packages"

    .line 142
    goto/16 :goto_0

    .line 144
    :pswitch_22
    const-string p0, "Widget unknown version"

    .line 146
    goto/16 :goto_0

    .line 148
    :pswitch_23
    const-string p0, "Widget metadata mismatch"

    .line 150
    goto/16 :goto_0

    .line 152
    :pswitch_24
    const-string p0, "Corrupt manifest"

    .line 154
    goto/16 :goto_0

    .line 156
    :pswitch_25
    const-string p0, "Full restore timeout"

    .line 158
    goto/16 :goto_0

    .line 160
    :pswitch_26
    const-string p0, "Unknown version"

    .line 162
    goto/16 :goto_0

    .line 164
    :pswitch_27
    const-string p0, "Expected different package"

    .line 166
    goto/16 :goto_0

    .line 168
    :pswitch_28
    const-string p0, "Missing signature"

    .line 170
    goto/16 :goto_0

    .line 172
    :pswitch_29
    const-string p0, "Cannot restore without APK"

    .line 174
    goto/16 :goto_0

    .line 176
    :pswitch_2a
    const-string p0, "APK not installed"

    .line 178
    goto/16 :goto_0

    .line 180
    :pswitch_2b
    const-string p0, "Full restore allow backup false"

    .line 182
    goto/16 :goto_0

    .line 184
    :pswitch_2c
    const-string p0, "System app no agent"

    .line 186
    goto/16 :goto_0

    .line 188
    :pswitch_2d
    const-string p0, "Full restore signature mismatch"

    .line 190
    goto/16 :goto_0

    .line 192
    :pswitch_2e
    const-string p0, "Version of backup older"

    .line 194
    goto/16 :goto_0

    .line 196
    :pswitch_2f
    const-string p0, "Versions match"

    .line 198
    goto :goto_0

    .line 199
    :pswitch_30
    const-string p0, "Restore any version"

    .line 201
    goto :goto_0

    .line 202
    :pswitch_31
    const-string p0, "Key-value restore timeout"

    .line 204
    goto :goto_0

    .line 205
    :pswitch_32
    const-string p0, "Can\'t find agent"

    .line 207
    goto :goto_0

    .line 208
    :pswitch_33
    const-string p0, "Signature mismatch"

    .line 210
    goto :goto_0

    .line 211
    :pswitch_34
    const-string p0, "App has no agent"

    .line 213
    goto :goto_0

    .line 214
    :pswitch_35
    const-string p0, "Restore version higher"

    .line 216
    goto :goto_0

    .line 217
    :pswitch_36
    const-string p0, "Package not present"

    .line 219
    goto :goto_0

    .line 220
    :pswitch_37
    const-string p0, "Lost transport"

    .line 222
    goto :goto_0

    .line 223
    :pswitch_38
    const-string p0, "PM agent has no metadata"

    .line 225
    goto :goto_0

    .line 226
    :pswitch_39
    const-string p0, "No PM metadata received"

    .line 228
    goto :goto_0

    .line 229
    :pswitch_3a
    const-string p0, "No restore metadata available"

    .line 231
    goto :goto_0

    .line 232
    :pswitch_3b
    const-string p0, "Key-value backup cancel"

    .line 234
    goto :goto_0

    .line 235
    :pswitch_3c
    const-string p0, "Exception full backup"

    .line 237
    goto :goto_0

    .line 238
    :pswitch_3d
    const-string p0, "Quota hit preflight"

    .line 240
    goto :goto_0

    .line 241
    :pswitch_3e
    const-string p0, "Error preflight"

    .line 243
    goto :goto_0

    .line 244
    :pswitch_3f
    const-string p0, "Package transport not present"

    .line 246
    goto :goto_0

    .line 247
    :pswitch_40
    const-string p0, "Device not provisioned"

    .line 249
    goto :goto_0

    .line 250
    :pswitch_41
    const-string p0, "Backup disabled"

    .line 252
    goto :goto_0

    .line 253
    :pswitch_42
    const-string p0, "Package not found"

    .line 255
    goto :goto_0

    .line 256
    :pswitch_43
    const-string p0, "Package stopped"

    .line 258
    goto :goto_0

    .line 259
    :pswitch_44
    const-string p0, "Package key-value participant"

    .line 261
    goto :goto_0

    .line 262
    :pswitch_45
    const-string p0, "Package ineligible"

    .line 264
    goto :goto_0

    .line 265
    :pswitch_46
    const-string p0, "No data to send"

    .line 267
    goto :goto_0

    .line 268
    :pswitch_47
    const-string p0, "Illegal key"

    .line 270
    goto :goto_0

    .line 271
    :pswitch_48
    const-string p0, "Full backup cancel"

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

    .line 3
    const/4 v1, 0x1

    .line 4
    if-lez v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    sub-long/2addr p2, p0

    .line 8
    cmp-long p0, p2, p4

    .line 10
    if-ltz p0, :cond_1

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

    .line 5
    move-result p0

    .line 6
    if-eqz p0, :cond_2

    .line 8
    invoke-static {}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->getBMMEventsFile()Ljava/io/File;

    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 18
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 21
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    const-string v1, "BackupManagerMonitorDumpsysUtils"

    .line 24
    if-eqz p0, :cond_0

    .line 26
    :try_start_1
    const-string p0, "Deleted expired BMM Events"

    .line 28
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string p0, "Unable to delete expired BMM Events"

    .line 34
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

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

    .line 4
    return-wide v0
.end method

.method public getRetentionPeriodInMillisec()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->LOGS_RETENTION_PERIOD_MILLISEC:J

    .line 3
    return-wide v0
.end method

.method public getSetUpDate()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->getSetUpDateFile()Ljava/io/File;

    .line 4
    move-result-object p0

    .line 5
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    .line 7
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :try_start_1
    new-instance p0, Ljava/io/InputStreamReader;

    .line 12
    invoke-direct {p0, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    .line 17
    invoke-direct {v1, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 20
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 23
    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 24
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 27
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 30
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

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

    .line 44
    goto :goto_0

    .line 45
    :catchall_3
    move-exception v1

    .line 46
    :try_start_8
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

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

    .line 53
    goto :goto_2

    .line 54
    :catchall_4
    move-exception p0

    .line 55
    :try_start_a
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

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

    .line 62
    goto :goto_4

    .line 63
    :catchall_5
    move-exception v0

    .line 64
    :try_start_c
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 67
    :goto_4
    throw p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 68
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    const-string v1, "An error occurred while reading the date: "

    .line 72
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    const-string v1, "BackupManagerMonitorDumpsysUtils"

    .line 77
    invoke-static {p0, v0, v1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 80
    const-string p0, "Could not retrieve setup date"

    .line 82
    return-object p0
.end method

.method public getSetUpDateFile()Ljava/io/File;
    .locals 2

    .line 1
    new-instance p0, Ljava/io/File;

    .line 3
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "backup"

    .line 9
    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    new-instance v0, Ljava/io/File;

    .line 14
    const-string/jumbo v1, "initialSetupTimestamp.txt"

    .line 17
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 20
    return-object v0
.end method

.method public isAfterRetentionPeriod()Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsAfterRetentionPeriodCached:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-boolean p0, p0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsAfterRetentionPeriod:Z

    .line 7
    return p0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->getSetUpDateFile()Ljava/io/File;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 15
    move-result-wide v0

    .line 16
    const-wide/16 v2, 0x0

    .line 18
    cmp-long v0, v0, v2

    .line 20
    const/4 v1, 0x1

    .line 21
    if-nez v0, :cond_1

    .line 23
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsAfterRetentionPeriod:Z

    .line 26
    iput-boolean v1, p0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsAfterRetentionPeriodCached:Z

    .line 28
    return v0

    .line 29
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->getSetUpDate()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 36
    move-result-wide v2

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 40
    move-result-wide v4

    .line 41
    invoke-virtual {p0}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->getRetentionPeriodInMillisec()J

    .line 44
    move-result-wide v6

    .line 45
    invoke-static/range {v2 .. v7}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->isDateAfterNMillisec(JJJ)Z

    .line 48
    move-result v0

    .line 49
    iput-boolean v0, p0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsAfterRetentionPeriod:Z

    .line 51
    iput-boolean v1, p0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsAfterRetentionPeriodCached:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    return v0

    .line 54
    :catch_0
    iput-boolean v1, p0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsAfterRetentionPeriod:Z

    .line 56
    iput-boolean v1, p0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsAfterRetentionPeriodCached:Z

    .line 58
    return v1
.end method

.method public final parseBackupManagerMonitorRestoreEventForDumpsys(Landroid/os/Bundle;)V
    .locals 14

    .line 1
    const-string v0, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    .line 3
    const-string v1, "\tPackage: "

    .line 5
    const-string v2, "["

    .line 7
    invoke-virtual {p0}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->isAfterRetentionPeriod()Z

    .line 10
    move-result v3

    .line 11
    if-eqz v3, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    const-string v3, "android.app.backup.extra.OPERATION_TYPE"

    .line 16
    const/4 v4, -0x1

    .line 17
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 20
    move-result v3

    .line 21
    const/4 v4, 0x1

    .line 22
    if-eq v3, v4, :cond_1

    .line 24
    return-void

    .line 25
    :cond_1
    const-string v3, "android.app.backup.extra.LOG_EVENT_ID"

    .line 27
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 30
    move-result v5

    .line 31
    const-string v6, "BackupManagerMonitorDumpsysUtils"

    .line 33
    if-eqz v5, :cond_a

    .line 35
    const-string v5, "android.app.backup.extra.LOG_EVENT_CATEGORY"

    .line 37
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 40
    move-result v7

    .line 41
    if-nez v7, :cond_2

    .line 43
    goto/16 :goto_8

    .line 45
    :cond_2
    invoke-static {}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->getBMMEventsFile()Ljava/io/File;

    .line 48
    move-result-object v7

    .line 49
    invoke-virtual {v7}, Ljava/io/File;->length()J

    .line 52
    move-result-wide v8

    .line 53
    const-wide/16 v10, 0x0

    .line 55
    cmp-long v8, v8, v10

    .line 57
    if-nez v8, :cond_3

    .line 59
    invoke-virtual {p0}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->recordSetUpTimestamp()V

    .line 62
    :cond_3
    iget-boolean v8, p0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsFileLargerThanSizeLimit:Z

    .line 64
    const/4 v9, 0x0

    .line 65
    if-nez v8, :cond_5

    .line 67
    invoke-virtual {v7}, Ljava/io/File;->length()J

    .line 70
    move-result-wide v10

    .line 71
    invoke-virtual {p0}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->getBMMEventsFileSizeLimit()J

    .line 74
    move-result-wide v12

    .line 75
    cmp-long v8, v10, v12

    .line 77
    if-lez v8, :cond_4

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

    .line 84
    :cond_5
    iget-boolean p0, p0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsFileLargerThanSizeLimit:Z

    .line 86
    if-eqz p0, :cond_6

    .line 88
    return-void

    .line 89
    :cond_6
    :try_start_0
    new-instance p0, Ljava/io/FileOutputStream;

    .line 91
    invoke-direct {p0, v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :try_start_1
    new-instance v7, Lcom/android/internal/util/FastPrintWriter;

    .line 96
    invoke-direct {v7, p0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    :try_start_2
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 102
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 105
    move-result v3

    .line 106
    const/16 v5, 0x34

    .line 108
    if-ne v3, v5, :cond_8

    .line 110
    const-string v5, "android.app.backup.extra.LOG_AGENT_LOGGING_RESULTS"

    .line 112
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 115
    move-result v8

    .line 116
    if-eqz v8, :cond_7

    .line 118
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 121
    move-result-object v5

    .line 122
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 125
    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 126
    xor-int/lit8 v9, v5, 0x1

    .line 128
    :cond_7
    if-nez v9, :cond_8

    .line 130
    :try_start_3
    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 133
    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

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

    .line 143
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 149
    move-result-wide v8

    .line 150
    new-instance v2, Ljava/util/Date;

    .line 152
    invoke-direct {v2, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 155
    new-instance v5, Ljava/text/SimpleDateFormat;

    .line 157
    const-string/jumbo v8, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 160
    invoke-direct {v5, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v5, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 166
    move-result-object v2

    .line 167
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const-string v2, "] - "

    .line 172
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-static {v3}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->getId(I)Ljava/lang/String;

    .line 178
    move-result-object v2

    .line 179
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 192
    move-result v2

    .line 193
    if-eqz v2, :cond_9

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    .line 197
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

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

    .line 220
    invoke-static {p1, v7}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->addExtrasIfAvailable(Landroid/os/Bundle;Ljava/io/PrintWriter;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 223
    :try_start_6
    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 226
    :try_start_7
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 229
    goto :goto_7

    .line 230
    :goto_2
    :try_start_8
    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 233
    goto :goto_3

    .line 234
    :catchall_2
    move-exception v0

    .line 235
    :try_start_9
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

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

    .line 242
    goto :goto_5

    .line 243
    :catchall_3
    move-exception p0

    .line 244
    :try_start_b
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 247
    :goto_5
    throw p1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    .line 248
    :goto_6
    const-string p1, "IO Exception when writing BMM events to file: "

    .line 250
    invoke-static {p1, p0, v6}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 253
    :goto_7
    return-void

    .line 254
    :cond_a
    :goto_8
    const-string p0, "Event id and category are not optional fields."

    .line 256
    invoke-static {v6, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void
.end method

.method public recordSetUpTimestamp()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->getSetUpDateFile()Ljava/io/File;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 8
    move-result-wide v0

    .line 9
    const-wide/16 v2, 0x0

    .line 11
    cmp-long v0, v0, v2

    .line 13
    if-nez v0, :cond_0

    .line 15
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :try_start_1
    new-instance p0, Lcom/android/internal/util/FastPrintWriter;

    .line 23
    invoke-direct {p0, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 29
    move-result-wide v1

    .line 30
    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->println(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 33
    :try_start_3
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 36
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

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

    .line 48
    goto :goto_0

    .line 49
    :catchall_2
    move-exception p0

    .line 50
    :try_start_6
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

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

    .line 57
    goto :goto_2

    .line 58
    :catchall_3
    move-exception v0

    .line 59
    :try_start_8
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 62
    :goto_2
    throw p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 63
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    const-string v1, "An error occurred while recording the setup date: "

    .line 67
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object p0

    .line 81
    const-string v0, "BackupManagerMonitorDumpsysUtils"

    .line 83
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    :goto_4
    return-void
.end method
