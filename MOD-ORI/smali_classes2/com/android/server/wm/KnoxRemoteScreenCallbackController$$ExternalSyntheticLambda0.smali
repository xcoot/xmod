.class public final synthetic Lcom/android/server/wm/KnoxRemoteScreenCallbackController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:[Z


# direct methods
.method public synthetic constructor <init>(I[Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController$$ExternalSyntheticLambda0;->f$0:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController$$ExternalSyntheticLambda0;->f$1:[Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController$$ExternalSyntheticLambda0;->f$0:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/KnoxRemoteScreenCallbackController$$ExternalSyntheticLambda0;->f$1:[Z

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-ne v1, v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    aput-boolean p1, p0, v2

    .line 22
    .line 23
    move v2, p1

    .line 24
    :cond_0
    return v2
.end method
