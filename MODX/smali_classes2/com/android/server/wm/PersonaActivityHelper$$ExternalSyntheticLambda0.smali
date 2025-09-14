.class public final synthetic Lcom/android/server/wm/PersonaActivityHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/QuintPredicate;


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/wm/Task;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    check-cast p3, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    check-cast p4, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    check-cast p5, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result p4

    .line 27
    if-eqz p1, :cond_6

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_6

    .line 34
    .line 35
    if-eqz p0, :cond_0

    .line 36
    .line 37
    iget p0, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 38
    .line 39
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-nez p0, :cond_1

    .line 44
    .line 45
    :cond_0
    iget p0, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 46
    .line 47
    if-ne p0, p2, :cond_6

    .line 48
    .line 49
    :cond_1
    if-eqz p3, :cond_2

    .line 50
    .line 51
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    .line 52
    .line 53
    if-nez p0, :cond_3

    .line 54
    .line 55
    :cond_2
    if-nez p3, :cond_6

    .line 56
    .line 57
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 58
    .line 59
    if-eqz p0, :cond_6

    .line 60
    .line 61
    :cond_3
    const/4 p0, -0x1

    .line 62
    if-eq p4, p0, :cond_4

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eq p4, p1, :cond_5

    .line 69
    .line 70
    :cond_4
    if-ne p4, p0, :cond_6

    .line 71
    .line 72
    :cond_5
    const/4 p0, 0x1

    .line 73
    goto :goto_0

    .line 74
    :cond_6
    const/4 p0, 0x0

    .line 75
    :goto_0
    return p0
.end method
