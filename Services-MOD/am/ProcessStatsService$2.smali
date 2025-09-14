.class public final Lcom/android/server/am/ProcessStatsService$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ProcessStatsService;

.field public final synthetic val$totalTime:J


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessStatsService;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/ProcessStatsService$2;->this$0:Lcom/android/server/am/ProcessStatsService;

    .line 6
    iput-wide p2, p0, Lcom/android/server/am/ProcessStatsService$2;->val$totalTime:J

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService$2;->this$0:Lcom/android/server/am/ProcessStatsService;

    .line 3
    iget-wide v1, p0, Lcom/android/server/am/ProcessStatsService$2;->val$totalTime:J

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ProcessStatsService;->performWriteState(J)V

    .line 8
    return-void
.end method
