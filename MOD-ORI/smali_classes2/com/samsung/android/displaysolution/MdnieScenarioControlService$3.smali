.class public final Lcom/samsung/android/displaysolution/MdnieScenarioControlService$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/samsung/android/view/SemWindowManager$FoldStateListener;


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
    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$3;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFoldStateChanged(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$3;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mIsFolded:Z

    .line 4
    .line 5
    return-void
.end method

.method public final onTableModeChanged(Z)V
    .locals 0

    .line 1
    return-void
.end method
