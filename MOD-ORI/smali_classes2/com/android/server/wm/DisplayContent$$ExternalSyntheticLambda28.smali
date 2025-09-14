.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(ZLcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda28;->f$0:Lcom/android/server/wm/ActivityRecord;

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda28;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda28;->f$0:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda28;->f$1:Z

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/wm/Task;

    .line 6
    .line 7
    invoke-virtual {p1, p0, v0}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(ZLcom/android/server/wm/ActivityRecord;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
