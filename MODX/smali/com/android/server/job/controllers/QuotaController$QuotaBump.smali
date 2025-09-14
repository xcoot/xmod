.class final Lcom/android/server/job/controllers/QuotaController$QuotaBump;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/job/controllers/QuotaController$TimedEvent;


# instance fields
.field public final eventTimeElapsed:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController$QuotaBump;->eventTimeElapsed:J

    .line 6
    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 2

    .line 1
    const-string v0, "Quota bump @ "

    .line 3
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QuotaBump;->eventTimeElapsed:J

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 11
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 14
    return-void
.end method

.method public final getEndTimeElapsed()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QuotaBump;->eventTimeElapsed:J

    .line 3
    return-wide v0
.end method
