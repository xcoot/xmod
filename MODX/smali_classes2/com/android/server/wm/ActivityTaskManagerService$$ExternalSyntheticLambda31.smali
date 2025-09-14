.class public final synthetic Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda31;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/OctConsumer;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    move-object p0, p1

    .line 2
    check-cast p0, Landroid/app/ActivityManagerInternal;

    .line 3
    .line 4
    move-object p1, p2

    .line 5
    check-cast p1, Landroid/content/ComponentName;

    .line 6
    .line 7
    check-cast p3, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    check-cast p4, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    move-object p4, p5

    .line 20
    check-cast p4, Landroid/os/IBinder;

    .line 21
    .line 22
    move-object p5, p6

    .line 23
    check-cast p5, Landroid/content/ComponentName;

    .line 24
    .line 25
    move-object p6, p7

    .line 26
    check-cast p6, Landroid/app/assist/ActivityId;

    .line 27
    .line 28
    move-object p7, p8

    .line 29
    check-cast p7, Landroid/content/Intent;

    .line 30
    .line 31
    invoke-virtual/range {p0 .. p7}, Landroid/app/ActivityManagerInternal;->updateActivityUsageStatsWithIntent(Landroid/content/ComponentName;IILandroid/os/IBinder;Landroid/content/ComponentName;Landroid/app/assist/ActivityId;Landroid/content/Intent;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
