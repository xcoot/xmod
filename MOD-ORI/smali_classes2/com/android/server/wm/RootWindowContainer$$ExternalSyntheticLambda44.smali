.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda44;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:[Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Z[ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda44;->f$0:Z

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda44;->f$1:[Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda44;->f$2:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda44;->f$0:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda44;->f$1:[Z

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda44;->f$2:Z

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/wm/Task;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    aget-boolean v2, v1, v0

    .line 13
    .line 14
    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task;->goToSleepIfPossible(Z)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    and-int/2addr p0, v2

    .line 19
    aput-boolean p0, v1, v0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x1

    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p1, p0, v0}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(ZLcom/android/server/wm/ActivityRecord;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method
