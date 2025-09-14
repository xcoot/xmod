.class public final Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/samsung/android/view/SemWindowManager$FoldStateListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$1;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFoldStateChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$1;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    .line 2
    .line 3
    iput-boolean p1, v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mIsFolded:Z

    .line 4
    .line 5
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_LARGE_COVER_SCREEN"

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$1;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    .line 19
    .line 20
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoBrightnessModeEnabled:Z

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightnessModeEnabled:Z

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mIsFolded:Z

    .line 29
    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    const-string p1, "extra_brightness_on"

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->setMultipleScreenBrightness(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const-string p1, "extra_brightness_off"

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->setMultipleScreenBrightness(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    return-void
.end method

.method public final onTableModeChanged(Z)V
    .locals 0

    .line 1
    return-void
.end method
