.class public final synthetic Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Lcom/android/server/wm/WindowManagerService;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(JLcom/android/server/wm/ActivityRecord;Ljava/lang/Object;Lcom/android/server/wm/WindowManagerService;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda5;->f$0:J

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda5;->f$1:Lcom/android/server/wm/ActivityRecord;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda5;->f$3:Lcom/android/server/wm/WindowManagerService;

    .line 11
    .line 12
    iput p6, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda5;->f$4:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda5;->f$0:J

    .line 2
    .line 3
    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda5;->f$1:Lcom/android/server/wm/ActivityRecord;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda5;->f$3:Lcom/android/server/wm/WindowManagerService;

    .line 8
    .line 9
    iget p0, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda5;->f$4:I

    .line 10
    .line 11
    iget-wide v5, v2, Lcom/android/server/wm/ActivityRecord;->topResumedStateLossTime:J

    .line 12
    .line 13
    cmp-long v0, v0, v5

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, v4, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    .line 18
    .line 19
    if-eq v3, v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, v4, Lcom/android/server/wm/WindowManagerService;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 23
    .line 24
    const/16 v1, 0x8

    .line 25
    .line 26
    invoke-virtual {v0, v1, p0}, Lcom/android/internal/util/LatencyTracker;->logAction(II)V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    return-void
.end method
