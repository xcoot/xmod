.class public final Lcom/android/server/power/stats/BatteryStatsImpl$7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public final synthetic val$initialTimeMs:J

.field public final synthetic val$memStream:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;Ljava/lang/Object;JI)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->val$memStream:Ljava/lang/Object;

    .line 6
    .line 7
    iput-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->val$initialTimeMs:J

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    const/4 v3, 0x0

    .line 16
    :try_start_1
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 17
    .line 18
    iget-object v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    .line 19
    .line 20
    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->val$memStream:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v4, Landroid/os/Parcel;

    .line 27
    .line 28
    invoke-virtual {v4}, Landroid/os/Parcel;->marshall()[B

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 36
    .line 37
    .line 38
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 39
    .line 40
    iget-object v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    .line 41
    .line 42
    invoke-virtual {v4, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 43
    .line 44
    .line 45
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 46
    .line 47
    iget-object v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl;->mFrameworkStatsLogger:Lcom/android/server/power/stats/BatteryStatsImpl$FrameworkStatsLogger;

    .line 48
    .line 49
    const-string v5, "batterystats-checkin"

    .line 50
    .line 51
    iget-wide v6, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->val$initialTimeMs:J

    .line 52
    .line 53
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 54
    .line 55
    .line 56
    move-result-wide v8

    .line 57
    add-long/2addr v6, v8

    .line 58
    sub-long/2addr v6, v1

    .line 59
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-static {v5, v6, v7}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 63
    .line 64
    .line 65
    :try_start_2
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->val$memStream:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast p0, Landroid/os/Parcel;

    .line 68
    .line 69
    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    goto :goto_3

    .line 75
    :catchall_1
    move-exception v1

    .line 76
    goto :goto_2

    .line 77
    :catch_0
    move-exception v1

    .line 78
    :try_start_3
    const-string v2, "BatteryStats"

    .line 79
    .line 80
    const-string v4, "Error writing checkin battery statistics"

    .line 81
    .line 82
    invoke-static {v2, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 86
    .line 87
    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    .line 88
    .line 89
    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 90
    .line 91
    .line 92
    :try_start_4
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->val$memStream:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast p0, Landroid/os/Parcel;

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :goto_1
    monitor-exit v0

    .line 98
    return-void

    .line 99
    :goto_2
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->val$memStream:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast p0, Landroid/os/Parcel;

    .line 102
    .line 103
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    .line 104
    .line 105
    .line 106
    throw v1

    .line 107
    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 108
    throw p0

    .line 109
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 110
    .line 111
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    .line 112
    .line 113
    monitor-enter v0

    .line 114
    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 115
    .line 116
    .line 117
    move-result-wide v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 118
    const/4 v3, 0x0

    .line 119
    :try_start_6
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 120
    .line 121
    iget-object v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl;->mDailyFile:Landroid/util/AtomicFile;

    .line 122
    .line 123
    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->val$memStream:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v4, Ljava/io/ByteArrayOutputStream;

    .line 130
    .line 131
    invoke-virtual {v4, v3}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 135
    .line 136
    .line 137
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 138
    .line 139
    iget-object v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl;->mDailyFile:Landroid/util/AtomicFile;

    .line 140
    .line 141
    invoke-virtual {v4, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 142
    .line 143
    .line 144
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 145
    .line 146
    iget-object v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl;->mFrameworkStatsLogger:Lcom/android/server/power/stats/BatteryStatsImpl$FrameworkStatsLogger;

    .line 147
    .line 148
    const-string v5, "batterystats-daily"

    .line 149
    .line 150
    iget-wide v6, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->val$initialTimeMs:J

    .line 151
    .line 152
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 153
    .line 154
    .line 155
    move-result-wide v8

    .line 156
    add-long/2addr v6, v8

    .line 157
    sub-long/2addr v6, v1

    .line 158
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    invoke-static {v5, v6, v7}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 162
    .line 163
    .line 164
    goto :goto_4

    .line 165
    :catchall_2
    move-exception p0

    .line 166
    goto :goto_5

    .line 167
    :catch_1
    move-exception v1

    .line 168
    :try_start_7
    const-string v2, "BatteryStats"

    .line 169
    .line 170
    const-string v4, "Error writing battery daily items"

    .line 171
    .line 172
    invoke-static {v2, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    .line 174
    .line 175
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 176
    .line 177
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDailyFile:Landroid/util/AtomicFile;

    .line 178
    .line 179
    invoke-virtual {p0, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 180
    .line 181
    .line 182
    :goto_4
    monitor-exit v0

    .line 183
    return-void

    .line 184
    :goto_5
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 185
    throw p0

    .line 186
    nop

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
