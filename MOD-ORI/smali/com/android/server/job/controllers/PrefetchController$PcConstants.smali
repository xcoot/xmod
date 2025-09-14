.class Lcom/android/server/job/controllers/PrefetchController$PcConstants;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final KEY_LAUNCH_TIME_ALLOWANCE_MS:Ljava/lang/String; = "pc_launch_time_allowance_ms"

.field static final KEY_LAUNCH_TIME_THRESHOLD_MS:Ljava/lang/String; = "pc_launch_time_threshold_ms"


# instance fields
.field public LAUNCH_TIME_ALLOWANCE_MS:J

.field public LAUNCH_TIME_THRESHOLD_MS:J

.field public mShouldReevaluateConstraints:Z

.field public final synthetic this$0:Lcom/android/server/job/controllers/PrefetchController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/PrefetchController;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->mShouldReevaluateConstraints:Z

    .line 8
    .line 9
    const-wide/32 v0, 0x36ee80

    .line 10
    .line 11
    .line 12
    iput-wide v0, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->LAUNCH_TIME_THRESHOLD_MS:J

    .line 13
    .line 14
    const-wide/32 v0, 0x1b7740

    .line 15
    .line 16
    .line 17
    iput-wide v0, p0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->LAUNCH_TIME_ALLOWANCE_MS:J

    .line 18
    .line 19
    return-void
.end method
