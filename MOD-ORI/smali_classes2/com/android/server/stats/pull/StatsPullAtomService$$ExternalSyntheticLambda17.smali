.class public final synthetic Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/os/StoragedUidIoStatsReader$Callback;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(ILjava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda17;->f$0:Ljava/util/List;

    .line 5
    .line 6
    iput p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda17;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onUidStorageStats(IJJJJJJJJJJ)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda17;->f$0:Ljava/util/List;

    .line 4
    .line 5
    iget v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda17;->f$1:I

    .line 6
    .line 7
    sget v0, Lcom/android/server/stats/pull/StatsPullAtomService;->RANDOM_SEED:I

    .line 8
    .line 9
    move/from16 v3, p1

    .line 10
    .line 11
    move-wide/from16 v4, p2

    .line 12
    .line 13
    move-wide/from16 v6, p4

    .line 14
    .line 15
    move-wide/from16 v8, p6

    .line 16
    .line 17
    move-wide/from16 v10, p8

    .line 18
    .line 19
    move-wide/from16 v12, p10

    .line 20
    .line 21
    move-wide/from16 v14, p12

    .line 22
    .line 23
    move-wide/from16 v16, p14

    .line 24
    .line 25
    move-wide/from16 v18, p16

    .line 26
    .line 27
    move-wide/from16 v20, p18

    .line 28
    .line 29
    move-wide/from16 v22, p20

    .line 30
    .line 31
    invoke-static/range {v2 .. v23}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJJJJJJJJJ)Landroid/util/StatsEvent;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    return-void
.end method
