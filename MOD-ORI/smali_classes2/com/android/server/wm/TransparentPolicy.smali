.class public final Lcom/android/server/wm/TransparentPolicy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final FIRST_OPAQUE_NOT_FINISHING_ACTIVITY_PREDICATE:Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda2;


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public final mDestroyListeners:Ljava/util/List;

.field public final mIsTranslucentLetterboxingEnabledSupplier:Lcom/android/server/wm/TransparentPolicy$$ExternalSyntheticLambda0;

.field public final mTransparentPolicyState:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda2;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/server/wm/TransparentPolicy;->FIRST_OPAQUE_NOT_FINISHING_ACTIVITY_PREDICATE:Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda2;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/TransparentPolicy;->mDestroyListeners:Ljava/util/List;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/wm/TransparentPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 12
    .line 13
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/android/server/wm/TransparentPolicy$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    invoke-direct {v0, p2}, Lcom/android/server/wm/TransparentPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/AppCompatConfiguration;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/server/wm/TransparentPolicy;->mIsTranslucentLetterboxingEnabledSupplier:Lcom/android/server/wm/TransparentPolicy$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    new-instance p2, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    .line 24
    .line 25
    invoke-direct {p2, p1}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    .line 26
    .line 27
    .line 28
    iput-object p2, p0, Lcom/android/server/wm/TransparentPolicy;->mTransparentPolicyState:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final start()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TransparentPolicy;->mIsTranslucentLetterboxingEnabledSupplier:Lcom/android/server/wm/TransparentPolicy$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/TransparentPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/AppCompatConfiguration;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->isTranslucentLetterboxingEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TransparentPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/TransparentPolicy;->mTransparentPolicyState:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->isRunning()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-static {p0}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->-$$Nest$mreset(Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;)V

    .line 28
    .line 29
    .line 30
    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 31
    .line 32
    sget-object v3, Lcom/android/server/wm/TransparentPolicy;->FIRST_OPAQUE_NOT_FINISHING_ACTIVITY_PREDICATE:Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda2;

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x1

    .line 36
    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 41
    .line 42
    iget-boolean v3, v3, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    .line 43
    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    if-eqz v2, :cond_5

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isEmbedded()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_3

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 57
    .line 58
    iget-object v3, v3, Lcom/android/server/wm/AppCompatController;->mAppCompatSizeCompatModePolicy:Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    .line 59
    .line 60
    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 61
    .line 62
    if-eqz v4, :cond_5

    .line 63
    .line 64
    invoke-virtual {v0, v5}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-nez v4, :cond_5

    .line 69
    .line 70
    invoke-virtual {v3}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->hasAppCompatDisplayInsetsWithoutInheritance()Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_4

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_4
    iput-object v2, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mFirstOpaqueActivity:Lcom/android/server/wm/ActivityRecord;

    .line 78
    .line 79
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 80
    .line 81
    iget-object v0, v0, Lcom/android/server/wm/AppCompatController;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    .line 82
    .line 83
    iget-object v0, v0, Lcom/android/server/wm/TransparentPolicy;->mDestroyListeners:Ljava/util/List;

    .line 84
    .line 85
    iget-object v1, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 86
    .line 87
    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 88
    .line 89
    iget-object v3, v3, Lcom/android/server/wm/AppCompatController;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    .line 90
    .line 91
    check-cast v0, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->inheritFromOpaque(Lcom/android/server/wm/ActivityRecord;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iget-object v2, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mFirstOpaqueActivity:Lcom/android/server/wm/ActivityRecord;

    .line 104
    .line 105
    new-instance v3, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState$$ExternalSyntheticLambda1;

    .line 106
    .line 107
    invoke-direct {v3, p0, v0}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;Lcom/android/server/wm/WindowContainer;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v1, v2, v3}, Lcom/android/server/wm/WindowContainer;->overrideConfigurationPropagation(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer$ConfigurationMerger;)Lcom/android/server/wm/WindowContainerListener;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    iput-object v0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mLetterboxConfigListener:Lcom/android/server/wm/WindowContainerListener;

    .line 115
    .line 116
    return-void

    .line 117
    :cond_5
    :goto_0
    if-eqz v1, :cond_6

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->recomputeConfiguration()V

    .line 120
    .line 121
    .line 122
    :cond_6
    return-void
.end method
