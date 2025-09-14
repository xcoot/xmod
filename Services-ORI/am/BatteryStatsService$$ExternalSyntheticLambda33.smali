.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:Landroid/os/WorkSource;

.field public final synthetic f$10:I

.field public final synthetic f$11:Z

.field public final synthetic f$12:J

.field public final synthetic f$13:J

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:I

.field public final synthetic f$6:Landroid/os/WorkSource;

.field public final synthetic f$7:I

.field public final synthetic f$8:Ljava/lang/String;

.field public final synthetic f$9:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V
    .locals 3

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    move-object v1, p1

    .line 6
    iput-object v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 7
    .line 8
    move-object v1, p2

    .line 9
    iput-object v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$1:Landroid/os/WorkSource;

    .line 10
    .line 11
    move v1, p3

    .line 12
    iput v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$2:I

    .line 13
    .line 14
    move-object v1, p4

    .line 15
    iput-object v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$3:Ljava/lang/String;

    .line 16
    .line 17
    move-object v1, p5

    .line 18
    iput-object v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$4:Ljava/lang/String;

    .line 19
    .line 20
    move v1, p6

    .line 21
    iput v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$5:I

    .line 22
    .line 23
    move-object v1, p7

    .line 24
    iput-object v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$6:Landroid/os/WorkSource;

    .line 25
    .line 26
    move v1, p8

    .line 27
    iput v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$7:I

    .line 28
    .line 29
    move-object v1, p9

    .line 30
    iput-object v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$8:Ljava/lang/String;

    .line 31
    .line 32
    move-object v1, p10

    .line 33
    iput-object v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$9:Ljava/lang/String;

    .line 34
    .line 35
    move v1, p11

    .line 36
    iput v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$10:I

    .line 37
    .line 38
    move v1, p12

    .line 39
    iput-boolean v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$11:Z

    .line 40
    .line 41
    move-wide/from16 v1, p13

    .line 42
    .line 43
    iput-wide v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$12:J

    .line 44
    .line 45
    move-wide/from16 v1, p15

    .line 46
    .line 47
    iput-wide v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$13:J

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/am/BatteryStatsService;

    .line 4
    .line 5
    iget-object v3, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$1:Landroid/os/WorkSource;

    .line 6
    .line 7
    iget v4, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$2:I

    .line 8
    .line 9
    iget-object v5, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$3:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$4:Ljava/lang/String;

    .line 12
    .line 13
    iget v7, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$5:I

    .line 14
    .line 15
    iget-object v8, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$6:Landroid/os/WorkSource;

    .line 16
    .line 17
    iget v9, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$7:I

    .line 18
    .line 19
    iget-object v10, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$8:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v11, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$9:Ljava/lang/String;

    .line 22
    .line 23
    iget v12, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$10:I

    .line 24
    .line 25
    iget-boolean v13, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$11:Z

    .line 26
    .line 27
    iget-wide v14, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$12:J

    .line 28
    .line 29
    move-wide/from16 v16, v14

    .line 30
    .line 31
    iget-wide v14, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$13:J

    .line 32
    .line 33
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 34
    .line 35
    monitor-enter v2

    .line 36
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 37
    .line 38
    move-object v1, v2

    .line 39
    move-object v2, v0

    .line 40
    move-wide/from16 v18, v14

    .line 41
    .line 42
    move-wide/from16 v14, v16

    .line 43
    .line 44
    move-wide/from16 v16, v18

    .line 45
    .line 46
    :try_start_1
    invoke-virtual/range {v2 .. v17}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteChangeWakelockFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V

    .line 47
    .line 48
    .line 49
    monitor-exit v1

    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    goto :goto_0

    .line 53
    :catchall_1
    move-exception v0

    .line 54
    move-object v1, v2

    .line 55
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    throw v0
.end method
