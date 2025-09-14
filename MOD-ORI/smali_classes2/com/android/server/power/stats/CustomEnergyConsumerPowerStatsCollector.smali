.class public final Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;
.super Lcom/android/server/power/stats/PowerStatsCollector;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sLayout:Lcom/android/server/power/stats/EnergyConsumerPowerStatsLayout;


# instance fields
.field public mCollectors:Ljava/util/List;

.field public final mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsLayout;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/server/power/stats/EnergyConsumerPowerStatsLayout;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->sLayout:Lcom/android/server/power/stats/EnergyConsumerPowerStatsLayout;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 2
    .line 3
    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHandler:Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;

    .line 4
    .line 5
    iget-object v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPowerStatsUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    .line 6
    .line 7
    iget-object v6, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 8
    .line 9
    const-wide/16 v3, 0x0

    .line 10
    .line 11
    move-object v1, p0

    .line 12
    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/stats/PowerStatsCollector;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;JLcom/android/server/power/stats/PowerStatsUidResolver;Lcom/android/internal/os/Clock;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final collectAndDump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->ensureInitialized()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->mCollectors:Ljava/util/List;

    .line 6
    .line 7
    check-cast v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ge v0, v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->mCollectors:Ljava/util/List;

    .line 16
    .line 17
    check-cast v1, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Lcom/android/server/power/stats/PowerStatsCollector;->collectAndDump(Ljava/io/PrintWriter;)V

    .line 26
    .line 27
    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method public final ensureInitialized()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->mCollectors:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v2, v1}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->getEnergyConsumerIds(ILjava/lang/String;)[I

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v3, Ljava/util/ArrayList;

    .line 17
    .line 18
    array-length v4, v1

    .line 19
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    .line 21
    .line 22
    iput-object v3, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->mCollectors:Ljava/util/List;

    .line 23
    .line 24
    const/16 v3, 0x3e8

    .line 25
    .line 26
    move v6, v3

    .line 27
    move v3, v2

    .line 28
    :goto_0
    array-length v4, v1

    .line 29
    if-ge v3, v4, :cond_b

    .line 30
    .line 31
    aget v4, v1, v3

    .line 32
    .line 33
    iget-object v5, v0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

    .line 34
    .line 35
    if-eqz v5, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    iget-object v5, v0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->mPowerStatsInternal:Lcom/android/server/powerstats/PowerStatsService$LocalService;

    .line 39
    .line 40
    if-nez v5, :cond_2

    .line 41
    .line 42
    new-array v5, v2, [Landroid/hardware/power/stats/EnergyConsumer;

    .line 43
    .line 44
    iput-object v5, v0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    iget-object v5, v5, Lcom/android/server/powerstats/PowerStatsService$LocalService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    .line 48
    .line 49
    invoke-virtual {v5}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-interface {v5}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    iput-object v5, v0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

    .line 58
    .line 59
    if-nez v5, :cond_3

    .line 60
    .line 61
    new-array v5, v2, [Landroid/hardware/power/stats/EnergyConsumer;

    .line 62
    .line 63
    iput-object v5, v0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

    .line 64
    .line 65
    :cond_3
    :goto_1
    iget-object v5, v0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

    .line 66
    .line 67
    array-length v7, v5

    .line 68
    move v8, v2

    .line 69
    :goto_2
    if-ge v8, v7, :cond_a

    .line 70
    .line 71
    aget-object v9, v5, v8

    .line 72
    .line 73
    iget v10, v9, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    .line 74
    .line 75
    if-ne v10, v4, :cond_9

    .line 76
    .line 77
    iget-object v4, v9, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    .line 78
    .line 79
    if-eqz v4, :cond_4

    .line 80
    .line 81
    invoke-virtual {v4}, Ljava/lang/String;->isBlank()Z

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    if-eqz v5, :cond_5

    .line 86
    .line 87
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v5, "CUSTOM_"

    .line 90
    .line 91
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget v5, v9, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    .line 95
    .line 96
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    :cond_5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    new-instance v7, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 110
    .line 111
    .line 112
    move v8, v2

    .line 113
    :goto_3
    if-ge v8, v5, :cond_8

    .line 114
    .line 115
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    .line 116
    .line 117
    .line 118
    move-result v9

    .line 119
    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 120
    .line 121
    .line 122
    move-result v10

    .line 123
    if-eqz v10, :cond_6

    .line 124
    .line 125
    const/16 v9, 0x20

    .line 126
    .line 127
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    goto :goto_4

    .line 131
    :cond_6
    invoke-static {v9}, Ljava/lang/Character;->isISOControl(C)Z

    .line 132
    .line 133
    .line 134
    move-result v10

    .line 135
    if-eqz v10, :cond_7

    .line 136
    .line 137
    const/16 v9, 0x5f

    .line 138
    .line 139
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_7
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    :goto_4
    add-int/lit8 v8, v8, 0x1

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_8
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    :goto_5
    move-object v7, v4

    .line 154
    goto :goto_6

    .line 155
    :cond_9
    add-int/lit8 v8, v8, 0x1

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_a
    const-string v5, "Unsupported energy consumer ID "

    .line 159
    .line 160
    const-string v7, "PowerStatsCollector"

    .line 161
    .line 162
    invoke-static {v4, v5, v7}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    const-string/jumbo v4, "unsupported"

    .line 166
    .line 167
    .line 168
    goto :goto_5

    .line 169
    :goto_6
    new-instance v10, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;

    .line 170
    .line 171
    add-int/lit8 v11, v6, 0x1

    .line 172
    .line 173
    aget v8, v1, v3

    .line 174
    .line 175
    sget-object v9, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->sLayout:Lcom/android/server/power/stats/EnergyConsumerPowerStatsLayout;

    .line 176
    .line 177
    iget-object v5, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

    .line 178
    .line 179
    move-object v4, v10

    .line 180
    invoke-direct/range {v4 .. v9}, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;ILjava/lang/String;ILcom/android/server/power/stats/EnergyConsumerPowerStatsLayout;)V

    .line 181
    .line 182
    .line 183
    const/4 v4, 0x1

    .line 184
    iput-boolean v4, v10, Lcom/android/server/power/stats/PowerStatsCollector;->mEnabled:Z

    .line 185
    .line 186
    new-instance v4, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector$$ExternalSyntheticLambda0;

    .line 187
    .line 188
    invoke-direct {v4, p0}, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v10, v4}, Lcom/android/server/power/stats/PowerStatsCollector;->addConsumer(Ljava/util/function/Consumer;)V

    .line 192
    .line 193
    .line 194
    iget-object v4, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->mCollectors:Ljava/util/List;

    .line 195
    .line 196
    check-cast v4, Ljava/util/ArrayList;

    .line 197
    .line 198
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    add-int/lit8 v3, v3, 0x1

    .line 202
    .line 203
    move v6, v11

    .line 204
    goto/16 :goto_0

    .line 205
    .line 206
    :cond_b
    return-void
.end method

.method public final forceSchedule()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->ensureInitialized()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    move v1, v0

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->mCollectors:Ljava/util/List;

    .line 7
    .line 8
    check-cast v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-ge v0, v2, :cond_0

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->mCollectors:Ljava/util/List;

    .line 17
    .line 18
    check-cast v2, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/android/server/power/stats/PowerStatsCollector;->forceSchedule()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    or-int/2addr v1, v2

    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return v1
.end method

.method public final schedule()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mEnabled:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->ensureInitialized()V

    .line 8
    .line 9
    .line 10
    move v0, v1

    .line 11
    :goto_0
    iget-object v2, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->mCollectors:Ljava/util/List;

    .line 12
    .line 13
    check-cast v2, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-ge v1, v2, :cond_1

    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->mCollectors:Ljava/util/List;

    .line 22
    .line 23
    check-cast v2, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/android/server/power/stats/PowerStatsCollector;->schedule()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    or-int/2addr v0, v2

    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return v0
.end method
