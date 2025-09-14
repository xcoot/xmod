.class public final synthetic Lcom/samsung/android/displaysolution/EyeComfortSolutionService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

.field public final synthetic f$1:Landroid/app/IActivityManager;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Landroid/app/IActivityManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$$ExternalSyntheticLambda0;->f$1:Landroid/app/IActivityManager;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$$ExternalSyntheticLambda0;->f$1:Landroid/app/IActivityManager;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-interface {p0}, Landroid/app/IActivityManager;->getGlobalConfiguration()Landroid/content/res/Configuration;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget v0, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    .line 13
    .line 14
    iput v0, v1, Landroid/content/res/Configuration;->nightDim:I

    .line 15
    .line 16
    invoke-interface {p0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v1, "cannot update Configuration : "

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "EyeComfortSolutionService"

    .line 29
    .line 30
    invoke-static {p0, v0, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method
