.class public final synthetic Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/NonaConsumer;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    move-object p0, p1

    .line 2
    check-cast p0, Landroid/app/ActivityManagerInternal;

    .line 3
    .line 4
    move-object p1, p2

    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    .line 7
    move-object p2, p3

    .line 8
    check-cast p2, Landroid/content/pm/ApplicationInfo;

    .line 9
    .line 10
    check-cast p4, Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13
    .line 14
    .line 15
    move-result p3

    .line 16
    check-cast p5, Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    .line 20
    .line 21
    move-result p4

    .line 22
    move-object p5, p6

    .line 23
    check-cast p5, Ljava/lang/String;

    .line 24
    .line 25
    move-object p6, p7

    .line 26
    check-cast p6, Landroid/content/ComponentName;

    .line 27
    .line 28
    check-cast p8, Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-virtual {p8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result p7

    .line 34
    check-cast p9, Ljava/lang/Integer;

    .line 35
    .line 36
    invoke-virtual {p9}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result p8

    .line 40
    invoke-virtual/range {p0 .. p8}, Landroid/app/ActivityManagerInternal;->startProcess(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZZLjava/lang/String;Landroid/content/ComponentName;ZI)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
