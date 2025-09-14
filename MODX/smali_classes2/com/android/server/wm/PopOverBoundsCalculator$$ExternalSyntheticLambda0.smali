.class public final synthetic Lcom/android/server/wm/PopOverBoundsCalculator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$1:Lcom/android/server/wm/DisplayContent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/PopOverBoundsCalculator$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/ActivityRecord;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/PopOverBoundsCalculator$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/DisplayContent;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/PopOverBoundsCalculator$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/PopOverBoundsCalculator$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/DisplayContent;

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 6
    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->isFixedRotationLaunchingApp(Lcom/android/server/wm/ActivityRecord;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 22
    .line 23
    iget-boolean p0, p0, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    .line 24
    .line 25
    if-nez p0, :cond_0

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    :goto_0
    return p0
.end method
