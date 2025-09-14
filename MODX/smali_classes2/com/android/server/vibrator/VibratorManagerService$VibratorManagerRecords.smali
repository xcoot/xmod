.class public final Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAggregatedVibrationHistory:Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

.field public final mRecentVibrations:Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;


# direct methods
.method public constructor <init>(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

    .line 5
    .line 6
    invoke-direct {v0, p2, p3}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;-><init>(II)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mAggregatedVibrationHistory:Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

    .line 10
    .line 11
    new-instance p2, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

    .line 12
    .line 13
    const/4 p3, 0x0

    .line 14
    invoke-direct {p2, p1, p3}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;-><init>(II)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mRecentVibrations:Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

    .line 18
    .line 19
    return-void
.end method
