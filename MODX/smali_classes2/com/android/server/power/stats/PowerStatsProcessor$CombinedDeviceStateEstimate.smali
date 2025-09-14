.class public final Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final deviceStateEstimations:Ljava/util/List;

.field public final id:Ljava/lang/String;

.field public intermediates:Ljava/lang/Object;


# direct methods
.method public constructor <init>([Lcom/android/server/power/stats/MultiStateStats$States;[I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;->deviceStateEstimations:Ljava/util/List;

    .line 10
    .line 11
    invoke-static {p1, p2}, Lcom/android/server/power/stats/PowerStatsProcessor;->-$$Nest$smconcatLabels([Lcom/android/server/power/stats/MultiStateStats$States;[I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;->id:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method
