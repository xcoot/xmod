.class public final Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final id:Ljava/lang/String;

.field public intermediates:Ljava/lang/Object;

.field public final stateValues:[I


# direct methods
.method public constructor <init>([Lcom/android/server/power/stats/MultiStateStats$States;[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1, p2}, Lcom/android/server/power/stats/PowerStatsProcessor;->-$$Nest$smconcatLabels([Lcom/android/server/power/stats/MultiStateStats$States;[I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;->id:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    .line 11
    .line 12
    return-void
.end method
