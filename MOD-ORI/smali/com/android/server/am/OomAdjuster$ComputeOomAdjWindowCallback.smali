.class public final Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public adj:I

.field public app:Lcom/android/server/am/ProcessRecord;

.field public appUid:I

.field public foregroundActivities:Z

.field public logUid:I

.field public mAdjType:Ljava/lang/String;

.field public mHasVisibleActivities:Z

.field public mState:Lcom/android/server/am/ProcessStateRecord;

.field public procState:I

.field public processStateCurTop:I

.field public schedGroup:I

.field public final synthetic this$0:Lcom/android/server/am/OomAdjuster;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OomAdjuster;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    .line 5
    .line 6
    return-void
.end method
