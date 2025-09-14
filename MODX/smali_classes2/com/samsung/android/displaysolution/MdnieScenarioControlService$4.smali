.class public final Lcom/samsung/android/displaysolution/MdnieScenarioControlService$4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$4;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 2

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$4;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/view/Display;->getBrightnessInfo()Landroid/hardware/display/BrightnessInfo;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$4;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 18
    .line 19
    iget-boolean p1, p1, Landroid/hardware/display/BrightnessInfo;->isAnimating:Z

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    iget p1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPrevAclValue:I

    .line 27
    .line 28
    const/4 v1, 0x5

    .line 29
    if-ne p1, v1, :cond_1

    .line 30
    .line 31
    iget-boolean p1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoBrightnessMode:Z

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v0, "BrightnessAnimating() ACL mPrevAclValue ("

    .line 38
    .line 39
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$4;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 43
    .line 44
    iget v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPrevAclValue:I

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v0, ") - mCurrentValue (4)"

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const-string v0, "MdnieScenarioControlService"

    .line 59
    .line 60
    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$4;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 64
    .line 65
    iget-object p1, p1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 66
    .line 67
    const/4 v0, 0x4

    .line 68
    if-eqz p1, :cond_0

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitStateChangedInt(I)V

    .line 71
    .line 72
    .line 73
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$4;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 74
    .line 75
    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPrevAclValue:I

    .line 76
    .line 77
    :cond_1
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    .line 1
    return-void
.end method
