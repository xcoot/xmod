.class public final synthetic Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/AppRestrictionController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AppRestrictionController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/am/AppRestrictionController;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/am/AppRestrictionController;

    .line 3
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    .line 20
    invoke-virtual {v2}, Lcom/android/server/am/BaseAppStateTracker;->onSystemReady()V

    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method
