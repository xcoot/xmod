.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:[I

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>([ILjava/util/ArrayList;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda12;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda12;->f$0:[I

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda12;->f$1:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda12;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda12;->f$0:[I

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda12;->f$1:Ljava/util/ArrayList;

    .line 9
    .line 10
    check-cast p1, Lcom/android/server/wm/Task;

    .line 11
    .line 12
    array-length v1, v0

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v2, v1, :cond_3

    .line 15
    .line 16
    aget v3, v0, v2

    .line 17
    .line 18
    iget-boolean v4, p1, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 19
    .line 20
    if-eqz v4, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    add-int/lit8 v4, v4, -0x1

    .line 27
    .line 28
    :goto_1
    if-ltz v4, :cond_2

    .line 29
    .line 30
    invoke-virtual {p1, v4}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    check-cast v5, Lcom/android/server/wm/Task;

    .line 35
    .line 36
    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-ne v6, v3, :cond_0

    .line 41
    .line 42
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    :cond_0
    add-int/lit8 v4, v4, -0x1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-ne v4, v3, :cond_2

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    return-void

    .line 61
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda12;->f$0:[I

    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda12;->f$1:Ljava/util/ArrayList;

    .line 64
    .line 65
    check-cast p1, Lcom/android/server/wm/Task;

    .line 66
    .line 67
    array-length v1, v0

    .line 68
    const/4 v2, 0x0

    .line 69
    :goto_2
    if-ge v2, v1, :cond_6

    .line 70
    .line 71
    aget v3, v0, v2

    .line 72
    .line 73
    iget-boolean v4, p1, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 74
    .line 75
    if-nez v4, :cond_5

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-ne v4, v3, :cond_5

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-nez v3, :cond_4

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_4
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_6
    return-void

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
