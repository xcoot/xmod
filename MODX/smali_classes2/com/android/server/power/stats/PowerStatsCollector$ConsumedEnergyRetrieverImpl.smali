.class public final Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

.field public final mPowerStatsInternal:Lcom/android/server/powerstats/PowerStatsService$LocalService;


# direct methods
.method public constructor <init>(Lcom/android/server/powerstats/PowerStatsService$LocalService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->mPowerStatsInternal:Lcom/android/server/powerstats/PowerStatsService$LocalService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getConsumedEnergy([I)[Landroid/hardware/power/stats/EnergyConsumerResult;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->mPowerStatsInternal:Lcom/android/server/powerstats/PowerStatsService$LocalService;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/powerstats/PowerStatsService$LocalService;->getEnergyConsumedAsync([I)Ljava/util/concurrent/CompletableFuture;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :try_start_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    .line 9
    const-wide/16 v0, 0x4e20

    .line 10
    .line 11
    invoke-virtual {p0, v0, v1, p1}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, [Landroid/hardware/power/stats/EnergyConsumerResult;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    return-object p0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    const-string p1, "PowerStatsCollector"

    .line 20
    .line 21
    const-string v0, "Could not obtain energy consumers from PowerStatsService"

    .line 22
    .line 23
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method

.method public final getConsumedEnergyUws([I)[J
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->getConsumedEnergy([I)[Landroid/hardware/power/stats/EnergyConsumerResult;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    array-length v0, p1

    .line 10
    new-array v0, v0, [J

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    move v2, v1

    .line 14
    :goto_0
    array-length v3, p1

    .line 15
    if-ge v2, v3, :cond_3

    .line 16
    .line 17
    aget v3, p1, v2

    .line 18
    .line 19
    array-length v4, p0

    .line 20
    move v5, v1

    .line 21
    :goto_1
    if-ge v5, v4, :cond_2

    .line 22
    .line 23
    aget-object v6, p0, v5

    .line 24
    .line 25
    iget v7, v6, Landroid/hardware/power/stats/EnergyConsumerResult;->id:I

    .line 26
    .line 27
    if-ne v7, v3, :cond_1

    .line 28
    .line 29
    iget-wide v3, v6, Landroid/hardware/power/stats/EnergyConsumerResult;->energyUWs:J

    .line 30
    .line 31
    aput-wide v3, v0, v2

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    return-object v0
.end method

.method public final getEnergyConsumerIds(ILjava/lang/String;)[I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->mPowerStatsInternal:Lcom/android/server/powerstats/PowerStatsService$LocalService;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    new-array v0, v1, [Landroid/hardware/power/stats/EnergyConsumer;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget-object v0, v0, Lcom/android/server/powerstats/PowerStatsService$LocalService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    new-array v0, v1, [Landroid/hardware/power/stats/EnergyConsumer;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

    .line 33
    .line 34
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

    .line 35
    .line 36
    array-length v0, v0

    .line 37
    if-nez v0, :cond_3

    .line 38
    .line 39
    new-array p0, v1, [I

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

    .line 48
    .line 49
    array-length v2, p0

    .line 50
    move v3, v1

    .line 51
    :goto_1
    if-ge v3, v2, :cond_6

    .line 52
    .line 53
    aget-object v4, p0, v3

    .line 54
    .line 55
    iget-byte v5, v4, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    .line 56
    .line 57
    if-ne v5, p1, :cond_5

    .line 58
    .line 59
    if-eqz p2, :cond_4

    .line 60
    .line 61
    iget-object v5, v4, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-eqz v5, :cond_5

    .line 68
    .line 69
    :cond_4
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    if-eqz p0, :cond_7

    .line 80
    .line 81
    new-array p0, v1, [I

    .line 82
    .line 83
    return-object p0

    .line 84
    :cond_7
    new-instance p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl$$ExternalSyntheticLambda0;

    .line 85
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-static {p0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    new-array p1, p0, [I

    .line 101
    .line 102
    :goto_2
    if-ge v1, p0, :cond_8

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    check-cast p2, Landroid/hardware/power/stats/EnergyConsumer;

    .line 109
    .line 110
    iget p2, p2, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    .line 111
    .line 112
    aput p2, p1, v1

    .line 113
    .line 114
    add-int/lit8 v1, v1, 0x1

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_8
    return-object p1
.end method
