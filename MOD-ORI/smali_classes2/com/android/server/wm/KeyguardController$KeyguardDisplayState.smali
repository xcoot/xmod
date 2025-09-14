.class public final Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAodShowing:Z

.field public mDismissalRequested:Z

.field public mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

.field public final mDisplayId:I

.field public mKeyguardGoingAway:Z

.field public mKeyguardShowing:Z

.field public mOccluded:Z

.field public mRequestDismissKeyguard:Z

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mSleepTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;

.field public mTopOccludesActivity:Lcom/android/server/wm/ActivityRecord;

.field public mTopTurnScreenOnActivity:Lcom/android/server/wm/ActivityRecord;

.field public mWakeAndUnlock:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;ILcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mSleepTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;

    .line 9
    .line 10
    return-void
.end method
