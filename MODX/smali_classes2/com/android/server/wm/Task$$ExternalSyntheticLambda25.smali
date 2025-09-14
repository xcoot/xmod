.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/Task;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/Task;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda25;->f$0:Lcom/android/server/wm/Task;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda25;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda25;->f$0:Lcom/android/server/wm/Task;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda25;->f$1:Z

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    if-eq p1, v0, :cond_2

    .line 11
    .line 12
    :cond_0
    check-cast p1, Lcom/android/server/wm/Task;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isFocusableAndVisible()Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_2

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isFreeformForceHidden()Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-nez p0, :cond_2

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTopFreeform()Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    const/4 p1, 0x5

    .line 37
    if-ne p0, p1, :cond_2

    .line 38
    .line 39
    :cond_1
    const/4 p0, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/4 p0, 0x0

    .line 42
    :goto_0
    return p0
.end method
