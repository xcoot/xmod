.class public final synthetic Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;

.field public final synthetic f$1:J

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(JJLjava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p5, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda4;->f$0:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput-wide p1, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda4;->f$1:J

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda4;->f$2:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda4;->f$0:Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda4;->f$1:J

    .line 4
    .line 5
    iget-wide v3, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda4;->f$2:J

    .line 6
    .line 7
    check-cast p1, Ljava/lang/Long;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide p0

    .line 13
    add-long/2addr p0, v1

    .line 14
    sub-long/2addr p0, v3

    .line 15
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method
