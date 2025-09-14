.class public final Lcom/android/server/power/stats/BatteryStatsImpl$UidToRemove;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mEndUid:I

.field public final mStartUid:I

.field public final mUidRemovalTimestamp:J

.field public final synthetic this$0:Lcom/android/server/power/stats/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;IIJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$UidToRemove;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$UidToRemove;->mStartUid:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$UidToRemove;->mEndUid:I

    .line 9
    .line 10
    iput-wide p4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$UidToRemove;->mUidRemovalTimestamp:J

    .line 11
    .line 12
    return-void
.end method
