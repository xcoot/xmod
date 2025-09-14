.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/RootWindowContainer;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RootWindowContainer;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda16;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda16;->f$0:Lcom/android/server/wm/RootWindowContainer;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda16;->f$1:Ljava/lang/String;

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
    iget v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda16;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda16;->f$0:Lcom/android/server/wm/RootWindowContainer;

    .line 7
    .line 8
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda16;->f$1:Ljava/lang/String;

    .line 9
    .line 10
    move-object v4, p1

    .line 11
    check-cast v4, Lcom/android/server/wm/TaskDisplayArea;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    invoke-virtual {v4, p0}, Lcom/android/server/wm/TaskDisplayArea;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    iget-object p0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 24
    .line 25
    iget-object p1, v4, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 26
    .line 27
    iget p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserAssignedToDisplay(I)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const/4 v6, 0x0

    .line 36
    const/4 v5, 0x0

    .line 37
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnTaskDisplayArea(ILjava/lang/String;Lcom/android/server/wm/TaskDisplayArea;ZZ)Z

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void

    .line 41
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda16;->f$0:Lcom/android/server/wm/RootWindowContainer;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda16;->f$1:Ljava/lang/String;

    .line 44
    .line 45
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 51
    .line 52
    iget v1, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 53
    .line 54
    and-int/lit16 v1, v1, 0x100

    .line 55
    .line 56
    if-nez v1, :cond_3

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeAssistant()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    const/4 v2, 0x0

    .line 63
    if-nez v1, :cond_1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    const-string v1, "assist"

    .line 67
    .line 68
    if-ne p0, v1, :cond_2

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 72
    .line 73
    iget-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mAssistantOnTopOfDream:Z

    .line 74
    .line 75
    :goto_0
    if-eqz v2, :cond_4

    .line 76
    .line 77
    :cond_3
    const/4 v0, 0x1

    .line 78
    invoke-virtual {p1, p0, v0}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 79
    .line 80
    .line 81
    :cond_4
    return-void

    .line 82
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda16;->f$0:Lcom/android/server/wm/RootWindowContainer;

    .line 83
    .line 84
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda16;->f$1:Ljava/lang/String;

    .line 85
    .line 86
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 92
    .line 93
    iget v1, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 94
    .line 95
    and-int/lit16 v1, v1, 0x100

    .line 96
    .line 97
    if-nez v1, :cond_7

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeAssistant()Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    const/4 v2, 0x0

    .line 104
    if-nez v1, :cond_5

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_5
    const-string v1, "assist"

    .line 108
    .line 109
    if-ne p0, v1, :cond_6

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_6
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 113
    .line 114
    iget-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mAssistantOnTopOfDream:Z

    .line 115
    .line 116
    :goto_1
    if-eqz v2, :cond_8

    .line 117
    .line 118
    :cond_7
    const/4 v0, 0x1

    .line 119
    invoke-virtual {p1, p0, v0}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 120
    .line 121
    .line 122
    :cond_8
    return-void

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
