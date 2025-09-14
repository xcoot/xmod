.class public final Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver$1;->this$1:Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver$1;->this$1:Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSScpmManager:Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->registerScpm()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
