.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Lcom/android/server/wm/WindowContainer;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Lcom/android/server/wm/Task;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/WindowContainer;

    iput-object p3, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>([Z[ZLcom/android/server/wm/ActivityRecord;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/WindowContainer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, [Z

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, [Z

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/WindowContainer;

    .line 15
    .line 16
    check-cast p0, Lcom/android/server/wm/ActivityRecord;

    .line 17
    .line 18
    check-cast p1, Lcom/android/server/wm/TaskDisplayArea;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedActivity()Lcom/android/server/wm/ActivityRecord;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 29
    .line 30
    :goto_0
    const/4 v2, 0x0

    .line 31
    aget-boolean v3, v0, v2

    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    move v5, v4

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move v5, v2

    .line 39
    :goto_1
    and-int/2addr v3, v5

    .line 40
    aput-boolean v3, v0, v2

    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    aget-boolean v0, v1, v2

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 47
    .line 48
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    xor-int/2addr p0, v4

    .line 53
    and-int/2addr p0, v0

    .line 54
    aput-boolean p0, v1, v2

    .line 55
    .line 56
    :cond_2
    return-void

    .line 57
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v0, Ljava/util/ArrayList;

    .line 60
    .line 61
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/WindowContainer;

    .line 62
    .line 63
    check-cast v1, Lcom/android/server/wm/Task;

    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast p0, Ljava/util/ArrayList;

    .line 68
    .line 69
    check-cast p1, Lcom/android/server/wm/Task;

    .line 70
    .line 71
    const/4 v2, 0x0

    .line 72
    invoke-virtual {p1, v2}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_5

    .line 77
    .line 78
    const/4 v2, 0x1

    .line 79
    invoke-virtual {p1, v2, v2}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    if-eqz v3, :cond_5

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 86
    .line 87
    .line 88
    new-instance v4, Lcom/android/server/wm/ActivityAssistInfo;

    .line 89
    .line 90
    invoke-direct {v4, v3}, Lcom/android/server/wm/ActivityAssistInfo;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 97
    .line 98
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getAdjacentTask()Lcom/android/server/wm/Task;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    if-eqz v3, :cond_3

    .line 103
    .line 104
    invoke-virtual {v3, v2, v2}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    if-eqz v2, :cond_3

    .line 109
    .line 110
    new-instance v3, Lcom/android/server/wm/ActivityAssistInfo;

    .line 111
    .line 112
    invoke-direct {v3, v2}, Lcom/android/server/wm/ActivityAssistInfo;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    :cond_3
    if-ne p1, v1, :cond_4

    .line 119
    .line 120
    const/4 p1, 0x0

    .line 121
    invoke-virtual {p0, p1, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_4
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 126
    .line 127
    .line 128
    :cond_5
    :goto_2
    return-void

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
