.class public final synthetic Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;

    .line 2
    .line 3
    check-cast p1, Lcom/android/internal/os/PowerStats;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mConsumerList:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    add-int/lit8 v0, v0, -0x1

    .line 18
    .line 19
    :goto_0
    if-ltz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Ljava/util/function/Consumer;

    .line 26
    .line 27
    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 v0, v0, -0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    :goto_1
    return-void
.end method
