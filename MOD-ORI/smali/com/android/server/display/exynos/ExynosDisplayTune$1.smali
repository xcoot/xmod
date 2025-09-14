.class public final Lcom/android/server/display/exynos/ExynosDisplayTune$1;
.super Ljava/util/TimerTask;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/exynos/ExynosDisplayTune;


# direct methods
.method public constructor <init>(Lcom/android/server/display/exynos/ExynosDisplayTune;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayTune$1;->this$0:Lcom/android/server/display/exynos/ExynosDisplayTune;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune$1;->this$0:Lcom/android/server/display/exynos/ExynosDisplayTune;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 4
    .line 5
    const-string/jumbo v1, "xml"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayTune;->CALIB_DATA_XML_PATH:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v1, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getPathWithPanel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string/jumbo v1, "tune"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/exynos/ExynosDisplayTune;->setCalibrationDQE(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
