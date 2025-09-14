.class public final Lcom/samsung/android/displaysolution/MdnieScenarioControlService$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;


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
    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$2;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDesktopDockConnectionChanged(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDesktopModeChanged(Z)V
    .locals 1

    .line 1
    const-string v0, "MdnieScenarioControlService"

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const-string p1, "Dex Mode Connected"

    .line 6
    .line 7
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$2;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDexModeState:Z

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string p1, "Dex Mode Disconnected"

    .line 17
    .line 18
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$2;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDexModeState:Z

    .line 25
    .line 26
    :goto_0
    return-void
.end method
