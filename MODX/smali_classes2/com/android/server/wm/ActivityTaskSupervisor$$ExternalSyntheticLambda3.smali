.class public final synthetic Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/QuadConsumer;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/app/ActivityManagerInternal;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Integer;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    check-cast p3, Landroid/content/ComponentName;

    .line 10
    .line 11
    check-cast p4, Landroid/content/Intent;

    .line 12
    .line 13
    invoke-virtual {p1, p0, p3, p4}, Landroid/app/ActivityManagerInternal;->cleanUpServices(ILandroid/content/ComponentName;Landroid/content/Intent;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
