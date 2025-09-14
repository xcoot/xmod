.class public final synthetic Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;

.field public final synthetic f$1:Landroid/graphics/Rect;

.field public final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;Landroid/graphics/Rect;Ljava/util/ArrayList;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/Rect;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy$$ExternalSyntheticLambda1;->f$2:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/Rect;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy$$ExternalSyntheticLambda1;->f$2:Ljava/util/ArrayList;

    .line 11
    .line 12
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mSizeCompatModePolicy:Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getAppCompatDisplayInsets()Lcom/android/server/wm/AppCompatDisplayInsets;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ROTATION_COMPAT_MODE:Z

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-boolean v0, v2, Lcom/android/server/wm/AppCompatDisplayInsets;->mIsRotationCompatMode:Z

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-static {p1}, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->isLetterboxedByAspectRatio(Lcom/android/server/wm/ActivityRecord;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->recomputeConfiguration()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_2

    .line 66
    .line 67
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 68
    .line 69
    iget-object v0, v0, Lcom/android/server/wm/AppCompatController;->mAppCompatReachabilityPolicy:Lcom/android/server/wm/AppCompatReachabilityPolicy;

    .line 70
    .line 71
    const/4 v1, 0x1

    .line 72
    iput-boolean v1, v0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mShouldPlayMoveAnimation:Z

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    :cond_2
    :goto_1
    return-void

    .line 78
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;

    .line 79
    .line 80
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/Rect;

    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy$$ExternalSyntheticLambda1;->f$2:Ljava/util/ArrayList;

    .line 83
    .line 84
    check-cast p1, Lcom/android/server/wm/DisplayContent;

    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    iget-boolean v2, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 90
    .line 91
    if-nez v2, :cond_3

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_3
    new-instance v2, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy$$ExternalSyntheticLambda1;

    .line 95
    .line 96
    const/4 v3, 0x1

    .line 97
    invoke-direct {v2, v0, v1, p0, v3}, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;Landroid/graphics/Rect;Ljava/util/ArrayList;I)V

    .line 98
    .line 99
    .line 100
    const/4 p0, 0x0

    .line 101
    invoke-virtual {p1, v2, p0}, Lcom/android/server/wm/DisplayArea;->forAllActivities(Ljava/util/function/Consumer;Z)V

    .line 102
    .line 103
    .line 104
    :goto_2
    return-void

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
