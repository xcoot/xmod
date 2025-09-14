.class public final synthetic Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/QuadConsumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/StringBuilder;

.field public final synthetic f$1:Lcom/android/server/content/SyncManager$PrintTable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/StringBuilder;Lcom/android/server/content/SyncManager$PrintTable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda8;->f$0:Ljava/lang/StringBuilder;

    .line 6
    iput-object p2, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/content/SyncManager$PrintTable;

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11

    .line 1
    iget-object v10, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda8;->f$0:Ljava/lang/StringBuilder;

    .line 3
    iget-object p0, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/content/SyncManager$PrintTable;

    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Ljava/lang/String;

    .line 8
    check-cast p2, Landroid/content/SyncStatusInfo$Stats;

    .line 10
    check-cast p3, Ljava/util/function/Function;

    .line 12
    check-cast p4, Ljava/lang/Integer;

    .line 14
    const/4 p1, 0x0

    .line 15
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 18
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 21
    move-result p1

    .line 22
    iget p4, p2, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    .line 24
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object p4

    .line 28
    invoke-interface {p3, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    iget p4, p2, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    .line 34
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object p4

    .line 38
    invoke-interface {p3, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    move-result-object v2

    .line 42
    iget p4, p2, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    .line 44
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object p4

    .line 48
    invoke-interface {p3, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    move-result-object v3

    .line 52
    iget p4, p2, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    .line 54
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    move-result-object p4

    .line 58
    invoke-interface {p3, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    move-result-object v4

    .line 62
    iget p4, p2, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    .line 64
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    move-result-object p4

    .line 68
    invoke-interface {p3, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    move-result-object v5

    .line 72
    iget p4, p2, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    .line 74
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    move-result-object p4

    .line 78
    invoke-interface {p3, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    move-result-object v6

    .line 82
    iget p4, p2, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    .line 84
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    move-result-object p4

    .line 88
    invoke-interface {p3, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    move-result-object v7

    .line 92
    iget p4, p2, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    .line 94
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    move-result-object p4

    .line 98
    invoke-interface {p3, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    move-result-object v8

    .line 102
    iget p4, p2, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    .line 104
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    move-result-object p4

    .line 108
    invoke-interface {p3, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    move-result-object v9

    .line 112
    iget-wide p2, p2, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    .line 114
    invoke-static {v10, p2, p3}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)V

    .line 117
    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    .line 120
    move-result-object p2

    .line 121
    const/4 p3, 0x3

    .line 122
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    .line 125
    return-void
.end method
