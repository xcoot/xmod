.class public final synthetic Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

.field public final synthetic f$1:Landroid/view/SurfaceControl;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/internal/infra/AndroidFuture;

.field public final synthetic f$4:Lcom/android/server/app/GameSessionRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;Landroid/view/SurfaceControl;ILcom/android/internal/infra/AndroidFuture;Lcom/android/server/app/GameSessionRecord;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    .line 6
    iput-object p2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda0;->f$1:Landroid/view/SurfaceControl;

    .line 8
    iput p3, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda0;->f$2:I

    .line 10
    iput-object p4, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda0;->f$3:Lcom/android/internal/infra/AndroidFuture;

    .line 12
    iput-object p5, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda0;->f$4:Lcom/android/server/app/GameSessionRecord;

    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    .line 3
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda0;->f$1:Landroid/view/SurfaceControl;

    .line 5
    iget v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda0;->f$2:I

    .line 7
    iget-object v3, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda0;->f$3:Lcom/android/internal/infra/AndroidFuture;

    .line 9
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda0;->f$4:Lcom/android/server/app/GameSessionRecord;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    new-instance v4, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 16
    const/4 v5, 0x0

    .line 17
    invoke-direct {v4, v5}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 20
    if-eqz v1, :cond_0

    .line 22
    const/4 v5, 0x1

    .line 23
    new-array v5, v5, [Landroid/view/SurfaceControl;

    .line 25
    const/4 v6, 0x0

    .line 26
    aput-object v1, v5, v6

    .line 28
    invoke-virtual {v4, v5}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setExcludeLayers([Landroid/view/SurfaceControl;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 31
    :cond_0
    iget-object v1, v0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 33
    invoke-virtual {v1, v2, v4}, Lcom/android/server/wm/WindowManagerService;->captureTaskBitmap(ILandroid/window/ScreenCapture$LayerCaptureArgs$Builder;)Landroid/graphics/Bitmap;

    .line 36
    move-result-object v1

    .line 37
    const-string v4, "GameServiceProviderInstance"

    .line 39
    if-nez v1, :cond_1

    .line 41
    new-instance p0, Ljava/lang/StringBuilder;

    .line 43
    const-string v0, "Could not get bitmap for id: "

    .line 45
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 55
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-static {}, Landroid/service/games/GameScreenshotResult;->createInternalErrorResult()Landroid/service/games/GameScreenshotResult;

    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {v3, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    iget-object v5, v0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameTaskInfoProvider:Lcom/android/server/app/GameTaskInfoProvider;

    .line 68
    invoke-virtual {v5, v2}, Lcom/android/server/app/GameTaskInfoProvider;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 71
    move-result-object v5

    .line 72
    if-nez v5, :cond_2

    .line 74
    new-instance v6, Ljava/lang/StringBuilder;

    .line 76
    const-string v7, "Could not get running task info for id: "

    .line 78
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v6

    .line 88
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-static {}, Landroid/service/games/GameScreenshotResult;->createInternalErrorResult()Landroid/service/games/GameScreenshotResult;

    .line 94
    move-result-object v4

    .line 95
    invoke-virtual {v3, v4}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 98
    :cond_2
    iget-object v4, v5, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 100
    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 102
    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 105
    move-result-object v4

    .line 106
    new-instance v5, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda3;

    .line 108
    invoke-direct {v5, v3}, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    .line 111
    new-instance v3, Lcom/android/internal/util/ScreenshotRequest$Builder;

    .line 113
    const/4 v6, 0x3

    .line 114
    const/4 v7, 0x5

    .line 115
    invoke-direct {v3, v6, v7}, Lcom/android/internal/util/ScreenshotRequest$Builder;-><init>(II)V

    .line 118
    iget-object p0, p0, Lcom/android/server/app/GameSessionRecord;->mRootComponentName:Landroid/content/ComponentName;

    .line 120
    invoke-virtual {v3, p0}, Lcom/android/internal/util/ScreenshotRequest$Builder;->setTopComponent(Landroid/content/ComponentName;)Lcom/android/internal/util/ScreenshotRequest$Builder;

    .line 123
    move-result-object p0

    .line 124
    invoke-virtual {p0, v2}, Lcom/android/internal/util/ScreenshotRequest$Builder;->setTaskId(I)Lcom/android/internal/util/ScreenshotRequest$Builder;

    .line 127
    move-result-object p0

    .line 128
    iget-object v2, v0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mUserHandle:Landroid/os/UserHandle;

    .line 130
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 133
    move-result v2

    .line 134
    invoke-virtual {p0, v2}, Lcom/android/internal/util/ScreenshotRequest$Builder;->setUserId(I)Lcom/android/internal/util/ScreenshotRequest$Builder;

    .line 137
    move-result-object p0

    .line 138
    invoke-virtual {p0, v1}, Lcom/android/internal/util/ScreenshotRequest$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/android/internal/util/ScreenshotRequest$Builder;

    .line 141
    move-result-object p0

    .line 142
    invoke-virtual {p0, v4}, Lcom/android/internal/util/ScreenshotRequest$Builder;->setBoundsOnScreen(Landroid/graphics/Rect;)Lcom/android/internal/util/ScreenshotRequest$Builder;

    .line 145
    move-result-object p0

    .line 146
    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 148
    invoke-virtual {p0, v1}, Lcom/android/internal/util/ScreenshotRequest$Builder;->setInsets(Landroid/graphics/Insets;)Lcom/android/internal/util/ScreenshotRequest$Builder;

    .line 151
    move-result-object p0

    .line 152
    invoke-virtual {p0}, Lcom/android/internal/util/ScreenshotRequest$Builder;->build()Lcom/android/internal/util/ScreenshotRequest;

    .line 155
    move-result-object p0

    .line 156
    iget-object v0, v0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    .line 158
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {v0, p0, v1, v5}, Lcom/android/internal/util/ScreenshotHelper;->takeScreenshot(Lcom/android/internal/util/ScreenshotRequest;Landroid/os/Handler;Ljava/util/function/Consumer;)V

    .line 165
    :goto_0
    return-void
.end method
