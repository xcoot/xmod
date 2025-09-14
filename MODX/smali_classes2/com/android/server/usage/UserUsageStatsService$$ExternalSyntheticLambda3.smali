.class public final synthetic Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/usage/UserUsageStatsService;

.field public final synthetic f$1:J

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usage/UserUsageStatsService;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/usage/UserUsageStatsService;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda3;->f$1:J

    .line 7
    .line 8
    iput-wide p4, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda3;->f$2:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/usage/UserUsageStatsService;

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda3;->f$1:J

    .line 4
    .line 5
    iget-wide v4, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda3;->f$2:J

    .line 6
    .line 7
    check-cast p1, Ljava/lang/String;

    .line 8
    .line 9
    check-cast p2, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance p0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v7, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda4;

    .line 20
    .line 21
    move-object v1, v7

    .line 22
    move-object v6, p0

    .line 23
    invoke-direct/range {v1 .. v6}, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda4;-><init>(JJLjava/util/ArrayList;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 27
    .line 28
    .line 29
    iget-object p2, v0, Lcom/android/server/usage/UserUsageStatsService;->track:Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-virtual {p2, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    return-void
.end method
