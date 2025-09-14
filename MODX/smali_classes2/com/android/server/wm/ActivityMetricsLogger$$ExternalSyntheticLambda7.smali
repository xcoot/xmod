.class public final synthetic Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityMetricsLogger;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$3:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityMetricsLogger;JLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/wm/ActivityMetricsLogger;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda7;->f$1:J

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda7;->f$2:Lcom/android/server/wm/ActivityRecord;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda7;->f$3:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/wm/ActivityMetricsLogger;

    .line 2
    .line 3
    iget-wide v3, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda7;->f$1:J

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda7;->f$2:Lcom/android/server/wm/ActivityRecord;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda7;->f$3:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getPid()I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 26
    .line 27
    iget v7, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 28
    .line 29
    const/4 v2, 0x4

    .line 30
    move-object v1, v0

    .line 31
    invoke-virtual/range {v1 .. v7}, Landroid/app/ActivityManagerInternal;->addStartInfoTimestamp(IJIII)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
