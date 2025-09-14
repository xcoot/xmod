.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/android/server/wm/RootWindowContainer$2;

    .line 9
    .line 10
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 16
    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isDestroyable()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$2;->val$rootTask:Lcom/android/server/wm/ConfigurationContainer;

    .line 27
    .line 28
    check-cast v0, Lcom/android/server/wm/WindowProcessController;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 33
    .line 34
    if-eq v1, v0, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$2;->val$enterPipThrowable:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p0, Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->destroyImmediately(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    :cond_2
    :goto_0
    return-void

    .line 45
    :pswitch_0
    check-cast p0, Lcom/android/server/wm/RootWindowContainer$1;

    .line 46
    .line 47
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 53
    .line 54
    if-nez v0, :cond_4

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isDestroyable()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_3

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$1;->this$0:Lcom/android/server/wm/RootWindowContainer;

    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mDestroyAllActivitiesReason:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->destroyImmediately(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    :cond_4
    :goto_1
    return-void

    .line 71
    :pswitch_1
    check-cast p0, Lcom/android/server/am/AppTimeTracker;

    .line 72
    .line 73
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 74
    .line 75
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 76
    .line 77
    if-eq v0, p0, :cond_5

    .line 78
    .line 79
    const/4 p0, 0x0

    .line 80
    iput-object p0, p1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 81
    .line 82
    :cond_5
    return-void

    .line 83
    :pswitch_2
    check-cast p0, Landroid/os/IBinder;

    .line 84
    .line 85
    check-cast p1, Lcom/android/server/wm/Task;

    .line 86
    .line 87
    iget-object v0, p1, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 88
    .line 89
    if-eqz v0, :cond_6

    .line 90
    .line 91
    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    if-ne v0, p0, :cond_6

    .line 96
    .line 97
    new-instance p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda17;

    .line 98
    .line 99
    const/4 v0, 0x1

    .line 100
    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda17;-><init>(ILcom/android/server/wm/Task;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_6
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda28;

    .line 108
    .line 109
    const/4 v1, 0x0

    .line 110
    invoke-direct {v0, v1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda28;-><init>(I)V

    .line 111
    .line 112
    .line 113
    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 114
    .line 115
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-static {v0, v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;)Z

    .line 124
    .line 125
    .line 126
    invoke-interface {p0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 127
    .line 128
    .line 129
    :goto_2
    return-void

    .line 130
    :pswitch_3
    check-cast p0, Landroid/util/ArrayMap;

    .line 131
    .line 132
    check-cast p1, Lcom/android/server/wm/DisplayContent;

    .line 133
    .line 134
    iget v0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 135
    .line 136
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getImePolicy()I

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {p0, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    nop

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
