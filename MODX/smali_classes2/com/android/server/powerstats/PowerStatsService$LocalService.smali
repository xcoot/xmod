.class public final Lcom/android/server/powerstats/PowerStatsService$LocalService;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/powerstats/PowerStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/powerstats/PowerStatsService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsService$LocalService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getEnergyConsumedAsync([I)Ljava/util/concurrent/CompletableFuture;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsService$LocalService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$mgetHandler(Lcom/android/server/powerstats/PowerStatsService;)Landroid/os/Handler;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Lcom/android/server/powerstats/PowerStatsService$LocalService$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-direct {v2, p0, v0, p1, v3}, Lcom/android/server/powerstats/PowerStatsService$LocalService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/powerstats/PowerStatsService$LocalService;Ljava/util/concurrent/CompletableFuture;[II)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public final getStateResidencyAsync([I)Ljava/util/concurrent/CompletableFuture;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsService$LocalService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$mgetHandler(Lcom/android/server/powerstats/PowerStatsService;)Landroid/os/Handler;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Lcom/android/server/powerstats/PowerStatsService$LocalService$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    invoke-direct {v2, p0, v0, p1, v3}, Lcom/android/server/powerstats/PowerStatsService$LocalService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/powerstats/PowerStatsService$LocalService;Ljava/util/concurrent/CompletableFuture;[II)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    return-object v0
.end method
