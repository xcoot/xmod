.class public final Lcom/android/server/policy/DeferredKeyActionExecutor$TimedActionsBuffer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActions:Ljava/util/List;

.field public final mDownTime:J

.field public mExecutable:Z

.field public final mKeyCode:I


# direct methods
.method public constructor <init>(IJ)V
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
    iput-object v0, p0, Lcom/android/server/policy/DeferredKeyActionExecutor$TimedActionsBuffer;->mActions:Ljava/util/List;

    .line 10
    .line 11
    iput p1, p0, Lcom/android/server/policy/DeferredKeyActionExecutor$TimedActionsBuffer;->mKeyCode:I

    .line 12
    .line 13
    iput-wide p2, p0, Lcom/android/server/policy/DeferredKeyActionExecutor$TimedActionsBuffer;->mDownTime:J

    .line 14
    .line 15
    return-void
.end method
