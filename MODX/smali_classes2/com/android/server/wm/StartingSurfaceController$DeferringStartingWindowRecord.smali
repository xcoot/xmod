.class public final Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDeferring:Lcom/android/server/wm/ActivityRecord;

.field public final mPrev:Lcom/android/server/wm/ActivityRecord;

.field public final mSource:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;->mDeferring:Lcom/android/server/wm/ActivityRecord;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;->mPrev:Lcom/android/server/wm/ActivityRecord;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;->mSource:Lcom/android/server/wm/ActivityRecord;

    .line 9
    .line 10
    return-void
.end method
