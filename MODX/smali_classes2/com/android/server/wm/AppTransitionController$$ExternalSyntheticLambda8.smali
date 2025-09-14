.class public final synthetic Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:[Landroid/window/ITaskFragmentOrganizer;


# direct methods
.method public synthetic constructor <init>([Landroid/window/ITaskFragmentOrganizer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda8;->f$0:[Landroid/window/ITaskFragmentOrganizer;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda8;->f$0:[Landroid/window/ITaskFragmentOrganizer;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/wm/TaskFragment;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    aget-object v1, p0, v0

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {v1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-interface {v1, v2}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    aput-object p1, p0, v0

    .line 32
    .line 33
    :goto_0
    return v0
.end method
