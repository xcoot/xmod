.class public final Lcom/android/server/people/SessionInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAppTargetPredictor:Lcom/android/server/people/prediction/AppTargetPredictor;

.field public final mCallbacks:Landroid/os/RemoteCallbackList;


# direct methods
.method public constructor <init>(Landroid/app/prediction/AppPredictionContext;Lcom/android/server/people/data/DataManager;ILandroid/content/Context;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/RemoteCallbackList;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/people/SessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 10
    .line 11
    new-instance v3, Lcom/android/server/people/SessionInfo$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    invoke-direct {v3, p0}, Lcom/android/server/people/SessionInfo$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/SessionInfo;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/app/prediction/AppPredictionContext;->getUiSurface()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string/jumbo v1, "share"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    new-instance v0, Lcom/android/server/people/prediction/ShareTargetPredictor;

    .line 30
    .line 31
    move-object v1, v0

    .line 32
    move-object v2, p1

    .line 33
    move-object v4, p2

    .line 34
    move v5, p3

    .line 35
    move-object v6, p4

    .line 36
    invoke-direct/range {v1 .. v6}, Lcom/android/server/people/prediction/ShareTargetPredictor;-><init>(Landroid/app/prediction/AppPredictionContext;Lcom/android/server/people/SessionInfo$$ExternalSyntheticLambda0;Lcom/android/server/people/data/DataManager;ILandroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance v0, Lcom/android/server/people/prediction/AppTargetPredictor;

    .line 41
    .line 42
    invoke-direct {v0, p1, v3, p2, p3}, Lcom/android/server/people/prediction/AppTargetPredictor;-><init>(Landroid/app/prediction/AppPredictionContext;Lcom/android/server/people/SessionInfo$$ExternalSyntheticLambda0;Lcom/android/server/people/data/DataManager;I)V

    .line 43
    .line 44
    .line 45
    :goto_0
    iput-object v0, p0, Lcom/android/server/people/SessionInfo;->mAppTargetPredictor:Lcom/android/server/people/prediction/AppTargetPredictor;

    .line 46
    .line 47
    return-void
.end method
