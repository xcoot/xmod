.class public final Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mEnteredTrustedPresentationStateTime:J

.field public final mId:I

.field public mLastComputedTrustedPresentationState:Z

.field public mLastReportedTrustedPresentationState:Z

.field public final mListener:Landroid/window/ITrustedPresentationListener;

.field public final mThresholds:Landroid/window/TrustedPresentationThresholds;


# direct methods
.method public constructor <init>(Landroid/window/TrustedPresentationThresholds;ILandroid/window/ITrustedPresentationListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mLastComputedTrustedPresentationState:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mLastReportedTrustedPresentationState:Z

    .line 8
    .line 9
    const-wide/16 v0, -0x1

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mEnteredTrustedPresentationStateTime:J

    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mThresholds:Landroid/window/TrustedPresentationThresholds;

    .line 14
    .line 15
    iput p2, p0, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mId:I

    .line 16
    .line 17
    iput-object p3, p0, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mListener:Landroid/window/ITrustedPresentationListener;

    .line 18
    .line 19
    return-void
.end method
