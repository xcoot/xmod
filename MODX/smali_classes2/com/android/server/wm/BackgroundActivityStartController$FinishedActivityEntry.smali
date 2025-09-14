.class public final Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDebugInfo:Ljava/lang/String;

.field public final mLaunchCount:I

.field public final mTaskId:I

.field public final mUid:I

.field public final synthetic this$0:Lcom/android/server/wm/BackgroundActivityStartController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/ActivityRecord;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->this$0:Lcom/android/server/wm/BackgroundActivityStartController;

    .line 5
    .line 6
    iget-object v0, p1, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    .line 7
    .line 8
    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 9
    .line 10
    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 11
    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    .line 21
    .line 22
    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 23
    .line 24
    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iput v2, p0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mUid:I

    .line 31
    .line 32
    iput v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mTaskId:I

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget v3, v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mUid:I

    .line 38
    .line 39
    invoke-virtual {p2, v3}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget v0, v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mLaunchCount:I

    .line 47
    .line 48
    add-int/2addr v2, v0

    .line 49
    :cond_1
    :goto_0
    iput v2, p0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mLaunchCount:I

    .line 50
    .line 51
    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController;->getDebugStringForActivityRecord(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    iput-object p2, p0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mDebugInfo:Ljava/lang/String;

    .line 56
    .line 57
    iget-object p1, p1, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 58
    .line 59
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 60
    .line 61
    new-instance p2, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry$$ExternalSyntheticLambda0;

    .line 62
    .line 63
    invoke-direct {p2, p0, v1}, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;I)V

    .line 64
    .line 65
    .line 66
    const-wide/16 v0, 0xbb8

    .line 67
    .line 68
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 69
    .line 70
    .line 71
    return-void
.end method
