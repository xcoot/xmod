.class public final Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mActivityOptedIn:Lcom/android/server/wm/ActivityRecord;

.field public mTopActivityMatchesSource:Z

.field public mTopActivityOptedIn:Z


# virtual methods
.method public final optedIn(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityOptedIn:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mActivityOptedIn:Lcom/android/server/wm/ActivityRecord;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iput-object p1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mActivityOptedIn:Lcom/android/server/wm/ActivityRecord;

    .line 9
    .line 10
    :cond_0
    return-void
.end method
