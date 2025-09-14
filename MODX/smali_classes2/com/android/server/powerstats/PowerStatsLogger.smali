.class public final Lcom/android/server/powerstats/PowerStatsLogger;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mDataStoragePath:Ljava/io/File;

.field public final mDeleteMeterDataOnBoot:Z

.field public final mDeleteModelDataOnBoot:Z

.field public final mDeleteResidencyDataOnBoot:Z

.field public final mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

.field public final mPowerStatsMeterStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

.field public final mPowerStatsModelStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

.field public final mPowerStatsResidencyStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

.field public final mStartWallTime:J


# direct methods
.method public constructor <init>(Landroid/os/Looper;Ljava/io/File;Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    sub-long/2addr v0, v2

    .line 13
    iput-wide v0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mStartWallTime:J

    .line 14
    .line 15
    iput-object p3, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDataStoragePath:Ljava/io/File;

    .line 18
    .line 19
    new-instance p1, Lcom/android/server/powerstats/PowerStatsDataStorage;

    .line 20
    .line 21
    const-string v0, "log.powerstats.meter.0"

    .line 22
    .line 23
    invoke-direct {p1, p2, v0}, Lcom/android/server/powerstats/PowerStatsDataStorage;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsMeterStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    .line 27
    .line 28
    new-instance v0, Lcom/android/server/powerstats/PowerStatsDataStorage;

    .line 29
    .line 30
    const-string v1, "log.powerstats.model.0"

    .line 31
    .line 32
    invoke-direct {v0, p2, v1}, Lcom/android/server/powerstats/PowerStatsDataStorage;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsModelStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    .line 36
    .line 37
    new-instance v1, Lcom/android/server/powerstats/PowerStatsDataStorage;

    .line 38
    .line 39
    const-string v2, "log.powerstats.residency.0"

    .line 40
    .line 41
    invoke-direct {v1, p2, v2}, Lcom/android/server/powerstats/PowerStatsDataStorage;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsResidencyStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    .line 45
    .line 46
    invoke-interface {p3}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    .line 51
    .line 52
    invoke-direct {v2}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-static {p2, v2}, Lcom/android/server/powerstats/ProtoStreamUtils$ChannelUtils;->packProtoMessage([Landroid/hardware/power/stats/Channel;Landroid/util/proto/ProtoOutputStream;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    const-string/jumbo v2, "meterCache"

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v2, p2}, Lcom/android/server/powerstats/PowerStatsLogger;->dataChanged(Ljava/lang/String;[B)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    iput-boolean v3, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDeleteMeterDataOnBoot:Z

    .line 70
    .line 71
    if-eqz v3, :cond_0

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/android/server/powerstats/PowerStatsDataStorage;->deleteLogs()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v2, p2}, Lcom/android/server/powerstats/PowerStatsLogger;->updateCacheFile(Ljava/lang/String;[B)V

    .line 77
    .line 78
    .line 79
    :cond_0
    invoke-interface {p3}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    new-instance p2, Landroid/util/proto/ProtoOutputStream;

    .line 84
    .line 85
    invoke-direct {p2}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-static {p1, p2}, Lcom/android/server/powerstats/ProtoStreamUtils$ChannelUtils;->packProtoMessage([Landroid/hardware/power/stats/EnergyConsumer;Landroid/util/proto/ProtoOutputStream;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const-string/jumbo p2, "modelCache"

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, p2, p1}, Lcom/android/server/powerstats/PowerStatsLogger;->dataChanged(Ljava/lang/String;[B)Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    iput-boolean v2, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDeleteModelDataOnBoot:Z

    .line 103
    .line 104
    if-eqz v2, :cond_1

    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsDataStorage;->deleteLogs()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, p2, p1}, Lcom/android/server/powerstats/PowerStatsLogger;->updateCacheFile(Ljava/lang/String;[B)V

    .line 110
    .line 111
    .line 112
    :cond_1
    invoke-interface {p3}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    new-instance p2, Landroid/util/proto/ProtoOutputStream;

    .line 117
    .line 118
    invoke-direct {p2}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-static {p1, p2}, Lcom/android/server/powerstats/ProtoStreamUtils$ChannelUtils;->packProtoMessage([Landroid/hardware/power/stats/PowerEntity;Landroid/util/proto/ProtoOutputStream;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    const-string/jumbo p2, "residencyCache"

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, p2, p1}, Lcom/android/server/powerstats/PowerStatsLogger;->dataChanged(Ljava/lang/String;[B)Z

    .line 132
    .line 133
    .line 134
    move-result p3

    .line 135
    iput-boolean p3, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDeleteResidencyDataOnBoot:Z

    .line 136
    .line 137
    if-eqz p3, :cond_2

    .line 138
    .line 139
    invoke-virtual {v1}, Lcom/android/server/powerstats/PowerStatsDataStorage;->deleteLogs()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, p2, p1}, Lcom/android/server/powerstats/PowerStatsLogger;->updateCacheFile(Ljava/lang/String;[B)V

    .line 143
    .line 144
    .line 145
    :cond_2
    return-void
.end method


# virtual methods
.method public final dataChanged(Ljava/lang/String;[B)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDataStoragePath:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDataStoragePath:Ljava/io/File;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    goto :goto_2

    .line 20
    :cond_1
    :goto_0
    new-instance v0, Ljava/io/File;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDataStoragePath:Ljava/io/File;

    .line 23
    .line 24
    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    const/4 p1, 0x1

    .line 32
    if-eqz p0, :cond_2

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 35
    .line 36
    .line 37
    move-result-wide v1

    .line 38
    long-to-int p0, v1

    .line 39
    new-array p0, p0, [B

    .line 40
    .line 41
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :catch_0
    move-exception v0

    .line 55
    const-string v1, "PowerStatsLogger"

    .line 56
    .line 57
    const-string v2, "Failed to read cached data from file"

    .line 58
    .line 59
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    .line 61
    .line 62
    :goto_1
    invoke-static {p0, p2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    xor-int/2addr p0, p1

    .line 67
    goto :goto_2

    .line 68
    :cond_2
    move p0, p1

    .line 69
    :goto_2
    return p0
.end method

.method public getStartWallTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mStartWallTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-wide v1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mStartWallTime:J

    .line 5
    .line 6
    iget-object v3, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    .line 7
    .line 8
    if-eqz p1, :cond_8

    .line 9
    .line 10
    const/4 v4, 0x1

    .line 11
    iget-object v5, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsModelStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    .line 12
    .line 13
    if-eq p1, v4, :cond_5

    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    if-eq p1, v4, :cond_0

    .line 17
    .line 18
    goto/16 :goto_9

    .line 19
    .line 20
    :cond_0
    new-array p1, v0, [I

    .line 21
    .line 22
    invoke-interface {v3, p1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->readEnergyMeter([I)[Landroid/hardware/power/stats/EnergyMeasurement;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v4, v0

    .line 30
    :goto_0
    array-length v6, p1

    .line 31
    if-ge v4, v6, :cond_2

    .line 32
    .line 33
    aget-object v6, p1, v4

    .line 34
    .line 35
    iget-wide v7, v6, Landroid/hardware/power/stats/EnergyMeasurement;->timestampMs:J

    .line 36
    .line 37
    add-long/2addr v7, v1

    .line 38
    iput-wide v7, v6, Landroid/hardware/power/stats/EnergyMeasurement;->timestampMs:J

    .line 39
    .line 40
    add-int/lit8 v4, v4, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    :goto_1
    new-instance v4, Landroid/util/proto/ProtoOutputStream;

    .line 44
    .line 45
    invoke-direct {v4}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-static {p1, v4}, Lcom/android/server/powerstats/ProtoStreamUtils$ChannelUtils;->packProtoMessage([Landroid/hardware/power/stats/EnergyMeasurement;Landroid/util/proto/ProtoOutputStream;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsMeterStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/powerstats/PowerStatsDataStorage;->write([B)V

    .line 58
    .line 59
    .line 60
    new-array p0, v0, [I

    .line 61
    .line 62
    invoke-interface {v3, p0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumed([I)[Landroid/hardware/power/stats/EnergyConsumerResult;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    if-nez p0, :cond_3

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_3
    move p1, v0

    .line 70
    :goto_2
    array-length v3, p0

    .line 71
    if-ge p1, v3, :cond_4

    .line 72
    .line 73
    aget-object v3, p0, p1

    .line 74
    .line 75
    iget-wide v6, v3, Landroid/hardware/power/stats/EnergyConsumerResult;->timestampMs:J

    .line 76
    .line 77
    add-long/2addr v6, v1

    .line 78
    iput-wide v6, v3, Landroid/hardware/power/stats/EnergyConsumerResult;->timestampMs:J

    .line 79
    .line 80
    add-int/lit8 p1, p1, 0x1

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_4
    :goto_3
    new-instance p1, Landroid/util/proto/ProtoOutputStream;

    .line 84
    .line 85
    invoke-direct {p1}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-static {p0, p1, v0}, Lcom/android/server/powerstats/ProtoStreamUtils$ChannelUtils;->packProtoMessage([Landroid/hardware/power/stats/EnergyConsumerResult;Landroid/util/proto/ProtoOutputStream;Z)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {v5, p0}, Lcom/android/server/powerstats/PowerStatsDataStorage;->write([B)V

    .line 96
    .line 97
    .line 98
    goto :goto_9

    .line 99
    :cond_5
    new-array p0, v0, [I

    .line 100
    .line 101
    invoke-interface {v3, p0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumed([I)[Landroid/hardware/power/stats/EnergyConsumerResult;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    if-nez p0, :cond_6

    .line 106
    .line 107
    goto :goto_5

    .line 108
    :cond_6
    :goto_4
    array-length p1, p0

    .line 109
    if-ge v0, p1, :cond_7

    .line 110
    .line 111
    aget-object p1, p0, v0

    .line 112
    .line 113
    iget-wide v6, p1, Landroid/hardware/power/stats/EnergyConsumerResult;->timestampMs:J

    .line 114
    .line 115
    add-long/2addr v6, v1

    .line 116
    iput-wide v6, p1, Landroid/hardware/power/stats/EnergyConsumerResult;->timestampMs:J

    .line 117
    .line 118
    add-int/lit8 v0, v0, 0x1

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_7
    :goto_5
    new-instance p1, Landroid/util/proto/ProtoOutputStream;

    .line 122
    .line 123
    invoke-direct {p1}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-static {p0, p1, v4}, Lcom/android/server/powerstats/ProtoStreamUtils$ChannelUtils;->packProtoMessage([Landroid/hardware/power/stats/EnergyConsumerResult;Landroid/util/proto/ProtoOutputStream;Z)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-virtual {v5, p0}, Lcom/android/server/powerstats/PowerStatsDataStorage;->write([B)V

    .line 134
    .line 135
    .line 136
    goto :goto_9

    .line 137
    :cond_8
    new-array p1, v0, [I

    .line 138
    .line 139
    invoke-interface {v3, p1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getStateResidency([I)[Landroid/hardware/power/stats/StateResidencyResult;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    if-nez p1, :cond_9

    .line 144
    .line 145
    goto :goto_8

    .line 146
    :cond_9
    move v3, v0

    .line 147
    :goto_6
    array-length v4, p1

    .line 148
    if-ge v3, v4, :cond_b

    .line 149
    .line 150
    aget-object v4, p1, v3

    .line 151
    .line 152
    iget-object v4, v4, Landroid/hardware/power/stats/StateResidencyResult;->stateResidencyData:[Landroid/hardware/power/stats/StateResidency;

    .line 153
    .line 154
    array-length v4, v4

    .line 155
    move v5, v0

    .line 156
    :goto_7
    if-ge v5, v4, :cond_a

    .line 157
    .line 158
    aget-object v6, p1, v3

    .line 159
    .line 160
    iget-object v6, v6, Landroid/hardware/power/stats/StateResidencyResult;->stateResidencyData:[Landroid/hardware/power/stats/StateResidency;

    .line 161
    .line 162
    aget-object v6, v6, v5

    .line 163
    .line 164
    iget-wide v7, v6, Landroid/hardware/power/stats/StateResidency;->lastEntryTimestampMs:J

    .line 165
    .line 166
    add-long/2addr v7, v1

    .line 167
    iput-wide v7, v6, Landroid/hardware/power/stats/StateResidency;->lastEntryTimestampMs:J

    .line 168
    .line 169
    add-int/lit8 v5, v5, 0x1

    .line 170
    .line 171
    goto :goto_7

    .line 172
    :cond_a
    add-int/lit8 v3, v3, 0x1

    .line 173
    .line 174
    goto :goto_6

    .line 175
    :cond_b
    :goto_8
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    .line 176
    .line 177
    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-static {p1, v0}, Lcom/android/server/powerstats/ProtoStreamUtils$ChannelUtils;->packProtoMessage([Landroid/hardware/power/stats/StateResidencyResult;Landroid/util/proto/ProtoOutputStream;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsResidencyStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    .line 188
    .line 189
    invoke-virtual {p0, p1}, Lcom/android/server/powerstats/PowerStatsDataStorage;->write([B)V

    .line 190
    .line 191
    .line 192
    :goto_9
    return-void
.end method

.method public final updateCacheFile(Ljava/lang/String;[B)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Landroid/util/AtomicFile;

    .line 2
    .line 3
    new-instance v1, Ljava/io/File;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDataStoragePath:Ljava/io/File;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    const-string p1, "PowerStatsLogger"

    .line 26
    .line 27
    const-string p2, "Failed to write current data to cached file"

    .line 28
    .line 29
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method
