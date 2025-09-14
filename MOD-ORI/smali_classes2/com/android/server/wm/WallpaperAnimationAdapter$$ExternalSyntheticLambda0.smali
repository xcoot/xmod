.class public final synthetic Lcom/android/server/wm/WallpaperAnimationAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/util/function/Consumer;

.field public final synthetic f$3:Ljava/util/ArrayList;

.field public final synthetic f$4:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(JJLjava/util/function/Consumer;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/android/server/wm/WallpaperAnimationAdapter$$ExternalSyntheticLambda0;->f$0:J

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/android/server/wm/WallpaperAnimationAdapter$$ExternalSyntheticLambda0;->f$1:J

    .line 7
    .line 8
    iput-object p5, p0, Lcom/android/server/wm/WallpaperAnimationAdapter$$ExternalSyntheticLambda0;->f$2:Ljava/util/function/Consumer;

    .line 9
    .line 10
    iput-object p6, p0, Lcom/android/server/wm/WallpaperAnimationAdapter$$ExternalSyntheticLambda0;->f$3:Ljava/util/ArrayList;

    .line 11
    .line 12
    iput-object p7, p0, Lcom/android/server/wm/WallpaperAnimationAdapter$$ExternalSyntheticLambda0;->f$4:Ljava/util/ArrayList;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-wide v2, v0, Lcom/android/server/wm/WallpaperAnimationAdapter$$ExternalSyntheticLambda0;->f$0:J

    .line 4
    .line 5
    iget-wide v4, v0, Lcom/android/server/wm/WallpaperAnimationAdapter$$ExternalSyntheticLambda0;->f$1:J

    .line 6
    .line 7
    iget-object v6, v0, Lcom/android/server/wm/WallpaperAnimationAdapter$$ExternalSyntheticLambda0;->f$2:Ljava/util/function/Consumer;

    .line 8
    .line 9
    iget-object v7, v0, Lcom/android/server/wm/WallpaperAnimationAdapter$$ExternalSyntheticLambda0;->f$3:Ljava/util/ArrayList;

    .line 10
    .line 11
    iget-object v8, v0, Lcom/android/server/wm/WallpaperAnimationAdapter$$ExternalSyntheticLambda0;->f$4:Ljava/util/ArrayList;

    .line 12
    .line 13
    move-object/from16 v9, p1

    .line 14
    .line 15
    check-cast v9, Lcom/android/server/wm/WallpaperWindowToken;

    .line 16
    .line 17
    new-instance v10, Lcom/android/server/wm/WallpaperAnimationAdapter;

    .line 18
    .line 19
    move-object v0, v10

    .line 20
    move-object v1, v9

    .line 21
    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WallpaperAnimationAdapter;-><init>(Lcom/android/server/wm/WallpaperWindowToken;JJLjava/util/function/Consumer;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x0

    .line 29
    const/16 v2, 0x10

    .line 30
    .line 31
    invoke-virtual {v9, v0, v10, v1, v2}, Lcom/android/server/wm/WindowContainer;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Landroid/view/RemoteAnimationTarget;

    .line 35
    .line 36
    iget-object v14, v10, Lcom/android/server/wm/WallpaperAnimationAdapter;->mCapturedLeash:Landroid/view/SurfaceControl;

    .line 37
    .line 38
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getPrefixOrderIndex()I

    .line 39
    .line 40
    .line 41
    move-result v18

    .line 42
    new-instance v1, Landroid/graphics/Point;

    .line 43
    .line 44
    move-object/from16 v19, v1

    .line 45
    .line 46
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 50
    .line 51
    .line 52
    move-result-object v22

    .line 53
    const/16 v24, 0x0

    .line 54
    .line 55
    const/16 v25, 0x0

    .line 56
    .line 57
    const/4 v12, -0x1

    .line 58
    const/4 v13, -0x1

    .line 59
    const/4 v15, 0x0

    .line 60
    const/16 v16, 0x0

    .line 61
    .line 62
    const/16 v17, 0x0

    .line 63
    .line 64
    const/16 v20, 0x0

    .line 65
    .line 66
    const/16 v21, 0x0

    .line 67
    .line 68
    const/16 v23, 0x1

    .line 69
    .line 70
    const/16 v26, 0x0

    .line 71
    .line 72
    const/16 v27, 0x0

    .line 73
    .line 74
    move-object v11, v0

    .line 75
    invoke-direct/range {v11 .. v27}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 76
    .line 77
    .line 78
    iput-object v0, v10, Lcom/android/server/wm/WallpaperAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    .line 79
    .line 80
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    return-void
.end method
